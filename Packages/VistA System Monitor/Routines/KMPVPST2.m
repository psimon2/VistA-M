KMPVPST2 ;SP/JML - VSM VERSION 2 POST INSTALL ROUTINE ;5/1/2017
 ;;4.0;CAPACITY MANAGEMENT;;3/1/2018;Build 38
 ;
 ;
 N %DT,FDA,X,Y,KMPVDATE,KMPVERR,KMPOPT,KMPVERROR,KMPVTEXT,KMPVI
 N DA,DIC,DIE,DIK,DR
 N ZTDESC,ZTDTH,ZTIO,ZTRTN
 S X="T",%DT="ESTX" D ^%DT S KMPVDATE=Y
 ;
 ; Delete VBEM, VMCM and VHLM entries in case of re-installation
 S DA=3,DIK="^KMPV(8969," D ^DIK
 S DA=3,DIK="^KMPV(8969.02," D ^DIK
 S DA=4,DIK="^KMPV(8969," D ^DIK
 S DA=4,DIK="^KMPV(8969.02," D ^DIK
 S DA=5,DIK="^KMPV(8969," D ^DIK
 S DA=5,DIK="^KMPV(8969.02," D ^DIK
 ; create entries in the VSM CONFIGURAION file for VBEM and VMCM
 ; VBEM
 S FDA($J,8969,"+3,",.01)="VBEM"
 S FDA($J,8969,"+3,",.02)=0
 S FDA($J,8969,"+3,",.03)="VISTA BUSINESS EVENT MONITOR"
 S FDA($J,8969,"+3,",.04)=1
 S FDA($J,8969,"+3,",.05)=KMPVDATE
 S FDA($J,8969,"+3,",1.01)=7
 S FDA($J,8969,"+3,",1.02)=15
 S FDA($J,8969,"+3,",1.03)=""
 S FDA($J,8969,"+3,",1.04)=0
 S FDA($J,8969,"+3,",1.05)="1D"
 S FDA($J,8969,"+3,",1.06)="T+1@0115"
 S FDA($J,8969,"+3,",1.07)="KMPV VBEM DATA TRANSMISSION"
 S FDA($J,8969,"+3,",3.01)="S.KMPV-VBEM-SERVER@VISTA.CPE.DOMAIN.EXT"
 S FDA($J,8969,"+3,",3.02)="G.CPE-CP-SUPPORT@VISTA.CPE.DOMAIN.EXT"
 S FDA($J,8969,"+3,",3.03)="S.KMPV-VSM-SERVER@VISTA.CPE.DOMAIN.EXT"
 ; VMCM
 S FDA($J,8969,"+4,",.01)="VMCM"
 S FDA($J,8969,"+4,",.02)=0
 S FDA($J,8969,"+4,",.03)="VISTA MESSAGE COUNT MONITOR"
 S FDA($J,8969,"+4,",.04)=1
 S FDA($J,8969,"+4,",.05)=KMPVDATE
 S FDA($J,8969,"+4,",1.01)=7
 S FDA($J,8969,"+4,",1.02)=15
 S FDA($J,8969,"+4,",1.03)="KMPVVMCM"
 S FDA($J,8969,"+4,",1.04)=0
 S FDA($J,8969,"+4,",1.05)="1D"
 S FDA($J,8969,"+4,",1.06)="T+1@0130"
 S FDA($J,8969,"+4,",1.07)="KMPV VMCM DATA TRANSMISSION"
 S FDA($J,8969,"+4,",3.01)="S.KMPV-VMCM-SERVER@VISTA.CPE.DOMAIN.EXT"
 S FDA($J,8969,"+4,",3.02)="G.CPE-CP-SUPPORT@VISTA.CPE.DOMAIN.EXT"
 S FDA($J,8969,"+4,",3.03)="S.KMPV-VSM-SERVER@VISTA.CPE.DOMAIN.EXT"
 ; VHLM
 S FDA($J,8969,"+5,",.01)="VHLM"
 S FDA($J,8969,"+5,",.02)=0
 S FDA($J,8969,"+5,",.03)="VISTA HL7 MONITOR"
 S FDA($J,8969,"+5,",.04)=1
 S FDA($J,8969,"+5,",.05)=KMPVDATE
 S FDA($J,8969,"+5,",1.01)=3
 S FDA($J,8969,"+5,",1.02)=720
 S FDA($J,8969,"+5,",1.03)=""
 S FDA($J,8969,"+5,",1.04)=0
 S FDA($J,8969,"+5,",1.05)="1D"
 S FDA($J,8969,"+5,",1.06)="T+1@02"
 S FDA($J,8969,"+5,",1.07)="KMPV VHLM DATA TRANSMISSION"
 S FDA($J,8969,"+5,",3.01)="S.KMPV-VHLM-SERVER@VISTA.CPE.DOMAIN.EXT"
 S FDA($J,8969,"+5,",3.02)="G.CPE-CP-SUPPORT@VISTA.CPE.DOMAIN.EXT"
 S FDA($J,8969,"+5,",3.03)="S.KMPV-VSM-SERVER@VISTA.CPE.DOMAIN.EXT"
 D UPDATE^DIE("","FDA($J)","ZIEN","KMPVERR")
 I $D(KMPVERR) W !!,"*** THERE WAS AN ERROR IN UPDATING THE 'VSM CONFIGURATION' FILE! ***"
 ;
 ; create entries in the VSM MONITOR DEFAULTS file for VBEM and VMCM
 ; VBEM
 S FDA($J,8969.02,"+3,",.01)="VBEM"
 S FDA($J,8969.02,"+3,",.02)=7
 S FDA($J,8969.02,"+3,",.03)=15
 S FDA($J,8969.02,"+3,",.04)=""
 S FDA($J,8969.02,"+3,",.05)=0
 S FDA($J,8969.02,"+3,",.06)="1D"
 S FDA($J,8969.02,"+3,",.07)="T+1@01"
 S FDA($J,8969.02,"+3,",.08)="KMPV VBEM DATA TRANSMISSION"
 S FDA($J,8969.02,"+3,",1.01)="S.KMPV-VBEM-SERVER@VISTA.CPE.DOMAIN.EXT"
 S FDA($J,8969.02,"+3,",1.02)="G.CPE-CP-SUPPORT@VISTA.CPE.DOMAIN.EXT"
 S FDA($J,8969.02,"+3,",1.03)="S.KMPV-VSM-SERVER@VISTA.CPE.DOMAIN.EXT"
 ; VMCM
 S FDA($J,8969.02,"+4,",.01)="VMCM"
 S FDA($J,8969.02,"+4,",.02)=7
 S FDA($J,8969.02,"+4,",.03)=15
 S FDA($J,8969.02,"+4,",.04)="KMPVVMCM"
 S FDA($J,8969.02,"+4,",.05)=0
 S FDA($J,8969.02,"+4,",.06)="1D"
 S FDA($J,8969.02,"+4,",.07)="T+1@01"
 S FDA($J,8969.02,"+4,",.08)="KMPV VMCM DATA TRANSMISSION"
 S FDA($J,8969.02,"+4,",1.01)="S.KMPV-VMCM-SERVER@VISTA.CPE.DOMAIN.EXT"
 S FDA($J,8969.02,"+4,",1.02)="G.CPE-CP-SUPPORT@VISTA.CPE.DOMAIN.EXT"
 S FDA($J,8969.02,"+4,",1.03)="S.KMPV-VSM-SERVER@VISTA.CPE.DOMAIN.EXT"
 ; VHLM
 S FDA($J,8969.02,"+5,",.01)="VHLM"
 S FDA($J,8969.02,"+5,",.02)=3
 S FDA($J,8969.02,"+5,",.03)=720
 S FDA($J,8969.02,"+5,",.04)=""
 S FDA($J,8969.02,"+5,",.05)=0
 S FDA($J,8969.02,"+5,",.06)="1D"
 S FDA($J,8969.02,"+5,",.07)="T+1@0130"
 S FDA($J,8969.02,"+5,",.08)="KMPV VHLM DATA TRANSMISSION"
 S FDA($J,8969.02,"+5,",1.01)="S.KMPV-VHLM-SERVER@VISTA.CPE.DOMAIN.EXT"
 S FDA($J,8969.02,"+5,",1.02)="G.CPE-CP-SUPPORT@VISTA.CPE.DOMAIN.EXT"
 S FDA($J,8969.02,"+5,",1.03)="S.KMPV-VSM-SERVER@VISTA.CPE.DOMAIN.EXT"
 D UPDATE^DIE("","FDA($J)","ZIEN","KMPVERR")
 I $D(KMPVERR) W !!,"*** THERE WAS AN ERROR IN UPDATING THE 'VSM MONITOR DEFAULTS' FILE! ***"
 ; make sure RUM is off
 S DIE=8989.3,DA=1,DR="300///NO" D ^DIE
 ;
 ; KMPV maintenance routines must be tasked
 N ZTDESC,ZTDTH,ZTIO,ZTRTN
 S ZTDTH=$H,ZTRTN="RESTART^KMPVPST2",ZTDESC="RESTART VTCM"
 S ZTIO="NULL"
 D ^%ZTLOAD
 Q
 ;
 ;
