FHOMRA1 ;Hines OIFO/RTK OUTPATIENT MEALS ADDITIONAL ORDERS  ;5/14/03  15:15
 ;;5.5;DIETETICS;**2**;Jan 28, 2005
 ;
 S FHMSG1="A" D GETOPT^FHOMUTL I FHFIND=0 Q
 K NUM D DISP^FHOMRR1 I $G(NUM)="" Q
AO1 W ! K DIR S DIR("A")="Select Order(s)",DIR(0)="LO^1:"_NUM D ^DIR
 Q:$D(DIRUT)  S FHCLST=Y
 S FHCAN1=0 F A=1:1:NUM S FHC=$P(FHCLST,",",A) Q:FHC=""  S FHRNUM=FHLIST(FHC) I $P($G(^FHPT(FHDFN,"OP",+FHRNUM,0)),U,15)'="C" S FHCAN1=1
 I FHCAN1=0 W !!?3,"The selected order(s) have been cancelled!",! D AO1 Q
 W ! K DIR S DIR("A")="Additional Order: ",DIR(0)="FAO^1:160" D ^DIR
 I $D(DIRUT) D EXMSG^FHOMUTL Q
 S FHTEXT=Y
 W ! K DIR S DIR("A")="Is this correct?: ",DIR(0)="YA",DIR("B")="Y"
 D ^DIR I $D(DIRUT)!(Y=0) D EXMSG^FHOMUTL,END Q
 W !
 F A=1:1:NUM S FHC=$P(FHCLST,",",A) Q:FHC=""  S FHRNUM=FHLIST(FHC) D CHK
 D OKMSG^FHOMUTL
 D END Q
CHK ;
 I $P($G(^FHPT(FHDFN,"OP",+FHRNUM,0)),U,15)="C" S FHDTX=$P(FHRNUM,U,2),FHDTX=$$FMTE^XLFDT(FHDTX,"P") W !?3,"The order for ",$E(FHDTX,1,12)," has been cancelled -- not ordered!" Q
 D SET,UPD100
 Q
SET ;
 D NOW^%DTC S FHTODAY=$E(%,1,12)
 S FHORN=$S($G(FHORN)="":"",1:FHORN)
 K DIE S DA(1)=FHDFN,DIE="^FHPT("_DA(1)_",""OP"",",DA=+FHRNUM
 S DR="11////^S X=FHTEXT;12////^S X=DUZ;13////^S X=FHTODAY;13.5////^S X=FHORN" D ^DIE
 S FHACT="O",FHOPTY="A",FHAET=FHTEXT D SETAET^FHOMRO2
 Q
END ;
 K A,FHFIND,FHCLST,FHC,FHRNUM,FHTEXT,FHTODAY,NUM Q
HL7SET ;
 ; Entry point for AO's placed from CPRS/OERR
 S FHTEXT=FHCOM,X1=STDT,X2=-1 D C^%DTC S STDT1=X
 F FHRMDT=STDT1:0 S FHRMDT=$O(^FHPT(FHDFN,"OP","B",FHRMDT)) Q:FHRMDT'>0!(FHRMDT>ENDT)  F FHRNUM=0:0 S FHRNUM=$O(^FHPT(FHDFN,"OP","B",FHRMDT,FHRNUM)) Q:FHRNUM'>0  D SET
 I '$D(FHRNUM) Q
 S FILL="A;"_FHRNUM_";"_FHCOM_";"_FHORN
 D SEND^FHWOR Q
UPD100 ;Backdoor message to update file #100 with a new AO order
 Q:'$$PATCH^XPDUTL("OR*3.0*215")  ;must have CPRSv26 for O.M. backdoor
 Q:'DFN  K MSG D MSHOM^FHOMUTL  ;Sets MSG(1), MSG(2) & MSG(3) for OM
 S FILL="A;"_FHRNUM,FHODT=$P(FHRNUM,U,2),FHODT=$$FMTHL7^XLFDT(FHODT)
 S MSG(4)="ORC|SN||"_FILL_"^FH||||^^^"_FHODT_"^"_FHODT_"||||||||"_FHTODAY
 S MSG(5)="ODS|D||^^^FH-6^Additional Order^99OTH|"_FHTEXT
 D EVSEND^FHWOR
 Q
