#include "songs.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "lcd.h"
#include "bits.h"
#include "keypad.h"
#include "ssd.h"
#include "delay.h"

typedef struct {
    unsigned int duracao;
    unsigned char nome[17];
} musica;

unsigned char nomes[10][17] = {"Estamos Vivos", "Cheia de Manias", "E Tarde Demais", "Sozinho", "Cigana", "Ciumes de Voce", "Extrapolei",
    "Deus me Livre", "Maravilha", "Medida Exata"};
unsigned int duracoes[10] = {1800, 1800, 180, 180, 180, 180, 180, 180, 180, 180};
musica musicas[10];

unsigned char tecla = 16, indice = 0, cont = 0, flag = 0, tempo, minuto1, minuto2, segundo1, segundo2, cnt = 0, pause = 1;

void songsInit(void) {

    for (unsigned int i = 0; i < 10; i++) {
        musicas[i].duracao = duracoes[i];
        strcpy(musicas[i].nome, (char*) nomes[i]);
    }
    return;
}

void chooseSong(void) {
    kpDebounce();
    tecla = kpRead();
    if (bitTst(tecla, 3) || bitTst(tecla, 7)) { //Tecla *
        flag = 1;
        for (;;) {
            ssdUpdate();
            kpDebounce();
            atraso_ms(10);
            if ((kpRead() != tecla) || flag == 1) {
                tecla = kpRead();
                if (bitTst(tecla, 3)) { //1
                    if (indice == 0) {
                        indice = 9;
                    } else {
                        indice -= 1;
                    }
                } else if (bitTst(tecla, 7)) { //2
                    if (indice == 9) {
                        indice = 0;
                    } else {
                        indice += 1;
                    }
                } else if (bitTst(tecla, 0)) { //*
                    flag = 0;
                    break;
                } //1 -> 7
                /*else if (bitTst(tecla, 6)) { //5
                    coluna++;
                } else if (bitTst(tecla, 2)) { //4
                    coluna--;
                } else if (bitTst(tecla, 5)) { //8

                } else if (bitTst(tecla, 4)) { //0

                } */
                lcdCommand(CLR);
                lcdPosition(1, 0);
                lcdStr("<-(1) (*)  (2)->");
                lcdPosition(0, 0);
                lcdStr(musicas[indice].nome);
                ssdDigit(indice, 3);
                flag = 0;
            }
        }
        playSong();
    }
}

void playSong() {
    lcdCommand(CLR);
    lcdPosition(0, 0);
    lcdStr(musicas[indice].nome);
    lcdPosition(1, 0);
    lcdStr("-(1)  (*)  (2)+");

    tempo = musicas[indice].duracao;
    while (tempo != 0) {
        minuto1 = (tempo / 60) % 10;
        minuto2 = (tempo / 60) / 10;
        segundo1 = (tempo % 60) % 10;
        segundo2 = (tempo % 60) / 10;

        ssdDigit(minuto2, 0);
        ssdDigit(minuto1, 1);
        ssdDigit(segundo2, 2);
        ssdDigit(segundo1, 3);

        for (unsigned char j = 0; j < 100; j++) {
            ssdUpdate();
            atraso_ms(10);
            kpDebounce();
            tecla = kpRead();
            if (bitTst(tecla, 3) || bitTst(tecla, 7) || bitTst(tecla, 0)) {
                flag=1;
                for(;;) {
                    kpDebounce();
                    tecla = kpRead();
                    if ((kpRead() != tecla) || flag == 1) {
                        if (bitTst(tecla, 3)) { //1
                            break;
                        } else if (bitTst(tecla, 7)) { //2
                            break;
                        } else if (bitTst(tecla, 0)) { //*
                            if(pause==0) {pause=1;} else {pause = 0;}
                            break;
                        }
                    }
                }
                
            }
        }
        if (pause == 0) {
            tempo -= 1;
        }
    }
}
