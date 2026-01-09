#include <stdio.h>
#include "platform.h"
#include "xparameters.h" // add
#include "xiomodule.h" // add

int bcd7seg(u32 data, XIOModule gpo) {

	u32 seg;

	switch(data){
	case 0:
		seg=0b0000001;
		break;
	case 1:
		seg=0b1001111;
		break;
	case 2:
		seg=0b0010010;
		break;
	case 3:
		seg=0b0000110;
		break;
	case 4:
		seg=0b1001100;
		break;
	case 5:
		seg=0b0100100;
		break;
	case 6:
		seg=0b0100000;
		break;
	case 7:
		seg=0b0001111;
		break;
	case 8:
		seg=0b0000000;
		break;
	case 9:
		seg=0b0000100;
		break;
	case 10:
		seg=0b0001000;
		break;
	case 11:
		seg=0b1100000;
		break;
	case 12:
		seg=0b0110001;
		break;
	case 13:
		seg=0b1000010;
		break;
	case 14:
		seg=0b0110000;
		break;
}

	XIOModule_DiscreteWrite(&gpo, 2, seg); // turn on LEDs (channel 2)
return 0;
}
