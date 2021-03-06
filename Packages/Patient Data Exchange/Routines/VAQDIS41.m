VAQDIS41 ;ALB/JRP/JFP - PRINT PROFILES;28APR92
 ;;1.5;PATIENT DATA EXCHANGE;;NOV 17, 1993
PRINT(LONGFORM) ;PRINT PDX PHARMACY INFORMATION
 ;INPUT  :
 ;         LONGFORM - 1 = Print profile in long format (default)
 ;                    0 = Print profile in short format
 ;
 ;CHECK PARAMETERS
 S VAQPOP=0
 S:($G(LONGFORM)="") LONGFORM=1
 ;
 ; -- PRINT HEADER
 S VAQLN=$$REPEAT^VAQUTL1("-",79)
 S VAQCTR="< "_$S($P(VAQSEGND,"^",1)'="":$P(VAQSEGND,"^",1),1:"Segment  Description Missing")_" >"
 S X=$$CENTER^VAQDIS20(VAQLN,VAQCTR)
 D TMP^VAQDIS20,BLANK^VAQDIS20
 K VAQLN,VAQCTR
 ;
 ; -- PRINT DEMOGRAPHICS
 D DEMOG^VAQDIS42,BLANK^VAQDIS20
 ; -- PHARMACY DATA EXIST
 I '$D(@XTRCT@("VALUE",52,.01,0)) D NOPHAR QUIT 0
 I $G(@XTRCT@("VALUE",52,.01,0))="" D NOPHAR QUIT 0
 ; -- PRINT COLUMN HEADINGS FOR SHORT FORMAT
 I ('LONGFORM) D
 .S X=$$SETSTR^VALM1("RX#","",1,7)
 .S X=$$SETSTR^VALM1("DRUG",X,8,37)
 .S X=$$SETSTR^VALM1("STAT",X,45,5)
 .S X=$$SETSTR^VALM1("QTY",X,51,5)
 .S X=$$SETSTR^VALM1("ISSUED",X,56,10)
 .S X=$$SETSTR^VALM1("LAST FILL",X,66,10)
 .S X=$$SETSTR^VALM1("REM",X,76,3)
 .D TMP^VAQDIS20
 .D SHORT^VAQDIS43
 ; -- PRINT LONG FORM
 I (LONGFORM) D
 .D LONG^VAQDIS43
FOOT ; -- PRINT FOOTER
 I 'VAQPOP D
 .S VAQLN=$$REPEAT^VAQUTL1(" ",79)
 .S VAQCTR="***** The above is PDX Pharmacy Information and should be used accordingly *****"
 .S X=$$CENTER^VAQDIS20(VAQLN,VAQCTR) D TMP^VAQDIS20
 ; -- Clean up
 K VAQLN,VAQCTR,VAQPOP,LONGFORM
 QUIT 0
NOPHAR ; -- No pharmacy data
 S VAQMSG="*** There is no Pharmacy Information..."
 S X=$$SETSTR^VALM1(VAQMSG,"",1,79)
 D TMP^VAQDIS20
 K VAQMSG
 QUIT
 ;
