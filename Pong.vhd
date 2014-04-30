library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pong is
    Port (
                CLOCK_50 : in STD_LOGIC;
                VGA_HS : out STD_LOGIC;
                VGA_VS : out STD_LOGIC;
                VGA_R : out STD_LOGIC_VECTOR(7 DOWNTO 0);
                VGA_G : out STD_LOGIC_VECTOR(7 DOWNTO 0);
                VGA_B : out STD_LOGIC_VECTOR(7 DOWNTO 0);
--                leftPlayerInput : in STD_LOGIC;
--                rightPlayerInput : in STD_LOGIC;
                soundPin : buffer STD_LOGIC := '0';
                PS2_KBCLK : in STD_LOGIC;
                PS2_KBDAT : in STD_LOGIC
        );
end Pong;

architecture Behavioral of Pong is

component KeyboardController is
    Port ( CLOCK_50 : in STD_LOGIC;
                PS2_KBCLK : in  STD_LOGIC;
           PS2_KBDAT : in  STD_LOGIC;
           LeftPaddleDirection : out  integer;
           RightPaddleDirection : out  integer
        );
end component;

signal halfClock : STD_LOGIC;
signal horizontalPosition : integer range 0 to 800 := 0;
signal verticalPosition : integer range 0 to 521 := 0;
signal hsyncEnable : STD_LOGIC;
signal vsyncEnable : STD_LOGIC;

signal photonX : integer range 0 to 640 := 0;
signal photonY : integer range 0 to 480 := 0;

constant leftPaddleX : integer := 25;
signal leftPaddleY : integer range 0 to 480 := 240;
constant rightPaddleX : integer := 615;
signal rightPaddleY : integer range 0 to 480 := 240;
signal rightPaddleDirection : integer := 0;
signal leftPaddleDirection : integer := 0;

signal paddleHalfHeight : integer range 0 to 50 := 30;
constant paddleHalfWidth : integer := 6;

constant leftPaddleBackX : integer := leftPaddleX-paddleHalfWidth;
constant leftPaddleFrontX : integer := leftPaddleX+paddleHalfWidth;
constant rightPaddleFrontX : integer := rightPaddleX-paddleHalfWidth;
constant rightPaddleBackX : integer := rightPaddleX+paddleHalfWidth;
constant paddleBottomLimit : integer := 474;
constant paddleTopLimit : integer := 4;


signal color_red : STD_LOGIC_VECTOR(7 DOWNTO 0):="00000000";
signal color_green : STD_LOGIC_VECTOR(7 DOWNTO 0):="00000000";
signal color_blue : STD_LOGIC_VECTOR(7 DOWNTO 0):="00000000";

signal ballMovementClockCounter : integer range 0 to 1000000 := 0;
signal ballMovementClock : STD_LOGIC := '0';
signal paddleMovementClockCounter : integer range 0 to 1000000 := 0;
signal paddleMovementClock : STD_LOGIC := '0';

constant ballMaxSpeed : integer := 8;
signal ballX : integer range -100 to 640 := 320;
signal ballY : integer range -100 to 480 := 240;
signal ballSpeedX : integer range -100 to 100 := 1;
signal ballSpeedY : integer range -100 to 100 := 1;

constant maxLeftLifes : integer := 5;
constant maxRightLifes : integer := 5;

signal leftLifes : integer range 0 to 5 := maxLeftLifes;
signal rightLifes : integer range 0 to 5 := maxRightLifes;
signal gameOver : STD_LOGIC := '0';

constant leftLifePosition : integer := 179;
constant rightLifePosition : integer := 359;
constant lifeBarWidth : integer := 100;
constant lifeBarHeight : integer := 3;

signal resetBall : STD_LOGIC := '0';
signal resetCounter : integer range 0 to 101 := 0;

signal soundCounter : integer range 0 to 1000000 := 0;
signal soundClock : STD_LOGIC := '0';

signal soundPlingCounter : integer range 0 to 100000000 := 0;
signal soundEnable : STD_LOGIC := '0';
signal playSound : STD_LOGIC := '0';

