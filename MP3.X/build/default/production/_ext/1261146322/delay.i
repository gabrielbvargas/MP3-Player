# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/delay.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Users/gabri/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/delay.c" 2
# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/delay.h" 1



void atraso_ms(int t);
# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/delay.c" 2


void atraso_ms(int t) {
    volatile unsigned char j, k;
    volatile unsigned int i;

    for (i = 0; i < (t); i++) {
        for (j = 0; j < 41; j++) {
            for (k = 0; k < 3; k++);
        }
    }
}
