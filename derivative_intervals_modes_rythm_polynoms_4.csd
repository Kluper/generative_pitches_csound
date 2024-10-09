<CsoundSynthesizer>
<CsOptions>
--port=9000
;--output="C:\Users\lbasd\Documents\techno\toto.wav"
-odac
</CsOptions>
<CsInstruments>

sr = 48000
ksmps = 1
nchnls = 2
0dbfs  = 1

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\106.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\201.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\202.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\203.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\204.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\205.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\206.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\207.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\208.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\209.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\210.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\211.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\212.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\213.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\214.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\215.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\216.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\218.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\219.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\301.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\302.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\303.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\304.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\305.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\306.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\307.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\308.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\309.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\310.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\311.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\312.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\313.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\314.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\315.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\316.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\400.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\401.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\402.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\403.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\ftgen\222.txt"

#include "indexcount.orc"


gaTrans init 0

  giIDE   [][] init 7, 25
  giRythm [][] init 6, 25
  giDur   [][] init 5, 32

  ;                  -12,    -11, 		-10, 		-9, 		-8, 	-7, 		-6, 	-5, 		-4, 	-3, 		-2, 	-1,		0, 	1, 			2, 		3, 			4, 		5, 			6, 		7, 			8, 		9, 			10, 	11,     12 
  giIDE [][] fillarray 0.5, 0.529732, 0.561231, 0.594604, 0.629961, 0.667420, 0.707107, 0.749154, 0.793701, 0.840896, 0.890899, 0.973874, 1, 1.053500, 1.118034, 1.185185, 1.265625, 1.333333, 1.365853, 1.414214, 1.461538, 1.550725, 1.620156, 1.683620, 2.0,\;temperament égal
  					   0.5, 0.592593, 0.617284, 0.645161, 0.681818, 0.707107, 0.741935, 0.777778, 0.812500, 0.857143, 0.895775, 0.943874, 1, 1.053500, 1.118034, 1.185185, 1.265625, 1.333333, 1.365853, 1.414214, 1.461538, 1.550725, 1.620156, 1.683620, 2.0,\;mesotonic
  					   0.5, 0.529732, 0.561231, 0.594604, 0.629961, 0.667420, 0.707107, 0.749154, 0.793701, 0.840896, 0.890899, 0.943874, 1, 1.059463, 1.122462, 1.189207, 1.259921, 1.334840, 1.414214, 1.498307, 1.587401, 1.681793, 1.781797, 1.887749, 2.0,\;werckmeister III
  					   0.5, 0.590909, 0.617284, 0.645161, 0.672414, 0.704545, 0.740741, 0.775000, 0.812500, 0.854701, 0.894737, 0.941176, 1, 1.062500, 1.121951, 1.170732, 1.250000, 1.285714, 1.351351, 1.416667, 1.500000, 1.562500, 1.666667, 1.750000, 2.0,\;chaumont
  					   0.5, 0.561798, 0.590909, 0.620690, 0.653846, 0.689655, 0.724138, 0.761905, 0.800000, 0.846154, 0.892857, 0.944882, 1, 1.055556, 1.120000, 1.181818, 1.250000, 1.315789, 1.380952, 1.448276, 1.538462, 1.600000, 1.681818, 1.764706, 2.0,\;kirnberger III
  					   0.5, 0.549451, 0.576923, 0.606061, 0.641509, 0.675676, 0.714286, 0.757576, 0.800000, 0.846154, 0.892857, 0.944444, 1, 1.055556, 1.125000, 1.181818, 1.250000, 1.315789, 1.400000, 1.481481, 1.555556, 1.636364, 1.714286, 1.818182, 2.0,\;rameau
  					   0.5, 0.567901, 0.595238, 0.625000, 0.661972, 0.694444, 0.729730, 0.769231, 0.813953, 0.851064, 0.892857, 0.947867, 1, 1.055556, 1.125000, 1.173913, 1.230769, 1.285714, 1.333333, 1.388889, 1.450000, 1.526316, 1.600000, 1.666667, 2.0
						 
  giRythm [][] fillarray  0,1,0,1,0,1,1,0,0,1,1,0,1,1,0,1,1,0,1,0,0,1,0,1,\;
						  0,0,0,1,0,1,0,0,1,0,1,0,1,1,1,0,1,1,1,0,0,0,0,1,\;
						  1,0,1,1,1,0,0,1,0,0,1,0,0,1,1,0,1,1,0,0,1,0,0,0,\;
						  1,1,0,0,0,1,0,1,0,1,1,0,0,0,0,1,0,0,0,0,1,1,1,0,\;
						  1,0,1,1,0,1,0,0,0,1,0,0,1,1,1,1,1,1,1,0,1,1,0,1,\;
						  1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,1,1,0,1,0,0,1,1
						  
  giDur [][] fillarray	0.55,0.61,0.64,0.45,0.47,0.36,0.13,0.83,0.85,0.47,0.26,0.78,0.78,0.39,0.17,0.60,0.60,0.65,0.50,0.66,0.90,0.50,0.99,0.30,0.53,0.49,0.53,0.57,0.39,0.70,0.78,0.71,\;
						0.21,0.51,0.43,0.26,0.76,0.72,0.54,0.79,0.62,0.70,0.46,0.55,0.25,0.26,0.82,0.28,0.56,0.29,0.31,0.47,0.65,0.51,0.31,0.28,0.60,0.60,0.60,0.36,0.40,0.37,0.64,0.55,\;
						1.60,0.49,1.54,0.89,0.55,0.61,0.32,0.42,0.49,0.44,0.44,1.54,0.29,0.55,0.49,0.44,1.31,0.74,0.58,0.42,0.72,1.28,1.74,1.37,0.62,1.48,0.19,0.52,0.58,0.55,1.69,0.36,\;
						3.06,1.40,1.29,0.83,1.37,1.43,1.51,1.71,0.98,1.11,3.22,1.07,0.52,0.89,1.28,1.86,0.93,0.88,2.66,0.63,1.31,0.86,0.73,3.15,0.52,0.58,0.47,0.59,0.79,1.17,2.44,0.11
						
						 
						  
  gaTrans init 0
  
  
  chn_k "index", 1
  chn_k "index1", 1
  chn_k "index2", 1
  chn_k "seq1", 1
  chn_k "seq2", 1
  chn_k "seq2", 1
  chn_k "speed", 1
  chn_k "temperament", 1

