PSODOSUN ;BIR/RTR - Dose Check Utility routine ;11/18/08
 ;;7.0;OUTPATIENT PHARMACY;**251,379,372,416,436,402**;DEC 1997;Build 8
 ;
DOSE() ;Write Dose output for renew, finish, copy, etc.
 N PSODLINS,PSODLINR,PSODLINX,PSODLERA,PSODLERB,PSODLERF,PSODLERZ,PSODLPL,PSODLP1,PSODLMSG,PSODLFLG,PSODLALZ,DIR,DUOUT,DTOUT,DIROUT,DIRUT,X,Y,X1,PSODLOFF
 N PSODLNN1,PSODLERR,PSODLERX,PSODLQT,PSOCPXG,PSOCPXRR,PSODLEXR,PSODELNX,PSODLECT,PSOCPXF,PSODTYPE,PSOCPXC,PSOLASTS,PSOQTOUT,PSOEDOUT,PSODSEQ
 N PSOSIGC,PSOINTRO,PSOTRAIL,PSOEXCPT,PSOERROR
 S (PSODLERF,PSODLERZ,PSODLALZ,PSODLINS,PSODLINR,PSODLINX,PSODLERR,PSODLQT,PSOCPXG,PSOCPXF,PSOLASTS,PSOQTOUT,PSOEDOUT,PSODLOFF,PSOINTRO,PSOTRAIL,PSOEXCPT,PSOERROR)=0,PSODTYPE="N",PSOCPXC=1
 I $G(PSORXED)&$G(PSOEDDOS) S PSOCPXC=0  ;don't show summary before accept of order if edit
 I $G(PSOCPXB)<4 S PSOCPXC=0
 W:$G(PSOEDIT)!$G(PSOCOPY)!($G(PSOFOERR)) @IOF I $P($G(^TMP($J,"PSOPDOSN","OUT",0)),"^")=-1 D  S PSODLFLG=0,PSODLOFF=1 G END
 .D HD N X,DIWL,DIWR,DIWF,PSODELXR,PSODELXF D MESG
 .S X="Reason(s): "_$P(^TMP($J,"PSOPDOSN","OUT",0),"^",2),DIWL=1,DIWR=76 K ^UTILITY($J,"W") D ^DIWP
 .S PSODELXF=0 F PSODELXR=0:0 S PSODELXR=$O(^UTILITY($J,"W",DIWL,PSODELXR)) Q:'PSODELXR  D HD W:PSODELXF&('PSODLQT) ! D HD W:'PSODLQT "   "_$G(^UTILITY($J,"W",DIWL,PSODELXR,0)) S PSODELXF=1
 .K ^UTILITY($J,"W")
 ;PSOCPXB = Number of Dosing Seq
 S PSODLQT=0 K PSOCPXRR
 D EN^PSODOSU2
