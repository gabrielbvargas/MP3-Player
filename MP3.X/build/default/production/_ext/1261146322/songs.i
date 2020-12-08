# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/songs.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Users/gabri/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/songs.c" 2
# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/songs.h" 1



void songsInit(void);
void chooseSong(void);
# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/songs.c" 2

# 1 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\stdlib.h" 1 3



# 1 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\musl_xc8.h" 1 3
# 4 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\stdlib.h" 2 3






# 1 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\features.h" 1 3
# 10 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\stdlib.h" 2 3
# 21 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\stdlib.h" 3
# 1 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 18 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long int wchar_t;
# 122 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned size_t;
# 168 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __int24 int24_t;
# 204 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 21 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\stdlib.h" 2 3


int atoi (const char *);
long atol (const char *);
long long atoll (const char *);
double atof (const char *);

float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);
long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);

int rand (void);
void srand (unsigned);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));

__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);
long long llabs (long long);

typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;
typedef struct { long long quot, rem; } lldiv_t;

div_t div (int, int);
ldiv_t ldiv (long, long);
lldiv_t lldiv (long long, long long);

typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);





size_t __ctype_get_mb_cur_max(void);
# 2 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/songs.c" 2

# 1 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\stdio.h" 1 3
# 24 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\stdio.h" 3
# 1 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 1 3





typedef void * va_list[1];




typedef void * __isoc_va_list[1];
# 137 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long ssize_t;
# 246 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long long off_t;
# 399 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 3
typedef struct _IO_FILE FILE;
# 24 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\stdio.h" 2 3
# 52 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\stdio.h" 3
typedef union _G_fpos64_t {
 char __opaque[16];
 double __align;
} fpos_t;

extern FILE *const stdin;
extern FILE *const stdout;
extern FILE *const stderr;





FILE *fopen(const char *restrict, const char *restrict);
FILE *freopen(const char *restrict, const char *restrict, FILE *restrict);
int fclose(FILE *);

int remove(const char *);
int rename(const char *, const char *);

int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
void clearerr(FILE *);

int fseek(FILE *, long, int);
long ftell(FILE *);
void rewind(FILE *);

int fgetpos(FILE *restrict, fpos_t *restrict);
int fsetpos(FILE *, const fpos_t *);

size_t fread(void *restrict, size_t, size_t, FILE *restrict);
size_t fwrite(const void *restrict, size_t, size_t, FILE *restrict);

int fgetc(FILE *);
int getc(FILE *);
int getchar(void);
int ungetc(int, FILE *);

int fputc(int, FILE *);
int putc(int, FILE *);
int putchar(int);

char *fgets(char *restrict, int, FILE *restrict);

char *gets(char *);


int fputs(const char *restrict, FILE *restrict);
int puts(const char *);

#pragma printf_check(printf) const
#pragma printf_check(vprintf) const
#pragma printf_check(sprintf) const
#pragma printf_check(snprintf) const
#pragma printf_check(vsprintf) const
#pragma printf_check(vsnprintf) const

int printf(const char *restrict, ...);
int fprintf(FILE *restrict, const char *restrict, ...);
int sprintf(char *restrict, const char *restrict, ...);
int snprintf(char *restrict, size_t, const char *restrict, ...);

int vprintf(const char *restrict, __isoc_va_list);
int vfprintf(FILE *restrict, const char *restrict, __isoc_va_list);
int vsprintf(char *restrict, const char *restrict, __isoc_va_list);
int vsnprintf(char *restrict, size_t, const char *restrict, __isoc_va_list);

int scanf(const char *restrict, ...);
int fscanf(FILE *restrict, const char *restrict, ...);
int sscanf(const char *restrict, const char *restrict, ...);
int vscanf(const char *restrict, __isoc_va_list);
int vfscanf(FILE *restrict, const char *restrict, __isoc_va_list);
int vsscanf(const char *restrict, const char *restrict, __isoc_va_list);

void perror(const char *);

int setvbuf(FILE *restrict, char *restrict, int, size_t);
void setbuf(FILE *restrict, char *restrict);

char *tmpnam(char *);
FILE *tmpfile(void);




