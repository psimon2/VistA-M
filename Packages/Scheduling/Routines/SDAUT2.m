SDAUT2 ;MAN/GRR - LOOK FOR OPEN SLOTS ;JAN 15, 2016
 ;;5.3;Scheduling;**206,168,186,478,627**;Aug 13, 1993;Build 249
 K SDNOSH
EN1 S (FND,DUPE)=0,NDATE="",SDSOH=$S('$D(^SC(SC,"SL")):0,$P(^("SL"),"^",8)']"":0,1:1) I $S('$D(^DPT(+A,.35)):0,$P(^(.35),"^",1)']"":0,1:1) S MESS="NOT REBOOKED, PATIENT HAS DIED" G END
 S MESS="" K SDPAT S:'$D(J) SDPAT="" F NDATE=SDSTRTDT-1:0 S NDATE=$O(^SC(SC,"ST",NDATE)) Q:NDATE'>0!(NDATE>ENDATE)!(FND)  I ^(NDATE,1)["[",$E(NDATE,6,7) S Z=^(1) I '$D(^HOLIDAY(NDATE))!(SDSOH) S HNDATE=NDATE D SRCH Q:FND
 I 'FND,$D(SDPAT) S NDATE="",MESS="NOT REBOOKED, NO PATTERN FOUND" G END
 I 'FND S NDATE="",MESS="NOT REBOOKED, NO OPEN SLOTS" G END
 ;
 ;**186**  MLR 11/30/00  Checking date for "non-cancelled" appointments
 D DUPE
 ;
 N SDATA,SDDA,SDABHDL S SDDA=L,SDABHDL=$$HANDLE^SDAMEVT(1) D BEFORE^SDAMEVT(.SDATA,+A,GDATE,SC,SDDA,SDABHDL)
 S NDATE=CKDATE,DNODE=^DPT(+A,"S",GDATE,0),$P(DNODE,"^",2)=$S($D(SDNOSH):"NA",$D(SDCP):$S(SDCP:"PCA",1:"CA"),1:"CA"),$P(DNODE,"^",10)=NDATE D STORE S ^DPT(+A,"S",NDATE,0)=HOLD,^DPT(+A,"S",GDATE,0)=DNODE,^SC(SC,"S",NDATE,1,0)="^44.003PA^^"
 ;xref DATE APPT. MADE field
 D
 .N DIV,DA,DIK
 .S DA=NDATE,DA(1)=+A,DIK="^DPT(DA(1),""S"",",DIK(1)=20 D EN1^DIK
 .Q
 I '$D(SDCP) S SDNODE=^SC(SC,"S",GDATE,1,L,0)
 N LNK,CY
 K QT S ^SC(SC,"ST",HNDATE,1)=Z,^SC(SC,"S",NDATE,0)=NDATE F CY=1:1 I '$D(^SC(SC,"S",NDATE,1,CY)) D  Q:$D(QT)  ;SD/478
 .S ^(CY,0)=+A_"^"_LEN,$P(^SC(SC,"S",NDATE,1,CY,0),"^",4,8)=$P(SDNODE,"^",4)_"^^"_$S($D(DUZ):DUZ,1:"")_"^"_DT_"^"_$P(SDNODE,"^",8) ;SD/478
 .S TPAT=$P(SDNODE,U) I $D(AUTO(SC,$S($D(SDCP):SD,1:GDATE),TPAT)) S LNK=AUTO(SC,GDATE,TPAT) D AUTOREB^SDCNSLT(SC,NDATE,LNK,CY)  ;SD/478
 .S QT=""  ;SD/478
 S $P(^SC(SC,"S",NDATE,1,CY,0),"^",10)=$P(SDNODE,"^",10) ;SD/478
 I $D(^SC("ARAD",SC,GDATE,+A)) S ^SC("ARAD",SC,NDATE,+A)=""
 S SDTTM=NDATE,SDPL=CY,SDSC=SC,DFN=+A,SDRT="A" D RT^SDUTL,EVT ;SD/478
END K ARG,BTIM,CKDATE,CNT,DIF,DISBEG,DNODE,FND,GOT,HDIF,HH1,HH2,HH3,HNDATE,HOLD,HSTM,HT1,HT2,HT3,INC,INCM,J,K,LEN,M,MM1,MM2,MM3,MMD,MMD2,NC,NS,NSTM,NTIM,REM,SDPAT,SDPL,SDSC,SDT20,SDTEST,SDTTM,STM,STR,TEMP,TM,WH,XK,^UTILITY($J,"I")
 Q
 ;
DUPE ;**186**  MLR  Checking date for "non-cancelled" appointments prior to
 ;11/30/00      setting "MULTIPLE APPNTS. ON CANCELLED DATE" message
 N I S I=$P(GDATE,"."),DUPE=0
 F  S I=$O(^DPT(+A,"S",I)) Q:'I!DUPE!($P(I,".")>GDATE)  D
 . Q:I=GDATE
 . I $P(^DPT(+A,"S",I,0),U,2)="I" S DUPE=1 Q
 . I $P(^DPT(+A,"S",I,0),U,2)="" S DUPE=1 Q
 . Q
 Q  ;DUPE
 ;
SRCH I $D(SDCP),(GDATE\1)=NDATE Q
 S LEN=$P(A,"^",2),INC=$P(^SC(SC,"SL"),"^",6),DISBEG=$P(^("SL"),"^",3),STR="123456789jklmnopqrstuvwxyz",INCM=$S(INC=4:15,INC=3:20,INC=6:10,INC=2:30,INC=1:60,1:0) G:INCM=0 NO S SDDIF=$S(INC<3:8/INC,1:2) K SDTEST N SDIV S SDIV=""
 S:$D(^SC(+SC,0)) SDIV=$S('$P(^(0),"^",15):$O(^DG(40.8,0)),1:$P(^(0),"^",15)) I $D(^DG(40.8,+SDIV,"LTR")) F XK=3,4,5 I $P(^DPT(+A,"S",GDATE,0),"^",XK)]"" S TEMP=$P($P(^(0),"^",XK),".",2),SDTEST(XK)=$P(^DG(40.8,SDIV,"LTR"),"^",(XK-1)) D FTM,FTM3
 S BTIM=$S($D(^SC(SC,"SDP")):$P(^("SDP"),"^",3),1:""),BTIM=$S($E(+$O(SDTEST("")),2,999)>BTIM:$E(+$O(SDTEST("")),2,999),1:BTIM) S:DISBEG="" DISBEG=8
 S NS=LEN\INCM,ST=$F(Z,"["),GOT=0,INC=$S(INC<3:4,1:INC)
 I BTIM]"" S ARG=INC*2,DIF=BTIM-DISBEG S:DIF>0 ST=DIF*ARG+ARG+1
 S CNT=0 F J=0:SDDIF:80 Q:$E(Z,ST+J,80)'["]"  S K=$E(Z,ST+J),CNT=$S(K]""&(STR[K):CNT+1,1:0) S:$S(STR[K:0,K?1A!(K=0):0,1:1) SDST=$F(Z,"[",ST+J),J=$S('SDST:80,1:SDST-SDDIF-ST) I CNT=NS D MORE Q:GOT  S CNT=0
 Q
