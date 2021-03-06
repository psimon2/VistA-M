IBCNVRD1 ;ALB/BAA - SYSTEM SHARED VERIFIED INSURANCE -RECEIVING SITE PROCESSING ;25-FEB-15
 ;;2.0;INTEGRATED BILLING;**528,595**;21-MAR-94;Build 29
 ;;Per VA Directive 6402, this routine should not be modified.
 ;;
 ;
 ;
RPC(SSVI,IBICN,GLOB) ; Receive transmitted data form another site, process and store in 
 ; Insurance Verification Processor
 ;
 S SSVI=""
 N NOW,PAT,PREOPHF,PREOPHFD,PREOPHFK,FRESHDAY,PDOD,FRESHDT,SRVICEDT,ERROR,BUFF,CNTHL71
 N DFN,PAT,NAMEINS,GROUPLAN,NAME,SSN,GENDER,RACE,INSNAME  ; INSNAME IS INSURED  NAME
 N NAME,SUBSCRID,PATNAM,PTDOB,MBRID,DATELVER,IDUZ,ADUZ,OSTATION,IBERROR,LCKERR
 N GNAM,GNAME,GNUM,GNUMB,GROUPLNM,INSNAMEP,STATION,DSTATION,OSTATION  ; STATIONS AS ORIGINATING SENDING FACILITY SITE'S STATION NUMBER
 ;
 N LASTINDT,NOWDATE,LCKERR,INSPTR,AUTO,SUB,DATA,GDATA,GIEN,GROUPNAM,GROUPNUM
 N GRPLNPTR,IBD,IBP,IBSOURCE,INSPTR1,INSPTR2,ISGROUP,MGRP,NAMINS,NEWGRPLN
 N PIVOTNUM,PREL,PTNAM,RECDDAT,RIEN,RSUPDT,TSTAMP,VARPTR,IENG,REIN,AUDUZ,PSSN,STATE,SUBSCRNM,COB,%
 ;
 S IDUZ=$$FIND1^DIC(200,"","X","POSTMASTER")
 S ADUZ="AUTOUPDATE,IBEIV"
 S LCKERR=0
 S DFN=$$DFN^IBARXMU(IBICN) I 'DFN S IBD(0)="-1^ICN Not found" Q
 S PTNAM=$$GET1^DIQ(2,DFN_",",.01),PTDOB=$$GET1^DIQ(2,DFN_",",.03)
 ;
 ;S GLOB(SUB,1))=NAME_"|"_NAMEINS_"|"_GROUPLAN_"|"_COORDBEN_"|"_SUBSCRID_"|"_SSN_"|"_DATELVER_"|"_
 ;           GROUPNUM_"|"_INSURDOB_"|"_INSURSSN_"|"_INSGENDR_"|"_INSNAMEP
 ;
 ;S GLOB(SUB,2)=PTRELHIP_"|"_WHOSEINS_"|"_EFFCTDPO_"|"_GROUPNAM_"|"_PTRELINS_"|"_INSNAME_"|"_
 ;          "|"_SENDBEMP_"|"_SUBEMPNM_"|"_SEMPLCLA_"|"_SEMPLCL2
 ;
 ;S GLOB(SUB,3)=SEMPLCL3_"|"_SEMPLCLC_"|"_SEMPLCLS_"|"_SEMPLCLZ_"|"_SEMPLCLP_"|"_ESHGP_"|"_
 ;          INSEXPDT_"|"_POLNBILL_"|"_INSSTAD_"|"_INSSTAD2_"|"_INSCITY_"|"_INSSTATE_"|"_
 ;          INSZIP_"|"_INSPHONE_"|"_PATIENTI
 ;
 ;S GLOB(SUB,4))=PAYER_"|"_PAYERNM_"|"_BN_"|"_PCN_"|"_TOPNM_"|"_DOB_"|"_GENDER_"|"_RACE_"|"_
 ;           POLNBILL_"|"_GROUPLNM
 ;
 ;S GLOB(SUB,5)=DFN_"|"_CNTHL7_"|"_INSPTR_"|"_INSPTR1_"|"_STATION_"|"_DSTATION_"|"_RIEN_"|"_ERROR
 ;
 ;I GROUPLAN'="" D
 ;.S ITEM=0
 ;.F  S ITEM=$O(^IBA(355.3,GROUPLAN,11,ITEM)) Q:ITEM=""  D
 ;..S GROUPPCM=$G(^IBA(355.3,GROUPLAN,11,ITEM,0))
 ;..S GLOB(SUB,7...N)=GROUPPCM N
 ; 
 S SSVI(0)="STARTED"
 S SUB=0
 F  S SUB=$O(GLOB(SUB)) Q:SUB=""  D PROCESS(SUB)
 ;
 D DONE
 Q
 ;
