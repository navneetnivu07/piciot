
#define rs RA2
#define en RE0

void hex_dec(unsigned int);
unsigned int th,thr,h,hr,t,o;
void lcd_init();
void command(unsigned char);
void lcd_data(unsigned int);
void lcd_display(const char*);
void lcd();

void lcd_init()
{
command(0x01);
command(0x06);
command(0x0c);
command(0x38);
}
void command(unsigned char com)
{
PORTD=com;
rs=0;
en=1;
__delay_ms(10);
en=0;
__delay_ms(10);
}
void lcd_data(unsigned int D)
{
PORTD=D;
rs=1;
en=1;
__delay_ms(10);
en=0;
__delay_ms(10);
}
void lcd_display(const char *word)
{
while(*word)
{
lcd_data(*word++);
__delay_ms(1);
}
}
void hex_dec(unsigned int val) 
{
 h=val/1000;
 hr=val%1000;
 t=hr/100;
 o=hr%100;
 th=o/10;
 thr=o%10;
 ///lcd_data(h+0x30); 
 //lcd_data(t+0x30); 
 lcd_data(th+0x30);
 lcd_data(thr+0x30);
}