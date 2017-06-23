PSO480P ;BIR/PC-Automatic Cancel of Copay charges for DOM ;03/02/17 10:30am
 ;;7.0;OUTPATIENT PHARMACY;**480**;DEC 1997;Build 35
 ;
 ;Reference to ^IB(350 supported by DBIA 2215
 ;
 ;This routine will run as a post-install for patch PSO*7*480
 ;and will loop through the prescription file by release date/time
 ;to find all prescriptions for patients logged in as inpatient
 ;assigned to a DOMICILIARY ward at release date of prescription.
 ;It will then cancel any copay that was charged by mistake with patch PSO*7*460 (FMCT)
 ; Both original and refills charges will be cancelled if needed.
 ;
 ;Detailed and summary reports will be sent to mailman at site.
 Q
 ;
 ;going to need an entry point for when the routine is jobbed off during install
EN ;
 N NAMSP,DTOUT,DUOUT,ZTSK,ZTRTN,ZTIO,ZTDTH,ZTDESC,QUIT,RUNOPT,JOBN,Y,YY,ZTSAVE,VAINDT,VAIN,TITLE,LIFE,BEGDT
 S NAMSP="",NAMSP=$T(+0)
 S LIFE=90,TITLE="FMCT Cancel DOMICILIARY Prescription Copay Charges - PSO*7*480"
 S BEGDT=$$NOW^XLFDT(),PURGDT=$$FMADD^XLFDT(BEGDT,LIFE)
 S ^XTMP(NAMSP,0)=PURGDT_"^"_BEGDT_"^"_TITLE
 S JOBN="FMCT DOMICILIARY CANCEL COPAYS"
 L +^XTMP(NAMSP):0 I '$T D  Q
 . D BMES^XPDUTL(JOBN_" job is already running.  Halting...")
 . D MES^XPDUTL("")
 . D QUIT
 ;
START ;
 ;initialize ^XTMP file according to SAC standard
 ;
 S QUIT=0
 ;
 I $G(^XTMP(NAMSP,0,"LAST"))["COMPLETED" D  Q
 . W !!,*7,"This job previously ran to completion on "
 . W $$FMTE^XLFDT($P($G(^XTMP(NAMSP,0,"LAST")),"^",2)),!!
 . D QUIT
 ;
 ;ques 2, if running from mumps prompt
 S Y=$$NOW^XLFDT S ZTDTH=$$FMTH^XLFDT(Y)
 ;
 ;ques 2, if running from kids install
 I $D(XPDQUES("POS2")) S ZTDTH=$$FMTH^XLFDT(XPDQUES("POS2"))
 ;
 D BMES^XPDUTL("===================================================")
 D MES^XPDUTL("Queuing background job to "_JOBN_"...")
 D MES^XPDUTL("Start time: "_$$HTE^XLFDT(ZTDTH))
 D MES^XPDUTL("===================================================")
 I $D(XPDQUES("POS2")) I ZTDTH="" D BMES^XPDUTL(JOBN_" NOT QUEUED") D QUIT Q
 ;
 S:$D(^XTMP(NAMSP,0,"LAST")) ^XTMP(NAMSP,0,"ZAUDIT",$H)="RE-STARTED ON"_"^"_$$NOW^XLFDT_"^"_$P(^XTMP(NAMSP,0,"LAST"),"^",2,5)
 ;
 S ZTRTN="START1^PSO480P",ZTIO=""
 S ZTDESC="Background job for "_JOBN_"."
 S ZTSAVE("JOBN")="",ZTSAVE("NAMSP")=""
 L -^XTMP(NAMSP)
 D ^%ZTLOAD
 D:$D(ZTSK)
 . D MES^XPDUTL("*** Task #"_ZTSK_" Queued! ***")
 . D BMES^XPDUTL("")
 D BMES^XPDUTL("")
 K XPDQUES
 Q
 ;
QUIT ;
 L -^XTMP(NAMSP)
 K %,ZTSAVE,VAIN,PSO,PREA,PSOARBN,PSOAT,PSOBILLD,PSOCOMM,PSODA,PSODAYS,PSODT,PSOFILL1,PSOFLAG,PSOIBDAT,PSOINSTL,PSOISTAT,PSONML,PSONW,PSOOIB,PSOOLD,PSOIBN
 K PSOINST,PSOPAR,PSOPAR7,PSORX,PSOSITE,PSOSITE7,PSOSTAT,PSOTAMT,PSOREF
 Q
 ;
START1 ;
 ;initialize ^XTMP file according to SAC standard
 N BEGDT,PURGDT,LIFE,NAMSP,PSOIB,CHKCAN,PSOSTART,PSOEND,PSOTDOL,PSOTRX,PSOTMRX,PSOTPAT,RXP,X,XX,JJ,PSORXE,PSOFILL,PSOFILL1,PSOREF
 S NAMSP="",NAMSP=$T(+0)
 D NOW^%DTC S Y=% D DD^%DT S PSOSTART=Y
 S LIFE=90,TITLE="FMCT Cancel DOMICILIARY Prescription Copay Charges - PSO*7*480"
 S BEGDT=$$NOW^XLFDT(),PURGDT=$$FMADD^XLFDT(BEGDT,LIFE),NAMSP=$T(+0)
 K ^XTMP(NAMSP) S ^XTMP(NAMSP,0)=PURGDT_"^"_BEGDT_"^"_TITLE
 ;
INST ;get first install date for FMCT patch PSO*7*460 which will be the begin date for checking for DOMICILIARY copay charges
 N DATA,PSOINSTD,PSORDT,PSOEDT,PSODOM,PSODFN,DFN,PSODATA,POSIB,PSOIBN
 S (X,XX,DATA)="",X=$$INSTALDT^XPDUTL("PSO*7.0*460",.DATA)
 S PSOINSTD="",PSOINSTD=$O(DATA(PSOINSTD))
 ;
LOOP ;loop through AL cross reference
 S:'$D(NAMSP) NAMSP=$T(+0)
 S PSORDT=PSOINSTD\1-.00001,(RXP,PSOFILL)=""
 F  S PSORDT=$O(^PSRX("AL",PSORDT)) Q:PSORDT=""  F  S RXP=$O(^PSRX("AL",PSORDT,RXP)) Q:RXP=""  D
 . F  S PSOFILL=$O(^PSRX("AL",PSORDT,RXP,PSOFILL)) Q:PSOFILL=""  D
 ..S (PSODFN,DFN,PSODA)=$$GET1^DIQ(52,RXP,2,"I"),VAINDT=PSORDT
 ..S PSODOM=0 D INP^VADPT
 ..I $D(VAIN(4)),$D(^DIC(42,+VAIN(4),0)),$P(^(0),"^",3)="D" S PSODOM=1
 ..Q:'PSODOM  ;not a DOMICILIARY
 ..S PSOREF=PSOFILL
 ..S PSOIB=0 D CHECK    ;check if Rx is billed 
 ..Q:'PSOIB   ;if PSOIB=1 Rx is billed
 ..K PSODATA
 ..I PSOFILL=0 D ZERO
 ..I PSOFILL>0 D REFILL
 ..D GETIB   ;retrieve IB Action file info and store in XTMP
 ..D CANCEL  ;cancel copay
 ..D CHKCAN  ;verify that cancel copay worked
 D REPORT
 D MAIL
 Q
 ;
CHECK ;check IB nodes
 ; see if bill already exists - returned value of PSOIB1 means Rx is billed
 I PSOFILL=0,+$P($G(^PSRX(RXP,"IB")),"^",2)>0 D CHKIB^PSOCP1
 I PSOFILL>0,+$G(^PSRX(RXP,1,PSOFILL,"IB")) D CHKIB^PSOCP1
 Q
 ;
ZERO ;
 ;get prescription information
 D GETS^DIQ(52,RXP_",","3;31;106","I","PSODATA")
 S:$G(PSODATA(52,RXP_",",3,"I")) PSOSTAT=PSODATA(52,RXP_",",3,"I")
 S:$G(PSODATA(52,RXP_",",106,"I")) PSOIBN=PSODATA(52,RXP_",",106,"I")
 Q
 ;
REFILL ;
 D GETS^DIQ(52.1,PSOFILL_","_RXP_",",".01;3;9","I","PSODATA")
 S:$G(PSODATA(52.1,PSOFILL_","_RXP_",",3,"I")) (DFN,PSODFN)=PSODATA(52.1,PSOFILL_","_RXP_",",3,"I")
 S:$G(PSODATA(52.1,PSOFILL_","_RXP_",",9,"I")) PSOIBN=PSODATA(52.1,PSOFILL_","_RXP_",",9,"I")
 Q
 ;
GETIB ;get billing information from IB Billing Action file #350
 D GETS^DIQ(350,PSOIBN,".03;.05;.07;.11;.13","IE","PSOIBDAT")
 S (PSOAT,PSOISTAT,PSOTAMT,PSOARBN,PSOINST)=""
 S:$G(PSOIBDAT(350,PSOIBN_",",.03,"E"))'="" PSOAT=PSOIBDAT(350,PSOIBN_",",.03,"E")    ;ACTION TYPE
 S:$G(PSOIBDAT(350,PSOIBN_",",.05,"E"))'="" PSOISTAT=PSOIBDAT(350,PSOIBN_",",.05,"E") ;STATUS
 S:$G(PSOIBDAT(350,PSOIBN_",",.07,"E"))'="" PSOTAMT=PSOIBDAT(350,PSOIBN_",",.07,"E")  ;TOTAL CHARGE
 S:$G(PSOIBDAT(350,PSOIBN_",",.11,"E"))'="" PSOARBN=PSOIBDAT(350,PSOIBN_",",.11,"E")  ;AR BILLING NUMBER
 S:$G(PSOIBDAT(350,PSOIBN_",",.13,"E"))'="" PSOINST=PSOIBDAT(350,PSOIBN_",",.13,"I")  ;INSTITUTION
 ;
 ;save data in XTMP file
 S ^XTMP(NAMSP,"DOM",PSORDT,PSODFN,RXP,PSOFILL)=PSOAT_"^"_PSOISTAT_"^"_PSOTAMT_"^"_PSOARBN_"^"_PSOINST
 Q
 ;
CANCEL ;cancel copay
 ;  verify again that it was billed and not already cancelled
 S PSOBILLD=0,YY=PSOREF,PSOIB=0
 I YY=0,+$P($G(^PSRX(RXP,"IB")),"^",2)>0 D CHKIB^PSOCP1 I $G(PSOIB)=1!($G(PSOIB)=3) S PSOBILLD=1
 I YY>0,+$P($G(^PSRX(RXP,1,PSOREF,"IB")),"^")>0 D CHKIB^PSOCP1 I $G(PSOIB)=1!($G(PSOIB)=3) S PSOBILLD=1
 Q:'PSOBILLD
 ;
 D NOW^%DTC S PSODT=%,PSODA=RXP,PSOCOMM="- FMCT DOM COPAY CANCEL",PSOOLD="",PSONW="",PREA=""
 I PSOREF=0 D CHKACT
 S PSOIB="",PSOIB=$S(PSOREF>0:$G(^PSRX(RXP,1,YY,"IB")),'PSOREF:$G(^PSRX(PSODA,"IB")),1:"")
 S PSOOIB="",PSOOIB=$G(^PSRX(RXP,"IB"))
 D SITE S PSOCOMM="- FMCT DOM COPAY CANCEL"
 ;PSOCPA requires PSODA,PSO,PSODAYS,PSOFLAG
 S PSODA=RXP,PSOFLAG=0,PSO=3,PSODAYS=$$GET1^DIQ(52,RXP,8),PSOOLD="",PSONW="",PREA="C"
 D RXED^PSOCPA
 K:PSOREF=0 ^PSRX(RXP,"IB")          ;...Original Rx
 I PSOREF>0 D ACTLOG^PSOCPA K ^PSRX(RXP,1,PSOREF,"IB")
 Q
 ;
SITE ; SET UP VARIABLES NEEDED BY BILLING
 S PSOSITE=$S(YY=0:$P(^PSRX(RXP,2),"^",9),1:$P($G(^PSRX(RXP,1,YY,0)),"^",9))
 Q:PSOSITE=""
 S PSOPAR=$G(^PS(59,PSOSITE,1))
 S PSOPAR7=$G(^PS(59,PSOSITE,"IB"))
 S PSOSITE7=$P($G(^PS(59,PSOSITE,"IB")),"^")
 Q
 ;
CHKACT ;check activity log for prev entry
 N ZACT,ZPSI,ZACTI
 S ZPSI=0 F  S ZPSI=$O(^PSRX(PSODA,"COPAY",ZPSI)) Q:ZPSI=""  S ZACTI="",ZACTI=$G(^PSRX(PSODA,"COPAY",ZPSI,0))
 S PSOREF=0,PSOOLD="Copay",PSONW="No Copay",PREA="R" D ACTLOG^PSOCPA S PSOREF=PSOFILL
 Q
 ;
CHKCAN ;verify that cancel copay worked
 D CHECK
 I PSOIB S ^XTMP(NAMSP,"CANCEL PROBLEM",PSORDT,RXP,PSOFILL)=""
 Q
 ;
REPORT ;accumulate reports information for national and local
 ;S ^XTMP(NAMSP,"DOM",PSORDT,PSODFN,PSORX,PSOFILL)=PSOAT_"^"_PSOISTAT_"^"_PSOTAMT_"^"_PSOARBN_"^"_PSOINST
 K ^TMP($J,"FMCT DOM MSG")
 S (XX,JJ,PSORDT,PSODFN,PSORX,PSORXE,PSOTDOL,PSOTRX,PSOTMRX,PSOTPAT,PSOAT,PSOISTAT,PSOTAMT,PSOARBN,PSOINST)=""
 S (PSOTPAT,PSOTDOL,PSOTAMT)=0
 S ^TMP($J,"FMCT DOM MSG",1)="PSO*7*480 FMCT DOMICILIARY CANCEL COPAY - Detailed Listing"
 S ^TMP($J,"FMCT DOM MSG",2)="     RELEASE DATE          PATIENT                   RX #      FILL #          IB ACTION TYPE      TTL AMT    AR BILL #   INST"
 S JJ=2
 F  S PSORDT=$O(^XTMP(NAMSP,"DOM",PSORDT)) Q:PSORDT=""  F  S PSODFN=$O(^XTMP(NAMSP,"DOM",PSORDT,PSODFN)) Q:PSODFN=""  S PSOTPAT=PSOTPAT+1 D
 .F  S PSORX=$O(^XTMP(NAMSP,"DOM",PSORDT,PSODFN,PSORX)) Q:PSORX=""  S PSOTRX=PSOTRX+1 D
 ..F  S PSOFILL=$O(^XTMP(NAMSP,"DOM",PSORDT,PSODFN,PSORX,PSOFILL)) Q:PSOFILL=""  D
 ...S XX=^XTMP(NAMSP,"DOM",PSORDT,PSODFN,PSORX,PSOFILL)
 ...S PSOAT=$P(XX,"^"),PSOISTAT=$P(XX,"^",2),PSOTAMT=$P(XX,"^",3),PSOARBN=$P(XX,"^",4),PSOINST=$P(XX,"^",5),PSOFILL1=PSOFILL
 ...S PSOTDOL=PSOTDOL+PSOTAMT,PSORXE=$P(^PSRX(PSORX,0),"^",1)
 ...S JJ=JJ+1 S PSONAM=$P(^DPT(PSODFN,0),"^",1),PSONML=$L(PSONAM),$P(PSONAM," ",21-PSONML)=""
 ...S ^TMP($J,"FMCT DOM MSG",JJ)=$J($$FMTE^XLFDT(PSORDT),21)_"  "_PSONAM_"  "_$J(PSORXE,15)_"    "_$J(PSOFILL1,2)_"  "_$J(PSOAT,30)_"  "_$J(PSOTAMT_".00",6)_"    "_$J(PSOARBN,6)_"  "_PSOINST
 Q
 ;
MAIL ;email reports
 ;
MAIL1 ;management mail message for total patients and dollars
 N XMX S PSOINST=$P($G(^DIC(4,+$P($G(^XMB(1,1,"XUS")),"^",17),99)),"^")
 D NOW^%DTC S Y=% D DD^%DT S PSOEND=Y
 K PSOTEXT
 S XMY(DUZ)=DUZ
 S XMDUZ="noreply.domain.ext"
 S XMY("ELLZEY.LINDA@FORUM.DOMAIN.EXT")=""
 S XMY("CROSSMAN.PAM@FORUM.DOMAIN.EXT")=""
 S XMY("PAMELA.CROSSMAN@DOMAIN.EXT")=""
 S XMY("LINDA.ELLZEY@DOMAIN.EXT")=""
 S XMY("PAMELA.GUNDERSON@DOMAIN.EXT")=""
 S XMY("AMY.VANEPPS@DOMAIN.EXT")=""
 S XMY("MITCHELL.FETTERMAN@DOMAIN.EXT")=""
 S XMX="PRCA ADJUSTMENT TRANS",XMY("G."_XMX_"@"_^XMB("NETNAME"))=""
 S:$$PROD^XUPROD(1) XMY("ELLZEY.LINDA@FORUM.DOMAIN.EXT")=""
 S XMDUZ="noreply.domain.ext"
 S XMSUB="STATION "_$G(PSOINST)
 S XMSUB=XMSUB_$S($$PROD^XUPROD(1):" (Prod)",1:" (Test)")
 S XMSUB=XMSUB_"PSO*7*480 FMCT DOMICILIARY CANCEL COPAY"
 S PSOTEXT(1)=""
 S PSOTEXT(2)="Post install started "_PSOSTART_" and completed "_PSOEND_"."
 S PSOTEXT(3)=""
 S PSOTEXT(4)="Summary for Domiciliary Patients with copay cancellations:"
 S PSOTEXT(5)=""
 S PSOTEXT(6)="Total Number of Prescriptions: "_PSOTRX
 S PSOTEXT(7)="Total Number of Prescriptions requiring manual intervention: "_PSOTMRX
 S PSOTEXT(9)="Total Number of Patients: "_PSOTPAT
 S PSOTEXT(10)="Total Dollars for Cancelled Copays: "_PSOTDOL
 S PSOTEXT(11)=""
 S XMTEXT="PSOTEXT(" N DIFROM D ^XMD K XMDUZ,XMTEXT,XMSUB
 ;
MAIL2 ;site detailed report email
 N XMY,XMSUB,XMDUZ,XMTEXT,XMX
 S XMDUZ="noreply.domain.ext"
 S XMY(DUZ)=DUZ
 S XMY("ELLZEY.LINDA@FORUM.DOMAIN.EXT")=""
 S XMY("CROSSMAN.PAM@FORUM.DOMAIN.EXT")=""
 S XMX="PRCA ADJUSTMENT TRANS",XMY("G."_XMX_"@"_^XMB("NETNAME"))=""
 S:$$PROD^XUPROD(1) XMY("ELLZEY.LINDA@FORUM.DOMAIN.EXT")=""
 S XMSUB="FMCT DOMICILIARY CANCEL COPAY DETAILED REPORT (PSO*7*480)"
 S XMDUZ="noreply.domain.ext"
 S XMTEXT="^TMP($J,""FMCT DOM MSG""," N DIFROM D ^XMD
 ;
MAIL3 ;delimited file
 N XMY,XMSUB,XMDUZ,XMTEXT,PSOCNT,PSONAM,XMX
 S (PSORDT,PSODFN,RXP,PSOFILL,PSOAT,PSOISTAT,PSOTAMT,PSOARBN,PSOINST,PSOCNT,PSONAM)=""
 S XMDUZ="noreply.domain.ext"
 S XMY(DUZ)=DUZ
 S XMY("ELLZEY.LINDA@FORUM.DOMAIN.EXT")=""
 S XMY("CROSSMAN.PAM@FORUM.DOMAIN.EXT")=""
 S XMX="PRCA ADJUSTMENT TRANS",XMY("G."_XMX_"@"_^XMB("NETNAME"))=""
 S ^TMP($J,"FMCT DOM DLMT",1)="PSO*7*480 FMCT DOMICILIARY CANCEL COPAY - Delimited File"
 S ^TMP($J,"FMCT DOM DLMT",2)=""
 S ^TMP($J,"FMCT DOM DLMT",3)="Post install started "_PSOSTART_" and completed "_PSOEND_"."
 S ^TMP($J,"FMCT DOM DLMT",4)=""
 S ^TMP($J,"FMCT DOM DLMT",5)="RELEASE DATE^PATIENT NAME^PRESCRIPTION#^FILL NUMBER^IB ACTION TYPE^TOTAL AMOUNT^AR BILL #^INST"
 S PSOCNT=5
MAILL ;
 ;
 F  S PSORDT=$O(^XTMP(NAMSP,"DOM",PSORDT)) Q:PSORDT=""  F  S PSODFN=$O(^XTMP(NAMSP,"DOM",PSORDT,PSODFN)) Q:PSODFN=""  D
 .F  S RXP=$O(^XTMP(NAMSP,"DOM",PSORDT,PSODFN,RXP)) Q:RXP=""  F  S PSOFILL=$O(^XTMP(NAMSP,"DOM",PSORDT,PSODFN,RXP,PSOFILL)) Q:PSOFILL=""  S XX="" D
 ..S (PSONAM,XX)="",XX=^XTMP(NAMSP,"DOM",PSORDT,PSODFN,RXP,PSOFILL)
 ..S PSOAT=$P(XX,"^"),PSOISTAT=$P(XX,"^",2),PSOTAMT=$P(XX,"^",3),PSOARBN=$P(XX,"^",4),PSOINST=$P(XX,"^",5)
 ..S PSOCNT=PSOCNT+1,PSONAM=$$GET1^DIQ(2,PSODFN,.01)
 ..S ^TMP($J,"FMCT DOM DLMT",PSOCNT)=$$FMTE^XLFDT(PSORDT)_"^"_PSONAM_"^"_$$GET1^DIQ(52,RXP,.01)_"^"_PSOFILL_"^"_PSOAT_"^"_PSOTAMT_"^"_PSOARBN_"^"_PSOINST
 ;
 S:$$PROD^XUPROD(1) XMY("ELLZEY.LINDA@FORUM.DOMAIN.EXT")=""
 S XMSUB="FMCT DOMICILIARY CANCEL COPAY DELIMITED FILE (PSO*7*480)"
 S XMDUZ="noreply.domain.ext"
 S XMTEXT="^TMP($J,""FMCT DOM DLMT""," N DIFROM D ^XMD
 Q
