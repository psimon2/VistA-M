PXBGPRV2 ;ISL/JVS - DOUBLE ?? GATHERING OF PROVIDER ; 7/12/07 10:38am
 ;;1.0;PCE PATIENT CARE ENCOUNTER;**7,11,19,105,186**;Aug 12, 1996;Build 3
 ;
 ;
 ;
 W !,"THIS IS NOT AN ENTRY POINT" Q
 ;
DOUBLE(FROM) ;--Entry point
 ;
 ;  WHAT   = The same WHAT as sent in from the API
 ;  FROM   = Exactly which prompt is asking for the list
 ;  SCREEN = Same as the DIC("S") screen used by file man
 ;  START  = The starting point as to what to look up
 ;
 N FILE,FIELD,TITLE,HEADING,SUB,CODE,NAME,START,SCREEN,BACK,NUM,TEMP
 ;
 S BACK="",NUM=0,SCREEN=""
 D LOC
 I $D(DIC("S")) S SCREEN=DIC("S")
 ;
START ;--RECYCLE POINT
 ;
 S TITLE="- - A L L  P R O V I D E R S - -"
 ;
 D SETUP
 ;
 ; begin patch *186*
 S:$G(SCREEN)="" SCREEN="I $$ACTIVPRV^PXAPI(Y,$G(IDATE,DT))"
 ;D LIST^DIC(FILE,"",FIELD,BACK,10,.START,"","","","","^TMP(""PXBTANA"",$J)","^TMP(""PXBTANA"",$J)")
 D LIST^DIC(FILE,"",FIELD,BACK,10,.START,"","",SCREEN,"","^TMP(""PXBTANA"",$J)","^TMP(""PXBTANA"",$J)")
 ; end patch *186*
 ;
 D LOC,HEAD,SUB
 ;
PROMPT ;---WRITE PROMPT HERE
 D WIN17^PXBCC(PXBCNT),LOC^PXBCC(15,1)
 I $G(START)'="" W !!,"Enter '^' to quit,  '-' for previous page."
 I $G(START)'="" S DIR("A")="Select a single 'ITEM NUMBER' or 'RETURN' to continue: "
 I $G(START)="" S DIR("A")="Select a single 'ITEM NUMBER' or 'RETURN' to exit: "
 S DIR("?")="Enter ITEM 'No' to select , '^' to quit,  '-' for previous page."
 S DIR(0)="N,A,O^0:10:0^I X'?.1""-"".1""^"".2N!(+X>10) K X"
 D ^DIR
 I X="",$G(START)="" S X="^",DIRUT=1
 I X="-" S BACK="B" D BACK G START
 I X="" S BACK="" D FORWARD G START
 I $G(DIRUT) K DIRUT S VAL="^P" G EXIT
FINISH ;--FINISH SETTING A VARIBLE TO SELECTED ITEM
 ;
 S VAL=$G(^TMP("PXBTANA",$J,"DILIST",2,X))_"^"_$G(^TMP("PXBTANA",$J,"DILIST","ID",X,.01))
EXIT ;--EXIT
 K DIR,^TMP("PXBTANA",$J),^TMP("PXBTOTAL",$J)
 Q VAL
 ;
DOUBLE1(FROM) ;--Entry point
 ;
NEW ;
 ;
 N FILE,FIELD,TITLE,HEADING,SUB,CODE,NAME,START,SCREEN,CNT,OK,INDEX,CYCLE
 N TOTAL,TEMP,SUB2,VANUMBER,PXBVA
 ;---SETUP VARIABLES
 ; begin patch *186*
 ; S BACK="",INDEX="",TOTAL1=0
 S BACK="",INDEX="",TOTAL=0
 ; end patch *186*
 S START=DATA,SUB=0,SUB2=0
 ;
START1 ;--RECYCLE POINT
 S TITLE="- - S E L E C T E D   P R O V I D E R S - -"
 S FILE=200
 S FIELD="@;.01"  ; FIELD=.01  TEJ *105 CHANGE PARM 12/14/2000
