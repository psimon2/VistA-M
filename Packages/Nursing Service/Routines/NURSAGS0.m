NURSAGS0 ;HIRMFO/RM,MD-SELECT MULTIPLE NURSING LOCATION UTILITY ;11/18/96
 ;;4.0;NURSING SERVICE;;Apr 25, 1997
MDIC() ; FUNTION RETURNS NURSNLOC(NLOC,NLOCIEN)=""
 ; FUNCTION VALUE IS -1 IF USER ABORT, 0 IF NO LOCS PICKED, ELSE 1
 ; USERS WITH AN AMIS POSITION OF HEAD NURSE AND BELOW WILL ONLY
 ; BE ABLE TO SELECT LOCATIONS TO WHICH THEY HAVE BEEN ASSIGNED
 ; IF A SITE IS MULTI-DIVISIONAL AND A SPECIFIC FACILITY HAS BEEN
 ; SELECTED AS A SORT PARAMETER ONLY LOCATIONS ASSOCIATED WITH THAT
 ; FACILITY CAN BE SELECTED
 N NPWARD,NUROUT,NURY,DIC,MDIC,NEG,X,Y K NURSNLOC S NURHOSP=0
DIC ;
 I NURSZAP,$G(NURMDSW),$G(NURFAC(1))'="" S:NURSZAP>6 DIC("S")="I ($D(NURSZLO(Y)),$$EN12^NURSUT3(Y)=NURFAC(1)"
 I NURSZAP,('$G(NURMDSW)!'($G(NURFAC(1))))  S:NURSZAP>6 DIC("S")="I $D(NURSZLO(Y))"
 I $G(NURMDSW),$G(NURFAC(1))'="" S:NURSZAP'>6 DIC("S")="I $S($$EN12^NURSUT3(Y)=NURFAC(1):1,'$D(^(""I"")):1,$P(^(""I""),U)'="""":1,1:0)"
 E  S:NURSZAP'>6 DIC("S")="I $S('$D(^(""I"")):1,$P(^(""I""),U)'="""":1,1:0)"
 I 'NURSZAP,$G(NURMDSW),$G(NURFAC(1))'="" S DIC("S")="I $$EN12^NURSUT3(Y)=NURFAC(1)"
 I NURSZAP>7 S NPWARD=+$O(NURSZLO(0)) D EN6^NURSAUTL K DIC("B") S:NPWARD'="" DIC("B")=NPWARD
 W !,$S('$D(NURSNLOC):"Select",1:"Another")_" NURSING UNIT"_$S($D(NURSNLOC):"",NURSZAP'>7!('NURSZAP):" (Enter return for "_$S(NURSZAP'=7:"all units",1:"your ward(s)")_") ",1:"")_": "_$S(NURSZAP>7:DIC("B")_"//",1:"") R X:DTIME E  S X="^^"
 I $G(DIC("B"))'="",$G(X)="" S X=DIC("B") G DIC1
RETURN I $G(X)'="^^",$G(X)="" W:NURSZAP>7 !,$C(7),?5,"PROPER ACCESS REQUIRED TO PRINT ALL LOCATIONS" G:NURSZAP>7 DIC
 I X["^" S MDIC=-1 Q MDIC
 I X="",'$D(NURSNLOC) S NURHOSP=1
 I X="" S MDIC=$S(+NURHOSP:1,1:''$D(NURSNLOC)) Q MDIC
 I X?1"?".E D HLP S:Y<0 X="^^" G:Y<0 RETURN S X="?"
DIC1 S NEG=X?1"-".E,X=$E(X,NEG+1,$L(X)),DIC="^NURSF(211.4,",DIC(0)="EQMNZ" D ^DIC I +Y'>0 G DIC
 I 'NEG S NURSNLOC($E(Y(0,0),1,10),+Y)=$P(Y,"^",2)_"^"_$$EN12^NURSUT3(+Y)
 E  K NURSNLOC($E(Y(0,0),1,10),+Y)
 S NURY=$G(DIC("B")) I $G(DIC("B"))'="",$D(NURSNLOC(NURY)) S MDIC=1 Q MDIC
 G DIC
HLP ; PRINT LOCATIONS SELECTED ALREADY
 W $C(7) I $D(NURSNLOC) W !?3,"YOU HAVE ALREADY SELECTED: "
 S Y="",X=0 F  S Y=$O(NURSNLOC(Y)) Q:Y=""  W !?5,Y S X=X+1 I X>5 W """^"" TO STOP: " R X:DTIME S:'$T X="^^" S:X="^^" Y=-1 Q:X="^"!(Y<0)  S X=0
 Q:Y<0
 W !!?3,"You may deselect from the list by typing the - followed by location name.",!?4,"E.g.  -3E would delete 3E from the list of locations already selected."
 Q
