#include "config.h"
#include "bits.h"
#include "lcd.h"
#include "keypad.h"
#include "delay.h"

unsigned int tecla = 16;

void main(void) {
    lcdInit();
    kpInit();
    lcdCommand(ON);
    
    lcdPosition(0, 6);
    lcdStr("MP3");
    lcdPosition(1, 6);
    lcdStr("Player");
    atraso_ms(2000);
    
    lcdCommand(CLR);
    lcdPosition(0, 0);
    for (;;) {
        
        lcdStr("Escolha a musica");
        lcdPosition(0, 0);
        
        kpDebounce();
        tecla = kpRead();
        /*if (bitTst(tecla, 0)) { //Tecla *
            for(;;) {
                kpDebounce();
                if (kpRead() != tecla){
                    tecla = kpRead();
                    if (bitTst(tecla, 3)) {
                        linha = 0;
                    }
                    else if (bitTst(tecla, 7)) {
                        linha = 1;
                    }
                    else if (bitTst(tecla, 6)) {
                        coluna++;
                    }
                    else if (bitTst(tecla, 2)) {
                        coluna--;
                    }
                    else if (bitTst(tecla, 5)) { //8
                        switch (coluna) {
                            case 0: hora1++; lcdData(hora1+48); break;
                            case 1: hora2++; lcdData(hora2+48); break;
                            case 3: minuto1++; lcdData(minuto1+48); break;
                            case 4: minuto2++; lcdData(minuto2+48); break;
                            case 6: segundo1++; lcdData(segundo1+48); break;
                            case 7: segundo2++; lcdData(segundo2+48); break;
                            default: break;
                        }
                    }
                    else if (bitTst(tecla, 4)) { //0
                        switch (coluna) {
                            case 0: hora1--; lcdData(hora1+48); break;
                            case 1: hora2--; lcdData(hora2+48); break;
                            case 3: minuto1--; lcdData(minuto1+48); break;
                            case 4: minuto2--; lcdData(minuto2+48); break;
                            case 6: segundo1--; lcdData(segundo1+48); break;
                            case 7: segundo2--; lcdData(segundo2+48); break;
                            default: break;
                        }
                    }
                    else if (bitTst(tecla, 1)) { //7
                        break;
                    }
                    lcdPosition(linha, coluna);
                }
            }
        }*/
    }
}