RELOOK ;----ADJUST THE DATA FOR LOOKUP IF NECESSARY
 I DATA?.AP S START=$O(^VA(200,"B",DATA),-1)
 I DATA?1AP S DATA="*"
 I DATA?1A4N S START=$O(^VA(200,"BS5",DATA),-1) S INDEX="BS5"
 ;----------------
 ; begin patch *186*
 ;S SCREEN=""
 S SCREEN="I $$ACTIVPRV^PXAPI(Y,$G(IDATE,DT))"
 ; end patch *186*
 ;
 D LIST^DIC(FILE,"",FIELD,BACK,"",.START,DATA,INDEX,SCREEN,"","^TMP(""PXBTOTAL"",$J)","^TMP(""PXBTOTAL"",$J)")
 S TOTAL=$P(^TMP("PXBTOTAL",$J,"DILIST",0),"^",1)
 ;-------------VA NUMBER------------------
 S PXBVA=0 F  S PXBVA=$O(^TMP("PXBTOTAL",$J,"DILIST",2,PXBVA)) Q:PXBVA=""  S VANUMBER($G(^TMP("PXBTOTAL",$J,"DILIST",2,PXBVA)))=""
 S START=$O(^VA(200,"PS2",DATA),-1)
 I DATA=+DATA S START=DATA_" "
 F  S START=$O(^VA(200,"PS2",START)) Q:START'[DATA  D
 .Q:$D(VANUMBER($O(^VA(200,"PS2",START,0))))
 .N IEN
 .S TOTAL=TOTAL+1
 .S (IEN,^TMP("PXBTOTAL",$J,"DILIST",2,TOTAL))=$O(^VA(200,"PS2",START,0))
 .S ^TMP("PXBTOTAL",$J,"DILIST","ID",TOTAL,.01)=$P($G(^VA(200,IEN,0)),"^",1)
 ;----------END VA NUMBERS-----------------
 ;
 ;--DISPLAY IF NO MATCH FOUND
 I TOTAL=0 D
 .D WIN17^PXBCC(PXBCNT)
 .I DATA?1AP W ! D HELP^PXBUTL0("CPT4")
 .I DATA'?1AP W ! D HELP^PXBUTL0("PRVM")
 .S ERROR=1,CYCL=1
 I TOTAL=0 Q TOTAL
 ;
 ;
 ;----DISPLAY LIST TO THE SCREEN
 S HEADING="W !,""ITEM"",?6,""NAME"",?30,""PERSON CLASS IN NEW PERSON FILE"""
LIST ;-DISPLAY LIST TO THE SCREEN
 ;---NEW CODE PATCH 11
 N PXBTYPE
 I TOTAL=1 D  I PXBTYPE>0 S X=1 G VAL
 .S PXBTYPE=$$GET^XUA4A72($G(^TMP("PXBTOTAL",$J,"DILIST",2,1)),+$P($P($G(^AUPNVSIT(PXBVST,0)),U),"."))
 ;-----END NEW CODE---
 ;I TOTAL=1 S X=1 G VAL
 D LOC W !
 X HEADING
 S SUB=SUB-1
 S NUM=0 F  S SUB=$O(^TMP("PXBTOTAL",$J,"DILIST","ID",SUB)) S NUM=NUM+1 Q:NUM=11  Q:SUB'>0  S SUB2=SUB2+1 D
 .;---CHANGED
 .N NAME,TYPE
 .S NAME=$G(^TMP("PXBTOTAL",$J,"DILIST","ID",SUB,.01))
 .S TYPE=$$OCCUP^PXBGPRV($G(^TMP("PXBTOTAL",$J,"DILIST",2,SUB)),+$P($G(^AUPNVSIT(PXBVST,0)),"^",1),"",2) D
 ..N Y,DATE
 ..S Y=+$P($G(^AUPNVSIT(PXBVST,0)),"^",1) X ^DD("DD") S DATE=$P(Y,"@",1)
 ..I +TYPE=-2 S TYPE="*** CLASS not 'ACTIVE' on "_DATE_"***"
 ..I +TYPE=-1 S TYPE=""
 .W !,SUB,?6,$E(NAME,1,20),?30,$E(TYPE,1,45)
 ;----------
 ;
 ;----If There is only one selection go to proper prompting
 I TOTAL=1 G PRMPT2
 ;
