#include "delay.h"

void delay_ms(u16 t_ms)
{
	while (t_ms--){
			delay_us(1000);
	}
}

void delay_us(u16 t_us)
{
	u16 count=t_us/3;
	while (count--);
}