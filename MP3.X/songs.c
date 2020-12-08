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
unsigned int duracoes[10] = {180, 180, 180, 180, 180, 180, 180, 180, 180, 180};
musica musicas[10];

unsigned char tecla = 16, indice = 0, cont = 0, flag = 0;

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
    if (bitTst(tecla, 3)||bitTst(tecla, 7)) { //Tecla *
        flag = 1;
        for (;;) {
            ssdUpdate();
            kpDebounce();
            atraso_ms(10);
            if ((kpRead() != tecla)||flag == 1) {
                tecla = kpRead();
                if (bitTst(tecla, 3)) { //1
                    if (indice == 0) {indice = 9;}
                    else {indice -= 1;}
                } else if (bitTst(tecla, 7)) { //2
                    if (indice == 9) {indice = 0;}
                    else {indice += 1;}
                } else if (bitTst(tecla, 0)) { //*
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
                //lcdData(indice);
                //lcdData('-');
                lcdStr(musicas[indice].nome);
                ssdDigit(indice, 3);
                flag = 0;
            }
        }
        lcdPosition(0, 0);
    }
}
