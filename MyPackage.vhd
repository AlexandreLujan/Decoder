PACKAGE MyPackage IS

	COMPONENT DECODER
		PORT (
			D3, D2, D1, D0: IN BIT;
			SA, SB, SC, SD, SE, SF, SG: OUT BIT
		);
	END COMPONENT;
   
END MyPackage;

PACKAGE BODY MyPackage IS
	CONSTANT CONSTANTE_GLOBAL: INTEGER := 200;
END MyPackage;