#include <stdio.h>
#include "platform.h"
#include "xparameters.h" // add
#include "xiomodule.h" // add


int bcd7seg(u32 data, XIOModule gpo);


int numdisp(u32 data, XIOModule gpo) {

	u32 t, num;
	unsigned char an, disp=0;

while(disp<=3){

	switch(disp){
	case 0: an = 0b1110; 	//milhar
			num = data/1000;
		break;
	case 1: an = 0b1101; 	//centena
			num = (data%1000)/100;
		break;
	case 2: an = 0b1011;	//dezena
			num = ((data%1000)%100)/10;
		break;
	case 3: an = 0b0111;	//unidade
			num = ((data%1000)%100)%10;
		break;
	}

	bcd7seg(num, gpo);
	XIOModule_DiscreteWrite(&gpo, 3, an);

	while(t<10000)
			t++;
	disp++;
	t=0;
} //end while

return 0;
}
