RTCU2 ; ;07/15/96
 D DE G BEGIN
DE S DIE="^RTV(190.1,",DIC=DIE,DP=190.1,DL=1,DIEL=0,DU="" K DG,DE,DB Q:$O(^RTV(190.1,DA,""))=""
 I $D(^(0)) S %Z=^(0) S %=$P(%Z,U,4) S:%]"" DE(11)=%,DE(14)=% S %=$P(%Z,U,12) S:%]"" DE(4)=%,DE(7)=% S %=$P(%Z,U,14) S:%]"" DE(1)=%
 K %Z Q
 ;
W W !?DL+DL-2,DLB_": "
 Q
O D W W Y W:$X>45 !?9
 I $L(Y)>19,'DV,DV'["I",(DV["F"!(DV["K")) G RW^DIR2
 W:Y]"" "// " I 'DV,DV["I",$D(DE(DQ))#2 S X="" W "  (No Editing)" Q
TR R X:DTIME E  S (DTOUT,X)=U W $C(7)
 Q
A K DQ(DQ) S DQ=DQ+1
B G @DQ
RE G PR:$D(DE(DQ)) D W,TR
N I X="" G A:DV'["R",X:'DV,X:D'>0,A
RD G QS:X?."?" I X["^" D D G ^DIE17
 I X="@" D D G Z^DIE2
 I X=" ",DV["d",DV'["P",$D(^DISV(DUZ,"DIE",DLB)) S X=^(DLB) I DV'["D",DV'["S" W "  "_X
T G M^DIE17:DV,^DIE3:DV["V",P:DV'["S" X:$D(^DD(DP,DIFLD,12.1)) ^(12.1) D SET I 'DDER X:$D(DIC("S")) DIC("S") I  W:'$D(DB(DQ)) "  "_% G V
 K DDER G X
P I DV["P" S DIC=U_DU,DIC(0)=$E("EN",$D(DB(DQ))+1)_"M"_$E("L",DV'["'") S:DIC(0)["L" DLAYGO=+$P(DV,"P",2) I DV'["*" D ^DIC S X=+Y,DIC=DIE G X:X<0
 G V:DV'["N" D D I $L($P(X,"."))>24 K X G Z
 I $P(DQ(DQ),U,5)'["$",X?.1"-".N.1".".N,$P(DQ(DQ),U,5,99)["+X'=X" S X=+X
V D @("X"_DQ) K YS
Z K DIC("S"),DLAYGO I $D(X),X'=U S DG(DW)=X S:DV["d" ^DISV(DUZ,"DIE",DLB)=X G A
X W:'$D(ZTQUEUED) $C(7),"??" I $D(DB(DQ)) G Z^DIE17
 S X="?BAD"
QS S DZ=X D D,QQ^DIEQ G B
D S D=DIFLD,DQ(DQ)=DLB_U_DV_U_DU_U_DW_U_$P($T(@("X"_DQ))," ",2,99) Q
Y I '$D(DE(DQ)) D O G RD:"@"'[X,A:DV'["R"&(X="@"),X:X="@" S X=Y G N
PR S DG=DV,Y=DE(DQ),X=DU I $D(DQ(DQ,2)) X DQ(DQ,2) G RP
R I DG["P",@("$D(^"_X_"0))") S X=+$P(^(0),U,2) G RP:'$D(^(Y,0)) S Y=$P(^(0),U),X=$P(^DD(X,.01,0),U,3),DG=$P(^(0),U,2) G R
 I DG["V",+Y,$P(Y,";",2)["(",$D(@(U_$P(Y,";",2)_"0)")) S X=+$P(^(0),U,2) G RP:'$D(^(+Y,0)) S Y=$P(^(0),U) I $D(^DD(+X,.01,0)) S DG=$P(^(0),U,2),X=$P(^(0),U,3) G R
 X:DG["D" ^DD("DD") I DG["S" S %=$P($P(";"_X,";"_Y_":",2),";") S:%]"" Y=%
RP D O I X="" S X=DE(DQ) G A:'DV,A:DC<2,N^DIE17
I I DV'["I",DV'["#" G RD
 D E^DIE0 G RD:$D(X),PR
 Q
SET I X'?.ANP S DDER=1 Q 
 N DIR S DIR(0)="SMV^"_DU,DIR("V")=1
 I $D(DB(DQ)),'$D(DIQUIET) N DIQUIET S DIQUIET=1
 D ^DIR I 'DDER S %=Y(0),X=Y
 Q
BEGIN S DNM="RTCU2",DQ=1
1 D:$D(DG)>9 F^DIE17,DE S DQ=1,DW="0;14",DV="*P195.9X",DU="",DLB="ASSOCIATED REQUESTOR",DIFLD=14
 S DU="RTV(195.9,"
 G RE
X1 D RTQ^RTDPA31 S DIC("S")="I $D(D0),$D(^RT(+^RTV(190.1,D0,0),0)),$P(^(0),U,4)=$P(^RTV(195.9,Y,0),U,3) D DICS^RTDPA31" D ^DIC K DIC S DIC=DIE,X=+Y K:Y<0 X
 Q
 ;
2 S DQ=3 ;@22
3 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=3 D X3 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X3 S:'$D(RTINST) Y="@25"
 Q
4 S DW="0;12",DV="RP4'",DU="",DLB="INSTITUTION OF REQUESTOR",DIFLD=12
 S DU="DIC(4,"
 S X=RTINST
 S Y=X
 S X=Y,DB(DQ)=1 G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G Z
X4 Q
5 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=5 D X5 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X5 S Y="@30"
 Q
6 S DQ=7 ;@25
7 S DW="0;12",DV="RP4'",DU="",DLB="INSTITUTION OF REQUESTOR",DIFLD=12
 S DU="DIC(4,"
 G RE
X7 Q
8 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=8 D X8 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X8 S:X]"" RTINST=X
 Q
9 S DQ=10 ;@30
10 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=10 D X10 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X10 S:'$D(RTQDT) Y="@40"
 Q
11 S DW="0;4",DV="RDX",DU="",DLB="DATE/TIME RECORD NEEDED",DIFLD=4
 S DE(DW)="C11^RTCU2"
 S X=RTQDT
 S Y=X
 S X=Y,DB(DQ)=1 G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G Z
C11 G C11S:$D(DE(11))[0 K DB S X=DE(11),DIC=DIE
 K ^RTV(190.1,"C",$E(X,1,30),DA)
 S X=DE(11),DIC=DIE
 K ^RTV(190.1,"AC",+^RTV(190.1,DA,0),$P(X,"."),DA)
C11S S X="" Q:DG(DQ)=X  K DB S X=DG(DQ),DIC=DIE
 S ^RTV(190.1,"C",$E(X,1,30),DA)=""
 S X=DG(DQ),DIC=DIE
 S ^RTV(190.1,"AC",+^RTV(190.1,DA,0),$P(X,"."),DA)=""
 Q
X11 Q
12 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=12 D X12 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X12 S Y="@50"
 Q
13 S DQ=14 ;@40
14 D:$D(DG)>9 F^DIE17,DE S DQ=14,DW="0;4",DV="RDX",DU="",DLB="DATE/TIME RECORD NEEDED",DIFLD=4
 S DE(DW)="C14^RTCU2"
 S X="NOW"
 S Y=X
 G Y
C14 G C14S:$D(DE(14))[0 K DB S X=DE(14),DIC=DIE
 K ^RTV(190.1,"C",$E(X,1,30),DA)
 S X=DE(14),DIC=DIE
 K ^RTV(190.1,"AC",+^RTV(190.1,DA,0),$P(X,"."),DA)
C14S S X="" Q:DG(DQ)=X  K DB S X=DG(DQ),DIC=DIE
 S ^RTV(190.1,"C",$E(X,1,30),DA)=""
 S X=DG(DQ),DIC=DIE
 S ^RTV(190.1,"AC",+^RTV(190.1,DA,0),$P(X,"."),DA)=""
 Q
X14 S %DT(0)=$S($D(RTNOW):RTNOW,1:DT),%DT="ETX" D ^%DT K %DT S X=Y K:Y<1 X I $D(X) S RTX="RTQDT" D TEST^RTQ1
 Q
 ;
15 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=15 D X15 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X15 I $D(RTFL) S Y=""
 Q
16 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=16 D X16 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X16 S:X?7N0.1".".N RTQDT=X
 Q
17 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=17 D X17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X17 S:'$D(RTQDT) Y="@40"
 Q
18 S DQ=19 ;@50
19 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=19 D X19 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X19 S:$S('$D(RTSHOW):1,1:+RTSHOW) Y="@55"
 Q
20 D:$D(DG)>9 F^DIE17 G ^RTCU3