instr 1

kline init 0
kline line 0, -p3, 512
kline int kline

OSCsend kline  ,"127.0.0.1", 1004, "/iWrite" , "f", kline

kspeed chnget "speed"

OSCsend kspeed       ,"127.0.0.1", 1004, "/speed" , "f" , kspeed

kmult oscil3 1, 0.125, 210
kmult scale kmult, 2, 0.5

kspeed *= kmult

kmax = 24
kmode = 0
ktrig1 metro 4*kspeed
kindex1 indexcount ktrig1, kmax, kmode

OSCsend kindex1   ,"127.0.0.1", 1002, "/index" , "i" , kindex1
if kindex1 < 23 kgoto contin
turnoff 
contin:

ktrig2 metro 2*kspeed
kindex2 indexcount ktrig2, kmax, kmode

ktrig3 metro 4*kspeed
kindex3 indexcount ktrig3, kmax, kmode

kSeq1 chnget "seq1"
kSeq2 chnget "seq2"
kSeq3 chnget "seq3"

kP1 = giRythm[0][kindex1]
kP2 = giRythm[1][kindex2]
kP3 = giRythm[2][kindex3]

OSCsend kP1  ,"127.0.0.1", 1002, "/play" , "i" , kP1
OSCsend kP2  ,"127.0.0.1", 1002, "/play1" , "i", kP2
OSCsend kP3  ,"127.0.0.1", 1002, "/play2" , "i", kP3

chnset kP1, "joue"
chnset kP2, "joue1"
chnset kP3, "joue2"


endin

instr 2

knote1 init 0

kIndex chnget "index"
kIndex1 chnget "index1"
kIndex2 chnget "index2"


kP  chnget "joue"
kP2 chnget "joue1"
kP4 chnget "joue2"

kTemp chnget "temp"

kP1 changed kP
kP3 changed kP2
kP5 changed kP4

kmult oscil 1, 1, 1
kmult abs kmult
kmult scale kmult, 1.3, 0.9
kmult int kmult 

if kP == 1 && kP1 == 1 then

kmax = 31
kmode = 0
kIndexDur1 indexcount kP1, kmax, kmode

kSeq1 = 3
kdur1  = giDur[kSeq1][kIndexDur1]

knote1 = giIDE[kTemp][kIndex]

kScale1 = (knote1 - 0.5) * (2 - 0.5) / (2 - 0.5) + 0.5

kpitch1 init 220
kpitch1 = 220*kScale1