MORE S TM=(NS-1)*SDDIF,STM=ST+J-TM,NSTM=STM-1/(INC*2)-1,HSTM=$P(NSTM,".",1)+DISBEG,HSTM=$S(HSTM<10:".0"_HSTM,1:"."_HSTM)
 I NSTM\1'=NSTM S REM="."_$E($P(NSTM,".",2),1,3),MIN=REM*60+.1,HSTM=HSTM_$P(MIN,".",1)
 S CKDATE=NDATE_HSTM,CKDATE=+CKDATE I $D(^DPT(+A,"S",CKDATE,0)),$P(^(0),"^",2)'["C" Q
 S FND=1,GOT=1 F M=STM:SDDIF:STM+(NS*SDDIF)-2 S CHAR=$E(Z,M,M),WH=$F(STR,CHAR)-2,NC=$S(WH<1:0,1:$E(STR,WH,WH)),Z=$E(Z,1,M-1)_NC_$E(Z,M+1,99)
 Q
STORE S SDINP=$$INP^SDAM2(+A,NDATE)
 S HOLD=SC_"^"_$$STATUS^SDM1A(SC,SDINP,NDATE)_"^"_$P(^DPT(+A,"S",GDATE,0),"^",3,5)_"^^"_$P(^(0),"^",7,9)_"^^"_$P(^(0),"^",11)_"^^"_$P(^(0),"^",13)_"^^^"_$P(^(0),"^",16)_"^^^"_DT_"^^^^^^A^0"
 F XK=3,4,5 I $P(HOLD,"^",XK)]"" S TEMP=$P($P(HOLD,"^",XK),".",2) D FTM,FTM1 S TEMP=HNDATE_NTIM,$P(HOLD,"^",XK)=TEMP K SDINP
 Q
FTM S HT1="."_$P(GDATE,".",2)+.000001,HT2="."_TEMP+.000001,HT3="."_$P(NDATE,".",2)+.000001,HH1=$E(HT1,1,3),MM1=$E(HT1,4,5),HH2=$E(HT2,1,3),MM2=$E(HT2,4,5)
 I MM2>MM1 S MM1=MM1+60,HH1=HH1-.01
 S MMD=MM1-MM2,HDIF=HH1-HH2 Q