PRMPT ;---WRITE PROMPT HERE
 D WIN17^PXBCC(PXBCNT)
 D LOC^PXBCC(15,1)
 W !
 I SUB>0 W !,"Enter '^' to quit"
 E  I TOTAL>10 W !,"               END OF LIST"
 I SUB>0 S DIR("A")="Select a single 'ITEM NUMBER' or 'RETURN' to continue: "
 E  S DIR("A")="Select a single 'ITEM NUMBER' or 'RETURN' to exit: "
 S DIR("?")="Enter ITEM 'No' to select , '^' to quit"
 S DIR(0)="N,A,O^0:"_SUB2_":0^I X'?.1""^"".N K X"
 D ^DIR
 I X="",SUB>0 G LIST
 I X="",SUB'>0 S X="^"
VAL ;-----Set the VAL equal to the value
 S VAL=$G(^TMP("PXBTOTAL",$J,"DILIST",2,X))_"^"_$G(^TMP("PXBTOTAL",$J,"DILIST","ID",X,.01))
 I FROM="PL",TOTAL=1 W $G(^TMP("PXBTOTAL",$J,"DILIST","ID",X,.01))
EXITNEW ;--EXIT
 K DIR,^TMP("PXBTOTAL",$J),^TMP("PXBTANA",$J)
 K TANA,TOTAL
 Q VAL
 Q
 ;
 ;-----------------SUBROUTINES--------------
BACK ;
 S START=$G(^TMP("PXBTANA",$J,"DILIST",1,1))
 S START("IEN")=$G(^TMP("PXBTANA",$J,"DILIST",2,1))
 Q
FORWARD ;
 S START=$G(^TMP("PXBTANA",$J,"DILIST",1,10))
 S START("IEN")=$G(^TMP("PXBTANA",$J,"DILIST",2,10))
 Q
LOC ;--LOCATE CURSOR
 D LOC^PXBCC(3,1) ;--LOCATE THE CURSOR
 W IOEDEOP ;--CLEAR THE PAGE
 Q
HEAD ;--HEAD
 W !,IOCUU,IOBON,"HELP SCREEN",IOSGR0,?(IOM-$L(TITLE))\2,IOINHI,TITLE,IOINLOW,IOELEOL
 Q
SUB ;--DISPLAY LIST TO THE SCREEN
 N TYPE
 I $P(^TMP("PXBTANA",$J,"DILIST",0),"^",1)=0 W !!,"     E N D  O F  L I S T" Q
 X HEADING
 S SUB=0,CNT=0 F  S SUB=$O(^TMP("PXBTANA",$J,"DILIST","ID",SUB)) Q:SUB'>0  S CNT=CNT+1 D
 .S NAME=$G(^TMP("PXBTANA",$J,"DILIST","ID",SUB,.01))
 .S TYPE=$$OCCUP^PXBGPRV($G(^TMP("PXBTANA",$J,"DILIST",2,SUB)),+$P($G(^AUPNVSIT(PXBVST,0)),"^",1),"",2) D
 ..N Y,DATE
 ..S Y=+$P($G(^AUPNVSIT(PXBVST,0)),"^",1) X ^DD("DD") S DATE=$P(Y,"@",1)
 ..I +TYPE=-2 S TYPE="*** CLASS not 'ACTIVE' on "_DATE_"***"
 ..I +TYPE=-1 S TYPE=""
 .W !,SUB,?6,$E(NAME,1,20),?30,$E(TYPE,1,45)
 Q
SETUP ;-SETP VARIABLES
 S FILE=200,FIELD="@;.01"  ; FIELD=.01 TEJ *105 CHANGE PARM 12/14/2000
 S HEADING="W !,""ITEM"",?6,""NAME"",?30,""PERSON CLASS IN NEW PERSON FILE"""
 Q
PRMPT2 ;-----Yes and No prompt if onlyi choice
 D WIN17^PXBCC(PXBCNT)
 D LOC^PXBCC(15,1)
 S DIR("A")="Is this the correct entry "
 S DIR("B")="YES"
 S DIR(0)="Y"
 D ^DIR
 I Y=0 S X="^"
 I Y=1 S X=1
 G VAL