PROCESS(SUB) ; process insurance entries
 S IBSOURCE=$O(^IBE(355.12,"C","INTERFACILITY INS UPDATE",0))
 S AUTO="",ERROR=""
 S SSVI(SUB)=GLOB(SUB,5)
 S IBP="|"
 S OSTATION=$P(GLOB(SUB,5),IBP,5)
 ;
 S NAME=$P(GLOB(SUB,1),IBP,1)
 S MBRID=$P(GLOB(SUB,1),IBP,6)
 S SUBSCRID=$P(GLOB(SUB,1),IBP,5)
 S SUBSCRNM=$P(GLOB(SUB,1),IBP,12)
 S DATELVER=$P(GLOB(SUB,1),IBP,7)
 S NAMINS=$P(GLOB(SUB,1),IBP,2)
 S GNAME=$P(GLOB(SUB,2),IBP,4)
 S GNUMB=$P(GLOB(SUB,1),IBP,8)
 S GROUPLNM=$P(GLOB(SUB,1),IBP,3)
 S INSNAME=$P(GLOB(SUB,2),IBP,6)
 S DOB=$P(GLOB(SUB,4),IBP,6)
 S SSN=$P(GLOB(SUB,1),IBP,6)
 ;VALIDATE INSURANCE COMPANY NAME WITH ASSOCIATED PAYER ID AND PAYER NAME
 S PAYRID=$P(GLOB(SUB,4),IBP,1)
 S PYRNM=$P(GLOB(SUB,4),IBP,2)
 S COB=$P(GLOB(SUB,1),IBP,4)
 ;
 S VALIDINS=$$PAYER(NAMINS,PAYRID,PYRNM)
 S IENI=$P(VALIDINS,"^",2),VALIDINS=+VALIDINS
 ;
 S AUTO=$$AUTOUPD(PAYRID)
 I +AUTO=1 D  Q
 .D:$P(AUTO,U,3)'="" UPDTPI($P(AUTO,U,2),$P(AUTO,U,3),$P(AUTO,U,6))
 .D:$P(AUTO,U,4)'="" UPDTPI($P(AUTO,U,2),$P(AUTO,U,4),$P(AUTO,U,6))
 .D STUB
 .S $P(GLOB(SUB,5),"|",7)=$G(RIEN) S RIEN=""
 .S $P(GLOB(SUB,5),"|",8)=$G(ERROR)
 .S SSVI(SUB)=GLOB(SUB,5)
 .Q
 ;
 I +AUTO=0!(LCKERR=1) D BUFFER
 ;
 S $P(GLOB(SUB,5),"|",7)=$G(RIEN)
 S $P(GLOB(SUB,5),"|",8)=$G(ERROR)
 S SSVI(SUB)=GLOB(SUB,5)
 Q
 ;
 ;
