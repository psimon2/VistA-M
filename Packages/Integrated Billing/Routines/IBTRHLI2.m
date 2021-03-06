IBTRHLI2 ;ALB/JWS - Receive and store 278 Response message ;05-JUN-2014
 ;;2.0;INTEGRATED BILLING;**517**;21-MAR-94;Build 240
 ;;Per VA Directive 6402, this routine should not be modified.
 ;
 ;**Program Description**
 ;  This pgm will process the indiv segments of the
 ;  incoming 278 response msgs.
 ;
 ; * Each of these tags are called by IBTRHL2.
 ; 
 ;  This routine is based on IBCNEHL2 which was introduced with patch 300, and subsequently
 ;  patched with patches 345, 416, and 438.
 ;
 ;  Variables
 ;    SEG = HL7 Seg Name
 ;    IBSEG = Array of the segment
 ;
 Q  ; No direct calls
 ;
MSH(IBSEG,RESIEN,ERROR) ;MSH seg (x12 BHT seg)
 ;  Input:
 ;  IBSEG
 ;
 ;  Output:
 ;  RESIEN,ERROR
 ;  RESIEN = Response IEN value for file 356.22
 N IBFDA,RIEN,DATA0
 S DATA0=""
 S REQIEN=$P($G(IBSEG(19)),HLCMP) ;REQUEST MESSAGE CONTROL ID
 I REQIEN S REQIEN=$$FIND1^DIC(356.22,,"PQX",REQIEN,"C")
 I 'REQIEN D ERR("Cannot locate associated 278 Request message","") S BADERROR=1 Q
 S DATA0=$G(^IBT(356.22,REQIEN,0))
 ; If there is a previous response linked to this request, save only the latest
 ; delete previous 'pending' response
 I $P(DATA0,U,14) S DIK="^IBT(356.22,",DA=$P(DATA0,U,14) D ^DIK
 S RIEN=1
 D NOW^%DTC
 S IBFDA(356.22,"+1,",.01)=%
 S IBFDA(356.22,"+1,",.1)=%
 S IBFDA(356.22,"+1,",.12)=$G(IBSEG(10)) ; MESSAGE CONTROL ID
 S IBFDA(356.22,"+1,",.15)=%
 S IBFDA(356.22,"+1,",.13)=REQIEN ;REQUEST IEN
 S IBFDA(356.22,"+1,",.02)=$P(DATA0,U,2) ;PATIENT IEN
 S IBFDA(356.22,"+1,",.03)=$P(DATA0,U,3) ;INSURANCE IEN
 S IBFDA(356.22,"+1,",.04)=$P(DATA0,U,4) ;INPATIENT / OUTPATIENT
 S IBFDA(356.22,"+1,",.05)=$P(DATA0,U,5) ;WARD
 S IBFDA(356.22,"+1,",.06)=$P(DATA0,U,6) ;CLINIC
 S IBFDA(356.22,"+1,",.07)=$P(DATA0,U,7) ;EVENT DATE
 S IBFDA(356.22,"+1,",.16)=$P(DATA0,U,16) ;SOURCE - date of appointment or admission, used for "E" index
 S IBFDA(356.22,"+1,",.2)=2
 ;M ^TMP($J,"IBTRHLI2",356.22)=IBFDA(356.22,"+1,")
 K ERROR
 D UPDATE^DIE(,"IBFDA","RIEN","ERROR")
 I $D(ERROR) D ERR("Problem filing MSH segment data","") Q
 S RESIEN=$G(RIEN(1))
 S IBFDA(356.22,REQIEN_",",.14)=RESIEN  ;UPDATE REQUEST WITH RESPONSE IEN
 K ERROR
 D FILE^DIE("I","IBFDA","ERROR")
 I $D(ERROR) D ERR("Problem linking original request message with response message","")
 Q
 ;
