LR7OFAA ;slc/dcm - Setup Accession for AP orders ;8/11/97
 ;;5.2;LAB SERVICE;**121,187**;Sep 27, 1994
 ;
EN D DT K ZTSK S LRORDR=LRXZ
 F LRSAMP=-1:0 S LRSAMP=$O(^TMP("OR",$J,"LROT",LRSDT,LRXZ,LRSAMP)) Q:LRSAMP=""  S ORIFN=^(LRSAMP,0) D ZX
 K ZTSK Q
ZX ;
 S J=0  F LRJ=1:1 S J=$O(^TMP("OR",$J,"LROT",LRSDT,LRXZ,LRSAMP,J)) Q:J<1  D
 . S LRTSTS=+^TMP("OR",$J,"LROT",LRSDT,LRXZ,LRASMP,J),LRORIFN=^(J,0) D
 .. Q:'$D(DUZ(2))  Q:'$D(^LAB(60,+LRTSTS,8,+DUZ(2),0))  S LRAA=$P(^(0),"^",2)
 .. I 'LRAA D ACK^LR7OF0("DE","","Missing accession area for lab test: "_LRTSTS) Q
 .. S LRAD=$E(LRSDT,1,3)_"0000",LRH(2)=$E(LRSDT,1,3)
 .. S:'$D(^LRO(68,LRAA,1,0)) ^(0)="^68.01DA^^0"
 .. S:'$D(^LRO(68,LRAA,1,LRAD,0)) ^(0)=LRAD,^LRO(68,LRAA,1,0)=$P(^LRO(68,LRAA,1,0),"^",1,2)_"^"_LRAD_"^"_($P(^(0),"^",4)+1)
 .. S:'$D(^LRO(68,LRAA,1,LRAD,1,0)) ^(0)="^68.02PA^^"
 .. F  L +^LRO(68,LRAA,1,LRAD):360 Q:$T
 .. S LRAN=$P(^LRO(68,LRAA,1,LRAD,1,0),"^",3) F X=0:0 S LRAN=LRAN+1 Q:'$D(^LRO(68,LRAA,1,LRAD,1,LRAN,0))
 .. I $D(^LR(LRXREF,LRH(2),LRAN)) F X=0:0 S LRAN=LRAN+1 Q:'$D(^LR(LRXREF,LRH(2),LRAN))
 .. S X=^LRO(68,LRAA,1,LRAD,1,0),^(0)=$P(X,"^",1,2)_"^"_LRAN_"^"_($P(X,"^",4)+1),^LRO(68,LRAA,1,LRAD,1,LRAN,0)=LRDFN
 .. L -^LRO(68,LRAA,1,LRAD)
 Q
DT S DT=$$DT^XLFDT()
 S LRNT=$P($H,",",2),LRNT=LRNT\3600*100+(LRNT\60#60)/10000+DT
 Q
