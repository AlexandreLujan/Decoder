LIBRARY work;
USE work.MyPackage.all;

ENTITY TESTBENCH IS
END ENTITY;

ARCHITECTURE RTL OF TESTBENCH IS

	SIGNAL S_D3, S_D2, S_D1, S_D0	: BIT;
	SIGNAL S_SA, S_SB, S_SC, S_SD, S_SE, S_SF, S_SG	: BIT;
	
BEGIN

    DECODER_0 : DECODER
	 PORT MAP (
		D3 => S_D3,
		D2 => S_D2,
		D1 => S_D1,
		D0 => S_D0,
		SA => S_SA,
		SB => S_SB,
		SC => S_SC,
		SD => S_SD,
		SE => S_SE,
		SF => S_SF,
		SG => S_SG
	);
	
	S_D3 <= '0' AFTER 0ns, '1' AFTER 320ns;
	
	S_D2 <= '0' AFTER 0ns, '1' AFTER 160ns,
			  '0' AFTER 320ns, '1' AFTER 480ns; 
	
	S_D1 <= '0' AFTER 0ns, '1' AFTER 80ns, 
			  '0' AFTER 160ns, '1' AFTER 240ns, 
			  '0' AFTER 320ns, '1' AFTER 400ns, 
			  '0' AFTER 480ns, '1' AFTER 560ns;

	S_D0 <= '0' AFTER 0ns, '1' AFTER 40ns, 
			  '0' AFTER 80ns, '1' AFTER 120ns,
			  '0' AFTER 160ns, '1' AFTER 200ns,
			  '0' AFTER 240ns, '1' AFTER 280ns,
			  '0' AFTER 320ns, '1' AFTER 360ns,
			  '0' AFTER 400ns, '1' AFTER 440ns,
			  '0' AFTER 480ns, '1' AFTER 520ns,
			  '0' AFTER 560ns, '1' AFTER 600ns;
		  
END ARCHITECTURE;