# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/main.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Users/gabri/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/main.c" 2
# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/config.h" 1
# 26 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/config.h"
#pragma config OSC=HS
#pragma config FCMEN = OFF
#pragma config IESO = OFF
#pragma config PWRT = OFF
#pragma config BOREN = OFF
#pragma config BORV = 46
#pragma config WDT=OFF
#pragma config WDTPS = 1
#pragma config MCLRE=ON
#pragma config LPT1OSC = OFF
#pragma config PBADEN = ON
#pragma config CCP2MX = PORTC
#pragma config STVREN = OFF
#pragma config LVP=OFF
#pragma config XINST = OFF
#pragma config DEBUG = OFF

#pragma config CP0 = OFF
#pragma config CP1 = OFF
#pragma config CP2 = OFF
#pragma config CP3 = OFF
#pragma config CPB = OFF
#pragma config CPD = OFF

#pragma config WRT0 = OFF
#pragma config WRT1 = OFF
#pragma config WRT2 = OFF
#pragma config WRT3 = OFF
#pragma config WRTB = OFF
#pragma config WRTC = OFF
#pragma config WRTD = OFF

#pragma config EBTR0 = OFF
#pragma config EBTR1 = OFF
#pragma config EBTR2 = OFF
#pragma config EBTR3 = OFF
#pragma config EBTRB = OFF
# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/main.c" 2

# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/bits.h" 1
# 2 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/main.c" 2

# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/lcd.h" 1
# 28 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/lcd.h"
 void lcdCommand(unsigned char cmd);
 void lcdData(unsigned char valor);
 void lcdInit(void);
    void lcdPosition(unsigned char linha, unsigned char coluna);
    void lcdStr(const char* str);
# 3 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/main.c" 2

# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/keypad.h" 1
# 23 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/keypad.h"
 unsigned int kpRead(void);
 void kpDebounce(void);
 void kpInit(void);
# 4 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/main.c" 2

# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/delay.h" 1



void atraso_ms(int t);
# 5 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/main.c" 2

# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/songs.h" 1



void songsInit(void);
void chooseSong(void);
void playSong(void);
void alterarVolume(char opt);
# 6 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/main.c" 2

# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/ssd.h" 1
# 22 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/ssd.h"
 void ssdDigit(char val, char pos);
 void ssdUpdate(void);
 void ssdInit(void);
# 7 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/main.c" 2




void main(void) {

    songsInit();
    lcdInit();
    ssdInit();
    kpInit();
    lcdCommand(0x0F);

    lcdPosition(0, 6);
    lcdStr("MP3");
    lcdPosition(1, 4);
    lcdStr("Player");
    atraso_ms(2000);

    lcdCommand(0x01);
    lcdPosition(0, 0);
    lcdStr("Escolha a musica");
    for (;;) {
        lcdPosition(1, 0);
        lcdStr("<-(1) (*)  (2)->");
        chooseSong();
    }
}