END ;
 I $G(PSORX("DFLG")) Q 0
 I '$G(PSODLALZ),'$G(PSODLFLG),'$G(PSODLERR),'$G(PSODLOFF) Q 0
 I '$G(PSODLFLG) W !
 K PSODAILY,DIR,Y,PSODOSEX
 D PROMPT Q:$G(PSORX("DFLG"))!$G(PSOQTOUT)!$G(PSODLQT) 1
 I '$G(PSODLINS)&('$G(PSODLINR))&('$G(PSODLINX)) Q 0
 I $D(^XUSEC("PSORPH",DUZ)) D  I Y'=1!($D(DTOUT))!($D(DUOUT))!($G(PSRX("DFLG"))) S PSODOSEX=1 S:$G(PSOREINS) PSOQUIT=1 Q 1
 .S DIR("B")="Y",DIR(0)="Y",DIR("A")="Do you want to Continue" D ^DIR K DIR
 I '$G(PSODLINS)&'$G(PSODLINR)&('$G(PSODLINX)) Q 0
 I '$D(^XUSEC("PSORPH",DUZ)) Q 2_"^"_$$EVAL(PSODLINS,PSODLINR,PSODLINX)
 W !!,"Do you want to Process or Cancel medication?" K DIR,Y S DIR("B")="P",DIR(0)="SA^1:PROCESS MEDICATION;0:CANCEL MEDICATION"
 S DIR("A")=$$GETGN^PSODOSUN(PSODRUG("IEN"))_": "  K ^TMP($J,"PSODOSUN GN")
 S DIR("?",1)="Enter '1' or 'P' to Process medication",DIR("?")="      '^' to EXIT",DIR("?",2)="      '0' or 'C' to Cancel Medication"
 D ^DIR K DIR
 I Y'=1!($D(DTOUT))!($D(DUOUT)) S PSODOSEX=1 S:$G(PSOREINS) PSOQUIT=1 Q 1
 ;need to know if user cancelled or not
 I Y=0 Q 3_"^"_$S($G(PSODLINS)&($G(PSODLINR)):"MAX SINGLE DOSE & MAX DAILY DOSE",$G(PSODLINS):"MAX SINGLE DOSE",$G(PSODLINR):"MAX DAILY DOSE",$G(PSODLINX):"MAX SINGLE DOSE & MAX DAILY DOSE",1:"UNKNOWN")
 K PSODOSEX
 S PSOSIGC=0
SIG1 ;
 D SIG^XUSESIG
 I 'PSOSIGC&($G(X1)="") D MSG1 S PSOSIGC=PSOSIGC+1 G SIG1
 I $G(X1)="" D MSG2 Q 1
END2 ;
 I $G(PSORX("DFLG")) Q 0
 Q 2_"^"_$S($G(PSODLINS)&($G(PSODLINR)):"MAX SINGLE DOSE & MAX DAILY DOSE",$G(PSODLINS):"MAX SINGLE DOSE",$G(PSODLINR):"MAX DAILY DOSE",$G(PSODLINX):"MAX SINGLE DOSE & MAX DAILY DOSE",1:"UNKNOWN")
 ;
EVAL(PSODLINS,PSODLINR,PSODLINX) ;
 Q $S($G(PSODLINS)&($G(PSODLINR)):"MAX SINGLE DOSE & MAX DAILY DOSE",$G(PSODLINS):"MAX SINGLE DOSE",$G(PSODLINR):"MAX DAILY DOSE",$G(PSODLINX):"MAX SINGLE DOSE & MAX DAILY DOSE",1:"UNKNOWN")
 ;
DOSEX(PSODLXNT) ;Write Dose exceptions for order entry/edit
 N PSODLINS,PSODLINR,PSODLINX,PSODLERA,PSODLERB,PSODLERF,PSODLERZ,PSODLPL,PSODLP1,PSODLMSG,DIR,DUOUT,DTOUT,DIROUT,DIRUT,X,Y,X1
 N PSODLNN1,PSODLERX,PSODLQT,PSODELNX,PSODTYPE,PSODCONT,PSODSEQ,PSODOSX,PSODLOFF,PSOINTRO,PSOTRAIL,PSOEXCPT,PSOERROR
 W @IOF S (PSODLERF,PSODLERZ,PSODLINS,PSODLINR,PSODLINX,PSODLQT,PSODCONT,PSODLOFF,PSOINTRO,PSOTRAIL,PSOEXCPT,PSOERROR)=0,PSODTYPE="E"
 I $G(PSOEDDOS) Q:$G(PSORXED("CONJUNCTION",1))="" 0  ;don't show messages when simple order before accept of order during edits
 I PSOCPXB>3,$G(PSORXED)&$G(PSOEDDOS) S PSOCPXC=0  ;don't show summary before accept of order if edit
 I $P($G(^TMP($J,"PSOPDOSN","OUT",0)),"^")=-1 D  S PSODLFLG=0,PSODLOFF=1 G ENDX
 .D HD N X,DIWL,DIWR,DIWF,PSODELXR,PSODELXF D MESG
 .S X="Reason(s): "_$P(^TMP($J,"PSOPDOSN","OUT",0),"^",2),DIWL=1,DIWR=76 K ^UTILITY($J,"W") D ^DIWP
 .S PSODELXF=0 F PSODELXR=0:0 S PSODELXR=$O(^UTILITY($J,"W",DIWL,PSODELXR)) Q:'PSODELXR  D HD W:PSODELXF&('PSODLQT) ! D HD W:'PSODLQT "   "_$G(^UTILITY($J,"W",DIWL,PSODELXR,0)) S PSODELXF=1
 .K ^UTILITY($J,"W")
 D EN^PSODOSU2
ENDX ;
 S PSODOSX=1
 I $G(PSORX("DFLG")) Q 0
 K PSOCPXRR
 I '$G(PSODLALZ),'$G(PSODLFLG),'$G(PSODLERR),'$G(PSODLOFF) Q 0
 ;
 ;This "return to continue" occurs after the last dosing sequence for a complex order with 4 or more dosing sequences during an edit when finishing, placing a new order, copy or edit
 ;
 I '$G(PSOCKCON)&($G(PSOFOERR)) D  I $G(PSOQTOUT) Q 0
 .Q:($G(PSODLFLG))&$D(^XUSEC("PSORPH",DUZ))  ;messages need the "do you want to continue" prompt instead but need to evaluate here so that it doesn't show up for edits
 .D RETURN
 Q:$G(PSORX("DFLG"))!$G(PSOQTOUT)!$G(PSODLQT) 1
 ;
 I '$G(PSOFOERR) D  I $G(PSOQTOUT) Q 0
 .Q:$G(PSODLFLG)&$D(^XUSEC("PSORPH",DUZ))
 .I '$G(PSOEDIT) Q:$G(PSODOSNW)&'$G(PSOCPXD)&'$G(PSOCOPY)
 .Q:($G(PSOCOPY)!$G(PSOEDIT))&'$G(PSOCPXV)
 .Q:PSOCPXB>3&$G(PSOCPXV)
 .D RETURN
 Q:$G(PSORX("DFLG"))!$G(PSOQTOUT)!$G(PSODLQT) 1
 ;
 I '$G(PSODLFLG) W !
 I '$D(^XUSEC("PSORPH",DUZ)),$G(PSODLINS)!($G(PSODLINR))!($G(PSODLINX)),$G(PSODLFLG) Q 2_"^"_$$EVAL(PSODLINS,PSODLINR,PSODLINX)
 I 'PSODCONT Q:$G(PSOCPXV) 0
 I $G(PSODLBD4)&'$G(PSODLINS)&'$G(PSODLINR)&'$G(PSODLINX)&('$G(PSODLALZ)) S Y=1 G ENDX2
 K DIR,Y I $D(^XUSEC("PSORPH",DUZ)) S DIR("B")="Y",DIR(0)="Y",DIR("A")="Do you want to Continue" D ^DIR K DIR I Y'=1!($D(DTOUT))!($D(DUOUT)) S PSODOSEX=1 S:$G(PSOREINS) PSOQUIT=1 Q 1
