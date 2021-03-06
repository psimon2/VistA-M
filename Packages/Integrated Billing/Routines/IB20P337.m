IB20P337 ;ALB/CXW-FY06 DSS CLINIC STOP CODES IB*2.0*337 POST INIT ;15-FEB-06
 ;;2.0;INTEGRATED BILLING;**337**;21-MAR-94
 ;;Per VHA Directive 10-93-142, this routine should not be modified.
 ;
POST ;
 N IBEFFDT,U
 S U="^",IBEFFDT=3051001 ;effective date OCT 1st, 2005 
 D START,ADD(IBEFFDT),UPDATE(IBEFFDT),FINISH
 Q
 ;
START D MES^XPDUTL("")
 D MES^XPDUTL("FY06 DSS Clinic Stop Codes, Post-Install Starting")
 Q
 ;
FINISH ;
 D MES^XPDUTL("")
 D MES^XPDUTL("FY06 DSS Clinic Stop Codes, Post-Install Complete")
 Q
 ;
MESS(IBSTR) ;
 N IBA
 S IBA(2)=IBSTR
 S (IBA(1),IBA(3))=""
 D MES^XPDUTL(.IBA)
 Q
 ;
ADD(IBEFFDT) ;
 ;add a new code
 N Y,IBC,IBT,IBX,IBCODE,IBTYPE,IBDES,IBOVER
 D MESS("  Adding new codes to file 352.5")
 S IBC=0
 F IBX=1:1 S IBT=$P($T(NCODE+IBX),";",3) Q:'$L(IBT)  D
 . S IBCODE=+$P(IBT,U)
 . I $D(^IBE(352.5,"AEFFDT",IBCODE,-IBEFFDT)) D  Q
 . . D BMES^XPDUTL("  Duplication of non-billable type code "_IBCODE)
 . S IBTYPE=$P(IBT,U,2)
 . S IBDES=$E($P(IBT,U,3),1,30)
 . S IBOVER=$P(IBT,U,4)
 . S Y=+$$ADD3525(IBCODE,IBEFFDT,IBTYPE,IBDES,IBOVER) S:Y>0 IBC=IBC+1
 D MESS("     "_IBC_$S(IBC<2:" entry",1:" entries")_" added to 352.5")
 Q
 ;
UPDATE(IBEFFDT) ;
 ;update an old code
 N Y,IB1,IBC,IBT,IBX,IBCODE,IBTYPE,IBDES,IBOVER,IBLSTDT
 D MESS("  Updating description and override flag in file 352.5")
 S IBC=0
 F IBX=1:1 S IBT=$P($T(OCODE+IBX),";",3) Q:'$L(IBT)  D
 . S IBCODE=+$P(IBT,U)
 . I $D(^IBE(352.5,"AEFFDT",IBCODE,-IBEFFDT)) D  Q
 . . D BMES^XPDUTL("  Duplication of non-billable type code "_IBCODE)
 . S IBLSTDT=$O(^IBE(352.5,"AEFFDT",IBCODE,-9999999))
 . I +IBLSTDT=0 D  Q
 . . D BMES^XPDUTL("  Code "_IBCODE_" not found for non-billable update")
 . S IB1=$O(^IBE(352.5,"AEFFDT",IBCODE,IBLSTDT,0))
 . S IBTYPE=$P($G(^IBE(352.5,IB1,0)),U,3)
 . S IBDES=$E($P(IBT,U,2),1,30)
 . S IBOVER=$P(IBT,U,3)
 . S Y=+$$ADD3525(IBCODE,IBEFFDT,IBTYPE,IBDES,IBOVER) S:Y>0 IBC=IBC+1
 D MES^XPDUTL("")
 D MES^XPDUTL("     "_IBC_$S(IBC<2:" update",1:" updates")_" added to file 352.5")
 Q
 ;
ADD3525(IBCODE,IBEFFDT,IBTYPE,IBDES,IBOVER) ;
 ;add a new entry
 D BMES^XPDUTL("   "_IBCODE_"  "_IBDES)
 N IBIENS,IBFDA,IBER,IBRET
 S IBRET=""
 S IBIENS="+1,"
 S IBFDA(352.5,IBIENS,.01)=IBCODE
 S IBFDA(352.5,IBIENS,.02)=IBEFFDT
 S IBFDA(352.5,IBIENS,.03)=IBTYPE
 S IBFDA(352.5,IBIENS,.04)=IBDES
 S:IBOVER IBFDA(352.5,IBIENS,.05)=1
 D UPDATE^DIE("","IBFDA","IBRET","IBER")
 I $D(IBER) D BMES^XPDUTL(IBER("DIERR",1,"TEXT",1))
 Q $G(IBRET(1))
 ;
 ;new non-billable type data
NCODE ;;code^billable type^description^override flag
 ;;142^0^ENTEROSTOMAL TX, WOUND OR SKIN CARE^1
 ;;143^0^SLEEP STUDY^1
 ;;191^0^COMMUNITY ADULT DAY HEALTH CARE FOLLOW-UP^1
 ;;229^0^TELEPHONE/BLIND REHAB PROGRAM^1
 ;;437^0^VISUAL IMPAIRMENT CENTER TO OPTIMIZE REMAINING SIGHT (VICTORS)^1
 ;;439^0^LOW VISION CARE^1
 ;;694^0^STORE-AND-FORWARD TELEHEALTH^1
 ;;695^0^STORE-AND-FORWARD TELEHEALTH SAME STATION^1
 ;;696^0^STORE-AND-FORWARD TELEHEALTH NOT SAME STATION^1
 ;
 ;description and override flag updates
OCODE ;;code^description^override flag
 ;;683^NON-VIDEO MONITORING ONLY^1
 ;
