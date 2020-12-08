#include "config.h"
#include "bits.h"
#include "lcd.h"
#include "keypad.h"
#include "delay.h"
#include "songs.h"
#include "ssd.h"



void main(void) {
    
    songsInit();
    lcdInit();
    ssdInit();
    kpInit();
    lcdCommand(ON);

    lcdPosition(0, 6);
    lcdStr("MP3");
    lcdPosition(1, 4);
    lcdStr("Player");
    atraso_ms(5000);
    
    lcdCommand(CLR);
    lcdPosition(0, 0);
    lcdStr("Escolha a musica");
    for (;;) {
        lcdPosition(1, 0);
        lcdStr("<-(1) (*)  (2)->");
        chooseSong();
    }
}