ENDX2 ;
 K PSODOSEX
 W !
 Q 0
DOSEZ() ;Write Dose output summary for complex orders
 I $G(PSOEDDOS) Q:$G(PSORXED("CONJUNCTION",1))="" 0  ;don't show messages when simple order before accept of order during edits
 N PSOCPXF,PSOCPXC,PSOCPXRR,PSOCPXG,PSODLESM,PSODELNX,PSOCPXH,PSODTYPE,PSOLASTS,PSOLASTD,PSOQTOUT,PSOEDOUT,PSODSEQ
 N PSODLINS,PSODLINR,PSODLINX,PSODLERA,PSODLERB,PSODLERF,PSODLERZ,PSODLPL,PSODLP1,PSODLMSG,DIR,DUOUT,DTOUT,DIROUT,DIRUT,X,Y,X1
 N PSODLNN1,PSODLERX,PSODLQT,PSODLEXR,PSODLECT,PSODLOFF,PSOINTRO,PSOTRAIL,PSOEXCPT,PSOERROR
 I '$G(PSOTOF) W @IOF
 S (PSODLERF,PSODLERZ,PSODLINS,PSODLINR,PSODLINX,PSOCPXF,PSODLQT,PSOCPXH,PSOLASTS,PSOLASTD,PSOQTOUT,PSOEDOUT,PSODLOFF,PSOINTRO,PSOTRAIL,PSOEXCPT,PSOERROR)=0,PSODTYPE="C",PSOCPXC=1
 I $G(PSORX("EDIT"))!($G(PSORXED)&$G(PSOEDDOS))!($G(PSOCOPY)&$G(PSODLBD4)) S PSOEDOUT=1
 I PSOCPXB>3,$G(PSOEDOUT) S PSOCPXC=0
 ;I PSOCPXB>3,$G(PSOEDDOS) S PSOCPXC=0  ;don't show summary before accept of order if edit
 I $G(PSOCPXB)<4 S PSOCPXC=0
 Q:$G(PSOCPXB)<4&'$G(PSOFOERR)&('$G(PSODLFLG)) 0
 I $P($G(^TMP($J,"PSOPDOSN","OUT",0)),"^")=-1 S PSODLQT=1 D  S PSODLFLG=0,PSODLOFF=1 G ENDZ
 .D:PSOCPXC HD W:'PSODLQT&(PSOCPXC) !! N X,DIWL,DIWR,DIWF,PSODELXR,PSODELXF D MESG
 .S X="Reason(s): "_$P(^TMP($J,"PSOPDOSN","OUT",0),"^",2),DIWL=1,DIWR=76 K ^UTILITY($J,"W") D ^DIWP
 .S PSODELXF=0 F PSODELXR=0:0 S PSODELXR=$O(^UTILITY($J,"W",DIWL,PSODELXR)) Q:'PSODELXR  D:PSOCPXC HD W:PSODELXF&('PSODLQT)&(PSOCPXC) ! D:PSOCPXC HD W:'PSODLQT&(PSOCPXC) "   "_$G(^UTILITY($J,"W",DIWL,PSODELXR,0)) S PSODELXF=1
 .K ^UTILITY($J,"W")
 D EN^PSODOSU2
