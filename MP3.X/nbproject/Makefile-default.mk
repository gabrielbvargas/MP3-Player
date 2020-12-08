#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MP3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MP3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED="D:/Documents/MPLABX Projects/MP3-Player/MP3.X/io.c" "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/delay.c" lcd.c "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/songs.c" ssd.c keypad.c "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/timer.c" "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/main.c" "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/pwm.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1261146322/io.p1 ${OBJECTDIR}/_ext/1261146322/delay.p1 ${OBJECTDIR}/lcd.p1 ${OBJECTDIR}/_ext/1261146322/songs.p1 ${OBJECTDIR}/ssd.p1 ${OBJECTDIR}/keypad.p1 ${OBJECTDIR}/_ext/1261146322/timer.p1 ${OBJECTDIR}/_ext/1261146322/main.p1 ${OBJECTDIR}/_ext/1261146322/pwm.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1261146322/io.p1.d ${OBJECTDIR}/_ext/1261146322/delay.p1.d ${OBJECTDIR}/lcd.p1.d ${OBJECTDIR}/_ext/1261146322/songs.p1.d ${OBJECTDIR}/ssd.p1.d ${OBJECTDIR}/keypad.p1.d ${OBJECTDIR}/_ext/1261146322/timer.p1.d ${OBJECTDIR}/_ext/1261146322/main.p1.d ${OBJECTDIR}/_ext/1261146322/pwm.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1261146322/io.p1 ${OBJECTDIR}/_ext/1261146322/delay.p1 ${OBJECTDIR}/lcd.p1 ${OBJECTDIR}/_ext/1261146322/songs.p1 ${OBJECTDIR}/ssd.p1 ${OBJECTDIR}/keypad.p1 ${OBJECTDIR}/_ext/1261146322/timer.p1 ${OBJECTDIR}/_ext/1261146322/main.p1 ${OBJECTDIR}/_ext/1261146322/pwm.p1

