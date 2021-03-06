 #include "stdio.h"
 #include "xparameters.h"
 #include "xil_printf.h"
 #include "Roate_Keyv2.h"
#include  "cordic.h"
 #include "xil_io.h"
 #include "sleep.h"
#include <stdio.h>
#include "PmodOLED.h"
#include "sleep.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xparameters.h"

void EnableCaches() {
#ifdef __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_ICACHE
   Xil_ICacheEnable();
#endif
#ifdef XPAR_MICROBLAZE_USE_DCACHE
   Xil_DCacheEnable();
#endif
#endif
}

#define roat_num 100
char tmp[20]={};
int testA=0;
int testB=0;
int testC=0;
int testD=0;
int testE=0;
int testF=0;
int SW=0;
int pre_SW=0;
int page=0;
int LED0_pwm=0;
int LED1_pwm=0;
int LED2_pwm=0;
int LED3_pwm=0;
#define roate_base 0x43C10000
#define ctl_reg  ROATE_KEYV2_S0_AXI_SLV_REG0_OFFSET
#define din_data ROATE_KEYV2_S0_AXI_SLV_REG1_OFFSET

#define sw_reg   ROATE_KEYV2_S0_AXI_SLV_REG2_OFFSET
#define r0_reg	 ROATE_KEYV2_S0_AXI_SLV_REG3_OFFSET
#define r1_reg   ROATE_KEYV2_S0_AXI_SLV_REG4_OFFSET
#define r2_reg   ROATE_KEYV2_S0_AXI_SLV_REG5_OFFSET
#define r3_reg   ROATE_KEYV2_S0_AXI_SLV_REG6_OFFSET
#define r4_reg   ROATE_KEYV2_S0_AXI_SLV_REG7_OFFSET
#define r5_reg   ROATE_KEYV2_S0_AXI_SLV_REG8_OFFSET

#define cordic_bass 0x43C00000
#define cordicctl   CORDIC_S0_AXI_SLV_REG1_OFFSET
#define cor_din     CORDIC_S0_AXI_SLV_REG0_OFFSET
#define cor_sin     CORDIC_S0_AXI_SLV_REG2_OFFSET
#define cor_cos     CORDIC_S0_AXI_SLV_REG3_OFFSET
#define cor_fin     CORDIC_S0_AXI_SLV_REG4_OFFSET

#define LED0     0
#define LED1     0
#define LED2     0
#define LED3     0
const u8 invert = 0x0;
const u8 orientation = 0x0;

float sinn=0;
float coss=0;
int angle=0;
int main()
{
	 PmodOLED myDevice;
	 EnableCaches();
	 OLED_Begin(&myDevice, XPAR_PMODOLED_0_AXI_LITE_GPIO_BASEADDR,
	       XPAR_PMODOLED_0_AXI_LITE_SPI_BASEADDR, orientation, invert);
	 //??ת????????ʼ??
	 ROATE_KEYV2_mWriteReg(roate_base, ctl_reg, 1);
	 ROATE_KEYV2_mWriteReg(roate_base, ctl_reg, 0);
	 CORDIC_mWriteReg(cordic_bass, cordicctl, 2);
	 CORDIC_mWriteReg(cordic_bass, cordicctl, 0);
	while(1)
	{
		SW=ROATE_KEYV2_mReadReg(roate_base, sw_reg );
		if(SW>=3)
		{
			page=1;
		}
		else
		{
			page=0;
		}
		 angle=ROATE_KEYV2_mReadReg(roate_base, r0_reg ) ;
		 CORDIC_mWriteReg(cordic_bass, cor_din, angle);
		 //while(ROATE_KEYV2_mReadReg(roate_base, cor_fin )==0 );
		 sinn=CORDIC_mReadReg(cordic_bass, cor_sin)/65536.0;
		 coss=CORDIC_mReadReg(cordic_bass, cor_cos)/65536.0;
		 CORDIC_mWriteReg(cordic_bass, cordicctl, 1);
		 CORDIC_mWriteReg(cordic_bass, cordicctl, 0);
		if(page==0)
		{
			OLED_SetCursor(&myDevice, 0, 0);
			sprintf(tmp,"angle:%d  ",angle);
			OLED_PutString(&myDevice, tmp);


			sprintf(tmp,"sin:%.4f  ",sinn);
			OLED_SetCursor(&myDevice, 0, 1);
			OLED_PutString(&myDevice, tmp);


			sprintf(tmp,"cos:%.4f  ",coss);
			OLED_SetCursor(&myDevice, 0, 2);
			OLED_PutString(&myDevice, tmp);


			OLED_SetCursor(&myDevice, 0, 3);
			sprintf(tmp,"SW:%d  ",SW);
			OLED_PutString(&myDevice, tmp);

			OLED_SetCursor(&myDevice, 15, SW%3);
			OLED_PutString(&myDevice, "<");
		}
		if(page==1)
		{
			OLED_SetCursor(&myDevice, 0, 0);
			sprintf(tmp,"LedB:%d  ", LED1_pwm);
			OLED_PutString(&myDevice, tmp);


			sprintf(tmp,"E:%.2f  ",testE*0.01);
			OLED_SetCursor(&myDevice, 0, 1);
			OLED_PutString(&myDevice, tmp);


			sprintf(tmp,"F:%.3f  ",testF*0.001);
			OLED_SetCursor(&myDevice, 0, 2);
			OLED_PutString(&myDevice, tmp);


			OLED_SetCursor(&myDevice, 0, 3);
			sprintf(tmp,"SW:%d  ",SW);
			OLED_PutString(&myDevice, tmp);

			OLED_SetCursor(&myDevice, 15, SW%3);
			OLED_PutString(&myDevice, "<");
		}
	    if(SW!=pre_SW)
	    {
	    	OLED_ClearBuffer(&myDevice);
	    }
	    pre_SW=SW;


	}

	return 0;
}


