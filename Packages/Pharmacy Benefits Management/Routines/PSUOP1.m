PSUOP1 ;BIR/CFL - PSU PBM Outpatient Pharmacy Data Collection for Version 6.0 ;25 AUG 1998
 ;;4.0;PHARMACY BENEFITS MANAGEMENT;;MARCH, 2005
 ;
 ;DBIAs
 ; Reference to ^PSRX( file #52 supported by DBIA(s) 465, 2512, 2513
EN ;Entry to data collection
 K ^TMP($J)
 D CMOPARY,ADLOOP
 Q
ADLOOP ;Loop through the AD cross reference
 S X1=PSUSDT,X2=-31
 D C^%DTC K %,%H,%T
 S PSUFDT=X
 F  S PSUFDT=$O(^PSRX("AD",PSUFDT)) Q:PSUFDT=""!(PSUFDT\1>PSUEDT)  D
 .S PSURXIEN=""
 .F  S PSURXIEN=$O(^PSRX("AD",PSUFDT,PSURXIEN)) Q:PSURXIEN=""  D
 ..S PSUFIL=""
 ..F  S PSUFIL=$O(^PSRX("AD",PSUFDT,PSURXIEN,PSUFIL)) Q:PSUFIL=""  D
 ...Q:'$D(^PSRX(PSURXIEN,0))
 ...K PSUTYP,PSUOP
 ...S PSUFLN=PSUFIL
 ...D COMVAR
 ...S PSUCMOP="N"
 ...;
 ...; check for CMOP data
 ...I $D(^PSRX(PSURXIEN,4,0)) D ARLOOP
 ...I PSUCMOP="Y" Q  ; record filed in subroutine
 ...I (PSUFDT\1<PSUSDT) Q
 ...S PSUTYP=$S(PSUFLN=0:"N",1:"R")
 ...D GETDATA
 ...D SETREC^PSUOP3
 ..I $D(^PSRX(PSURXIEN,"P",0)),'$D(^XTMP(PSUOPSUB,"RXIEN",PSURXIEN)) D ADPLOOP
 K ^TMP($J)
 Q
ARLOOP ;Check to see if CMOP Data exists for the reporting period
 I $D(^TMP($J,PSURXIEN,PSUFLN)) D 
 .S PSUCMOP="Y"
 .S PSUTYP=$S(PSUFLN=0:"N",1:"R")
 .D GETDATA
 .I (PSURELDT="")!(PSURELDT<PSUSDT)!(PSURELDT>PSUEDT) Q
 .D SETREC^PSUOP3
 Q
ADPLOOP ;Get data for partial fills
 S PSUPFN=0
 F  S PSUPFN=$O(^PSRX(PSURXIEN,"P",PSUPFN)) Q:'PSUPFN  D
 .S PSUCMOP="N"
 .D COMVAR
 .S PSUTYP="P"
 .D GETPART
 .Q:((PSUFD<PSUSDT)!(PSUFD>PSUEDT))
 .D SETREC^PSUOP3
 Q
GETDATA ;Get the data for New Fills, Refills and Partial fills
 I PSUTYP="N" D
 .S PSUFD=PSUOP(22)
 .S PSUDS=PSUOP(8)
 .S PSUQTY=+PSUOP(7)
 .S PSUDRCT=PSUOP(17)
 .S PSURELDT=PSUOP(31)
 .I PSURELDT'="" S PSURELDT=PSURELDT\1
 .S PSUPRID=PSUOP(4)
 .S PSUMW=PSUOP(11)
 .S PSUDIVP=PSUOP(20)
 .S PSUNDC=""
 .I PSUCMOP="Y" D
 ..S PSUNDC=$$VALI^PSUTL(52.01,"PSURXIEN,PSUFLN",4)
 .S PSUNDC=$S(PSUNDC="":PSUOP(27),PSUNDC="":PSUDRUG(31),1:"No NDC")
 .D PROVDR^PSUOP3
 ;Get data for Refills
 I PSUTYP="R" D  K REC
 .D GETS^PSUTL(52.1,"PSURXIEN,PSUFLN",".01;1;1.1;1.2;2;8;15;17","PSUREFIL","I")
 .D MOVEI^PSUTL("PSUREFIL")
 .S PSUFD=PSUREFIL(.01)
 .S PSUPRID=PSUREFIL(15)
 .S PSUMW=PSUREFIL(2)
 .S PSUDIVP=PSUREFIL(8)
 .S PSUDS=PSUREFIL(1.1)
 .S PSUQTY=+PSUREFIL(1)
 .S PSUDRCT=PSUREFIL(1.2)
 .S PSURELDT=PSUREFIL(17)
 .I PSURELDT'="" S PSURELDT=PSURELDT\1
 .S PSURXP=PSUOP(3)
 .S PSUDR=PSUOP(6)
 .S PSUNDC=""
 .I PSUCMOP="Y" D
 ..S PSUNDC=$$VALI^PSUTL(52.01,"PSURXIEN,PSUFLN",4)
 .I PSUNDC="" S PSUNDC=$$VALI^PSUTL(52.1,"PSURXIEN,PSUFLN",11)
 .I PSUNDC="" S PSUNDC=$S(PSUDRUG(31)'="":PSUDRUG(31),1:"No NDC")
 .D PROVDR^PSUOP3
 Q
GETPART ;Get data for Partial Fills
 K PSUPART
 D GETS^PSUTL(52.2,"PSURXIEN,PSUPFN",".01;.02;.04;.041;.042;.09;6;8","PSUPART","I")
 D MOVEI^PSUTL("PSUPART")
 S PSUFD=PSUPART(.01)
 S PSUPRID=PSUPART(6)
 S PSUMW=PSUPART(.02)
 S PSUDIVP=PSUPART(.09)
 S PSUDS=PSUPART(.041)
 S PSUQTY=+PSUPART(.04)
 S PSUDRCT=PSUPART(.042)
 S PSURELDT=PSUPART(8)
 I PSURELDT'="" S PSURELDT=PSURELDT\1
 S PSUNDC=$$VALI^PSUTL(52.2,"PSURXIEN,PSUFLN",1)
 I PSUNDC="" S PSUNDC=$S(PSUDRUG(31)'="":PSUDRUG(31),1:"No NDC")
 D PROVDR^PSUOP3  ;Get shared variables
 Q
COMVAR ;Get the common variables
 D GETS^PSUTL(52,PSURXIEN,".01;2;3;4;6;7;8;11;17;20;22;27;31","PSUOP","I")
 D MOVEI^PSUTL("PSUOP")
 S PSURXN=PSUOP(.01)
 S DFN=PSUOP(2) D PID^VADPT
 S PSUSSN=$TR(VA("PID"),"^-","")
 S PSUWPC="" ;Patient counseling only exists for version 7.0
 S PSUDR=PSUOP(6)
 S PSURXP=PSUOP(3)
 ;S PSUSIG=PSUOP(10)
 D GETDRUG^PSUOP3
 Q
CMOPARY ;Loop through the "AR" cross reference and build CMOP array
 S X1=PSUSDT,X2=-1
 D C^%DTC K %,%H,%T
 S PSUCDT=X
 F  S PSUCDT=$O(^PSRX("AR",PSUCDT)) Q:'PSUCDT  D
 .S PSUCRX=""
 .F  S PSUCRX=$O(^PSRX("AR",PSUCDT,PSUCRX)) Q:PSUCRX=""  D
 ..S PSUCLN=""
 ..F  S PSUCLN=$O(^PSRX("AR",PSUCDT,PSUCRX,PSUCLN)) Q:PSUCLN=""  D
 ...S ^TMP($J,PSUCRX,PSUCLN)=""
 Q
