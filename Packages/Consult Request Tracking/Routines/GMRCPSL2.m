GMRCPSL2 ;SLC/MA - Special Consult Reports;9/21/01  05:25 ;1/17/02  18:19
 ;;3.0;CONSULT/REQUEST TRACKING;**23,22**;DEC 27, 1997
 ; This routine is used by GMRCPSL1 to build ^TMP("GMRCRPT",$J)
 ; which will be passed to GMRCPSL3.
PRINT(GMRCSRCH,GMRCARRY,GMRCDT1,GMRCDT2,GMRCSTAT,GMRCRPT,GMRCBRK) ; Untasked Print
PRTTSK ; Print report
 ; GMRCARRY = Array contains search values.
 ; GMRCSRCH = Indicates which field to search on
 ; GMRCDT1  = Start date
 ; GMRCDT2  = Stop date
 ; GMRCSTAT = CPRS status to include in report
 ; SUBTOT   = Counter for different groups
 ; GMRCRPT  = 80 - 132 character report & data only output
 ; GMRCBRK  = Print page break between sub-totals <Y-N>
 ; TOTCNTR  = Count for total records
 I GMRCSRCH=1 D BLDPROV(.GMRCARRY)   ;BLD PROVIDER  ^TMP(GLOBAL)
 I GMRCSRCH=2 D BLDLOC(.GMRCARRY)    ;BLD LOCATION  ^TMP(GLOBAL)
 I GMRCSRCH=3 D BLDPROC(.GMRCARRY)   ;BLD PROCEDURE ^TMP(GLOBAL)
 N TOTCNTR,SUBTOT S (SUBTOT,TOTCNTR)=0
 I GMRCRPT=1 D REPORT80^GMRCPSL3(.SUBTOT,.TOTCNTR,GMRCSRCH,GMRCBRK)
 I GMRCRPT=2 D REPORT32^GMRCPSL3(.SUBTOT,.TOTCNTR,GMRCSRCH,GMRCBRK)
 I GMRCRPT=3 D DATAONLY^GMRCPSL4 Q
 W !!,"SUB TOTAL= ",SUBTOT,!
 W !,"TOTAL RECORDS= ",TOTCNTR
 D ^%ZISC
 K ^TMP("GMRCRPT",$J)
 I ($E(IOST)="C") D
 .N DIR
 .S DIR(0)="E"
 .W !
 .D ^DIR K DIR
 Q
 ;