# Source Files
SOURCEFILES=D:/Documents/MPLABX Projects/MP3-Player/MP3.X/io.c D:/Documents/MPLABX Projects/MP3-Player/MP3.X/delay.c lcd.c D:/Documents/MPLABX Projects/MP3-Player/MP3.X/songs.c ssd.c keypad.c D:/Documents/MPLABX Projects/MP3-Player/MP3.X/timer.c D:/Documents/MPLABX Projects/MP3-Player/MP3.X/main.c D:/Documents/MPLABX Projects/MP3-Player/MP3.X/pwm.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/MP3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4520
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1261146322/io.p1: D\:/Documents/MPLABX\ Projects/MP3-Player/MP3.X/io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1261146322" 
	@${RM} ${OBJECTDIR}/_ext/1261146322/io.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1261146322/io.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1261146322/io.p1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/io.c" 
	@-${MV} ${OBJECTDIR}/_ext/1261146322/io.d ${OBJECTDIR}/_ext/1261146322/io.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1261146322/io.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1261146322/delay.p1: D\:/Documents/MPLABX\ Projects/MP3-Player/MP3.X/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1261146322" 
	@${RM} ${OBJECTDIR}/_ext/1261146322/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1261146322/delay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1261146322/delay.p1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/delay.c" 
	@-${MV} ${OBJECTDIR}/_ext/1261146322/delay.d ${OBJECTDIR}/_ext/1261146322/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1261146322/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lcd.p1: lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lcd.p1.d 
	@${RM} ${OBJECTDIR}/lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lcd.p1 lcd.c 
	@-${MV} ${OBJECTDIR}/lcd.d ${OBJECTDIR}/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1261146322/songs.p1: D\:/Documents/MPLABX\ Projects/MP3-Player/MP3.X/songs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1261146322" 
	@${RM} ${OBJECTDIR}/_ext/1261146322/songs.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1261146322/songs.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1261146322/songs.p1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/songs.c" 
	@-${MV} ${OBJECTDIR}/_ext/1261146322/songs.d ${OBJECTDIR}/_ext/1261146322/songs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1261146322/songs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ssd.p1: ssd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ssd.p1.d 
	@${RM} ${OBJECTDIR}/ssd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ssd.p1 ssd.c 
	@-${MV} ${OBJECTDIR}/ssd.d ${OBJECTDIR}/ssd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ssd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/keypad.p1: keypad.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/keypad.p1.d 
	@${RM} ${OBJECTDIR}/keypad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/keypad.p1 keypad.c 
	@-${MV} ${OBJECTDIR}/keypad.d ${OBJECTDIR}/keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1261146322/timer.p1: D\:/Documents/MPLABX\ Projects/MP3-Player/MP3.X/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1261146322" 
	@${RM} ${OBJECTDIR}/_ext/1261146322/timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1261146322/timer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1261146322/timer.p1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/timer.c" 
	@-${MV} ${OBJECTDIR}/_ext/1261146322/timer.d ${OBJECTDIR}/_ext/1261146322/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1261146322/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1261146322/main.p1: D\:/Documents/MPLABX\ Projects/MP3-Player/MP3.X/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1261146322" 
	@${RM} ${OBJECTDIR}/_ext/1261146322/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1261146322/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1261146322/main.p1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/main.c" 
	@-${MV} ${OBJECTDIR}/_ext/1261146322/main.d ${OBJECTDIR}/_ext/1261146322/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1261146322/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1261146322/pwm.p1: D\:/Documents/MPLABX\ Projects/MP3-Player/MP3.X/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1261146322" 
	@${RM} ${OBJECTDIR}/_ext/1261146322/pwm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1261146322/pwm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1261146322/pwm.p1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/pwm.c" 
	@-${MV} ${OBJECTDIR}/_ext/1261146322/pwm.d ${OBJECTDIR}/_ext/1261146322/pwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1261146322/pwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1261146322/io.p1: D\:/Documents/MPLABX\ Projects/MP3-Player/MP3.X/io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1261146322" 
	@${RM} ${OBJECTDIR}/_ext/1261146322/io.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1261146322/io.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1261146322/io.p1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/io.c" 
	@-${MV} ${OBJECTDIR}/_ext/1261146322/io.d ${OBJECTDIR}/_ext/1261146322/io.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1261146322/io.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1261146322/delay.p1: D\:/Documents/MPLABX\ Projects/MP3-Player/MP3.X/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1261146322" 
	@${RM} ${OBJECTDIR}/_ext/1261146322/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1261146322/delay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1261146322/delay.p1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/delay.c" 
	@-${MV} ${OBJECTDIR}/_ext/1261146322/delay.d ${OBJECTDIR}/_ext/1261146322/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1261146322/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lcd.p1: lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lcd.p1.d 
	@${RM} ${OBJECTDIR}/lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lcd.p1 lcd.c 
	@-${MV} ${OBJECTDIR}/lcd.d ${OBJECTDIR}/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1261146322/songs.p1: D\:/Documents/MPLABX\ Projects/MP3-Player/MP3.X/songs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1261146322" 
	@${RM} ${OBJECTDIR}/_ext/1261146322/songs.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1261146322/songs.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1261146322/songs.p1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/songs.c" 
	@-${MV} ${OBJECTDIR}/_ext/1261146322/songs.d ${OBJECTDIR}/_ext/1261146322/songs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1261146322/songs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ssd.p1: ssd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ssd.p1.d 
	@${RM} ${OBJECTDIR}/ssd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ssd.p1 ssd.c 
	@-${MV} ${OBJECTDIR}/ssd.d ${OBJECTDIR}/ssd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ssd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/keypad.p1: keypad.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/keypad.p1.d 
	@${RM} ${OBJECTDIR}/keypad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/keypad.p1 keypad.c 
	@-${MV} ${OBJECTDIR}/keypad.d ${OBJECTDIR}/keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1261146322/timer.p1: D\:/Documents/MPLABX\ Projects/MP3-Player/MP3.X/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1261146322" 
	@${RM} ${OBJECTDIR}/_ext/1261146322/timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1261146322/timer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1261146322/timer.p1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/timer.c" 
	@-${MV} ${OBJECTDIR}/_ext/1261146322/timer.d ${OBJECTDIR}/_ext/1261146322/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1261146322/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1261146322/main.p1: D\:/Documents/MPLABX\ Projects/MP3-Player/MP3.X/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1261146322" 
	@${RM} ${OBJECTDIR}/_ext/1261146322/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1261146322/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1261146322/main.p1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/main.c" 
	@-${MV} ${OBJECTDIR}/_ext/1261146322/main.d ${OBJECTDIR}/_ext/1261146322/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1261146322/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1261146322/pwm.p1: D\:/Documents/MPLABX\ Projects/MP3-Player/MP3.X/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1261146322" 
	@${RM} ${OBJECTDIR}/_ext/1261146322/pwm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1261146322/pwm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1261146322/pwm.p1 "D:/Documents/MPLABX Projects/MP3-Player/MP3.X/pwm.c" 
	@-${MV} ${OBJECTDIR}/_ext/1261146322/pwm.d ${OBJECTDIR}/_ext/1261146322/pwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1261146322/pwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MP3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/MP3.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/MP3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/MP3.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MP3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/MP3.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../Programs/Microship/xc8/v2.20/pic/include/proc" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/MP3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