FTM1 S HH3=$E(HT3,1,3),MM3=$E(HT3,4,5)
 I MMD>MM3 S MM3=MM3+60,HH3=HH3-.01
 S MMD2=MM3-MMD,HH3=HH3-HDIF,NTIM=HH3_MMD2,NTIM=+NTIM
 Q
FTM3 S HH1="."_$E(SDTEST(XK),1,2),MM1=$E(SDTEST(XK),3,4),MM2=MM1+MMD S:MM2>59 MM2=MM2-60,HDIF=HDIF+.01 S HH2=HH1+HDIF,HH2=HH2*100 S:MM2>0 HH1=HH1+.01 S SDTEST(-(HH2))="" K SDTEST(XK)
 Q
NO W !,"THIS CLINIC IS MISSING THE INCREMENTS PER HOUR FIELD, CANNOT REBOOK",! K ^UTILITY($J,"I") Q
 ;
EVT ; -- separate tag if need to NEW vars
 ; -- noshow event
 I $D(SDNOSH) D NOSHOW^SDAMEVT(.SDATA,DFN,GDATE,SDSC,SDDA,0,SDABHDL)
 ; -- cancel event
 I '$D(SDNOSH) D CANCEL^SDAMEVT(.SDATA,DFN,GDATE,SDSC,SDDA,0,SDABHDL)
 N SDGDATE S SDGDATE=GDATE ;ALB/SAT 627 - save prev appt datetime
 ; -- make appt evt
 N NDATE,GDATE,A,SDCL,B,A8,SDCTRL,CNT,SDWH,SDCP,SDMSG,SDCTR K SDATA
 D MAKE^SDAMEVT(DFN,SDTTM,SDSC,SDPL,0)
 ;ALB/SAT 627 - also change SDEC files on auto rebook
 D ADDSDEC(DFN,SDTTM,SDSC,SDGDATE)
 Q
ADDSDEC(DFN,SD,SC,SDGDATE) ;ALB/SAT 627 - Add SDEC file changes
 N APIEN,APPTYPE,EESTAT,FOUND,PROVIEN
 N SDAPTYP,SDDDT,SDECATID,SDECEND,SDECNOTE,SDECRESD
 N STATUS,WALKIN,ZNODE
 S FOUND=0
 S APIEN="" F  S APIEN=$O(^SDEC(409.84,"B",SDGDATE,APIEN)) Q:APIEN=""!(FOUND)  D
 .I $P(^SDEC(409.84,APIEN,0),U,5)=DFN D
 ..S ZNODE=^SDEC(409.84,APIEN,0),FOUND=1
 ..S SDECEND=$P(ZNODE,U,2)
 ..S APPTYPE=$P(ZNODE,U,6)
 ..S SDECRESD=$P(ZNODE,U,7)
 ..S WALKIN=$P(ZNODE,U,13)
 ..S PROVIEN=$P(ZNODE,U,16)
 ..S STATUS=$P(ZNODE,U,17)
 ..S SDDDT=$P(ZNODE,U,20)
 ..S SDAPTYP=$P(^SDEC(409.84,APIEN,2),U)
 ..S EESTAT=$P(^SDEC(409.84,APIEN,2),U,2)
 ..S SDECNOTE=$$GETNOTE(APIEN)
 Q:'FOUND
 S SDAPTYP=$S($P(SDAPTYP,";",2)="SDWL(409.3,":"E",$P(SDAPTYP,";",2)="GMR(123,":"C",$P(SDAPTYP,";",2)="SD(403.5,":"R",$P(SDAPTYP,";",2)="SDEC(409.85,":"A",1:"")_"|"_$P(SDAPTYP,";")
 S SDECATID=$S(WALKIN="y":"WALKIN",1:0)
 D SDECADD^SDEC07(SD,SDECEND,DFN,SDECRESD,SDECATID,SDDDT,"",SDAPTYP,PROVIEN,SC,SDECNOTE,SD,"",APPTYPE,EESTAT)
 I $P(SDAPTYP,"|")="A" D
 .N RET,INP,ARIEN
 .S ARIEN=$P(SDAPTYP,"|",2)
 .S INP(1)=ARIEN,INP(2)="SA",INP(3)=$G(DUZ),INP(4)=DT
 .D ARCLOSE1^SDEC(.RET,.INP)
 Q
GETNOTE(APIEN) ;ALB/SAT 627 - Add SDEC file changes
 N SDECIEN,SDNOTE
 S SDNOTE=""
 I $D(^SDEC(409.84,APIEN,1)) D
 .S SDECIEN=0 F  S SDECIEN=$O(^SDEC(409.84,APIEN,1,SDECIEN)) Q:'+SDECIEN  D
 ..S SDNOTE=SDNOTE_$G(^SDEC(409.84,APIEN,1,SDECIEN,0))
 Q SDNOTE
