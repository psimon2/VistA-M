GMRYMNT1 ;HIRMFO/YH-IV CARE/MAINTENANCE/FLUSH (CONTINUE) ;8/13/96
 ;;4.0;Intake/Output;;Apr 25, 1997
EN1 ;SET SITE DC, TUBE CHANGE AND DRESSING CHANGE
 S:'$D(GDR) GDR=0 I '$D(^GMR(126,DA(1),"IVM",DA,1,0)) S ^GMR(126,DA(1),"IVM",DA,1,0)="^126.41DA^0^0"
 D WAIT^GMRYUT0 Q:GMROUT  K DD S DA(2)=DA(1),DA(1)=DA,X=+GX,DIC="^GMR(126,"_DA(2)_",""IVM"","_DA(1)_",1,",DIC(0)="ML" D FILE^DICN L -^GMR(126,DFN) Q:+Y'>0  S DA=+Y
 K DD,DIC S DIE="^GMR(126,"_DA(2)_",""IVM"","_DA(1)_",1,"
 D:$P(^GMR(126,DA(2),"IVM",DA(1),1,DA,0),"^",2)="" SITEDES^GMRYUT6 D:GMROUT KILLRC^GMRYUT9 G:GMROUT Q2 S DR="1///^S X=GMRZ;3;4///^S X=""`""_DUZ;"
Q1 D WAIT^GMRYUT0 G:GMROUT Q2
 D ^DIE L -^GMR(126,DFN) I $P(^GMR(126,DA(2),"IVM",DA(1),1,DA,0),"^",2)="",$P(^(0),"^",3)="",$P(^(0),"^",4)="",$P(^(0),"^",6)="" D KILLRC^GMRYUT9
 I GCT(GSITE)'>0 G Q2
 S GMESSG="Enter the number(s) of the line associated with the TUBING CHANGE: "
 D IVLINE^GMRYUT9 D:GMROUT KILLRC^GMRYUT9
 K GMRYZ,GN,GSEL,GMESSG
 W ! D ASKFLSH^GMRYFLSH
Q2 K DIE,DR,GMRZ Q
DCDATE ;OBTAIN INFUSION SITE DISCONTINUED DATE
 N I S I="" F  S I=$O(GCT(I)) Q:I=""  I GCT(I)=0 D
 . S I(1)=$O(^GMR(126,DFN,"IVM","B",I,0)) Q:I(1)'>0!(GMRXY(I)'="")
 . S I(2)=0 F  S I(2)=$O(^GMR(126,DFN,"IVM",I(1),1,"C",I(2))) Q:I(2)'>0  S I(3)=$O(^GMR(126,DFN,"IVM",I(1),1,"C",I(2),0)) Q:I(3)'>0!(GMRXY(I)'="")  D
 . . I $E($P($G(^GMR(126,DFN,"IVM",I(1),1,I(3),0)),"^",6))="Y" D
 . . . S GMRXY(I)=9999999-I(2),GMRXY(I)=$E(GMRXY(I),4,5)_"/"_$E(GMRXY(I),6,7)_"/"_$E(GMRXY(I),2,3)
 Q
