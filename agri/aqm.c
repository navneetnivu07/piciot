#include<pic.h>
#define _XTAL_FREQ 20e6
#define relay RA5
#define buzz RC2
#define rs RA2
#define en RE0
#define moi RC0
#define pir RC1

void serial_init();
void serial_display(const char *w);
void serial_out(unsigned char z);
void gsm_init();
void interrupt funct(void);
void gprs();
void adc_conversion();
void hexa_val(unsigned int c);
void lcd_init();
void command(unsigned char);
void lcd_data(unsigned char);
void lcd_display(const char*);
void gprs1();

unsigned char r[5],s[5];   
unsigned char y,p;
unsigned int a,b,c,d,j,k,l,m,n;
							
void main(){
	ADCON1=0X8E;
	TRISB=0x00;
	PORTB=0x00;
	TRISA=0x01;
	PORTA=0x00;
	TRISD=0x00;
	PORTD=0x00;
	TRISC=0x83;
	PORTC=0x00;
	PORTE=0X00;
	TRISE=0X00;
	relay=1;
	serial_init();
	gsm_init();
	lcd_init();
	command(0x80);
	lcd_display("VOLT:");
	command(0x87);
	//lcd_display("Deg");
	while(1){
		adc_conversion();
		command(0x85);
		hexa_val(c);
		__delay_ms(500);
		gprs();
	}
}

void gsm_init(){
	serial_display("AT");
	serial_out(0x0d);
	__delay_ms (500);
	serial_display("AT");
	serial_out(0x0d);
	__delay_ms (500);
	serial_display("AT+CREG?");
	serial_out(0x0d);
	__delay_ms (500);
	//serial_display("AT+HTTPTERM");
	//serial_out(0x0d);
	//__delay_ms (1000);
	serial_display("AT+SAPBR=1,1");
	serial_out(0x0d);
	__delay_ms (1000);
	serial_display("AT+HTTPINIT");
	serial_out(0x0d);
	__delay_ms (1000);
}

void serial_init(){
	SPBRG=129;
	BRGH=1;
	SYNC=0;
	SPEN=1;
	RCIE=1;
	CREN=1;
	TXEN=1;
	GIE=1;
	PEIE=1;
}
void gprs(){
	serial_display("AT+HTTPPARA=");
	serial_out('"');
	serial_display("URL");
	serial_out('"');
	serial_out(',');
	serial_out('"');
	//http://livemonitoring.info/sns01agri/insert.php?temp=45&moist=FULL&anim=Animal%20Detect
	serial_display("livemonitoring.co.in/agri01/insert.php?temp=");
	serial_out(m+0x30);
	serial_out(n+0x30);
	serial_display("&moist=");
	
	if(moi==0){
		serial_display("FULL");
	}else{
		serial_display("DRY ");
	}
	
	serial_display("&anim=");
	
	if(pir==1){
		serial_display("AnimalDetect");
	}else{
		serial_display("NoAnimalDetect");
	}
	
	serial_out('"');
	serial_out(0x0d);
	__delay_ms (2000);
	serial_display("AT+HTTPPARA=");
	serial_out('"');
	serial_display("CID");
	serial_out('"');
	serial_out(',');
	serial_out('1');
	serial_out(0x0d);
	__delay_ms (2000);
	serial_display("AT+HTTPACTION=0");
	serial_out(0x0d);
	__delay_ms (2000);
	gprs1();
}

void gprs1(){	  
	serial_display("AT+HTTPPARA=");
	serial_out('"');
	serial_display("URL");
	serial_out('"');
	serial_out(',');
	serial_out('"');
	serial_display("livemonitoring.co.in/agri01/mout.php");
	serial_out('"');
	serial_out(0x0d);
	serial_display("AT+HTTPPARA=");
	serial_out('"');
	serial_display("CID");
	serial_out('"');
	serial_out(',');
	serial_out('1');
	serial_out(0x0d);__delay_ms(2000);
	serial_display("AT+HTTPACTION=0");
	serial_out(0x0d);__delay_ms(2000);
	serial_display("AT+HTTPREAD");
	serial_out(0x0d);__delay_ms(3000);

	if(p>=2)
	{
		if(s[1]=='1'){relay=0;command(0x8D);lcd_display("ON ");}
		if(s[1]=='2'){relay=1;command(0x8D);lcd_display("OFF");}
		p=0;s[p]=0;
	}
}

void serial_out(unsigned char z){
	TXREG=z;
	while(!TXIF);
	TXIF=0;
}

void serial_display(const char *w){
	while(*w){
		serial_out(*w++);
	}
}

void interrupt funct(void){
	if(RCIF){
		RCIF=0;
		s[p]=RCREG;
		if(s[0]=='*'){p++;}
		else {p=0;}
	}
}

void adc_conversion(){
	ADCON0=0XC5;
	while(ADGO);
	a=ADRESL;
	b=ADRESH;
	b=b*256;
	c=b+a/2;
}

void hexa_val(unsigned int val){
	d=val/1000;
	j=val%1000;
	k=j/100;
	l=j%100;
	m=l/10;
	n=l%10;
	lcd_data(m+0x30);
	lcd_data(n+0x30);
}

void lcd_init(){
	command(0x01);
	command(0x06);
	command(0x0c);
	command(0x38);
}

void command(unsigned char com){
	PORTD=com;
	rs=0;
	en=1;
	__delay_ms(10);
	en=0;
	__delay_ms(10);
}

void lcd_data(unsigned char D){
	PORTD=D;
	rs=1;
	en=1;
	__delay_ms(10);
	en=0;
	__delay_ms(10);
}

void lcd_display(const char *word){
	while(*word){
		lcd_data(*word++);
		__delay_ms(1);
	}
}
