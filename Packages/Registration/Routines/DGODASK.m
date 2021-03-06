DGODASK ;ALB/EG - INPATIENT/OUTPATIENT MEANS TEST REPORTS ; 27 DEC 88 1146
 ;;5.3;Registration;;Aug 13, 1993
 W !!,*7,"DISCRETIONARY WORKLOAD OPTIONS ARE NO LONGER AVAILABLE!",!! Q
 ;;V 4.5
 S U="^",%=2,DGSAV=0
 K ^UTILITY("DGOD",$J)
 D LO^DGUTL,ASK S DG05=X Q:DGQ=1  D @DG05
 K %,DG01,DG02,DG03,DG04,DG05,DG0BD,DG0ND,%DT,%DT(0),%DT("A"),%DT("B"),DG0Y1,A1,AD,D,DGBD,DGBD1,DGGE,DGJB,DGM,DGMO,DGND,DGNET,DGQ,DGQDT,DGSAV,DGSP,DGTOUT,H1,H2,K1,POP,T2,U,X,Y,Z,ZRT,ZQ,ZTSK,ZTIO
 Q
RD S X="" R X:DTIME I X[U!('$T) S DGQ=1 Q
 S X=$E(X) Q
ASK S DGQ="" W !!,"Do you wish (I)npatient,(O)utpatient,or (B)oth reports: BOTH// " S Z=U_"INPATIENT^OUTPATIENT^BOTH" D RD I X="" S X="B" W X
 D IN^DGHELP S DGSAV=$S(X="B":1,1:0),X=$S(X="B":"DGODOP1,^DGODNP1",X="O":"DGODOP1",X="I":"DGODNP1",X[U:U,1:0) W:X=0 !,"Enter I,O,B, or ^ to QUIT" G:X=0 ASK Q:X=U  S X=U_X
 Q
 ;
TRN ;checks to see if run may be broken into months.
 S DGM="31^28^31^30^31^30^31^31^30^31^30^31",X2=DGBD,X1=DGND D ^%DTC S DG0Y1=%Y
 S DGSP=DG0Y1 S:($E(DGND,1,3)#4=0)!($E(DGBD,1,3)#4=0) $P(DGM,U,2)=29
 Q:$E(DGND,1,3)-$E(DGBD,1,3)>1  I $E(DGND,1,3)'=$E(DGBD,1,3) S DG0BD=DGBD,DG0ND=$E(DGBD,1,3)_"1231",DG0I1=0 D TRN1 S DG0BD=$E(DGND,1,3)_"0101",DG0ND=DGND,DG0I1=DG0I D TRN1
 I $E(DGND,1,3)=$E(DGBD,1,3) S DG0BD=DGBD,DG0ND=DGND,DG0I1=0 D TRN1
 S DG0ND(DG0I1+DG0I)=$E(DG0ND,1,3)_DG0X1_$E(DG0ND,6,7),DG0BD(1)=$E(DG0BD(1),1,5)_$E(DGBD,6,7) F DG0I=1:1 Q:$D(DG0BD(DG0I))=0  D DGMO
 S DGSP=DG0I-1 K %DT,DG0I,DG0I1,DG0X,DG0X1,X,X1,X2,Y
 Q
TRN1 S DG0X=+$E(DG0BD,4,5),DG0Y1=+$E(DG0ND,4,5)
 F DG0I=1:1:DG0Y1-DG0X+1 S DG0X1=DG0X+DG0I-1 S:DG0X1<10 DG0X1="0"_DG0X1 S DG0BD(DG0I1+DG0I)=$E(DG0BD,1,3)_DG0X1_"01",DG0X1=DG0X+DG0I-1 S:DG0X1<10 DG0X1="0"_DG0X1 S DG0ND(DG0I1+DG0I)=$E(DG0ND,1,3)_DG0X1_$P(DGM,U,+DG0X1)
 Q
DGMO ;is range large enough for transmission (full month)
 S DGMO(DG0I)=$S($E(DG0BD(DG0I),6,7)'="01":0,$E(DG0ND(DG0I),6,7)=$P(DGM,U,$E(DG0ND(DG0I),4,5)):1,1:0)
 Q