RESTART ; - Hang to let current routine stop - then restart VTCM collection
 N KMPVINT,KMPVI,KMPVJ,KMPVDATE,X,%DT,DIE,DA,DR
 ; Stop VTCM - Change VTCM version to 2, VersionInstallDate to today and CollectionInterval to 15
 D STOPMON^KMPVCBG("VTCM",1)
 ; Edit VSM CONFIGURATION file
 S DIE=8969,DA=1,DR=".04///2" D ^DIE
 S DIE=8969,DA=1,DR="1.02///15" D ^DIE
 S X="T",%DT="ESTX" D ^%DT S KMPVDATE=Y
 S DIE=8969,DA=1,DR=".05///"_KMPVDATE D ^DIE
 ; Edit VSM MONITOR DEFAULTS file
 S DIE=8969.02,DA=1,DR=".03///15" D ^DIE
 ; Remove KMPR BACKGROUND DRIVER from TaskMan
 D RESCH^XUTMOPT("KMPR BACKGROUND DRIVER","@",,,.KMPVERROR)
 ; WAIT for VTCM Monitor to exit
 S KMPVINT=$$GETVAL^KMPVCCFG("VTCM","COLLECTION INTERVAL",8969)
 H KMPVINT*60*2 ; collection interval in seconds doubled
 ; Kill existing VTCM Version 1 data - not compatible
 S KMPVI=""
 F  S KMPVI=$O(^KMPTMP("KMPV","VTCM","DLY",KMPVI)) Q:KMPVI=""  D
 .K ^KMPTMP("KMPV","VTCM","DLY",KMPVI)
 ; Kill existing VMCM data - not compatible
 S KMPVJ=""
 F  S KMPVJ=$O(^KMPTMP("KMPV","VMCM","DLY",KMPVJ)) Q:KMPVJ=""  D
 .K ^KMPTMP("KMPV","VMCM","DLY",KMPVJ)
 ; start Monitors
 D STARTMON^KMPVCBG("VTCM",1)
 D STARTMON^KMPVCBG("VBEM",1)
 D STARTMON^KMPVCBG("VMCM",1)
 D STARTMON^KMPVCBG("VHLM",1)
 ; send package information
 D PACKUPDT^KMPVCSRV
 ; Send config message to nat'l server
 D CFGMSG^KMPVCBG()
 Q
