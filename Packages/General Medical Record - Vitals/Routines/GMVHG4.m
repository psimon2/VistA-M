GMVHG4 ;HIOFO/YH,FT-HP LASER SF 511 GRAPH - ^TMP DATA ;11/6/01  15:08
 ;;5.0;GEN. MED. REC. - VITALS;;Oct 31, 2002
 ;
 ; This routine uses the following IAs:
 ; #10104 - ^XLFSTR calls          (supported)
 ;
SETA ;
 I GK="Unavailable" S GK="Unavail"
 S (GMRSITE,GMRSITE(1),GMRSITE(2),GMRINF,GMRVJ)=""
 I GK'="" D
 . S GMRSITE(1)=$P($G(^TMP($J,"GMRVG",GI,GDT1,GK)),"^"),GMRVJ=$P($G(^(GK)),"^",2),GMRINF=$P($G(^(GK)),"^",4)
 . I GMRSITE(1)'="" D SYNOARY^GMVLGQU
 I GI="H" S ^TMP($J,"GMRK","G"_(470+GCNTD))=GK_" "_GMRSITE,^TMP($J,"GMRK","G"_(1100+GCNTD))=$S(GK>0:$J(GK*2.54,0,2),1:"") S:GK>0 GMRHT=GK*2.54/100 Q
 I GI="PN" S ^TMP($J,"GMRK","G"_(1660+GCNTD))=GK
 I GI="C" S ^TMP($J,"GMRK","G"_(1640+GCNTD))=GK_"  "_^TMP($J,"GMRK","G"_(1640+GCNTD)) Q
 I GI="PO2"!(GI="CVP")!(GI="CG") D  Q
 . I GI="PO2" D
 . . S (GMRINF(1),GMRINF(2))="" I GMRINF'="" D PO2^GMVLGQU(.GMRINF)
 . . S ^TMP($J,"GMRK","G"_(1400+GCNTD))=GK_$S(GMRVJ=1:"*",1:"")
 . . S ^TMP($J,"GMRK","G"_(1430+GCNTD))=GMRINF(1)
 . . S ^TMP($J,"GMRK","G"_(1450+GCNTD))=GMRINF(2)
 . . S ^TMP($J,"GMRK","G"_(1470+GCNTD))=GMRSITE
 . . Q
 . I GI="CVP" D
 . . S ^TMP($J,"GMRK","G"_(1500+GCNTD))=$S(GK>0!(GK<0):$J(GK,0,1),1:GK)_$S(GMRVJ=1:"*",1:"")
 . . S ^TMP($J,"GMRK","G"_(1530+GCNTD))=$S(GK>0!(GK<0)!($E(GK)="0"):$J(GK/1.36,0,1),1:"")_$S(GMRVJ=1:"*",1:"")
 . . Q
 . I GI="CG" D
 . . S ^TMP($J,"GMRK","G"_(1550+GCNTD))=GK_GMRSITE,^TMP($J,"GMRK","G"_(1620+GCNTD))=$S(GK>0:$J(GK/.3937,0,2),1:"")
 . . Q
 I GI="B",GK'="" S ^TMP($J,"GMRK","G"_(450+GCNTD))=$S($L(GMRSITE," ")>3:$P(GMRSITE," ",2,4),1:GMRSITE) S:$L(GMRSITE," ")>3 ^TMP($J,"GMRK","G"_(1640+GCNTD))=$P(GMRSITE," ")
 I '(GI="T"!(GI="P")) D  Q
 . S ^TMP($J,"GMRK","G"_(GJ*16+GCNTD+1))=GK_$S(GMRVJ=1:"*",1:"")_$S(GI="B":"",1:GMRSITE) S:GI="W" ^TMP($J,"GMRK","G"_(1200+GCNTD))=$S(GK>0:$J(GK/2.2,0,2),1:"")
 . I GI="W",GK>0 D
 . . S GMRBMI="",GMRBMI(1)=GDT1,GMRBMI(2)=GK D CALBMI^GMVBMI(.GMRBMI)
 . . S ^TMP($J,"GMRK","G"_(1300+GCNTD))=GMRBMI K GMRBMI
 I GI="T",GK>0 S ^TMP($J,"GMRK","G"_(GJ*16+GCNTD+1))=GK-93
 I GK'="",GI="P","UNAVAILABLEPASSREFUSED"'[$$UP^XLFSTR(GK) D
 . I GMRSITE(1)["RADIAL"!(GMRSITE(1)["APICAL")!(GMRSITE(1)["BRACHIAL") D
 . . S ^TMP($J,"GMRK","G"_(GJ*16+GCNTD+1))=GK-40/10
 S ^TMP($J,"GMRK","G"_(GJ+1*16+GCNTD+1))=GK_$S(GMRVJ=1:"*",1:"")_$S(GI="T":GMRSITE,GI="P"&($L(GMRSITE," ")>3):"  "_$P(GMRSITE," "),1:" ")
 I GI="T",GK>0 S ^TMP($J,"GMRK","G"_(410+GCNTD))=$S(GMRVJ=1:"T*",1:"T")
 I GK'="",GI="P","UNAVAILABLEPASSREFUSED"'[$$UP^XLFSTR(GK) D
 . I GMRSITE(1)["RADIAL"!(GMRSITE(1)["APICAL")!(GMRSITE(1)["BRACHIAL") S ^TMP($J,"GMRK","G"_(430+GCNTD))=$S(GMRVJ=1:"P*",1:"P")
 . S ^TMP($J,"GMRK","G"_(1600+GCNTD))=$S($L(GMRSITE," ")>3:$P(GMRSITE," ",2,4),1:GMRSITE)
 I GK>0,GI="T" S ^TMP($J,"GMRK","G"_(GJ*16+GCNTD+1))=$S(^("G"_(GJ*16+GCNTD+1))<0.3:0.3,^("G"_(GJ*16+GCNTD+1))>11.6:11.6,1:^("G"_(GJ*16+GCNTD+1))) S:^("G"_(GJ*16+GCNTD+1))<0.4!(^("G"_(GJ*16+GCNTD+1))>11.5) ^TMP($J,"GMRK","G"_(410+GCNTD))="T**"
 I GK'="",GI="P","UNAVAILABLEPASSREFUSED"'[$$UP^XLFSTR(GK) D
 . I GMRSITE(1)["RADIAL"!(GMRSITE(1)["APICAL")!(GMRSITE(1)["BRACHIAL") D
 . . S ^TMP($J,"GMRK","G"_(GJ*16+GCNTD+1))=$S(^("G"_(GJ*16+GCNTD+1))<0.3:0.3,^("G"_(GJ*16+GCNTD+1))>11.6:11.6,1:^("G"_(GJ*16+GCNTD+1))) S:^("G"_(GJ*16+GCNTD+1))<0.4!(^("G"_(GJ*16+GCNTD+1))>11.5) ^TMP($J,"GMRK","G"_(430+GCNTD))="P**"
 Q
OUTP ;PRINT OUTPUT
 S J=-8.7,J(1)=162 D WRTLN^GMVHG3
PAIN ;PRINT PAIN
 S J=-9.1,J(1)=1661 D
 . S I(1)="" F I=1:1:5 S I(2)=I-1,I(1)=I(1)_"PA"_(1.6*I(2)+0.2)_","_J_";LB"_^TMP($J,"GMRK","G"_(J(1)+I(2)))_"#;"
 . W !,I(1) S I(1)="" F I=6:1:10 S I(2)=I-1,I(1)=I(1)_"PA"_(1.6*I(2)+0.2)_","_J_";LB"_^TMP($J,"GMRK","G"_(J(1)+I(2)))_"#;"
 . W !,I(1) Q
PTID ;PRINT PATIENT ID
 W !,"SD1,277,2,1,4,9,5,1,6,5,7,4;SS;PA-1,-11.3;LB"_^TMP($J,"GMRK","G194")_"#;PA-1,-11.6;LB"_^("G196")_"   "_^("G197")_"#;"
 W !,"PA-1,-11.9;LB"_^TMP($J,"GMRK","G198")_"#;PA7,-11.9;LB"_^("G200")_"#;PA-1,-12.2;LB"_GMRDIV_"#;PA7,-12.2;LB"_^("G199")_"#;"
 W !,"PA-1,-12.5;LB"_GSTRFIN_"#;" Q