MSA(IBSEG,RESIEN,ERROR) ;MSA seg (x12 AAA and TRN segs)
 ;  Input:
 ;  IBSEG,RESIEN
 ;
 ;  Output:
 ;  ERROR
 N CT,LEV,IBFDA,RIEN
 I $E($G(IBSEG(2)),1,3)'="TRN",$P($G(^IBT(356.22,RESIEN,0)),"^",8)'="04" D
 .S STATUS="04"
 .;S IBFDA(356.22,RESIEN_",",.08)="04" ;STATUS - negative response received
 .;S ^TMP($J,"IBTRHLI2",356.22,.08)="04"
 .;K ERROR
 .;D UPDATE^DIE(,"IBFDA","RIEN","ERROR")
 .;K ERROR
 .;I REQIEN S IBFDA(356.22,REQIEN_",",.08)="04" D FILE^DIE("","IBFDA","ERROR")
 S LEV="+2,"_RESIEN_","
 I $E($G(IBSEG(2)),1,3)="TRN" D  D UP("TRN",$E($G(IBSEG(2)),5,10)) Q
 .S CT=$O(^IBT(356.22,RESIEN,105,"A"),-1),CT=CT+1
 .S IBFDA(356.22105,LEV,.01)=CT
 .S IBFDA(356.22105,LEV,.02)=$E($G(IBSEG(2)),5,10) ;LOOP IDENTIFIER
 .S IBFDA(356.22105,LEV,.03)=$G(IBSEG(7))  ;TRACE TYPE CODE
 .S IBFDA(356.22105,LEV,.04)=$G(IBSEG(3))  ;TRACE NUMBER
 .S IBFDA(356.22105,LEV,.05)=$P($G(IBSEG(6)),HLCMP)  ;ENTITY IDENTIFIER
 .S IBFDA(356.22105,LEV,.06)=$P($G(IBSEG(6)),HLCMP,2)  ;ENTITY ADD ID
 .;S ^TMP($J,"IBTRHLI2",356.22105,.01)=CT,^(.02)=$E($G(IBSEG(2)),5,10)
 .;S ^TMP($J,"IBTRHLI2",356.22105,.03)=$G(IBSEG(7)),^(.04)=$G(IBSEG(3))
 .;S ^TMP($J,"IBTRHLI2",356.22105,.05)=$P($G(IBSEG(6)),HLCMP),^(.06)=$P($G(IBSEG(6)),HLCMP,2)
 .Q
 S CT=$O(^IBT(356.22,RESIEN,101,"A"),-1),CT=CT+1
 S IBFDA(356.22101,LEV,.01)=CT
 S IBFDA(356.22101,LEV,.02)=$E($G(IBSEG(3)),5,10) ;LOOP IDENTIFIER
 S IBFDA(356.22101,LEV,.05)=$G(IBSEG(5)) ;FOLLOW-UP ACTION CODE
 S IBFDA(356.22101,LEV,.04)=$P($G(IBSEG(6)),HLCMP) ;REJECT REASON CODE
 S IBFDA(356.22101,LEV,1)=$P($G(IBSEG(6)),HLCMP,2) ;FSC ERROR TEXT
 S IBFDA(356.22101,LEV,.03)=$S($P($G(IBSEG(6)),HLCMP,4)'="":"Y",1:"N") ;VALID REQUEST INDICATOR
 ;S ^TMP($J,"IBTRHLI2",356.22101,.01)=CT,^(.02)=$E($G(IBSEG(3)),5,10)
 ;S ^TMP($J,"IBTRHLI2",356.22101,.05)=$G(IBSEG(5)),^(.04)=$P($G(IBSEG(6)),HLCMP)
 ;S ^TMP($J,"IBTRHLI2",356.22101,1)=$P($G(IBSEG(6)),HLCMP,2),^(.03)=IBFDA(356.22101,LEV,.03)
 D UP("AAA",$E($G(IBSEG(3)),5,10))
 Q
IN1(IBSEG,RESIEN,ERROR) ;IN1 Insurance seg (X12 NM1 and PER seg(s) loop 2010A)
 ;  Input:
 ;  IBSEG,RESIEN
 ;
 ;  Output:
 ;  ERROR
 N X1,LEV,IBFDA,RIEN
 S LEV=RESIEN_","
 S IBFDA(356.22,LEV,19)=$P($P($G(IBSEG(6)),HLCMP),HLSCMP)
 S X1=$P($P($G(IBSEG(7)),HLREP),HLCMP,2)
 I X1="X.400"!(X1="Internet") D
 .S IBFDA(356.22,LEV,19.01)=$S(X1="X.400":"EM",1:"UR")
 .S IBFDA(356.22,LEV,20)=$P($P($G(IBSEG(7)),HLREP),HLCMP,3)
 I X1="FX"!(X1="PH") D
 .S IBFDA(356.22,LEV,19.01)=$S(X1="FX":"FX",1:"TE")
 .S IBFDA(356.22,LEV,20)=$P($P($G(IBSEG(7)),HLREP),HLCMP,11)
 S X1=$P($P($G(IBSEG(7)),HLREP,2),HLCMP,2)
 I X1="X.400"!(X1="Internet") D
 .S IBFDA(356.22,LEV,19.02)=$S(X1="X.400":"EM",1:"UR")
 .S IBFDA(356.22,LEV,21)=$P($P($G(IBSEG(7)),HLREP,2),HLCMP,3)
 I X1="FX"!(X1="PH") D
 .S IBFDA(356.22,LEV,19.02)=$S(X1="FX":"FX",1:"TE")
 .S IBFDA(356.22,LEV,21)=$P($P($G(IBSEG(7)),HLREP,2),HLCMP,11)
 I X1="MD" S IBFDA(356.22,LEV,19.02)="EX",IBFDA(356.22,LEV,21)=$P($P($G(IBSEG(7)),HLREP,2),HLCMP,7)
 S X1=$P($P($G(IBSEG(7)),HLREP,3),HLCMP,2)
 I X1="X.400"!(X1="Internet") D
 .S IBFDA(356.22,LEV,19.03)=$S(X1="X.400":"EM",1:"UR")
 .S IBFDA(356.22,LEV,22)=$P($P($G(IBSEG(7)),HLREP,3),HLCMP,3)
 I X1="FX"!(X1="PH") D
 .S IBFDA(356.22,LEV,19.03)=$S(X1="FX":"FX",1:"TE")
 .S IBFDA(356.22,LEV,22)=$P($P($G(IBSEG(7)),HLREP,3),HLCMP,11)
 I X1="MD" S IBFDA(356.22,LEV,19.03)="EX",IBFDA(356.22,LEV,22)=$P($P($G(IBSEG(7)),HLREP,3),HLCMP,7)
 ;M ^TMP($J,"IBTRHLI2",356.22)=IBFDA(356.22,LEV)
 D UP("PER","2010A")
 Q
PRB(IBSEG,RESIEN,ERROR,SLIEN) ;PRB Problem Detail seg (x12 UM loop 2000E, UM 2000F)
 ;  Input:
 ;  IBSEG,RESIEN
 ;
 ;  Output:
 ;  ERROR,SLIEN
 N LEV,IBFDA,RIEN,PTR
 S LEV=RESIEN_","
 I $G(IBSEG(5))="UM 2000E" D  Q
 .;NOT NEEDED - NEVER HAVE 2 EVENTS
 .;I $P($G(^IBT(356.22,RESIEN,2)),U)'="" D  I $D(ERROR) Q
 .;.; NEED TO HANDLE MULTIPLE PATIENT EVENTS, create 2nd resp entry
 .;.I '$D(^TMP($J,"IBTRHLI2")) Q
 .;.M IBFDA(356.22,"+1,")=^TMP($J,"IBTRHLI2",356.22)
 .;.S IBFDA(356.22,"+1,",.13)=REQIEN  ;UPDATE 2ND RESPONSE WITH REQUEST IEN
 .;.K ERROR
 .;.D UPDATE^DIE(,"IBFDA","RIEN","ERROR")
 .;.I $D(ERROR) D ERR("Problem filing 2ND Patient Event data","") Q
 .;.S IBFDA(356.22,RESIEN_",",.14)=RIEN(1) ;UPDATE 1ST RESPONSE WITH 2ND RESPONSE IEN
 .;.K ERROR
 .;.D FILE^DIE("I","IBFDA","ERROR")
 .;.S RESIEN=RIEN(1),LEV=RESIEN_","
 .;.M IBFDA(356.22101,"+2,"_RESIEN_",")=^TMP($J,"IBTRHLI2",356.22101)
 .;.K RIEN,ERROR
 .;.D UPDATE^DIE(,"IBFDA","RIEN","ERROR")
 .;.I $D(ERROR) D ERR("Problem filing 2nd Patient Event data","") Q
 .;.M IBFDA(356.22105,"+2,"_RESIEN_",")=^TMP($J,"IBTRHLI2",356.22105)
 .;.I $D(ERROR) D ERR("Problem filing 2nd Patient Event data","") Q
 .;.K ^TMP($J,"IBTRHLI2")
 .;.Q
 .S PTR=$$FIND1^DIC(356.001,,"P",$P($P($G(IBSEG(11)),HLREP),HLCMP),"B")
 .S IBFDA(356.22,LEV,2.01)=PTR ;REQEST CAT
 .K ERROR
 .D UPDATE^DIE(,"IBFDA","RIEN","ERROR")
 .I $D(ERROR) D ERR("Problem loading UM Loop 2000E segment data","2000E")
 .S IBFDA(356.22,LEV,2.02)=$P($G(IBSEG(3)),HLCMP) ;CERT TYPE CODE
 .S IBFDA(356.22,LEV,2.03)=$P($P($G(IBSEG(11)),HLREP,2),HLCMP) ;SERVICE TYPE
 .S IBFDA(356.22,LEV,2.13)=$P($G(IBSEG(18)),HLCMP) ;LEVEL OF SERVICE
 .I IBFDA(356.22,LEV,2.13)=3 S IBFDA(356.22,LEV,2.13)="03"
 .D UP("UM","2000E")
 .Q
 I $G(IBSEG(5))="CR6 2000E" D  D UP("CR6","2000E") Q
 .S IBFDA(356.22,LEV,2.15)=$P($G(IBSEG(22)),HLCMP) ;PROGNOSIS CODE
 .S IBFDA(356.22,LEV,10.01)=$G(IBSEG(16)) ;HOME HEALTH START DATE
 .S IBFDA(356.22,LEV,10.02)=$P($G(IBSEG(17)),"-") ;HOME HEALTH CERT START DATE
 .S IBFDA(356.22,LEV,10.03)=$P($G(IBSEG(17)),"-",2)  ;HOME HEALTH CERT END DATE
 .Q
 I $G(IBSEG(5))="UM 2000F" D  Q
 .S LEV="+2,"_RESIEN_","
 .S CT=$O(^IBT(356.22,RESIEN,16,"A"),-1)+1
 .S IBFDA(356.2216,LEV,.01)=CT ;SEQ
 .S IBFDA(356.2216,LEV,.15)=$G(IBSEG(1)) ;REQ CAT
 .S IBFDA(356.2216,LEV,.02)=$P($G(IBSEG(3)),HLCMP) ;CERT TYPE CODE
 .S IBFDA(356.2216,LEV,.03)=$P($G(IBSEG(3)),HLCMP,2) ;SERVICE TYPE
 .S IBFDA(356.2216,LEV,.05)=$P($G(IBSEG(10)),HLCMP) ;FACILITY TYPE
 .S IBFDA(356.2216,LEV,.04)=$P($G(IBSEG(10)),HLCMP,2) ;FACILITY TYPE QUAL
 .D UP("UM","2000F")
 .I $D(ERROR) Q
 .S SLIEN=$G(RIEN(2)) ;SERVICE LINE IEN
 .Q
 Q
PV1(IBSEG,RESIEN,ERROR) ;PV1 Patient Visit seg (x12 
 ;  Input:
 ;  IBSEG,RESIEN
 ;
 ;  Output:
 ;  ERROR
 N LEV,IBFDA,RIEN
 S LEV=RESIEN_","
 I $P($G(IBSEG(3)),HLCMP)="CL1 2000E" D  D UP("CL1","2000E") Q
 .S IBFDA(356.22,LEV,7.01)=$G(IBSEG(4)) ;admission type
 .S IBFDA(356.22,LEV,7.02)=$G(IBSEG(14)) ;admission source
 .S IBFDA(356.22,LEV,7.03)=$G(IBSEG(36)) ;patient status
 .Q
 S IBFDA(356.22,LEV,2.04)=$P($G(IBSEG(3)),HLCMP,6) ;facility type qualifier
 S IBFDA(356.22,LEV,2.05)=$P($G(IBSEG(3)),HLCMP) ;facility type
 D UP("UM 2","2000E")
 Q
AUT(IBSEG,RESIEN,ERROR,SLIEN) ;
 ;  Input:
 ;  IBSEG,RESIEN,SLIEN
 ;
 ;  Output:
 ;  ERROR
 N CTIEN,LEV,LEV1,NODE0,IBFDA,ACTION,RIEN
 S LEV=RESIEN_","
 I $P($G(IBSEG(2)),HLCMP)="REF 2000E" D  D UP("REF","2000E") Q
 .I $P($G(IBSEG(2)),HLCMP,5)="BB" S IBFDA(356.22,LEV,17.01)=$P($G(IBSEG(2)),HLCMP,2) ;PREV. AUTH
 .I $P($G(IBSEG(2)),HLCMP,5)="NT" S IBFDA(356.22,LEV,17.02)=$P($G(IBSEG(2)),HLCMP,2) ;PREV. ADMIN REF#
 .Q
 I $P($G(IBSEG(2)),HLCMP)="REF 2000F" D  D UP("REF","2000F") Q
 .D SLCHECK^IBTRHLI1
 .I $P($G(IBSEG(2)),HLCMP,5)="BB" S IBFDA(356.2216,LEV1,9.01)=$P($G(IBSEG(2)),HLCMP,2) ;PREV. AUTH
 .I $P($G(IBSEG(2)),HLCMP,5)="NT" S IBFDA(356.2216,LEV1,9.02)=$P($G(IBSEG(2)),HLCMP,2) ;PREV. ADMIN REF#
 .Q
 I $P($G(IBSEG(2)),HLCMP)="HCR 2000F" D  D UP("HCR","2000F") Q
 .D SLCHECK^IBTRHLI1
 .S IBFDA(356.2216,LEV1,11.01)=$P($G(IBSEG(6)),HLCMP,3) ;CERT ACTION CODE
 .S IBFDA(356.2216,LEV1,11.02)=$P($G(IBSEG(6)),HLCMP) ;REVIEW IDENT #
 .S IBFDA(356.2216,LEV1,11.03)=$P($G(IBSEG(2)),HLCMP,2) ;REVIEW DES REASONE CODE
 .S IBFDA(356.2216,LEV1,11.04)=$P($G(IBSEG(2)),HLCMP,5) ;2ND SURG OPINION CODE
 .Q
 S ACTION=$P($G(IBSEG(6)),HLCMP,3)  ;CERT ACTION CODE
 I $F(",A1,A2,A3,A6,C,CT,NA,",","_ACTION_","),$G(STATUS)'="04" D
 .S STATUS="05"
 .;S IBFDA(356.22,RESIEN_",",.08)="05" ;STATUS - positive resp received
 .;K ERROR
 .;D UPDATE^DIE(,"IBFDA","RIEN","ERROR")
 .;K ERROR
 .;S IBFDA(356.22,REQIEN_",",.08)="05" ;STATUS - positive resp received
 .;D UPDATE^DIE(,"IBFDA","RIEN","ERROR")
 I ACTION="A4",$G(STATUS)'="04" D
 .S STATUS="07"
 .;S IBFDA(356.22,RESIEN_",",.08)="07" ;STATUS - pending resp received
 .;K ERROR
 .;D UPDATE^DIE(,"IBFDA","RIEN","ERROR")
 .;S IBFDA(356.22,REQIEN_",",.08)="07" ;STATUS - pending resp received
 .;K ERROR
 .;D UPDATE^DIE(,"IBFDA","RIEN","ERROR")
 S IBFDA(356.22,LEV,103.01)=$P($G(IBSEG(6)),HLCMP,3) ;CERT ACTION CODE
 S IBFDA(356.22,LEV,103.02)=$P($G(IBSEG(6)),HLCMP) ;REVIEW IDENT #
 S IBFDA(356.22,LEV,103.03)=$P($G(IBSEG(2)),HLCMP,2) ;REVIEW DES REASON CODE
 S IBFDA(356.22,LEV,103.04)=$P($G(IBSEG(2)),HLCMP,5) ;2ND SURG OPINION CODE
 D UP("HCR","2000E")
 ;
 S NODE0=^IBT(356.22,RESIEN,0)
 S CTIEN=+$$FNDCT^IBTRHLI3($P(NODE0,U,2),$P(NODE0,U,7),RESIEN)
 ;I CTIEN D HCSRCPY^IBTUTL(RESIEN,CTIEN)
 I CTIEN D HCSRCPY^IBTUTL(RESIEN,CTIEN,$P(NODE0,U,2),$P(NODE0,U,7))
 ;
 Q
 ;
OBR(IBSEG,RESIEN,ERROR) ;OBR Observation Request seg
 ;  Input:
 ;  IBSEG,RESIEN
 ;
 ;  Output:
 ;  ERROR 
 N LEV,IBFDA,RIEN
 S LEV=RESIEN_","
 S IBFDA(356.22,LEV,18.03)=$P($G(IBSEG(46)),HLCMP) ;AMBULANCE TRANS CODE
 S IBFDA(356.22,LEV,18.05)=$P($P($G(IBSEG(27)),HLCMP),HLSCMP,2) ;DIST UNITS
 S IBFDA(356.22,LEV,18.06)=$P($P($G(IBSEG(27)),HLCMP),HLSCMP) ;TRANS DIST
 D UP("CR1","2000E")
 Q
 ;
PRD(IBSEG,RESIEN,ERROR,PEIEN,SLIEN,SLPIEN) ; PRD Provider Data seg
 ;  Input:
 ;  IBSEG,RESIEN,SLIEN
 ;
 ;  Output:
 ;  ERROR,SLPIEN,PEIEN
 N LEV,IBFDA,NPI,SCRN,PTR,FLD,RIEN
 I $P($G(IBSEG(1)),HLCMP,4)="NM1 2010EA" D  G PRD1
 .S NPI=$P($G(IBSEG(7)),HLCMP),SCRN=""
 .I NPI="" D  Q
 ..I $P($G(IBSEG(1)),HLCMP)="" Q
 ..S PTR=$$GET1^DIQ(365.022,$$FIND1^DIC(365.022,,,$P($G(IBSEG(1)),HLCMP),"B"),.02)
 ..D ERR("Missing "_PTR_" in NM1 2010EA segment","2010EA") Q
 .S PTR=$$FPRD($G(IBSEG(1)),NPI)
 .S LEV="+2,"_RESIEN_","
 .S FLD=356.2213
 .S IBFDA(FLD,LEV,.01)=$P($G(IBSEG(1)),HLCMP) ;PROVIDER TYPE
 .S IBFDA(FLD,LEV,.02)=$P($G(IBSEG(1)),HLCMP,2) ;PERSON/NON-PERSON
 .S IBFDA(FLD,LEV,.04)=$E($P($G(IBSEG(1)),HLCMP,4),5,10) ;PER LOOP
 .Q
 I $P($G(IBSEG(1)),HLCMP,4)="NM1 2010EC" D  D UP("NM1","2010EC") Q
 .S LEV="+2,"_RESIEN_","
 .S FLD=356.2214
 .S IBFDA(FLD,LEV,.01)=$P($G(IBSEG(1)),HLCMP) ;LOCATION TYPE
 .S IBFDA(FLD,LEV,.02)=$P($G(IBSEG(2)),HLCMP) ;LOCATION NAME
 .S IBFDA(FLD,LEV,.03)=$P($G(IBSEG(3)),HLCMP) ;ADDR LINE 1
 .S IBFDA(FLD,LEV,.04)=$P($G(IBSEG(3)),HLCMP,2) ;ADDR LINE 2
 .S IBFDA(FLD,LEV,.05)=$P($G(IBSEG(3)),HLCMP,3) ;CITY
 .S IBFDA(FLD,LEV,.06)=$P($G(IBSEG(3)),HLCMP,4) ;STATE
 .S IBFDA(FLD,LEV,.07)=$P($G(IBSEG(3)),HLCMP,5) ;ZIP
 .Q
 I $P($G(IBSEG(1)),HLCMP,4)="NM1 2010FA" D  G PRD2
 .S NPI=$P($G(IBSEG(7)),HLCMP),SCRN=""
 .I NPI="" D ERR("Missing NPI value for provider in NM1 2010FA segment","2010FA") D ERR Q
 .S PTR=$$FPRD($G(IBSEG(1)),NPI)
 .S LEV="+3,"_SLIEN_","_RESIEN_","
 .S FLD=356.22168
 .S IBFDA(FLD,LEV,.01)=$P($G(IBSEG(1)),HLCMP) ;PROVIDER TYPE
 .S IBFDA(FLD,LEV,.02)=$P($G(IBSEG(1)),HLCMP,2) ;PERSON/NON-PERSON
 .S IBFDA(FLD,LEV,.04)=$E($P($G(IBSEG(1)),HLCMP,4),5,10) ;PER LOOP
 .Q
 I $P($G(IBSEG(1)),HLCMP,4)="NM1 2010FB" D  D UP("NM1","2010FB") Q
 .S LEV=SLPIEN_","_SLIEN_","_RESIEN_","
 .S FLD=356.22168
 .S IBFDA(FLD,LEV,4.01)="2010FB"
 .S IBFDA(FLD,LEV,4.02)="L5"
 .S IBFDA(FLD,LEV,4.03)=$P($G(IBSEG(1)),HLCMP,2) ;PROVIDER TYPE
 .S IBFDA(FLD,LEV,4.04)=$P($G(IBSEG(2)),HLCMP) ;CONTACT LAST
 .S IBFDA(FLD,LEV,4.05)=$P($G(IBSEG(2)),HLCMP,2) ;CONTACT FIRST
 .S IBFDA(FLD,LEV,4.06)=$P($G(IBSEG(2)),HLCMP,3) ;CONTACT MIDDLE
 .S IBFDA(FLD,LEV,4.07)=$P($G(IBSEG(2)),HLCMP,4) ;CONTACT SUFFIX
 .S IBFDA(FLD,LEV,4.08)=$P($G(IBSEG(7)),HLCMP,2) ;IDENT CODE QUAL
 .S IBFDA(FLD,LEV,4.09)=$P($G(IBSEG(7)),HLCMP) ;IDENT CODE
 .S IBFDA(FLD,LEV,5)=$P($G(IBSEG(3)),HLCMP) ;CONTACT ADDR LINE1
 .S IBFDA(FLD,LEV,5.01)=$P($G(IBSEG(3)),HLCMP,2) ;CONTACT ADDR LINE2
 .S IBFDA(FLD,LEV,5.02)=$P($G(IBSEG(3)),HLCMP,3) ;CONTACT CITY
 .S IBFDA(FLD,LEV,5.03)=$P($G(IBSEG(3)),HLCMP,4) ;CONTACT STATE
 .S IBFDA(FLD,LEV,5.04)=$P($G(IBSEG(3)),HLCMP,5) ;CONTACT ZIP
 .S IBFDA(FLD,LEV,5.05)=$P($G(IBSEG(3)),HLCMP,6) ;CONTACT COUNTRY CODE
 .S IBFDA(FLD,LEV,5.06)=$P($G(IBSEG(3)),HLCMP,8) ;CONTACT COUNTRY SUB-DIV
 Q
PRD1 ;
 K ERROR
 D UPDATE^DIE("E","IBFDA","RIEN","ERROR")
 I $D(ERROR) D ERR("NM1 Loop 2010EA","2010EA") Q
 S PEIEN=RIEN(2)
 I $G(PTR) D
 .K ERROR
 .S IBFDA(FLD,PEIEN_","_RESIEN_",",.03)=PTR  ;PROVIDER EIN
 .D FILE^DIE("","IBFDA","ERROR")
 .I $D(ERROR) D ERR("NM1 Loop 2010EA","2010EA")
 Q
PRD2 ;
 K ERROR
 D UPDATE^DIE("E","IBFDA","RIEN","ERROR")
 I $D(ERROR) D ERR("NM1 Loop 2010FA","2010FA") Q
 S SLPIEN=RIEN(3)
 I $G(PTR) D
 .K ERROR
 .S IBFDA(FLD,SLPIEN_","_SLIEN_","_RESIEN_",",.03)=PTR  ;PROVIDER EIN
 .D FILE^DIE("","IBFDA","ERROR")
 .I $D(ERROR) D ERR("NM1 Loop 2010FA","2010FA")
 Q
 ;
UP(MSG,LOOP) ; perform database update
 K ERROR
 D UPDATE^DIE("E","IBFDA","RIEN","ERROR")
 I $D(ERROR) D ERR("Problem loading "_MSG_" Loop "_LOOP_" segment data",LOOP)
 Q
 ;
FPRD(PNP,NPI) ; obtain Variable Provider pointer
 N SCRN,PTR
 S SCRN=""
 I $P(PNP,HLCMP,2)=2 D
 .S PTR=$$FIND1^DIC(4,,"P",NPI,"ANPI",SCRN)
 .S PTR=PTR_";DIC(4,"
 I $P($G(IBSEG(1)),HLCMP,2)=1 D
 .S PTR=$$FIND1^DIC(200,,"P",NPI,"ANPI",SCRN) I PTR S PTR=PTR_";VA(200,"
 .I 'PTR S PTR=$$FIND1^DIC(355.93,,"P",NPI,"NPI",SCRN) I PTR S PTR=PTR_";IBA(355.93,"
 Q PTR
 ;
ERR(MSG,LOOP) ;file error condition
 N LEV,IBFDA,CT
 I '$G(RESIEN) Q
 S LEV="+2,"_RESIEN_","
 S CT=$O(^IBT(356.22,RESIEN,101,"A"),-1),CT=CT+1
 S IBFDA(356.22101,LEV,.01)=CT
 S IBFDA(356.22101,LEV,.02)=LOOP ;LOOP IDENTIFIER
 S IBFDA(356.22101,LEV,1)=MSG_". "_$G(ERROR("DIERR",1,"TEXT",1)) ;ERROR TEXT
 K ERROR
 D UPDATE^DIE("E","IBFDA","RIEN","ERROR")
 S STATUS="04"
 ;I RESIEN S IBFDA(356.22,RESIEN_",",.08)="04" K ERROR D FILE^DIE("","IBFDA","ERROR")
 ;I REQIEN S IBFDA(356.22,REQIEN_",",.08)="04" K ERROR D FILE^DIE("","IBFDA","ERROR")
 Q