BUFFER ; File into buffer
 ;
 S IBP="|",IBERROR=""
 ;S ADUZ=$$FIND1^DIC(200,"","X","AUTOUPDATE,IBEIV")
 ;S IDUZ=$$FIND1^DIC(200,"","X","POSTMASTER")
 ; BE SURE DEFINED RIEN (INSURANCE BUFFER ENTRY)
 ;
 S RIEN=""
 S RIEN=+$$ADD^IBCNBEE(IBSOURCE)
 I 'RIEN D  Q
 .S IBERROR="COULD NOT CREATE A NEW BUFFER ENTRY"
 .S $P(GLOB(SUB,5),"|",8)=IBERROR
 ;
 D NOW^%DTC S TSTAMP=%
 ;
 S RSUPDT(355.33,RIEN_",",.1)=$P(GLOB(SUB,1),IBP,7)     ; DATE VERIFIED
 S RSUPDT(355.33,RIEN_",",90.03)=$S($G(SUBSCRID)'="":SUBSCRID,1:MBRID)
 S RSUPDT(355.33,RIEN_",",62.01)=MBRID  ;PATIENT (MEMBER) ID
 S RSUPDT(355.33,RIEN_",",90.02)=GNUMB  ;GROUP NUM
 S RSUPDT(355.33,RIEN_",",90.01)=GNAME  ;GROUP NAME
 S RSUPDT(355.33,RIEN_",",60.01)=DFN  ; PATIENT
 S RSUPDT(355.33,RIEN_",",60.02)=$P(GLOB(SUB,2),IBP,3)  ; EFFECTIVE DATE
 S RSUPDT(355.33,RIEN_",",60.03)=$P(GLOB(SUB,3),IBP,7)  ; EXPIRATION DATE
 S RSUPDT(355.33,RIEN_",",60.05)=$P(GLOB(SUB,2),IBP,2)   ;WHOSEINS
 S RSUPDT(355.33,RIEN_",",60.06)=$P(GLOB(SUB,2),IBP,5)   ;PTRELINS
 S RSUPDT(355.33,RIEN_",",60.12)=COB  ;COORDINATION OF BENEFITS
 S RSUPDT(355.33,RIEN_",",60.14)=$P(GLOB(SUB,2),IBP,1)   ;PTRELHIP
 S RSUPDT(355.33,RIEN_",",20.01)=NAMINS   ; INSURANCE COMPANY NAME, VALIDATED WITH PAYRID AND PYRNM
 S GRPLNPTR=$O(^DIC(36,"B",GROUPLNM,0))    ;GROUP PLAN NAME
 ;I VALIDINS=0 
 S RSUPDT(355.33,RIEN_",",.07)='VALIDINS  ; New Insurance Company ?
 S ISGROUP=0
 I GROUPLNM'="" S ISGROUP=1
 S RSUPDT(355.33,RIEN_",",40.01)=ISGROUP   ; 1 FOR "YES" INSTEAD OF .08 AS NEW GROUP/PLAN
 S RSUPDT(355.33,RIEN_",",40.1)=$P(GLOB(SUB,4),IBP,3)   ;B/N
 S RSUPDT(355.33,RIEN_",",40.11)=$P(GLOB(SUB,4),IBP,5)  ;PCN
 S RSUPDT(355.33,RIEN_",",40.09)=$P(GLOB(SUB,4),IBP,5)  ;type of plan
 ;CHECK IF NEW GROUP PLAN
 ;FIRST CHECK IF NOT NEW INSURANCE
 S NEWGRPLN=1
 I VALIDINS=1 D
 .;GO THROUGH "B" CROSS REFERENCE IN GROUP PLAN FILE WITH INSURANCE COMPANY NAME
 .S IENG=0
 .I IENI="" Q
 .F  S IENG=$O(^IBA(355.3,"B",IENI,IENG)) Q:(IENG="")!(NEWGRPLN=0)  D
 ..;CHECK AGAINST GROUP NAME AND GROUP NUMBER
 ..S GROUPNUM=$P($G(^IBA(355.3,IENG,0)),U,4)
 ..S GROUPNAM=$P($G(^IBA(355.3,IENG,0)),U,3)
 ..I (GROUPNUM=GNUMB)&(GROUPNAM=GNAME) S NEWGRPLN=0
 S RSUPDT(355.33,RIEN_",",.08)=NEWGRPLN  ; NEW GROUP PLAN
 S RSUPDT(355.33,RIEN_",",61.02)=$P(GLOB(SUB,2),IBP,9)  ; EMPLOYER NAME
 S RSUPDT(355.33,RIEN_",",61.05)=$P(GLOB(SUB,2),IBP,8)  ; SEND BILL TO EMPLOYER
 S RSUPDT(355.33,RIEN_",",61.06)=$P(GLOB(SUB,2),IBP,10)  ; EMPLOYER ADR1
 S RSUPDT(355.33,RIEN_",",61.07)=$P(GLOB(SUB,2),IBP,11)  ; EMPLOYER ADR2
 S RSUPDT(355.33,RIEN_",",61.08)=$P(GLOB(SUB,3),IBP,1)  ; EMPLOYER ADR3
 S RSUPDT(355.33,RIEN_",",61.09)=$P(GLOB(SUB,3),IBP,2)  ; EMPLOYER CITY
 S RSUPDT(355.33,RIEN_",",61.1)=$P(GLOB(SUB,3),IBP,3)   ; EMPLOYER STATE
 S RSUPDT(355.33,RIEN_",",61.11)=$P(GLOB(SUB,3),IBP,4)  ; EMPLOYER ZIPCODE
 S RSUPDT(355.33,RIEN_",",61.12)=$P(GLOB(SUB,3),IBP,5)  ; EMPLOYER PHONE
 S RSUPDT(355.33,RIEN_",",61.01)=$P(GLOB(SUB,3),IBP,6)  ;EMPLOYER SPONSORED HEALTH GROUP PLAN
 ;
 S RSUPDT(355.33,RIEN_",",60.08)=$P(GLOB(SUB,1),IBP,9)   ;insured dob
 S PSSN=$P(GLOB(SUB,1),IBP,10)  ;insured ssn
 S PSSN=$TR(PSSN,"-","")
 S RSUPDT(355.33,RIEN_",",60.09)=PSSN  ;insured ssn
 S RSUPDT(355.33,RIEN_",",60.13)=$P(GLOB(SUB,1),IBP,11)  ;insured gender
 S RSUPDT(355.33,RIEN_",",91.01)=$P(GLOB(SUB,2),IBP,6)   ;insured name
 S RSUPDT(355.33,RIEN_",",62.02)=$P(GLOB(SUB,3),IBP,9)   ;subscriber add 1
 S RSUPDT(355.33,RIEN_",",62.03)=$P(GLOB(SUB,3),IBP,10)  ;subscriber add 2
 S RSUPDT(355.33,RIEN_",",62.04)=$P(GLOB(SUB,3),IBP,11)  ;subscriber city
 S STATE=$P(GLOB(SUB,3),IBP,12)
 I STATE'="" S STATE=$O(^DIC(5,"B",STATE,0))  ;subscriber state
 S RSUPDT(355.33,RIEN_",",62.05)=STATE  ;subscriber state
 S RSUPDT(355.33,RIEN_",",62.06)=$P(GLOB(SUB,3),IBP,13)  ;subscriber zip
 S RSUPDT(355.33,RIEN_",",62.09)=$P(GLOB(SUB,3),IBP,14)  ;subscriber phone
 S RSUPDT(355.33,RIEN_",",.01)=TSTAMP  ; DATE ENTERED
 S RSUPDT(355.33,RIEN_",",.02)=IDUZ  ; ENTERED BY
 S RSUPDT(355.33,RIEN_",",.03)=IBSOURCE  ; SOURCE OF INFORMATION
 S RSUPDT(355.33,RIEN_",",.04)="E"  ; STATUS
 S RSUPDT(355.33,RIEN_",",.05)=TSTAMP  ; DATE PROCESSED
 S RSUPDT(355.33,RIEN_",",.06)=IDUZ  ; PROCESSED BY
 S RSUPDT(355.33,RIEN_",",.1)=TSTAMP  ; DATE VERIFIED
 S RSUPDT(355.33,RIEN_",",.11)=IDUZ  ; VERIFIED BY
 S RSUPDT(355.33,RIEN_",",.12)=1  ; eIV STATUS
 S RSUPDT(355.33,RIEN_",",.14)=OSTATION  ; REMOTE LOCATION
 ;
 D FILE^DIE("I","RSUPDT","ERROR")
 ;
 I $G(ERROR)'="" S $P(GLOB(SUB,5),"|",8)=ERROR
 ;
 Q
 ;
PAYER(INSNAME,PAYRID,PYRNM) ;
 N IEN,IENI,VALIDINS,PAYER,PAYERID,PAYERNM
 S IEN=0
 S VALIDINS=0
 S IENI=""
 S PAYERID=""
 S PAYERNM=""
 S IEN=0
 F  S IEN=$O(^DIC(36,"B",INSNAME,IEN)) Q:(IEN="")!(VALIDINS=1)  D
 .S PAYERID=$P($G(^DIC(36,IEN,3)),U,10)
 .I PAYERID'="" S PAYERNM=$P($G(^IBE(365.12,PAYERID,0)),U)
 .I (PAYERID=PAYRID)&(PAYERNM=PYRNM) S VALIDINS=1
 .S IENI=IEN
 Q VALIDINS_"^"_IENI
 ; 
AUTOUPD(PIEN) ;
 ; Returns "1^file 2 ien^file 2.312 ien^2nd file 2.312 ien^Medicare flag^subscriber flag", if entry
 ; is eligible for auto-update, returns 0 otherwise. 
 ;
 ; Medicare flag: 1 for Medicare, 0 otherwise
 ; Subscriber flag: 1 if patient is the subscriber, 0 otherwise
 ;
 ; For non-Medicare response: 1st file 2.312 ien is set, 2nd file 2.312 ien is empty, pieces 5-7 are empty
 ; For Medicare response: 1st file 2.312 ien contains ien for Medicare Part A, 2nd file 2.312 ien contains ien for Medicare Part B,
 ;                        either one may be empty, but at least one of them is set if entry is eligible.
 ;
 N GNUM1,GOK,IDATA0,IDATA3,ISSUB,MWNRA,MWNRB,MWNRIEN,MWNRTYP,IEN36
 N ONEPOL,RDATA0,RES,TQIEN,IDATA7,IDATA1
 S RES=0
 I PIEN<1 Q RES
 S MWNRIEN=$P($G(^IBE(350.9,1,51)),U,25),MWNRTYP=0,(MWNRA,MWNRB)=""
 I PIEN=MWNRIEN S MWNRTYP=1
 S ONEPOL=$$ONEPOL^IBCNEHLU(PIEN,DFN)
 ; try to find a matching pat. insurance
 S IEN36="" F  S IEN36=$O(^DIC(36,"AC",PIEN,IEN36)) Q:IEN36=""!(RES>0)  D
 .S IEN312="" F  S IEN312=$O(^DPT(DFN,.312,"B",IEN36,IEN312)) Q:IEN312=""!(RES>0&('+MWNRTYP))  D
 ..S IDATA0=$G(^DPT(DFN,.312,IEN312,0))
 ..S IDATA3=$G(^DPT(DFN,.312,IEN312,3))
 ..S IDATA7=$G(^DPT(DFN,.312,IEN312,7))
 ..S ISSUB=$$PATISSUB^IBCNEHLU(IDATA0)
 ..; Patient is the subscriber
 ..I ISSUB,'$$CHK1 Q
 ..; Patient is the dependent
 ..I 'ISSUB,'$$CHK2(MWNRTYP) Q
 ..; check group number
 ..S GIEN=+$P(IDATA0,U,18),GOK=1  ; group number needs to be retrieved from new field
 ..; check non-Medicare group number
 ..I '+MWNRTYP D  Q:'GOK  ; Group number doesn't match
 ...I 'ONEPOL D
 ....I GIEN'>0 S GOK=0 Q
 ....S GNUM1=$P($G(^IBA(355.3,GIEN,2)),U,2)
 ....I GNUMB=""!(GNUM1="")!(GNUMB'=GNUM1) S GOK=0
 ....Q
 ...I ONEPOL D
 ....I GNUMB'="",GIEN'="" S GNUM1=$P($G(^IBA(355.3,GIEN,2)),U,2) I GNUM1'="",GNUMB'=GNUM1 S GOK=0
 ....Q
 ...Q
 ..; check for Medicare part A/B
 ..I +MWNRTYP D  Q:'GOK  ; Group number doesn't match
 ...I GIEN'>0 S GOK=0 Q
 ...S GDATA=$G(^IBA(355.3,GIEN,0))
 ...I $P(GDATA,U,14)="A" S MWNRA=IEN312 Q
 ...I $P(GDATA,U,14)="B" S MWNRB=IEN312 Q
 ...S GOK=0
 ...Q
 ..S FRESHDAY=$P($G(^IBE(350.9,1,51)),U,1) ; System freshness days
 ..S FRESHDT=$$FMADD^XLFDT(DT,-FRESHDAY)
 ..S RES=1_U_DFN_U_$S(+MWNRTYP:MWNRA_U_MWNRB_U_1,1:IEN312_U_U_0)
 ..S $P(RES,U,6)=ISSUB,ERROR=""
 ..I DATELVER<FRESHDT S $P(RES,U,1)=2,ERROR="Date Verified less than Freshdate" Q
 ..Q
 .Q
 Q RES
 ;
CHK1() ; check auto-update criteria for patient who is the subscriber
 ; called from tag AUTOUPD, uses variables defined there
 ;
 ; returns 1 if given policy satisfies auto-update criteria, returns 0 otherwise
 N RES
 S RES=0
 I SUBSCRID'=$P(IDATA7,U,2) G CHK1X  ; Subscriber ID doesn't match   ; compare subscriber ID data at their new locations
 I DOB'=$P(IDATA3,U) G CHK1X  ; DOB doesn't match
 I '$$NAMECMP^IBCNEHLU(INSNAME,$P(IDATA7,U)) G CHK1X  ; Insured's name doesn't match  ; compare name of insured data at their new locations
 S RES=1
CHK1X ;
 Q RES
 ;
CHK2(MWNRTYP) ; check auto-update criteria for patient who is not the subscriber
 ; called from tag AUTOUPD, uses variables defined there
 ;
 ; returns 1 if policy satisfies auto-update criteria, returns 0 otherwise
 N DOB,ID,IDATA5,IENS,NAME,PDOB,PNAME,RES
 S RES=0
 S IDATA5=$G(^DPT(DFN,.312,IEN312,5))
 S IENS=DFN_","
 S ID=SUBSCRID    ; Subscriber ID needs to be retrieved from its new location
 I ID'=$P(IDATA7,U,2),ID'=$P(IDATA5,U) G CHK2X  ; both Subscriber ID and Patient ID don't match ; compare subscriber ID at new locations
 S DOB=$P(GLOB(SUB,4),IBP,6),PDOB=$$GET1^DIQ(2,IENS,.03,"I")
 I DOB'=$P(IDATA3,U),DOB'=PDOB G CHK2X  ; both Subscriber and Patient DOB don't match
 S NAME=$P(GLOB(SUB,1),IBP,1),PNAME=$$GET1^DIQ(2,IENS,.01)   ; get name of insured at its new location
 I '+MWNRTYP,'$$NAMECMP^IBCNEHLU(NAME,$P(IDATA7,U)),'$$NAMECMP^IBCNEHLU(NAME,PNAME) G CHK2X  ; non-Medicare, both Subscriber and Patient name don't match
 I +MWNRTYP,'$$NAMECMP^IBCNEHLU(NAME,PNAME) G CHK2X  ; Medicare, Patient name doesn't match
 S RES=1
CHK2X ;
 Q RES
 ;
UPDTPI(DFN,IEN312,ISSUB) ; Update the patient insurance.
 S TSTAMP=$$NOW^XLFDT(),IENS=IEN312_","_DFN_","
 I ISSUB S DATA(2.312,IENS,7.01)=$P(GLOB(SUB,2),IBP,6) ; name  
 S DATA(2.312,IENS,3.01)=DOB ; dob
 S DATA(2.312,IENS,3.05)=$TR(SSN,"-","") ; ssn
 S DATA(2.312,IENS,6)=$P(GLOB(SUB,2),IBP,2) ; whose insurance
 S PREL=$P(GLOB(SUB,2),IBP,1)
 I PREL S DATA(2.312,IENS,4.03)=PREL
 S DATA(2.312,IENS,16)=$P(GLOB(SUB,2),IBP,5)
 S DATA(2.312,IENS,1.03)=TSTAMP ; date last verified
 ; IB*595 - Removed reference to ADUZ, might not be the correct person. Needs to be reviwed before this routine is used by the sites
 ;S DATA(2.312,IENS,1.04)=ADUZ ; last verified by AUTOUPDATE,IBEIV
 S DATA(2.312,IENS,1.05)=TSTAMP ; date last edited
 ;S DATA(2.312,IENS,1.06)=ADUZ ; last edited by
 S DATA(2.312,IENS,1.09)=IBSOURCE ; source of info = eIV
 S DATA(2.312,IENS,1.1)=TSTAMP
 S DATA(2.312,IENS,7.02)=SUBSCRID
 S DATA(2.312,IENS,.2)=COB
 S DATA(2.312,IENS,8)=$P(GLOB(SUB,2),IBP,3) ; effective date
 ;subscriber address
 S DATA(2.312,IENS,3.06)=$P(GLOB(SUB,3),IBP,9) ; street line 1
 S DATA(2.312,IENS,3.07)=$P(GLOB(SUB,3),IBP,10) ; street line 2
 S DATA(2.312,IENS,3.08)=$P(GLOB(SUB,3),IBP,11) ; city
 S STATE=$P(GLOB(SUB,3),IBP,12)
 S STATE=$O(^DIC(5,"B",STATE,0))
 S DATA(2.312,IENS,3.09)=STATE ; state
 S DATA(2.312,IENS,3.1)=$P(GLOB(SUB,3),IBP,13) ; zip
 S DATA(2.312,IENS,3.11)=$P(GLOB(SUB,3),IBP,14) ; insured's phone
 ; IB*2*595/DM Although this section refers to auto update
 ; it is not really going through eIV therefore, EIV AUTO-UPDATE (#365,.13) is not to be set 
 ;S DATA(2.312,IENS,4.04)="YES"  ;EIV AUTO-UPDATE
 ;
 L +^DPT(DFN,.312,IEN312):15 I '$T D LCKERR("FILE") S LCKERR=1 Q
 D FILE^DIE("ET","DATA","ERROR")
 L -^DPT(DFN,.312,IEN312)
 Q
 ;
LCKERR(ERR) ; send locking error message
 S IEN=$O(^XMB(3.8,"B","IB SSVI",IEN))
 N MSG,XMY
 S MSG(1)="WARNING: Unable to Auto-file Response Message from SSVI"
 S MSG(2)="---------------------------------------------------------"
 S MSG(3)="Failed to lock patient insurance entry:"
 S MSG(4)="  Patient name - "_$$GET1^DIQ(2,DFN_",",.01)
 S MSG(5)="  Insurance - "_$$GET1^DIQ(2.312,IENS,.01)
 S MSG(6)="  IENS - "_$S($G(IENS)="":"Unknown",1:IENS)
 S MSG(7)=" "
 S MSG(8)="The response will be filed into Insurance Buffer instead."
 S MSG(9)=" "
 I ERR="COULD NOT CREATE A NEW BUFFER ENTRY" D
 .S MSG(1)="ERROR: Unable to File Buffer Entry"
 .S MSG(3)="Failed to create a new Buffer Entry"
 .S MSG(8)="The entry could not be filed in the buffer."
 D MSG^IBCNEUT5(MGRP,MSG(1),"MSG(",,.XMY)
 S $P(GLOB(SUB,5),"|",8)="ERROR: Unable to File Buffer Entry"
 Q
 ;
DONE ; Create pivot entry and file data
 ;S GLOB(SUB,5)=DFN_"|"_CNTHL7_"|"_INSPTR_"|"_INSPTR1_"|"_STATION_"|"_DSTATION_"|"_RIEN_"|"_ERROR
 I DFN="" Q
 S VARPTR=DFN_";DPT("
 ;
 D NOW^%DTC S NOWDATE=%
 S PIVOTNUM=+$$PIVNW^IBCNVPU0(DFN,.NOWDATE,5,VARPTR)
 ;DETERMINE IB SSVI PIN/HL7 FILE RECORD NUMBER
 S CNTHL71=0 S CNTHL71=$O(^IBCN(366,"D",PIVOTNUM,CNTHL71))
 I CNTHL71="" Q
 ;
 S SUB=0
 F  S SUB=$O(GLOB(SUB)) Q:SUB=""  D PIVOT(SUB)
 ;
 ;SET COMPLETED/RECEIVED FLAG FOR PIVOT TABLE ENTRY. TO BE USED FOR REPORTING PURPOSES
 ;
 D FINAL^IBCNVUT0(CNTHL71)
 S SSVI(0)="COMPLETED"
 Q
 ;
PIVOT(SUB) ; Setup pivot file
 ;S GLOB(SUB,5)=DFN_"|"_CNTHL7_"|"_INSPTR_"|"_INSPTR1_"|"_STATION_"|"_DSTATION_"|"_RIEN_"|"_ERROR
 S INSPTR=$P(GLOB(SUB,5),"|",3)
 S INSPTR1=$P(GLOB(SUB,5),"|",4)   ;INSURANCE CO PTR TO FILE 36
 S STATION=$P(GLOB(SUB,5),"|",5)   ;THIS RECEIVING STATION
 S DSTATION=$P(GLOB(SUB,5),"|",6)  ;SENDING STATION
 S BUFF=$P(GLOB(SUB,5),"|",7)      ;BUFFER ENTRY
 S ERROR=$P(GLOB(SUB,5),"|",8)     ;ERROR
 ;
 ;STORE RECEIVE FLAG/DATE IN IBCN PIN/HL7 PIVOT TABLE ENTRY
 ;
 ;CREATE ONE FIRST ( DO NOT SET REQUIRE TRANSMISSION BITS)
 ;
 ;NEXT MAKE INSURANCE MULTIPLE
 ;FIND INSPTR2 RECORD # PTR TO FILE 36
 S INSPTR2=SUB ;INSURANCE .312 PTR
 ;
 D INSMUL^IBCNVUT0(CNTHL71,INSPTR2)
 ;
 ;NEXT WRITE INSURANCE/SENDING STATION MULTIPLE ENTRY
 D TREATSIT^IBCNVUT0(CNTHL71,INSPTR2,DSTATION)
 ;
 ;NEXT SET RECEIVED FLAG AND "RECEIVE DATE" INTO EXISTING STATION 
 D NOW^%DTC S RECDDAT=%
 D TREATRED^IBCNVUT0(CNTHL71,INSPTR2,DSTATION,RECDDAT,BUFF,ERROR)  ;SET RECEIVED DATE
 Q
 ;
STUB ; CREATE STUB FOR AUTO UPDATED ENTRIES.
 S IBP="|"
 ; IB*595 Removed AUDUZ and referances below.
 ;S AUDUZ=$$FIND1^DIC(200,"","X","AUTOUPDATE,IBEIV")
 ;S IDUZ=$$FIND1^DIC(200,"","X","POSTMASTER")
 ; BE SURE DEFINED RIEN (INSURANCE BUFFER ENTRY)
 ;
 S RIEN=""
 S RIEN=+$$ADD^IBCNBEE(IBSOURCE)
 I 'RIEN D  Q
 .S IBERROR="COULD NOT CREATE A NEW BUFFER ENTRY"
 .S $P(GLOB(SUB,5),"|",8)=IBERROR
 D NOW^%DTC S TSTAMP=%
 ;
 S RSUPDT(355.33,RIEN_",",.01)=TSTAMP  ; DATE ENTERED
 S RSUPDT(355.33,RIEN_",",.02)=IDUZ  ; ENTERED BY
 S RSUPDT(355.33,RIEN_",",.03)=IBSOURCE  ; SOURCE OF INFORMATION
 S RSUPDT(355.33,RIEN_",",.04)="A"  ; STATUS
 S RSUPDT(355.33,RIEN_",",.05)=TSTAMP  ; DATE PROCESSED
 ;S RSUPDT(355.33,RIEN_",",.06)=AUDUZ  ; PROCESSED BY
 S RSUPDT(355.33,RIEN_",",.1)=TSTAMP  ; DATE VERIFIED
 ;S RSUPDT(355.33,RIEN_",",.11)=AUDUZ  ; VERIFIED BY
 S RSUPDT(355.33,RIEN_",",.12)="*"  ; eIV STATUS
 S RSUPDT(355.33,RIEN_",",.14)=OSTATION  ; REMOTE LOCATION
 ;
 D FILE^DIE("I","RSUPDT","ERROR")
 I $G(ERROR)'="" S $P(GLOB(SUB,5),"|",8)=ERROR
 ;
 Q 
