IBCNEHL1 ;DAOU/ALA - HL7 Process Incoming RPI Messages ;26-JUN-2002
 ;;2.0;INTEGRATED BILLING;**300,345,416,444,438,497,506,549,593,601,595**;21-MAR-94;Build 29
 ;;Per VA Directive 6402, this routine should not be modified.
 ;
 ;**Program Description**
 ;  This program will process incoming IIV response messages.
 ;  This includes updating the record in the IIV Response File,
 ;  updating the Buffer record (if there is one and creating a new
 ;  one if there isn't) with the appropriate Buffer Symbol and data
 ;
 ;  Variables
 ;    ACK       - Acknowledgment (AA=Accepted, AE=Error)
 ;    ERACT     - Error Action
 ;    ERCON     - Error Condition
 ;    ERFLG     - Error quit flag
 ;    ERTXT     - Error Message Text
 ;    HL        - Array of HL7 variables
 ;    IBSEG     - Optional, array of fields in segment
 ;    IIVSTAT   - EC generated flag interpreting status of response
 ;                 1 = + (auto-update requirement)
 ;                 6 = -
 ;                 V = #
 ;                 MBI% = %   ; will not receive from FSC, derived in FIL^IBCNEHL6
 ;                 MBI# = #   ; will not receive from FSC, derived in FIL^IBCNEHL6
 ;    MAP       - Array that maps EC's IIV status flag to IIV STATUS TABLE (#365.15)   IEN
 ;    MSGID     - Original Message Control ID
 ;    RIEN      - Response Record IEN
 ;    SEG       - HL7 Segment Name
 ;
EN ; Entry Point
 N ACK,AUTO,EBDA,ERACT,ERCON,ERFLG,ERROR,ERTXT,G2OFLG,HCT,HLCMP,HLREP,HLSCMP,IIVSTAT,IRIEN
 N MAP,MGRP,RIEN,RSUPDT,SEG,SUBID,TRACE,UP
 S (ERFLG,G2OFLG)=0,MGRP=$$MGRP^IBCNEUT5(),HCT=1,SUBID="",IIVSTAT=""
 ;
 S HLCMP=$E(HL("ECH")) ; HL7 component separator
 S HLSCMP=$E(HL("ECH"),4) ; HL7 subcomponent separator
 S HLREP=$E(HL("ECH"),2) ; HL7 repetition separator
 ; Create map from EC to VistA
 S MAP(1)=8,MAP(6)=9,MAP("V")=21   ; These are X12 codes mapped from EC to VistA
 S MAP("MBI%")=26,MAP("MBI#")=27   ; These are NOT X12 codes from FSC - we derive them only for MBI responses
 ;
 ;  Loop through the message and find each segment for processing
 F  S HCT=$O(^TMP($J,"IBCNEHLI",HCT)) Q:HCT=""  D  Q:ERFLG
 .D SPAR^IBCNEHLU
 .S SEG=$G(IBSEG(1))
 .; check if we are inside G2O group of segments
 .I SEG="ZTY" S G2OFLG=1
 .I G2OFLG,SEG'="ZTY",SEG'="CTD" S G2OFLG=0
 .; If we are outside of Z_Benefit_group, kill EB multiple ien
 .; I +$G(EBDA),".MSH.MSA.PRD.PID.GT1.IN1.IN3."[("."_SEG_".")!('G2OFLG&(SEG="CTD")) K EBDA
 .;
 .Q:SEG="PRD"  ; IB*2*497  PRD segment is not processed
 .;
 .I SEG="MSA" D MSA^IBCNEHL2(.ERACT,.ERCON,.ERROR,.ERTXT,.IBSEG,MGRP,.RIEN,.TRACE) Q
 .;
 .;  Contact Segment
 .I SEG="CTD",'G2OFLG D CTD^IBCNEHL2(.ERROR,.IBSEG,RIEN) Q
 .;
 .;  Patient Segment
 .I SEG="PID" D PID^IBCNEHL2(.ERFLG,.ERROR,.IBSEG,RIEN) Q
 .;
 .;  Guarantor Segment
 .I SEG="GT1" D GT1^IBCNEHL2(.ERROR,.IBSEG,RIEN,.SUBID) Q
 .;
 .;  Insurance Segment
 .I SEG="IN1" D IN1^IBCNEHL2(.ERROR,.IBSEG,RIEN,SUBID) Q
 .;
 .;  Addt'l Insurance Segment
 .;I SEG="IN2" ; for future expansion, add IN2 tag to IBCNEHL2
 .;
 .;  Addt'l Insurance - Cert Segment
 .I SEG="IN3" D IN3^IBCNEHL2(.ERROR,.IBSEG,RIEN) Q 
 .;
 .; IB*2*497 GROUP LEVEL REFERENCE ID segment (x12 loops 2100C and 2100D)
 . I SEG="ZRF",'$D(EBDA) D GZRF^IBCNEHL5(.ERROR,.IBSEG,RIEN) Q
 .;
 .;  Eligibility/Benefit Segment
 .I SEG="ZEB" D ZEB^IBCNEHL2(.EBDA,.ERROR,.IBSEG,RIEN) Q
 .;
 .; Healthcare Delivery Segment
 .I SEG="ZHS" D ZHS^IBCNEHL4(EBDA,.ERROR,.IBSEG,RIEN) Q
 .;
 .; Benefit level Reference ID Segment  (X12 loops 2110C and 2110D)
 .I SEG="ZRF",+$G(EBDA) D ZRF^IBCNEHL4(EBDA,.ERROR,.IBSEG,RIEN) Q  ;IB*2*497 add check to make sure z benefit group
 .;
 .; Subscriber Date Segment
 .I SEG="ZSD" D ZSD^IBCNEHL4(EBDA,.ERROR,.IBSEG,RIEN) Q
 .;
 .; Subscriber Additional Info Segment
 .I SEG="ZII" D ZII^IBCNEHL4(EBDA,.ERROR,.IBSEG,RIEN) Q
 .;
 .; Benefit Related Entity Segment
 .I SEG="ZTY" D ZTY^IBCNEHL4(EBDA,.ERROR,.IBSEG,RIEN) Q
 .;
 .; Benefit Related Entity Contact Segment
 .I SEG="CTD",G2OFLG D G2OCTD^IBCNEHL4(EBDA,.ERROR,.IBSEG,RIEN) Q
 .;
 .; Benefit Related Entity Notes Segment
 .I SEG="NTE",+$G(EBDA) D EBNTE^IBCNEHL2(EBDA,.IBSEG,RIEN) Q
 .;
 .; Reject Reasons Segment
 .I SEG="ERR" K ERDA D ERR^IBCNEHL4(.ERDA,.ERROR,.IBSEG,RIEN) Q
 .;
 .; Notes Segment
 .I SEG="NTE",'$D(EBDA),+$G(ERDA) D NTE^IBCNEHL4(ERDA,.ERROR,.IBSEG,RIEN) Q
 .;
 .; Subscriber date segment (subscriber level)
 .I SEG="ZTP" D ZTP^IBCNEHL4(.ERROR,.IBSEG,RIEN) Q
 . ; ib*2*497  -  add processing for ROL, DG1, and ZMP segments
 . ; Provider Code segment 
 . I SEG="ROL" D ROL^IBCNEHL5(.ERROR,.IBSEG,RIEN) Q
 . ;
 . ; Health Care Diagnosis Code segment
 . I SEG="DG1" D DG1^IBCNEHL5(.ERROR,.IBSEG,RIEN) Q
 .;
 .; Military Personnel Information segment
 . I SEG="ZMP" D ZMP^IBCNEHL5(.ERROR,.IBSEG,RIEN)
 ;
 S AUTO=$$AUTOUPD(RIEN)
 I $G(ACK)'="AE",$G(ERACT)="",$G(ERTXT)="",'$D(ERROR),+AUTO D  Q
 .D:$P(AUTO,U,3)'="" AUTOFIL($P(AUTO,U,2),$P(AUTO,U,3),$P(AUTO,U,6))
 .D:$P(AUTO,U,4)'="" AUTOFIL($P(AUTO,U,2),$P(AUTO,U,4),$P(AUTO,U,6))
 .Q
 D FIL
 Q
 ;
 ; =================================================================
AUTOFIL(DFN,IEN312,ISSUB) ; Finish processing the response message - file directly into patient insurance
 ;
 N BUFF,DATA,ERROR,IENS,MIL,OKAY,PREL,RDATA0,RDATA1,RDATA5,RDATA13,RSTYPE,TQN,TSTAMP,XX   ; IB*2.0*497 (vd)
 ;
 Q:$G(RIEN)=""
 S TSTAMP=$$NOW^XLFDT(),IENS=IEN312_","_DFN_","
 S RDATA0=$G(^IBCN(365,RIEN,0)),RDATA1=$G(^IBCN(365,RIEN,1)),RDATA5=$G(^IBCN(365,RIEN,5))
 S RDATA13=$G(^IBCN(365,RIEN,13))         ; IB*2.0*497 (vd)
 S TQN=$P(RDATA0,U,5),RSTYPE=$P(RDATA0,U,10)
 ;\Beginning IB*2.0*549 - Modified the following lines
 S XX=$$GET1^DIQ(2.312,IENS,7.01,"I")
 I ISSUB,XX="" S DATA(2.312,IENS,7.01)=$P(RDATA13,U)    ; Name
 S XX=$$GET1^DIQ(2.312,IENS,3.01,"I")
 I XX="" S DATA(2.312,IENS,3.01)=$P(RDATA1,U,2)         ; DOB
 S XX=$$GET1^DIQ(2.312,IENS,3.05,"I")
 I XX="" S DATA(2.312,IENS,3.05)=$P(RDATA1,U,3)         ; SSN
 S XX=$$GET1^DIQ(2.312,IENS,6,"I")
 I ISSUB,XX="" S DATA(2.312,IENS,6)=$P(RDATA1,U,8)      ; Whose insurance
 ; pt. relationship (365,8.01) IB*2*497 code from 365,8.01 needs evaluation and possible conversion
 S PREL=$$GET1^DIQ(365,RIEN,8.01)
 S XX=$$GET1^DIQ(2.312,IENS,4.03,"I")
 I ISSUB,XX="",PREL'="" D
 . S DATA(2.312,IENS,4.03)=$$PREL^IBCNEHLU(2.312,4.03,PREL)
 ;\End of IB*2.0*549 changes.
 ; IB*2*595/DM moved the following 4 lines below 
 ;S DATA(2.312,IENS,1.03)=TSTAMP                         ; Date last verified
 ;S DATA(2.312,IENS,1.04)=""                            ; Last verified by
 ;S DATA(2.312,IENS,1.05)=TSTAMP                         ; Date last edited
 ;S DATA(2.312,IENS,1.06)=""                            ; Last edited by
 ;S DATA(2.312,IENS,1.09)=5 ; Source of info = eIV
 ;IB*2.0*595/DM persist the original Source of Information
 ;note: external values are used to populate DATA
 I $$GET1^DIQ(2.312,IENS,1.09,"I")="" D
 . S XX=$$GET1^DIQ(365.1,TQN_",1,",3.02)
 . I XX="" S XX="eIV"
 . S DATA(2.312,IENS,1.09)=XX
 ;
 ; Set Subscriber address Fields if none of the fields are currently defined
 ;\Beginning IB*2.0*549 - Modified the following lines
 S XX=$$GET1^DIQ(2.312,IENS,3.06,"I")       ; Current Ins Street Line 1
 I XX="" D
 . S XX=$$GET1^DIQ(2.312,IENS,3.07,"I")     ; Current Ins Street Line 2
 . Q:XX'=""
 . S XX=$$GET1^DIQ(2.312,IENS,3.08,"I")     ; Current Ins City
 . Q:XX'=""
 . S XX=$$GET1^DIQ(2.312,IENS,3.09,"I")     ; Current Ins State
 . Q:XX'=""
 . S XX=$$GET1^DIQ(2.312,IENS,3.1,"I")      ; Current Ins Zip
 . Q:XX'=""
 . S XX=$$GET1^DIQ(2.312,IENS,3.13,"I")     ; Current Ins Country
 . Q:XX'=""
 . S XX=$$GET1^DIQ(2.312,IENS,3.14,"I")     ; Current Ins Country Subdivision
 . Q:XX'=""
 . S DATA(2.312,IENS,3.06)=$P(RDATA5,U)     ; Street line 1
 . S DATA(2.312,IENS,3.07)=$P(RDATA5,U,2)   ; Street line 2
 . S DATA(2.312,IENS,3.08)=$P(RDATA5,U,3)   ; City
 . S DATA(2.312,IENS,3.09)=$P(RDATA5,U,4)   ; State
 . S DATA(2.312,IENS,3.1)=$P(RDATA5,U,5)    ; Zip
 . S DATA(2.312,IENS,3.13)=$P(RDATA5,U,6)   ; Country
 . S DATA(2.312,IENS,3.14)=$P(RDATA5,U,7)   ; Country subdivision
 ;\End of IB*2.0*549 changes.
 ;
 L +^DPT(DFN,.312,IEN312):15 I '$T D LCKERR^IBCNEHL3 D FIL Q
 I $D(DATA) D FILE^DIE("ET","DATA","ERROR") ;IB*2*595/DM make sure DATA has data  
 I $D(ERROR) D WARN^IBCNEHL3 K ERROR D FIL G AUTOFILX
 ; IB*2*595/DM set auto-update fields
 ; the EIV AUTO-UPDATE flag is now located in the IIV Response file
 ;set eIV auto-update field separately because of the trigger on field 1.05
 ;S DATA(2.312,IENS,4.04)="YES"
 K DATA
 S DATA(2.312,IENS,1.03)=TSTAMP                        ; Date last verified
 S DATA(2.312,IENS,1.04)="AUTOUPDATE,IBEIV"            ; Last verified by ; Edit with 595 was null
 S DATA(2.312,IENS,1.05)=TSTAMP                        ; Date last edited
 S DATA(2.312,IENS,1.06)="AUTOUPDATE,IBEIV"            ; Last edited by ; Edit with 595 was null
 D FILE^DIE("ET","DATA","ERROR")
 I $D(ERROR) D WARN^IBCNEHL3 G AUTOFILX
 ; IB*2*595/DM set the insurance record IEN in the IIV Response file
 ; to track which policy was updated based on the response
 D UPDIREC^IBCNEHL3(RIEN,IEN312)
 ; IB*2*595/DM set the EIV AUTO-UPDATE in the response file to signal auto-update
 K DATA
 S DATA(365,RIEN_",",.13)="YES"
 D FILE^DIE("ET","DATA")
 ;
 S ERFLG=$$GRPFILE(DFN,IEN312,RIEN,1)
 I $G(ERFLG) G AUTOFILX  ;IB*2*497  file data at 2.312, 9, 10 and 11 subfiles; if error is produced update buffer entry and then quit processing
 ; file new EB data
 S ERFLG=$$EBFILE(DFN,IEN312,RIEN,1)
 ; bail out if something went wrong during filing of EB data
 I $G(ERFLG) G AUTOFILX
 ; update insurance record ien in transmission queue
 D UPDIREC^IBCNEHL3(RIEN,IEN312)
 ;  For an original response, set the Transmission Queue Status to 'Response Received' &
 ;  update remaining retries to comm failure (5)
 I $G(RSTYPE)="O" D SST^IBCNEUT2(TQN,3),RSTA^IBCNEUT7(TQN)
 ; update buffer file entry so only stub remains and status is changed
 S BUFF=+$P($G(^IBCN(365,RIEN,0)),U,4)
 I BUFF D
 .D STATUS^IBCNBEE(BUFF,"A",0,0,0) ; update buffer entry's status to accepted
 .D DELDATA^IBCNBED(BUFF) ; delete buffer's insurance/patient data
 .Q
AUTOFILX ;
 L -^DPT(DFN,.312,IEN312)
 Q
 ;
GRPFILE(DFN,IEN312,RIEN,AFLG) ;  ib*2*497  file data at node 12 and at subfiles 2.312,9, 10 and 11
 ; DFN - file 2 ien
 ; IEN312 - file 2.312 ien
 ; RIEN = file 365 ien
 ; AFLG - 1 if called from autoupdate, 0 if called from ins. buffer process entry
 ; output - returns 0 or 1
 ;          0 - entry update received an error when attempting to file
 ;          1 - successful update
 N DA,DATA12,DIAG,DIAG3121,ERFLG,ERROR,IENS,IENS365,IENS312,NODE,PROV,PROV332,REF,REF3129,Z,Z2
 ; retrieve external values of data located at node 12 of 365
 S IENS=IEN312_","_DFN_","
 D GETS^DIQ(365,RIEN,"12.01:12.07",,"MIL")
 M DATA12(2.312,IENS)=MIL(365,RIEN_",")
 D FILE^DIE("ET","DATA12","ERROR")
 I $D(ERROR) D:AFLG WARN^IBCNEHL3 K ERROR
 ; remove existing sub-file entries at nodes 9, 10, and 11 before update of new data
 F NODE="9","10","11" D
 . S DIK="^DPT("_DFN_",.312,"_IEN312_","_NODE_",",DA(2)=DFN,DA(1)=IEN312
 . S DA=0 F  S DA=$O(^DPT(DFN,.312,IEN312,NODE,DA)) Q:DA=""!(DA?1.A)  D ^DIK
 S IENS312="+1,"_IEN312_","_DFN_","
 ; update node 9 data
 S Z="" F  S Z=$O(^IBCN(365,RIEN,9,"B",Z)) Q:'Z  D
 . S IENS365=$O(^IBCN(365,RIEN,9,"B",Z,""))_","_RIEN_","
 . D GETS^DIQ(365.09,IENS365,"*",,"REF")
 S Z2="" F  S Z2=$O(REF(365.09,Z2)) Q:Z2=""  M REF3129(2.3129,IENS312)=REF(365.09,Z2) D UPDATE^DIE("E","REF3129",,"ERROR") K REF3129 I $D(ERROR) D:AFLG WARN^IBCNEHL3 K ERROR
 ; update node 10 data
 S Z="" F  S Z=$O(^IBCN(365,RIEN,10,"B",Z)) Q:'Z  D
 . S IENS365=$O(^IBCN(365,RIEN,10,"B",Z,""))_","_RIEN_","
 . D GETS^DIQ(365.04,IENS365,"*",,"PROV")
 S Z2="" F  S Z2=$O(PROV(365.04,Z2)) Q:Z2=""  M PROV332(2.332,IENS312)=PROV(365.04,Z2) D UPDATE^DIE("E","PROV332",,"ERROR") K PROV332 I $D(ERROR) D:AFLG WARN^IBCNEHL3 K ERROR
 ; update node 11 data
 S Z="" F  S Z=$O(^IBCN(365,RIEN,11,"B",Z)) Q:'Z  D
 . S IENS365=$O(^IBCN(365,RIEN,11,"B",Z,""))_","_RIEN_","
 . D GETS^DIQ(365.01,IENS365,"*",,"DIAG")
 S Z2="" F  S Z2=$O(DIAG(365.01,Z2)) Q:Z2=""  M DIAG3121(2.31211,IENS312)=DIAG(365.01,Z2) D UPDATE^DIE("E","DIAG3121",,"ERROR") K DIAG3121 I $D(ERROR) D:AFLG WARN^IBCNEHL3 K ERROR
GRPFILEX ;
 Q $G(ERFLG)
 ;
FIL ; Finish processing the response message - file into insurance buffer
 ; IB*2*601/DM FIL()routine moved to IBCNEHL6 to meet SAC guidelines due to size
 D FIL^IBCNEHL6
 Q
 ;
AUTOUPD(RIEN) ;
 ; Returns "1^file 2 ien^file 2.312 ien^2nd file 2.312 ien^Medicare flag^subscriber flag", if entry
 ; in file 365 is eligible for auto-update, returns 0 otherwise.
 ;
 ; Medicare flag: 1 for Medicare, 0 otherwise
 ; Subscriber flag: 1 if patient is the subscriber, 0 otherwise
 ;
 ; For non-Medicare response: 1st file 2.312 ien is set, 2nd file 2.312 ien is empty, pieces 5-7 are empty
 ; For Medicare response: 1st file 2.312 ien contains ien for Medicare Part A, 2nd file 2.312 ien contains ien for Medicare Part B,
 ;                        either one may be empty, but at least one of them is set if entry is eligible.
 ;
 ; RIEN - ien in file 365
 ;
 N APPIEN,GDATA,GIEN,GNAME,GNUM,GNUM1,GOK,IEN2,IEN312,IEN36,IDATA0,IDATA3,ISSUB,MWNRA,MWNRB,MWNRIEN,MWNRTYP
 N ONEPOL,PIEN,RDATA0,RDATA1,RES,TQIEN,IDATA7,RDATA13,RDATA14   ; IB*2.0*497
 S RES=0
 I +$G(RIEN)'>0 Q RES                       ; Invalid ien for file 365
 ; IB*2.0*595/DM if entry is missing from #200, file in buffer
 I '$$FIND1^DIC(200,,"M","AUTOUPDATE,IBEIV") Q RES
 ;
 ; IB*2.0*549 - Moved up the next 5 lines.  Originally, these lines were
 ;              directly after line 'I $G(IIVSTAT)'=1 Q RES'
 S RDATA0=$G(^IBCN(365,RIEN,0)),RDATA1=$G(^IBCN(365,RIEN,1))
 ;
 ; IB*2.0*497  longer fields for GROUP NAME, GROUP NUMBER, NAME OF INSURED, and SUBSCRIBER ID
 S RDATA13=$G(^IBCN(365,RIEN,13)),RDATA14=$G(^IBCN(365,RIEN,14))
 S PIEN=$P(RDATA0,U,3)
 ;
 ; IB*2.0*549 - Moved up the next 2 lines.  Originally, these lines were
 ;              directly after 'S IEN2=$P(RDATA0,U,2) I +IEN2'>0 Q RES'
 S MWNRIEN=$P($G(^IBE(350.9,1,51)),U,25),MWNRTYP=0,(MWNRA,MWNRB)=""
 I PIEN=MWNRIEN S MWNRTYP=$$ISMCR^IBCNEHLU(RIEN)
 ;
 ; IB*2.0*549 - Added ',MWNRTYP' below to only quit for non-medicare policies
 I $G(IIVSTAT)'=1,'MWNRTYP Q RES            ; Only auto-update 'active policy' responses
 I +PIEN>0 S APPIEN=$$PYRAPP^IBCNEUT5("IIV",PIEN)
 I +$G(APPIEN)'>0 Q RES  ; couldn't find eIV application entry
 ;
 ;IB*2.0*601/HN Don't allow any entry with HMS SOI to auto-update
 ;IB*2.0*595/HN Don't allow any entry with Contract Services SOI to auto-update
 I "^HMS^CONTRACT SERVICES^"[("^"_$$GET1^DIQ(355.33,+$$GET1^DIQ(365,RIEN_",","BUFFER ENTRY","I")_",","SOURCE OF INFORMATION")_"^") Q RES
 ;
 ; Check dictionary 365.1 MANUAL REQUEST DATE/TIME Flag, Quit if Set.
 I $P(RDATA0,U,5)'="",$P($G(^IBCN(365.1,$P(RDATA0,U,5),3)),U,1)'="" Q RES
 I $P(^IBE(365.12,PIEN,1,APPIEN,0),U,7)=0 Q RES  ; auto-accept is OFF
 S IEN2=$P(RDATA0,U,2) I +IEN2'>0 Q RES  ; couldn't find patient
 S ONEPOL=$$ONEPOL^IBCNEHLU(PIEN,IEN2)
 ; try to find a matching pat. insurance
 S IEN36="" F  S IEN36=$O(^DIC(36,"AC",PIEN,IEN36)) Q:IEN36=""!(RES>0)  D
 .S IEN312="" F  S IEN312=$O(^DPT(IEN2,.312,"B",IEN36,IEN312)) Q:IEN312=""!(RES>0&('+MWNRTYP))  D
 ..S IDATA0=$G(^DPT(IEN2,.312,IEN312,0)),IDATA3=$G(^DPT(IEN2,.312,IEN312,3))
 ..S IDATA7=$G(^DPT(IEN2,.312,IEN312,7))   ; IB*2.0*497 (vd)
 ..I $$EXPIRED^IBCNEDE2($P(IDATA0,U,4)) Q  ; Insurance policy has expired
 ..S ISSUB=$$PATISSUB^IBCNEHLU(IDATA0)
 ..; Patient is the subscriber
 ..I ISSUB,'$$CHK1^IBCNEHL3 Q
 ..; Patient is the dependent
 ..I 'ISSUB,'$$CHK2^IBCNEHL3(MWNRTYP) Q
 ..; check group number
 ..S GNUM=$P(RDATA14,U,2),GIEN=+$P(IDATA0,U,18),GOK=1  ;IB*2*497  group number needs to be retrieved from new field
 ..; check non-Medicare group number
 ..I '+MWNRTYP D  Q:'GOK  ; Group number doesn't match
 ...I 'ONEPOL D
 ....I GIEN'>0 S GOK=0 Q
 ....S GNUM1=$P($G(^IBA(355.3,GIEN,2)),U,2)    ; IB*2.0*497 (vd)
 ....I GNUM=""!(GNUM1="")!(GNUM'=GNUM1) S GOK=0
 ....Q
 ...I ONEPOL D
 ....I GNUM'="",GIEN'="" S GNUM1=$P($G(^IBA(355.3,GIEN,2)),U,2) I GNUM1'="",GNUM'=GNUM1 S GOK=0  ; IB*2.0*497 (vd)
 ....Q
 ...Q
 ..; check for Medicare part A/B
 ..I +MWNRTYP D  Q:'GOK  ; Group number doesn't match
 ...I GIEN'>0 S GOK=0 Q
 ...S GDATA=$G(^IBA(355.3,GIEN,0))
 ...I $P(GDATA,U,14)="A" D
 ....;IB*2.0*549 Change $P(MWNRTYP,U,2)="MA"!($P(MWNRTYP,U,2)="B")
 ....;           To     $P(MWNRTYP,U,5)="MA"!($P(MWNRTYP,U,5)="B")
 ....I $P(MWNRTYP,U,5)="MA"!($P(MWNRTYP,U,5)="B") S MWNRA=IEN312 Q
 ....S GOK=0
 ....Q
 ...I $P(GDATA,U,14)="B" D
 ....;IB*2.0*549 Change $P(MWNRTYP,U,2)="MB"!($P(MWNRTYP,U,2)="B")
 ....;           To     $P(MWNRTYP,U,5)="MB"!($P(MWNRTYP,U,5)="B")
 ....I $P(MWNRTYP,U,5)="MB"!($P(MWNRTYP,U,5)="B") S MWNRB=IEN312 Q
 ....S GOK=0
 ....Q
 ...Q
 ..S RES=1_U_IEN2_U_$S(+MWNRTYP:MWNRA_U_MWNRB_U_1,1:IEN312_U_U_0)
 ..S $P(RES,U,6)=ISSUB
 ..Q
 .Q
 Q RES
 ;
EBFILE(DFN,IEN312,RIEN,AFLG) ; File eligibility/benefit data from file 365 into file 2.312
 ; Input:   DFN     - Internal Patient IEN
 ;          IEN312  - Insurance multiple #
 ;          RIEN    - file 365 ien
 ;          AFLG    - 1 if called from autoupdate
 ;                    0 if called from ins. buffer process entry
 ; Returns: "" on success, ERFLG on failure. Also called from ACCEPT^IBCNBAR
 ;          for manual processing of ins. buffer entry.
 ;
 ;
 Q $$EBFILE^IBCNEHL5(DFN,IEN312,RIEN,AFLG)  ;IB*2.0*549 moved because of routine size
 ;