ENDZ ;
 I $G(PSORX("DFLG")) Q 0
 K PSODAILY
 I '$G(PSODLALZ),'$G(PSODLFLG),'$G(PSODLERR),'$G(PSODLOFF) Q 0
 D PROMPT Q:$G(PSORX("DFLG"))!$G(PSOQTOUT)!$G(PSODLQT) 0
 I '$G(PSODLINS)&('$G(PSODLINR))&('$G(PSODLINX)) Q 0
 I '$G(PSOCPXF)&(PSOLASTS'=PSOCPXB),PSOEDOUT Q 0
 K PSODOSEX
 I $D(^XUSEC("PSORPH",DUZ)) D  I Y'=1!($D(DTOUT))!($D(DUOUT))!($G(PSRX("DFLG"))) S PSODOSEX=1 S:$G(PSOREINS) PSOQUIT=1 Q 1
 .K DIR,Y S DIR("B")="Y",DIR(0)="Y",DIR("A")="Do you want to Continue" D ^DIR K DIR
ENDZC ;
 I '$G(PSODLINS)&('$G(PSODLINR))&('$G(PSODLINX)) Q 0
 I '$D(^XUSEC("PSORPH",DUZ)),$G(PSODLINS)!($G(PSODLINR))!($G(PSODLINX)) Q 2_"^"_$$EVAL(PSODLINS,PSODLINR,PSODLINX)
 G ENDZ2:$G(PSORX("EDIT"))!($G(PSORXED)&$G(PSOEDDOS))!($G(PSOCOPY)&$G(PSODLBD4))
 W !!,"Do you want to Process or Cancel medication?" K DIR,Y S DIR("B")="P",DIR(0)="SA^1:PROCESS MEDICATION;0:CANCEL MEDICATION"
 S DIR("A")=$$GETGN(PSODRUG("IEN"))_": "  K ^TMP($J,"PSODOSUN GN")
 S DIR("?",1)="Enter '1' or 'P' to Process medication",DIR("?")="      '^' to EXIT",DIR("?",2)="      '0' or 'C' to Cancel Medication"
 D ^DIR K DIR,PSODOSEX
 I Y'=1!($D(DTOUT))!($D(DUOUT)) S PSODOSEX=1 S:$G(PSOREINS) PSOQUIT=1 Q 1
 S PSOSIGC=0
SIG2 ;
 D SIG^XUSESIG
 I 'PSOSIGC&($G(X1)="") D MSG1 S PSOSIGC=PSOSIGC+1 G SIG2
 I $G(X1)="" D MSG2 Q 1
ENDZ2 ;
 I $G(PSORX("DFLG")) Q 0
 Q 2_"^"_$S($G(PSODLINS)&($G(PSODLINR)):"MAX SINGLE DOSE & MAX DAILY DOSE",$G(PSODLINS):"MAX SINGLE DOSE",$G(PSODLINR):"MAX DAILY DOSE",$G(PSODLINX):"MAX SINGLE DOSE & MAX DAILY DOSE",1:"UNKNOWN")
HD ;
 I PSODLQT!(($Y+5)'>IOSL) Q
 N DIR,DTOUT,DUOUT,DIRUT,DIROUT,X,Y
 I $D(^XUSEC("PSORPH",DUZ)) D  I Y'=1!($D(DTOUT))!($D(DUOUT)) S PSODOSEX=1 S:$G(PSOREINS) PSOQUIT=1,PSORX("DFLG")=1 Q 1
 .K DIR,Y S DIR("B")="Y",DIR(0)="Y",DIR("A")="Do you want to Continue" D ^DIR K DIR
 W @IOF W !
 Q
MESG ;Write out System error heading
 I 'PSODLQT D HD W !,"Maximum Single Dose Check could not be performed:",!
 Q
GETGN(PSODRIEN) ;get generic name
 K ^TMP($J,"PSODOSUN GN")
 D DATA^PSS50(PSODRIEN,,,,,"PSODOSUN GN")
 Q $S($D(^TMP($J,"PSODOSUN GN",PSODRIEN,.01)):^TMP($J,"PSODOSUN GN",PSODRIEN,.01),1:"")
 ;
PROMPT ;
 ;assumes that a previous check was made to verify that errors, exceptions or messages are present
 ;if only warnings (exceptions/errors) then display "Press return to continue"; otherwise display "Do you want to continue" prompt.
 ;FINISH and BACKDOOR are separated below in order keep to a mininum the vast number of scenarios to be tested
 I $G(PSODLOFF)&(($Y+5)>IOSL) D RETURN Q
 I $G(PSOFOERR) D  ;FINISH
 .Q:$D(^XUSEC("PSORPH",DUZ))&('$G(PSORENWD))
 .I '$G(PSODLFLG) D
 ..Q:'$G(PSOEDOUT)&$D(^XUSEC("PSORPH",DUZ))&('$G(PSORENWD))  ;messages need the "do you want to continue" prompt instead but need to evaluate here so that it doesn't show up for edits
 ..I '$G(PSORENWD) Q:PSOCPXB<4&('$G(PSODOSX))
 ..D RETURN
 ;
 I '$G(PSOFOERR)&'$G(PSODLFLG) D  ;BACKDOOR
 .Q:'$G(PSOEDOUT)&$D(^XUSEC("PSORPH",DUZ))&('$G(PSORENWD))  ;messages need the "do you want to continue" prompt instead but need to evaluate here so that it doesn't show up for edits
 .I '$G(PSORENWD),('$D(^XUSEC("PSORPH",DUZ))&'$G(PSODCAN)) Q:PSOCPXB<4&('$G(PSODOSX))
 .D RETURN
 ;
 I $G(PSODLFLG)&'$D(^XUSEC("PSORPH",DUZ)) D
 .I '$G(PSORENWD),('$D(^XUSEC("PSORPH",DUZ))&'$G(PSODCAN)) Q:PSOCPXB<4&('$G(PSODOSX))
 .D RETURN
 Q
 ;