begin

        kbController : KeyboardController port map ( CLOCK_50, PS2_KBCLK, PS2_KBDAT, leftPaddleDirection, rightPaddleDirection );

        soundScaler : process(CLOCK_50)
        begin
                if CLOCK_50'event and CLOCK_50='1' then
                        if soundCounter = 100000 then --adjust for length of beep
                                soundCounter <= 0;
                                soundClock <= not soundClock;
                        else
                                soundCounter <= soundCounter + 1;
                        end if;
                end if;
        end process soundScaler;
        
        sound : process(soundClock)
        begin
                if soundClock'event and soundClock = '1' then
                        if soundEnable = '1' then
                                soundPin <= not soundPin;
                        else
                                soundPin <= '0';
                        end if;
                end if;
        end process sound;
        
        soundPling : process(playSound, soundClock)
        begin
                if soundClock'event and soundClock = '1' then
                        if playSound='1' then
                                if soundPlingCounter >=        0 and soundPlingCounter < 20 then
                                        soundEnable <= '1';
                                        soundPlingCounter <= soundPlingCounter + 1;
                                else
                                        soundEnable <= '0';
                                end if;
                        else
                                soundEnable <= '0';
                                soundPlingCounter <= 0;
                        end if;
                end if;
        end process soundPling;

        -- Half the clock
        clockScaler : process(CLOCK_50)
        begin
                if CLOCK_50'event and CLOCK_50 = '1' then
                        halfClock <= not halfClock;
                end if;
        end process clockScaler;
        
        ballMovementClockScaler : process(CLOCK_50)
        begin
                if CLOCK_50'event and CLOCK_50 = '1' then
                        ballMovementClockCounter <= ballMovementClockCounter + 1;
                        
                        if (ballMovementClockCounter = 500000) then
                                ballMovementClock <= not ballMovementClock;
                                ballMovementClockCounter <= 0;
                        end if;
                end if;
        end process ballMovementClockScaler;
        
        paddleMovementClockScaler : process(CLOCK_50)
        begin
                if CLOCK_50'event and CLOCK_50 = '1' then
                        paddleMovementClockCounter <= paddleMovementClockCounter + 1;
                        
                        if (paddleMovementClockCounter = 100000) then
                                paddleMovementClock <= not paddleMovementClock;
                                paddleMovementClockCounter <= 0;
                        end if;
                end if;
        end process paddleMovementClockScaler;
                
        signalTiming : process(halfClock)
        begin
                if halfClock'event and halfClock = '1' then
                        if horizontalPosition = 800 then
                                horizontalPosition <= 0;
                                verticalPosition <= verticalPosition + 1;
                                
                                if verticalPosition = 521 then
                                        verticalPosition <= 0;
                                else
                                        verticalPosition <= verticalPosition + 1;
                                end if;
                        else
                                horizontalPosition <= horizontalPosition + 1;
                        end if;
                end if;
        end process signalTiming;
        
        vgaSync : process(halfClock, horizontalPosition, verticalPosition)
        begin
                if halfClock'event and halfClock = '1' then
                        if horizontalPosition > 0 and horizontalPosition < 97 then
                                hsyncEnable <= '0';
                        else
                                hsyncEnable <= '1';
                        end if;
                        
                        if verticalPosition > 0 and verticalPosition < 3 then
                                vsyncEnable <= '0';
                        else
                                vsyncEnable <= '1';
                        end if;
                end if;
        end process vgaSync;
        
        coordinates : process(horizontalPosition, verticalPosition)
        begin
                photonX <= horizontalPosition - 144;
                photonY <= verticalPosition - 31;
        end process coordinates;
        
        finishGame : process(leftLifes, rightLifes)
        begin
                if leftLifes = 0 or rightLifes = 0 then
                        gameOver <= '1';
                end if;
        end process finishGame;
        
        colorSetter : process(photonX, photonY, halfClock)
        begin
                -- Paddle handling
                if gameOver = '1' then
                        -- G
                        if photonX >= 20 and photonX <= 80 and photonY >= 180 and photonY <= 190 then
                                color_red<= "11111111";
                        elsif photonX >= 20 and photonX <= 30 and photonY >= 190 and photonY <= 300 then
                                color_red<= "11111111";
                        elsif photonX >= 20 and photonX <= 80 and photonY >= 290 and photonY <= 300 then
                                color_red<= "11111111";
                        elsif photonX >= 70 and photonX <= 80 and photonY >= 240 and photonY <= 300 then
                                color_red<= "11111111";
                        elsif photonX >= 50 and photonX <= 80 and photonY >= 240 and photonY <= 250 then
                                color_red<= "11111111";
                        
                        -- A
                        elsif photonX >= 90 and photonX <= 150 and photonY >= 180 and photonY <= 190 then
                                color_red<= "11111111";
                        elsif photonX >= 90 and photonX <= 100 and photonY >= 190 and photonY <= 300 then
                                color_red<= "11111111";
                        elsif photonX >= 140 and photonX <= 150 and photonY >= 190 and photonY <= 300 then
                                color_red<= "11111111";
                        elsif photonX >= 90 and photonX <= 150 and photonY >= 240 and photonY <= 250 then
                                color_red<= "11111111";

                        -- M
                        elsif ((photonX >= 160 and photonX <= 170 and photonY >= 180 and photonY <= 300) or 
                                        (photonX >= 170 and photonX <= 220 and photonY >= 190 and photonY <= 200) or
                                        (photonX >= 210 and photonX <= 220 and photonY >= 190 and photonY <= 300) or
                                        (photonX >= 185 and photonX <= 195 and photonY >= 190 and photonY <= 300)) then
                                color_red<= "11111111";
                
                        -- erstes E
                        elsif photonX >= 230 and photonX <= 290 and photonY >= 180 and photonY <= 190 then
                                color_red<= "11111111";
                        elsif photonX >= 230 and photonX <= 290 and photonY >= 235 and photonY <= 245 then
                                color_red<= "11111111";
                        elsif photonX >= 230 and photonX <= 290 and photonY >= 290 and photonY <= 300 then
                                color_red<= "11111111";
                        elsif photonX >= 230 and photonX <= 240 and photonY >= 180 and photonY <= 300 then
                                color_red<= "11111111";
                        
                        -- O
                        elsif photonX >= 348 and photonX <= 408 and photonY >= 180 and photonY <= 190 then
                                color_red<= "11111111";
                        elsif photonX >= 348 and photonX <= 358 and photonY >= 190 and photonY <= 290 then
                                color_red<= "11111111";
                        elsif photonX >= 398 and photonX <= 408 and photonY >= 190 and photonY <= 290 then
                                color_red<= "11111111";
                        elsif photonX >= 348 and photonX <= 408 and photonY >= 290 and photonY <= 300 then
                                color_red<= "11111111";
                                
                        -- V
                        elsif photonX >= 418 and photonX <= 448  and photonY >= 270 and photonY <= 300 then
                                if (photonX - 418) = (photonY - 270) or
                                        (photonX - 419) = (photonY - 270) or
                                        (photonX - 420) = (photonY - 270) or
                                        (photonX - 421) = (photonY - 270) or
                                        (photonX - 422) = (photonY - 270) or
                                        (photonX - 423) = (photonY - 270) or
                                        (photonX - 424) = (photonY - 270) or
                                        (photonX - 425) = (photonY - 270) or
                                        (photonX - 426) = (photonY - 270) or
                                        (photonX - 427) = (photonY - 270) or
                                        (photonX - 428) = (photonY - 270) then
                                        color_red<= "11111111";
                                else
                                        color_red<= "00000000";
													 color_green<= "00000000";
													 color_blue<= "00000000";
                                end if;
                                
                        elsif photonX >= 449 and photonX <= 478  and photonY >= 270 and photonY <= 300 then
                                if (478 - photonX) = (photonY - 270) or
                                        (477 - photonX) = (photonY - 270) or
                                        (476 - photonX) = (photonY - 270) or
                                        (475 - photonX) = (photonY - 270) or
                                        (474 - photonX) = (photonY - 270) or
                                        (473 - photonX) = (photonY - 270) or
                                        (472 - photonX) = (photonY - 270) or
                                        (471 - photonX) = (photonY - 270) or
                                        (470 - photonX) = (photonY - 270) or
                                        (469 - photonX) = (photonY - 270) or
                                        (468 - photonX) = (photonY - 270) then
                                        color_red<= "11111111";
                                else
                                        color_red<= "00000000";
													 color_green<= "00000000";
													 color_blue<= "00000000";
                                end if;
                                
                        elsif (photonX >= 418 and photonX <= 428 and photonY >= 180 and photonY <= 270) or
                                        (photonX >= 468 and photonX <= 478 and photonY >= 180 and photonY <= 270) then
                                color_red<= "11111111";
                        
                        -- zweites E
                        elsif photonX >= 488 and photonX <= 548 and photonY >= 180 and photonY <= 190 then
                                color_red<= "11111111";
                        elsif photonX >= 488 and photonX <= 548 and photonY >= 235 and photonY <= 245 then
                                color_red<= "11111111";
                        elsif photonX >= 488 and photonX <= 548 and photonY >= 290 and photonY <= 300 then
                                color_red<= "11111111";
                        elsif photonX >= 488 and photonX <= 498 and photonY >= 180 and photonY <= 300 then
                                color_red<= "11111111";
                                
                        -- R
                        elsif photonX >= 558 and photonX <= 618 and photonY >= 180 and photonY <= 190 then
                                color_red<= "11111111";
                        elsif photonX >= 558 and photonX <= 568 and photonY >= 190 and photonY <= 300 then
                                color_red<= "11111111";
                        elsif photonX >= 608 and photonX <= 618 and photonY >= 190 and photonY <= 250 then
                                color_red<= "11111111";
                        elsif photonX >= 558 and photonX <= 618 and photonY >= 245 and photonY <= 255 then
                                color_red<= "11111111";
                        elsif photonX >= 568 and photonX <= 618  and photonY >= 245 and photonY <= 300 then
                                if (photonX - 568) = (photonY - 255) or
                                        (photonX - 567) = (photonY - 255) or
                                        (photonX - 566) = (photonY - 255) or
                                        (photonX - 565) = (photonY - 255) or
                                        (photonX - 564) = (photonY - 255) or
                                        (photonX - 563) = (photonY - 255) or
                                        (photonX - 562) = (photonY - 255) or
                                        (photonX - 561) = (photonY - 255) or
                                        (photonX - 569) = (photonY - 255) or
                                        (photonX - 570) = (photonY - 255) or
                                        (photonX - 571) = (photonY - 255) or
                                        (photonX - 572) = (photonY - 255) or
                                        (photonX - 573) = (photonY - 255) or
                                        (photonX - 574) = (photonY - 255) then
                                        color_red<= "11111111";
                                else
                                        color_red<= "00000000";
													 color_green<= "00000000";
													 color_blue<= "00000000";
                                end if;
                        else
                                color_red<= "11111111";
									     color_green<= "11111111";
										  color_blue<= "11111111";
                        end if;

                elsif ((photonX >= leftPaddleBackX) and (photonX <= leftPaddleFrontX)
                        and (photonY >= leftPaddleY - paddleHalfHeight) and (photonY <= leftPaddleY + paddleHalfHeight)) or
                        ((photonX >= rightPaddleFrontX) and (photonX <= rightPaddleBackX)
                        and (photonY >= rightPaddleY - paddleHalfHeight) and (photonY <= rightPaddleY + paddleHalfHeight)) then
                        color_red<= "11111111";
						      color_green<= "11111111";
							   color_blue<= "11111111";
                -- Dashed Line
                elsif (photonX = 319 and photonY mod 16 <= 10) then
                        color_red<= "11111111";
						      color_green<= "11111111";
							   color_blue<= "11111111";

                -- Ball
                elsif (photonY >= ballY - 2 and photonY <= ballY + 2) and (photonX >= ballX - 2 and photonX <= ballX + 2) then
                        color_red<= "11111111";
						      color_green<= "11111111";
							   color_blue<= "11111111";
                elsif (photonY >= ballY - 3 and photonY <= ballY + 3) and (photonX >= ballX - 1 and photonX <= ballX + 1) then
                        color_red<= "11111111";
						      color_green<= "11111111";
							   color_blue<= "11111111";
                elsif (photonY >= ballY - 1 and photonY <= ballY + 1) and (photonX >= ballX - 3 and photonX <= ballX + 3) then
                        color_red<= "11111111";
						      color_green<= "11111111";
							   color_blue<= "11111111";

                -- green lifebar
                elsif (photonX>=leftLifePosition and photonX<leftLifePosition+(leftLifes*20) and photonY>=30 and photonY<=30+lifeBarHeight) or
                        (photonX>=rightLifePosition and photonX<rightLifePosition+(rightLifes*20) and photonY>=30 and photonY<=30+lifeBarHeight) then
                        color_green<= "11111111";

                -- red lifebar

                elsif (photonX >= (leftLifePosition+(leftLifes*20)) and photonX <= (leftLifePosition+(20*maxLeftLifes)) and photonY>=30 and photonY<=(30+lifeBarHeight)) or
                        (photonX>=(rightLifePosition+(rightLifes*20)) and photonX<= (rightLifePosition+(20*maxRightLifes)) and photonY>=30 and photonY<=(30+lifeBarHeight)) then
                        color_red<= "11111111";

                -- background
                else
                        color_red<= "00000000";
								color_green<= "00000000";
								color_blue<= "00000000";
                end if;
        end process colorSetter;
        
        leftPaddleMovement : process(paddleMovementClock)
        begin
                if paddleMovementClock'event and paddleMovementClock = '1' then
                        if leftPaddleY + leftPaddleDirection < paddleBottomLimit - paddleHalfHeight 
                                and leftPaddleY + leftPaddleDirection > paddleTopLimit + paddleHalfHeight then
                                leftPaddleY <= leftPaddleY + leftPaddleDirection;
                        end if;
                end if;
        end process leftPaddleMovement;
        
        rightPaddleMovement : process(paddleMovementClock)
        begin
                if paddleMovementClock'event and paddleMovementClock = '1' then
                        if rightPaddleY + rightPaddleDirection < paddleBottomLimit - paddleHalfHeight 
                                and rightPaddleY + rightPaddleDirection > paddleTopLimit + paddleHalfHeight then
                                rightPaddleY <= rightPaddleY + rightPaddleDirection;
                        end if;
                end if;
        end process rightPaddleMovement;
        
        ballMovement : process(ballMovementClock,gameOver,soundPlingCounter)
        begin
                if gameOver = '1' then
                        ballX <= 319;
                        ballY <= 239;
                        ballSpeedX <= 0;
                        ballSpeedY <= 0;
                elsif soundPlingCounter >= 10 then
                        playSound <= '0';
                elsif ballMovementClock'event and ballMovementClock='1' then
                        if resetBall = '1' then
                                if resetCounter = 100 then
                                        resetCounter <= 0;
                                        ballX <= 319;
                                        ballY <= 239;
                                        resetBall <= '0';
                                else
                                        resetCounter <= resetCounter + 1;
                                end if;
                        else
                                
                                if ballX+4 > rightPaddleFrontX and ballX < rightPaddleBackX 
                                        and ballY+4 > rightPaddleY-paddleHalfHeight and ballY-4 < rightPaddleY+paddleHalfHeight then
                                        ballX <= rightPaddleFrontX - 4;
                                        ballSpeedY <= (ballY - rightPaddleY) / 8;
                                        ballSpeedX <= -ballMaxSpeed + ballSpeedY;
                                        playSound  <= '1';
                                elsif ballX-4 < leftPaddleFrontX and ballX > leftPaddleBackX
                                        and ballY+4 > leftPaddleY-paddleHalfHeight and ballY-4 < leftPaddleY+paddleHalfHeight then
                                        ballX <= leftPaddleFrontX + 4;
                                        ballSpeedY <= ((ballY - leftPaddleY) / 8);
                                        ballSpeedX <= ballMaxSpeed - ballSpeedY;
                                        playSound  <= '1';
                                elsif ballX + ballSpeedX < 4 then
                                        leftLifes <= leftLifes - 1;
                                        ballX <= -20;
                                        ballY <= -20;
                                        resetBall <= '1';
                                elsif ballX + ballSpeedX > 635 then
                                        rightLifes <= rightLifes - 1;
                                        ballX <= -20;
                                        ballY <= -20;
                                        resetBall <= '1';
                                else
                                        ballX <= ballX + ballSpeedX;
                                end if;
                                
                                if ballY > 470 then
                                        ballY <= 470;
                                        ballSpeedY <= -ballSpeedY;
                                        playSound  <= '1';
                                elsif ballY < 10 then
                                        ballY <= 10;
                                        ballSpeedY <= -ballSpeedY;
                                        playSound  <= '1';
                                else
                                        ballY <= ballY + ballSpeedY;
                                end if;
                        end if;
                end if;
        end process ballMovement;
        
        draw : process(photonX, photonY, halfClock)
        begin
                if halfClock'event and halfClock = '1' then
                        VGA_HS <= hsyncEnable;
                        VGA_VS <= vsyncEnable;
                
                        if (photonX < 640 and photonY < 480) then
                                VGA_R <= color_red;
                                VGA_G <= color_green;
                                VGA_B <= color_blue;
                        else
                                VGA_R <= "00000000";
                                VGA_G <= "00000000";
                                VGA_B <= "00000000";
                        end if;
                end if;
        end process draw;

end Behavioral;