FILE *fmemopen(void *restrict, size_t, const char *restrict);
FILE *open_memstream(char **, size_t *);
FILE *fdopen(int, const char *);
FILE *popen(const char *, const char *);
int pclose(FILE *);
int fileno(FILE *);
int fseeko(FILE *, off_t, int);
off_t ftello(FILE *);
int dprintf(int, const char *restrict, ...);
int vdprintf(int, const char *restrict, __isoc_va_list);
void flockfile(FILE *);
int ftrylockfile(FILE *);
void funlockfile(FILE *);
int getc_unlocked(FILE *);
int getchar_unlocked(void);
int putc_unlocked(int, FILE *);
int putchar_unlocked(int);
ssize_t getdelim(char **restrict, size_t *restrict, int, FILE *restrict);
ssize_t getline(char **restrict, size_t *restrict, FILE *restrict);
int renameat(int, const char *, int, const char *);
char *ctermid(char *);







char *tempnam(const char *, const char *);
# 3 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/songs.c" 2

# 1 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\string.h" 1 3
# 25 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\string.h" 3
# 1 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 411 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 3
typedef struct __locale_struct * locale_t;
# 25 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\string.h" 2 3


void *memcpy (void *restrict, const void *restrict, size_t);
void *memmove (void *, const void *, size_t);
void *memset (void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void *memchr (const void *, int, size_t);

char *strcpy (char *restrict, const char *restrict);
char *strncpy (char *restrict, const char *restrict, size_t);

char *strcat (char *restrict, const char *restrict);
char *strncat (char *restrict, const char *restrict, size_t);

int strcmp (const char *, const char *);
int strncmp (const char *, const char *, size_t);

int strcoll (const char *, const char *);
size_t strxfrm (char *restrict, const char *restrict, size_t);

char *strchr (const char *, int);
char *strrchr (const char *, int);

size_t strcspn (const char *, const char *);
size_t strspn (const char *, const char *);
char *strpbrk (const char *, const char *);
char *strstr (const char *, const char *);
char *strtok (char *restrict, const char *restrict);

size_t strlen (const char *);

char *strerror (int);
# 65 "D:\\Programs\\Microship\\xc8\\v2.20\\pic\\include\\c99\\string.h" 3
char *strtok_r (char *restrict, const char *restrict, char **restrict);
int strerror_r (int, char *, size_t);
char *stpcpy(char *restrict, const char *restrict);
char *stpncpy(char *restrict, const char *restrict, size_t);
size_t strnlen (const char *, size_t);
char *strdup (const char *);
char *strndup (const char *, size_t);
char *strsignal(int);
char *strerror_l (int, locale_t);
int strcoll_l (const char *, const char *, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);




void *memccpy (void *restrict, const void *restrict, int, size_t);
# 4 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/songs.c" 2

# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/lcd.h" 1
# 28 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/lcd.h"
 void lcdCommand(unsigned char cmd);
 void lcdData(unsigned char valor);
 void lcdInit(void);
    void lcdPosition(unsigned char linha, unsigned char coluna);
    void lcdStr(const char* str);
# 5 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/songs.c" 2

# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/bits.h" 1
# 6 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/songs.c" 2

# 1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/keypad.h" 1
# 23 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/keypad.h"
 unsigned int kpRead(void);
 void kpDebounce(void);
 void kpInit(void);
# 7 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/songs.c" 2


typedef struct {
    unsigned int duracao;
    unsigned char nome[17];
} musica;

unsigned char nomes[10][17] = {"Estamos Vivos", "Cheia de Manias", "E Tarde Demais", "Sozinho", "Cigana", "Ciumes de Voce", "Extrapolei",
    "Deus me Livre", "Maravilha", "Medida Exata"};
unsigned int duracoes[10] = {180, 180, 180, 180, 180, 180, 180, 180, 180, 180};
musica musicas[10];

unsigned char tecla = 16, indice = 0;

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
    if (((tecla) & (1<<(0)))) {
        for (;;) {
            kpDebounce();
            if (kpRead() != tecla) {
                tecla = kpRead();
                if (((tecla) & (1<<(3)))) {
                    if (indice == 0) {indice = 9;}
                    else {indice -= 1;}
                } else if (((tecla) & (1<<(7)))) {
                    if (indice == 9) {indice = 0;}
                    else {indice += 1;}
                } else if (((tecla) & (1<<(1)))) {
                    break;
                }
# 56 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/songs.c"
                lcdCommand(0x01);
                lcdPosition(1, 0);
                lcdStr("<-(1) (*)  (2)->");
                lcdPosition(0, 0);


                lcdStr(musicas[indice].nome);
            }
        }
        lcdPosition(0, 0);
    }
}