RETURN ;
 Q:'$D(^XUSEC("PSORPH",DUZ))&($Y<10)
 W ! K DIR,Y S DIR(0)="E",DIR("A")="Press Return to continue,'^' to exit" D ^DIR K DIR  S:'Y PSODLQT=1,PSOQTOUT=1,PSORX("DFLG")=1 W @IOF
 Q
 ;
HD3(PSOLINES,OVRRID) ;
 N X,Y,DTOUT,DUOUT,DIR
 S:'$G(PSODLQT) PSODLQT=0  S:'$G(OVRRID) OVRRID=0 S:'$G(PSOLINES) PSOLINES=5
 I '$G(OVRRID),$G(PSODLQT)!(($Y+PSOLINES)<IOSL) Q
 N DIR,DTOUT,DUOUT,DIRUT,DIROUT,X,Y W ! K DIR,Y S DIR(0)="E",DIR("A")="Press return to continue" D ^DIR K DIR,PSOLINES,OVRRID
 I Y'=1!($D(DTOUT))!($D(DUOUT)) S PSODLQT=1,PSORX("DFLG")=1 Q
 W @IOF
 Q
 ;
MSG1 ;
 W !!,"  *** You must enter your Current Signature Code. ***"
 Q
MSG2 ;
 W !!,"  *** A Signature Code must be entered to continue with this order. ***",!
MSG3 ;
 N MSGX,DIR
 W ! K DIR S DIR(0)="E",DIR("A")="Press <Enter> to return to the order..." D ^DIR
 S PSODLQT=1,PSOQTOUT=1,PSORX("DFLG")=1
 Q
 ;