BLDLOC(GMRCARRY) ; Build ^TMP were search was on location.
 K ^TMP("GMRCRPT",$J)
 N GMRCCNTR,LOCATION,GMRCSRT1,GMRCSRT2,GMRCLOC1,GMRCLOC2,IEN
 N GMRCREM,LOCPN
 S GMRCCNTR=0
 ;
 ; get all Locations by date range
 I GMRCARRY(1)="ALL" D
 .  S GMRCLOC1=GMRCDT1,GMRCLOC2=GMRCDT2
 .  F  S GMRCLOC1=$O(^GMR(123,"E",GMRCLOC1)) Q:GMRCLOC1>GMRCLOC2  Q:GMRCLOC1=""  D
 . .  S IEN=0
 . .  F  S IEN=$O(^GMR(123,"E",GMRCLOC1,IEN)) Q:IEN'>0  D
 . . .  ;
 . . .  ; Check for Patient Location
 . . .  I "LB"[GMRCARRY,$$CKSTAT(IEN,GMRCSTAT),+$P(^GMR(123,IEN,0),"^",4) D  Q
 . . . .  S LOCATION=$P(^GMR(123,IEN,0),"^",4)   ; PATIENT LOCATION
 . . . .  S GMRCSRT1=$$GET1^DIQ(44,LOCATION,.01)  ; PATIENT LOCATION
 . . . .  S GMRCSRT2=$P(^GMR(123,IEN,0),"^",7)   ; DATE OF REQUEST
 . . . .  S ^TMP("GMRCRPT",$J,GMRCSRT1,GMRCSRT2,IEN)=IEN_"|"_^GMR(123,IEN,0)
 . . .  ;
 . . .  ; If no patient location, check for Ordering Facility
 . . .  I $$CKSTAT(IEN,GMRCSTAT),'+$P(^GMR(123,IEN,0),"^",4),+$P(^GMR(123,IEN,0),"^",21),("L"[GMRCARRY&'+$P(^GMR(123,IEN,0),"^",23)!("RB"[GMRCARRY&+$P(^GMR(123,IEN,0),"^",23))) D  Q
 . . . .  S LOCATION=$P(^GMR(123,IEN,0),"^",21)  ;ORDERING FACILITY
 . . . .  S GMRCSRT1=$$GET1^DIQ(4,LOCATION,.01)  ;ORDERING FACILITY
 . . . .  S GMRCSRT2=$P(^GMR(123,IEN,0),"^",7)   ;DATE OF REQUEST
 . . . .  S GMRCREM=$P($G(^GMR(123,IEN,12)),"^",6)
 . . . .  S ^TMP("GMRCRPT",$J,GMRCSRT1,GMRCSRT2,IEN)=IEN_"|"_^GMR(123,IEN,0)_"^"_GMRCREM
 . . .  ;
 . . .  ; If no patient location & NO Ordering Facility, then
 . . .  ; check for Routing Facility
 . . .  I "RB"[GMRCARRY,$$CKSTAT(IEN,GMRCSTAT),'+$P(^GMR(123,IEN,0),"^",4),'+$P(^GMR(123,IEN,0),"^",21),+$P(^GMR(123,IEN,0),"^",23) D  Q
 . . . .  S LOCATION=$P(^GMR(123,IEN,0),"^",23)  ;ROUTING FACILITY
 . . . .  S GMRCSRT1=$$GET1^DIQ(4,LOCATION,.01)  ;ROUTING FACILITY
 . . . .  S GMRCSRT2=$P(^GMR(123,IEN,0),"^",7)   ;DATE OF REQUEST
 . . . .  S GMRCREM=$P($G(^GMR(123,IEN,12)),"^",6)
 . . . .  S ^TMP("GMRCRPT",$J,GMRCSRT1,GMRCSRT2,IEN)=IEN_"|"_^GMR(123,IEN,0)_"^"_GMRCREM
 ; Get location list from GMRCARRY and then go to global using location
 I GMRCARRY(1)="ALL" Q
 F  S GMRCCNTR=$O(GMRCARRY(GMRCCNTR)) Q:'GMRCCNTR  D
 .  S LOCATION=$P(GMRCARRY(GMRCCNTR),"^",1)
 . I "LB"[GMRCARRY,$P(GMRCARRY(GMRCCNTR),"^",3)=44 D
 . .  N IEN S IEN=0
 . .  F  S IEN=$O(^GMR(123,"AL",LOCATION,IEN)) Q:IEN'>0  D
 . . .  I $P(^GMR(123,IEN,0),"^",7)>GMRCDT1,$P(^GMR(123,IEN,0),"^",7)<GMRCDT2,$$CKSTAT(IEN,GMRCSTAT) D
 . . . . S GMRCSRT1=$P(GMRCARRY(GMRCCNTR),"^",2)   ; Patient Location
 . . . . S GMRCSRT2=$P(^GMR(123,IEN,0),"^",7)      ; DATE OF REQUEST
 . . . . S ^TMP("GMRCRPT",$J,GMRCSRT1,GMRCSRT2,IEN)=IEN_"|"_^GMR(123,IEN,0)
 . I "RB"[GMRCARRY,$P(GMRCARRY(GMRCCNTR),"^",3)=4 D
 . . S GMRCLOC1=GMRCDT1,GMRCLOC2=GMRCDT2
 . . F  S GMRCLOC1=$O(^GMR(123,"E",GMRCLOC1)) Q:GMRCLOC1>GMRCLOC2  Q:GMRCLOC1=""  D
 . . .  N IEN S IEN=0
 . . .  F  S IEN=$O(^GMR(123,"E",GMRCLOC1,IEN)) Q:IEN'>0  D
 . . . . I $$CKSTAT(IEN,GMRCSTAT),$P($G(^GMR(123,IEN,12)),"^",5)="F",+$P($G(^GMR(123,IEN,0)),"^",21)=LOCATION D  Q
 . . . . . S GMRCSRT1=$P(GMRCARRY(GMRCCNTR),"^",2)
 . . . . . S GMRCSRT2=$P(^GMR(123,IEN,0),"^",7)
 . . . . . S ^TMP("GMRCRPT",$J,GMRCSRT1,GMRCSRT2,IEN)=IEN_"|"_^GMR(123,IEN,0)
 . . . . I $$CKSTAT(IEN,GMRCSTAT),$P($G(^GMR(123,IEN,12)),"^",5)="F",'+$P(^GMR(123,IEN,0),"^",21),+$P($G(^GMR(123,IEN,0)),"^",23)=LOCATION D  Q
 . . . . . S GMRCSRT1=$P(GMRCARRY(GMRCCNTR),"^",2)
 . . . . . S GMRCSRT2=$P(^GMR(123,IEN,0),"^",7)
 . . . . . S ^TMP("GMRCRPT",$J,GMRCSRT1,GMRCSRT2,IEN)=IEN_"|"_^GMR(123,IEN,0)
 Q
BLDPROC(GMRCARRY) ; Build ^TMP were search was on procedure.
 K ^TMP("GMRCRPT",$J)
 N GMRCCNTR,PROCEDUR,GMRCSRT1,GMRCSRT2,GMRCPRC1,GMRCPRC2,IEN,GMRCREM
 S GMRCCNTR=0
 ; get all Procedures by date range
 I GMRCARRY(1)="ALL" D
 .  S GMRCPRC1=GMRCDT1,GMRCPRC2=GMRCDT2
 .  F  S GMRCPRC1=$O(^GMR(123,"E",GMRCPRC1)) Q:GMRCPRC1>GMRCPRC2  Q:GMRCPRC1=""  D
 . .  S IEN=0
 . .  F  S IEN=$O(^GMR(123,"E",GMRCPRC1,IEN)) Q:IEN'>0  D
 . . .  I $$CKSTAT(IEN,GMRCSTAT) D        ; Ck Status
 . . . .  I $P(^GMR(123,IEN,0),"^",8)>"" D              ; Ck for Proc
 . . . . .  S PROCEDUR=$P($P(^GMR(123,IEN,0),"^",8),";",1)
 . . . . .  S GMRCSRT1=$$GET1^DIQ(123.3,PROCEDUR,.01)   ;Procedure
 . . . . .  S GMRCSRT2=$P(^GMR(123,IEN,0),"^",7)        ;Req Date
 . . . . .  S GMRCREM=$P($G(^GMR(123,IEN,12)),"^",6)
 . . . . .  S ^TMP("GMRCRPT",$J,GMRCSRT1,GMRCSRT2,IEN)=IEN_"|"_^GMR(123,IEN,0)_"^"_GMRCREM
 ; Get each procedure from GMRCARRY and then go to global using procedure
 I GMRCARRY(1)="ALL" Q
 F  S GMRCCNTR=$O(GMRCARRY(GMRCCNTR)) Q:'GMRCCNTR  D
 .  S PROCEDUR=$P(GMRCARRY(GMRCCNTR),"^",1)
 .  N IEN S IEN=0
 .  F  S IEN=$O(^GMR(123,"AP",PROCEDUR_";GMR(123.3,",IEN)) Q:IEN'>0  D
 . .  I $P(^GMR(123,IEN,0),"^",7)>GMRCDT1,$P(^GMR(123,IEN,0),"^",7)<GMRCDT2,$$CKSTAT(IEN,GMRCSTAT) D
 . . . S GMRCSRT1=$P(GMRCARRY(GMRCCNTR),"^",2)   ; PROCEDURE TYPE
 . . . S GMRCSRT2=$P(^GMR(123,IEN,0),"^",7)      ; DATE OF REQUEST
 . . . S GMRCREM=$P($G(^GMR(123,IEN,12)),"^",6)
 . . . S ^TMP("GMRCRPT",$J,GMRCSRT1,GMRCSRT2,IEN)=IEN_"|"_^GMR(123,IEN,0)_"^"_GMRCREM
 Q
BLDPROV(GMRCARRY) ; Build ^TMP were search was on provider.
 K ^TMP("GMRCRPT",$J)
 N GMRCCNTR,PROVIDER,GMRCSRT1,GMRCSRT2,GMRCPRV1,GMRCPRV2,IEN
 N GMRCPROV
 S GMRCCNTR=0
 ; get all providers by date range
 I GMRCARRY(1)="ALL" D
 .  S GMRCPRV1=GMRCDT1,GMRCPRV2=GMRCDT2
 .  F  S GMRCPRV1=$O(^GMR(123,"E",GMRCPRV1)) Q:GMRCPRV1>GMRCPRV2  Q:GMRCPRV1=""  D
 . .  S IEN=0
 . .  F  S IEN=$O(^GMR(123,"E",GMRCPRV1,IEN)) Q:IEN'>0  D
 . . .  ; Provider not null
 . . .  I "LB"[GMRCARRY,$$CKSTAT(IEN,GMRCSTAT) D
 . . . .  I +$P(^GMR(123,IEN,0),"^",14) D
 . . . . .  S GMRCPROV=$P(^GMR(123,IEN,0),"^",14)      ; SENDING PROVIDER
 . . . . .  S GMRCSRT1=$$GET1^DIQ(200,GMRCPROV,.01)    ; SENDING PROVIDER
 . . . . .  S GMRCSRT2=$P(^GMR(123,IEN,0),"^",7)       ; DATE OF REQUEST
 . . . . .  S ^TMP("GMRCRPT",$J,GMRCSRT1,GMRCSRT2,IEN)=IEN_"|"_^GMR(123,IEN,0)
 . . .  ; Provider null and REMOTE ORDERING PROVIDER not
 . . .  I "RB"[GMRCARRY,$$CKSTAT(IEN,GMRCSTAT) D
 . . . .  I '+$P(^GMR(123,IEN,0),"^",14),$P($G(^GMR(123,IEN,12)),"^",6)'="" D
 . . . . .   S GMRCPROV=$P($G(^GMR(123,IEN,12)),"^",6)
 . . . . .   S GMRCSRT1=GMRCPROV
 . . . . .   S GMRCSRT2=$P(^GMR(123,IEN,0),"^",7)       ; DATE OF REQUEST
 . . . . .   S ^TMP("GMRCRPT",$J,GMRCSRT1,GMRCSRT2,IEN)=IEN_"|"_^GMR(123,IEN,0)_"^"_GMRCPROV
 ; Get provider list from GMRCARRY and then go to global using provider
 I GMRCARRY(1)="ALL" Q
 F  S GMRCCNTR=$O(GMRCARRY(GMRCCNTR)) Q:'GMRCCNTR  D
 .  S PROVIDER=$P(GMRCARRY(GMRCCNTR),"^",1)
 . I "LB"[GMRCARRY,$P(GMRCARRY(GMRCCNTR),"^",3)=200 D
 . .  S IEN=0
 . .  F  S IEN=$O(^GMR(123,"G",PROVIDER,IEN)) Q:IEN'>0  D
 . . .  I $P(^GMR(123,IEN,0),"^",7)>GMRCDT1,$P(^GMR(123,IEN,0),"^",7)<GMRCDT2,$$CKSTAT(IEN,GMRCSTAT) D
 . . . . S GMRCSRT1=$P(GMRCARRY(GMRCCNTR),"^",2)   ; SENDING PROVIDER
 . . . . S GMRCSRT2=$P(^GMR(123,IEN,0),"^",7)      ; DATE OF REQUEST
 . . . . S ^TMP("GMRCRPT",$J,GMRCSRT1,GMRCSRT2,IEN)=IEN_"|"_^GMR(123,IEN,0)
 . I "RB"[GMRCARRY,'$P(GMRCARRY(GMRCCNTR),"^",2) D
 . . S IEN=0
 . . F  S IEN=$O(^GMR(123,"AIP",PROVIDER,IEN)) Q:IEN'>0  D
 . . .  I $P(^GMR(123,IEN,0),"^",7)>GMRCDT1,$P(^GMR(123,IEN,0),"^",7)<GMRCDT2,$$CKSTAT(IEN,GMRCSTAT) D
 . . . . S GMRCSRT1=$P(GMRCARRY(GMRCCNTR),"^",1)
 . . . . S GMRCSRT2=$P(^GMR(123,IEN,0),"^",7)
 . . . . S ^TMP("GMRCRPT",$J,GMRCSRT1,GMRCSRT2,IEN)=IEN_"|"_^GMR(123,IEN,0)_"^"_PROVIDER
 Q
CKSTAT(IEN,GMRCSTAT) ; Does entry have selected status
 ; Input:
 ;  IEN      = File #123 IEN
 ;  GMRCSTAT = Selected status(es)
 ; Output:
 ;  GMRCKS   = Result (1:yes; 0:no)
 N GMRCKS,GMRCS,LOOP,STATUS
 S GMRCKS=0
 S GMRCS=+$P(^GMR(123,IEN,0),"^",12)
 F LOOP=1:1:$L(GMRCSTAT,",") S STATUS=$P(GMRCSTAT,",",LOOP) Q:GMRCKS  D
 . I STATUS=GMRCS S GMRCKS=1
 Q GMRCKS
