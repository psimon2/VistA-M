IBDEI014 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.2)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.2,107,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,107,1,1,0)
 ;;=1^2^1
 ;;^UTILITY(U,$J,358.2,107,2,0)
 ;;=^358.22I^5^5
 ;;^UTILITY(U,$J,358.2,107,2,1,0)
 ;;=4^CODE^8^1^1^^0
 ;;^UTILITY(U,$J,358.2,107,2,2,0)
 ;;=3^DIAGNOSIS^95^1^2^^1
 ;;^UTILITY(U,$J,358.2,107,2,3,0)
 ;;=5^ADD^^2^^1^^1^7^0
 ;;^UTILITY(U,$J,358.2,107,2,4,0)
 ;;=1^P^^2^^1^^1^1^1
 ;;^UTILITY(U,$J,358.2,107,2,5,0)
 ;;=2^S^^2^^1^^1^2^0
 ;;^UTILITY(U,$J,358.2,108,0)
 ;;=CPT CODES^184^^^^^3^0^CU^^1^1^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,108,2,0)
 ;;=^358.22I^3^3
 ;;^UTILITY(U,$J,358.2,108,2,1,0)
 ;;=1^CODE^5^1^1^^0
 ;;^UTILITY(U,$J,358.2,108,2,2,0)
 ;;=2^PROCEDURE^40^1^2^^1
 ;;^UTILITY(U,$J,358.2,108,2,3,0)
 ;;=3^x^^2^^2
 ;;^UTILITY(U,$J,358.2,109,0)
 ;;=VISIT TYPE^186^^^^^2^0^C^^6^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,109,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,109,1,1,0)
 ;;=1^2
 ;;^UTILITY(U,$J,358.2,109,2,0)
 ;;=^358.22I^4^3
 ;;^UTILITY(U,$J,358.2,109,2,1,0)
 ;;=1^ ^28^1^2^^1
 ;;^UTILITY(U,$J,358.2,109,2,3,0)
 ;;=3^^^2^^1^^1^^1
 ;;^UTILITY(U,$J,358.2,109,2,4,0)
 ;;=2^ ^5^1^1
 ;;^UTILITY(U,$J,358.2,110,0)
 ;;=ICD-10 DIAGNOSES^188^^^^^4^0^SC^^8^0^1^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,110,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,110,1,1,0)
 ;;=1^2^1
 ;;^UTILITY(U,$J,358.2,110,2,0)
 ;;=^358.22I^5^5
 ;;^UTILITY(U,$J,358.2,110,2,1,0)
 ;;=4^CODE^8^1^1^^0
 ;;^UTILITY(U,$J,358.2,110,2,2,0)
 ;;=3^DIAGNOSIS^95^1^2^^1
 ;;^UTILITY(U,$J,358.2,110,2,3,0)
 ;;=5^ADD^^2^^1^^1^7^0
 ;;^UTILITY(U,$J,358.2,110,2,4,0)
 ;;=1^P^^2^^1^^1^1^1
 ;;^UTILITY(U,$J,358.2,110,2,5,0)
 ;;=2^S^^2^^1^^1^2^0
 ;;^UTILITY(U,$J,358.2,111,0)
 ;;=VISIT TYPE^191^^^^^2^0^C^^6^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,111,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,111,1,1,0)
 ;;=1^2
 ;;^UTILITY(U,$J,358.2,111,2,0)
 ;;=^358.22I^4^3
 ;;^UTILITY(U,$J,358.2,111,2,1,0)
 ;;=1^ ^28^1^2^^1
 ;;^UTILITY(U,$J,358.2,111,2,3,0)
 ;;=3^^^2^^1^^1^^1
 ;;^UTILITY(U,$J,358.2,111,2,4,0)
 ;;=2^ ^5^1^1
 ;;^UTILITY(U,$J,358.2,112,0)
 ;;=CPT CODES^192^^^^^1^0^UBC^^1^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,112,1,0)
 ;;=^358.21I^3^3
 ;;^UTILITY(U,$J,358.2,112,1,1,0)
 ;;=1^2^1
 ;;^UTILITY(U,$J,358.2,112,1,2,0)
 ;;=2^2^63
 ;;^UTILITY(U,$J,358.2,112,1,3,0)
 ;;=3^1
 ;;^UTILITY(U,$J,358.2,112,2,0)
 ;;=^358.22I^3^3
 ;;^UTILITY(U,$J,358.2,112,2,1,0)
 ;;=1^ ^^2^^1^^1
 ;;^UTILITY(U,$J,358.2,112,2,2,0)
 ;;=2^ ^5^1^1^^1
 ;;^UTILITY(U,$J,358.2,112,2,3,0)
 ;;=3^ ^50^1^2^^1
 ;;^UTILITY(U,$J,358.2,113,0)
 ;;=ICD-10 DIAGNOSES^193^^^^^4^0^SC^^8^0^1^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,113,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,113,1,1,0)
 ;;=1^2^1
 ;;^UTILITY(U,$J,358.2,113,2,0)
 ;;=^358.22I^5^5
 ;;^UTILITY(U,$J,358.2,113,2,1,0)
 ;;=4^CODE^8^1^1^^0
 ;;^UTILITY(U,$J,358.2,113,2,2,0)
 ;;=3^DIAGNOSIS^95^1^2^^1
 ;;^UTILITY(U,$J,358.2,113,2,3,0)
 ;;=5^ADD^^2^^1^^1^7^0
 ;;^UTILITY(U,$J,358.2,113,2,4,0)
 ;;=1^P^^2^^1^^1^1^1
 ;;^UTILITY(U,$J,358.2,113,2,5,0)
 ;;=2^S^^2^^1^^1^2^0
 ;;^UTILITY(U,$J,358.2,114,0)
 ;;=VISIT TYPE^196^^^^^2^0^C^^6^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,114,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,114,1,1,0)
 ;;=1^2
 ;;^UTILITY(U,$J,358.2,114,2,0)
 ;;=^358.22I^4^3
 ;;^UTILITY(U,$J,358.2,114,2,1,0)
 ;;=1^ ^28^1^2^^1
 ;;^UTILITY(U,$J,358.2,114,2,3,0)
 ;;=3^^^2^^1^^1^^1
 ;;^UTILITY(U,$J,358.2,114,2,4,0)
 ;;=2^ ^5^1^1
 ;;^UTILITY(U,$J,358.2,115,0)
 ;;=CPT CODES^197^^^^^1^0^UBC^^1^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,115,1,0)
 ;;=^358.21I^3^3
 ;;^UTILITY(U,$J,358.2,115,1,1,0)
 ;;=1^2^1
 ;;^UTILITY(U,$J,358.2,115,1,2,0)
 ;;=2^2^63
 ;;^UTILITY(U,$J,358.2,115,1,3,0)
 ;;=3^1
 ;;^UTILITY(U,$J,358.2,115,2,0)
 ;;=^358.22I^3^3