OSCsend kScale1       ,"127.0.0.1", 1004, "/relative" , "f" , kScale1

event "i", 3, 0, kdur1, kpitch1        
event "i", 3, 0, kdur1, kpitch1*kmult*2
event "i", 3, 0, kdur1, kpitch1*kmult*4

OSCsend knote1       ,"127.0.0.1", 1004, "/note_1"   , "f" , knote1
OSCsend knote1*kmult ,"127.0.0.1", 1004, "/note_2"   , "f" , knote1*kmult

endif 



if kP2 == 1 && kP3 == 1 then
knote2 = giIDE[kTemp][kIndex1]

kmax = 31
kmode = 0
kIndexDur2 indexcount kP3, kmax, kmode

kSeq2 = 3
kdur2  = giDur[kSeq2][kIndexDur2]

kScale2 = (knote2 - 0.5) * (2 - 0.5) / (2 - 0.5) + 0.5

kpitch2 init 220
kpitch2 = 220*kScale2

event "i", 3, 0, kdur2, kpitch2		   
event "i", 3, 0, kdur2, kpitch2*kmult*2
event "i", 3, 0, kdur2, kpitch2*kmult*4

OSCsend knote2       ,"127.0.0.1", 1004, "/note_3" , "f" , knote2
OSCsend knote2*kmult ,"127.0.0.1", 1004, "/note_4" , "f" , knote2*kmult

endif

if kP4 == 1 && kP5 == 1 then
knote3 = giIDE[kTemp][kIndex2]

kmax = 31
kmode = 0
kIndexDur3 indexcount kP5, kmax, kmode

kSeq3 = 3
kdur3  = giDur[kSeq3][kIndexDur3]

kScale3 = (knote3 - 0.5) * (2 - 0.5) / (2 - 0.5) + 0.5

kpitch3 init 220
kpitch3 = 220*kScale3


event "i", 3, 0, kdur3, kpitch3		
event "i", 3, 0, kdur3, kpitch3*kmult*2
event "i", 3, 0, kdur3, kpitch3*kmult*4

OSCsend knote3       ,"127.0.0.1", 1004, "/note_5" , "f" , knote3
OSCsend knote3*kmult ,"127.0.0.1", 1004, "/note_6" , "f" , knote3*kmult

endif

ktoto active 3

if ktoto > 0 then
ksamp metro 10

OSCsend ksamp      ,"127.0.0.1", 1004, "/note_k"   , "f" , ksamp
endif

endin

instr 3
aenv oscil3 1, 1/p3, 209

kpitch = 220

aA oscil aenv*0.1, p4, 6

gaTrans = aA + gaTrans

endin

instr 4
aenv oscil3 1, 1/p3, 209

kpitch = p4

aA oscil aenv*0.1, p4, 6

gaTrans = aA + gaTrans

endin


instr 5

asig = 2*gaTrans

aenv oscil3 1, 0.25, 209

aS = 0.5*asig*aenv 

afl phasor 0.33

kfdk oscil3 0.2, 0.24, 1

aflanger flanger aS, afl, kfdk

arev reverb aS, 0.125

amix = aS  + 0.3*arev + 0.3*aflanger

kpan oscil3 1, 0.125, 1
kpan abs kpan 
kpan scale kpan, 0.75, 0.25

apanL, apanR pan2 amix, kpan
	outs apanL, apanR

	clear gaTrans
endin


</CsInstruments>
<CsScore>

f1 0 16384 10 1                                          ; Sine
f2 0 16384 10 1 0.5 0.3 0.25 0.2 0.167 0.14 0.125 .111   ; Sawtooth
f3 0 16384 10 1 0   0.3 0    0.2 0     0.14 0     .111   ; Square
f4 0 16384 10 1 1   1   1    0.7 0.5   0.3  0.1          ; Pulse

#include "C:\Users\bangtilde\Documents\licence1\CSD\gen_7_2\5.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\gen_7_2\6.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\gen_7_2\7.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\gen_7_2\8.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\gen_7_2\10.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\gen_7_2\220.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\gen_7_2\221.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\gen_7_2\217.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\gen_7_2\109.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\gen_7_2\111.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\gen_7_2\317.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\gen_7_2\318.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\gen_7_2\111.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\gen_7_2\223.txt"

#include "C:\Users\bangtilde\Documents\licence1\CSD\gen_7_2\224.txt"
;i 1 0 10
i 2 0 -1
i 5 0 -1


e
</CsScore>
</CsoundSynthesizer>

