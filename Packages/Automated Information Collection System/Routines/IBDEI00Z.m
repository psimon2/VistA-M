IBDEI00Z ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.2)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.2,62,1,1,0)
 ;;=1^2^2
 ;;^UTILITY(U,$J,358.2,62,2,0)
 ;;=^358.22I^3^3
 ;;^UTILITY(U,$J,358.2,62,2,1,0)
 ;;=3^ ^5^1^1^^0
 ;;^UTILITY(U,$J,358.2,62,2,2,0)
 ;;=2^ ^40^1^2^^1
 ;;^UTILITY(U,$J,358.2,62,2,3,0)
 ;;=1^ ^^2^^1^^1^^0
 ;;^UTILITY(U,$J,358.2,63,0)
 ;;=ICD-10 DIAGNOSES^107^^^^^4^0^SC^^8^0^1^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,63,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,63,1,1,0)
 ;;=1^2^1
 ;;^UTILITY(U,$J,358.2,63,2,0)
 ;;=^358.22I^5^5
 ;;^UTILITY(U,$J,358.2,63,2,1,0)
 ;;=4^CODE^8^1^1^^0
 ;;^UTILITY(U,$J,358.2,63,2,2,0)
 ;;=3^DIAGNOSIS^95^1^2^^1
 ;;^UTILITY(U,$J,358.2,63,2,3,0)
 ;;=5^ADD^^2^^1^^1^7^0
 ;;^UTILITY(U,$J,358.2,63,2,4,0)
 ;;=1^P^^2^^1^^1^1^1
 ;;^UTILITY(U,$J,358.2,63,2,5,0)
 ;;=2^S^^2^^1^^1^2^0
 ;;^UTILITY(U,$J,358.2,64,0)
 ;;=CPT CODES^110^^^^^3^0^CU^^1^1^^0
 ;;^UTILITY(U,$J,358.2,64,2,0)
 ;;=^358.22I^3^3
 ;;^UTILITY(U,$J,358.2,64,2,1,0)
 ;;=1^CODE^5^1^1^^0
 ;;^UTILITY(U,$J,358.2,64,2,2,0)
 ;;=2^PROCEDURE^32^1^2^^1
 ;;^UTILITY(U,$J,358.2,64,2,3,0)
 ;;=3^x^^2^^1
 ;;^UTILITY(U,$J,358.2,65,0)
 ;;=ICD-10 DIAGNOSES^111^^^^^4^0^SC^^8^0^1^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,65,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,65,1,1,0)
 ;;=1^2^1
 ;;^UTILITY(U,$J,358.2,65,2,0)
 ;;=^358.22I^5^5
 ;;^UTILITY(U,$J,358.2,65,2,1,0)
 ;;=4^CODE^8^1^1^^0
 ;;^UTILITY(U,$J,358.2,65,2,2,0)
 ;;=3^DIAGNOSIS^95^1^2^^1
 ;;^UTILITY(U,$J,358.2,65,2,3,0)
 ;;=5^ADD^^2^^1^^1^7^0
 ;;^UTILITY(U,$J,358.2,65,2,4,0)
 ;;=1^P^^2^^1^^1^1^1
 ;;^UTILITY(U,$J,358.2,65,2,5,0)
 ;;=2^S^^2^^1^^1^2^0
 ;;^UTILITY(U,$J,358.2,66,0)
 ;;=CPT CODES^112^^^^^1^0^CSU^^1^0^2^0^^0^2^2
 ;;^UTILITY(U,$J,358.2,66,1,0)
 ;;=^358.21I^3^3
 ;;^UTILITY(U,$J,358.2,66,1,1,0)
 ;;=1^2^2
 ;;^UTILITY(U,$J,358.2,66,1,2,0)
 ;;=3^^91
 ;;^UTILITY(U,$J,358.2,66,1,3,0)
 ;;=2^3^64
 ;;^UTILITY(U,$J,358.2,66,2,0)
 ;;=^358.22I^3^3
 ;;^UTILITY(U,$J,358.2,66,2,1,0)
 ;;=2^ ^5^1^1^^0
 ;;^UTILITY(U,$J,358.2,66,2,2,0)
 ;;=3^ ^50^1^2^^1
 ;;^UTILITY(U,$J,358.2,66,2,3,0)
 ;;=1^ ^^2^^1^^1^^0
 ;;^UTILITY(U,$J,358.2,67,0)
 ;;=VISIT TYPE^113^^^^^2^0^C^^6^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,67,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,67,1,1,0)
 ;;=1^2
 ;;^UTILITY(U,$J,358.2,67,2,0)
 ;;=^358.22I^4^3
 ;;^UTILITY(U,$J,358.2,67,2,1,0)
 ;;=1^ ^28^1^2^^1
 ;;^UTILITY(U,$J,358.2,67,2,3,0)
 ;;=3^^^2^^1^^1^^1
 ;;^UTILITY(U,$J,358.2,67,2,4,0)
 ;;=2^ ^5^1^1
 ;;^UTILITY(U,$J,358.2,68,0)
 ;;=ICD-10 DIAGNOSES^116^^^^^4^0^SC^^8^0^1^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,68,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,68,1,1,0)
 ;;=1^2^1
 ;;^UTILITY(U,$J,358.2,68,2,0)
 ;;=^358.22I^5^5
 ;;^UTILITY(U,$J,358.2,68,2,1,0)
 ;;=4^CODE^8^1^1^^0
 ;;^UTILITY(U,$J,358.2,68,2,2,0)
 ;;=3^DIAGNOSIS^95^1^2^^1
 ;;^UTILITY(U,$J,358.2,68,2,3,0)
 ;;=5^ADD^^2^^1^^1^7^0
 ;;^UTILITY(U,$J,358.2,68,2,4,0)
 ;;=1^P^^2^^1^^1^1^1
 ;;^UTILITY(U,$J,358.2,68,2,5,0)
 ;;=2^S^^2^^1^^1^2^0
 ;;^UTILITY(U,$J,358.2,69,0)
 ;;=VISIT TYPE^117^^^^^2^0^C^^6^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,69,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,69,1,1,0)
 ;;=1^2
 ;;^UTILITY(U,$J,358.2,69,2,0)
 ;;=^358.22I^4^3
 ;;^UTILITY(U,$J,358.2,69,2,1,0)
 ;;=1^ ^28^1^2^^1
 ;;^UTILITY(U,$J,358.2,69,2,3,0)
 ;;=3^^^2^^1^^1^^1
 ;;^UTILITY(U,$J,358.2,69,2,4,0)
 ;;=2^ ^5^1^1
 ;;^UTILITY(U,$J,358.2,70,0)
 ;;=CPT CODES^120^^^^^1^0^CSU^^1^0^2^0^^0^2^2
 ;;^UTILITY(U,$J,358.2,70,1,0)
 ;;=^358.21I^3^3
 ;;^UTILITY(U,$J,358.2,70,1,1,0)
 ;;=1^3^2
 ;;^UTILITY(U,$J,358.2,70,1,2,0)
 ;;=3^^91
 ;;^UTILITY(U,$J,358.2,70,1,3,0)
 ;;=2^3^59
 ;;^UTILITY(U,$J,358.2,70,2,0)
 ;;=^358.22I^3^3
 ;;^UTILITY(U,$J,358.2,70,2,1,0)
 ;;=2^ ^5^1^1^^0
 ;;^UTILITY(U,$J,358.2,70,2,2,0)
 ;;=3^ ^50^1^2^^1
