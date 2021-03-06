IBDEI00K ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.1)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.1,264,0)
 ;;=NEPHROLOGY ICD-10^55^^61^0^132^379^^^1^DIAGNOSIS^CR^Common ICD-10 diagnoses^0
 ;;^UTILITY(U,$J,358.1,265,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^56^^7^0^132^8^^^1^^CRU^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,266,0)
 ;;=HEADER^56^^2^55^18^1^^^2
 ;;^UTILITY(U,$J,358.1,267,0)
 ;;=PATIENT INFORMATION^56^^4^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,268,0)
 ;;=CPT CODES^56^^16^0^132^64^^^1^PLEASE CHECK OFF PROCEDURES PERFORMED THIS VISIT^BCU^Selection list - CPT codes^0
 ;;^UTILITY(U,$J,358.1,269,0)
 ;;=NEUROLOGY ICD-10^56^^81^0^132^329^^^1^DIAGNOSIS^CR^Common ICD-10 diagnoses^0
 ;;^UTILITY(U,$J,358.1,270,0)
 ;;=CPT PROCEDURE^57^^17^0^133^18^^^1^MARK BUBBLE FOR ALL PROCEDURES PERFORMED TODAY^CRUB^Common CPT-4 procedures^0
 ;;^UTILITY(U,$J,358.1,271,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^57^^6^0^132^10^^^1^TYPE OF VISIT^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,272,0)
 ;;=HEADER^57^^1^49^21^1^^^2
 ;;^UTILITY(U,$J,358.1,273,0)
 ;;=PATIENT INFORMATION^57^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,274,0)
 ;;=ICD-10 DIAGNOSES (V1.0)^57^^36^0^132^227^^^1^DIAGNOSIS^CR^Common ICD-10 diagnoses^
 ;;^UTILITY(U,$J,358.1,275,0)
 ;;=HEADER^58^^1^46^24^1^^^2
 ;;^UTILITY(U,$J,358.1,276,0)
 ;;=PATIENT INFORMATION^58^^4^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,277,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^58^^7^0^132^6^^^1^TYPE OF VISIT^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,278,0)
 ;;=PROCEDURES (V2.1)^58^^14^0^133^96^^^1^PROCEDURES^CR^Common CPT-4 procedures^0
 ;;^UTILITY(U,$J,358.1,279,0)
 ;;=NURSING ICD-10^58^^111^0^132^439^^^1^DIAGNOSIS^CR^Common ICD-10 diagnoses^0
 ;;^UTILITY(U,$J,358.1,280,0)
 ;;=WOMEN'S CLINIC PROCEDURES^59^^19^0^132^71^^^1^PROCEDURES^CR^WOMEN'S CLINIC PROCEDURES^0
 ;;^UTILITY(U,$J,358.1,281,0)
 ;;=PATIENT INFORMATION^59^^3^1^132^3^^^2^^^Patient information-name/ssn/age^0
 ;;^UTILITY(U,$J,358.1,282,0)
 ;;=HEADER^59^^1^49^30^1^^^2
 ;;^UTILITY(U,$J,358.1,283,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^59^^7^0^132^11^^^1^TYPE OF VISIT^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,284,0)
 ;;=ICD-10 DIAGNOSES (V1.0)^59^^91^0^132^837^^^1^DIAGNOSIS^CR^Common ICD-10 diagnoses^0
 ;;^UTILITY(U,$J,358.1,285,0)
 ;;=CPT PROCEDURE^60^^16^0^133^134^^^1^MARK BUBBLE FOR ALL PROCEDURES PERFORMED TODAY^CRUB^Common CPT-4 procedures^0
 ;;^UTILITY(U,$J,358.1,286,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^60^^6^0^132^9^^^1^TYPE OF VISIT^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,287,0)
 ;;=HEADER^60^^1^44^39^1^^^2
 ;;^UTILITY(U,$J,358.1,288,0)
 ;;=PATIENT INFORMATION^60^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,289,0)
 ;;=ICD-10 DIAGNOSES (V1.0)^60^^161^0^132^469^^^1^DIAGNOSIS^CR^Common ICD-10 diagnoses^0
 ;;^UTILITY(U,$J,358.1,290,0)
 ;;=PROCEDURES (V2.1)^61^^16^0^133^99^^^1^PROCEDURES^CR^Common CPT-4 procedures^0
 ;;^UTILITY(U,$J,358.1,291,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^61^^5^0^132^10^^^1^TYPE OF VISIT^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,292,0)
 ;;=HEADER^61^^1^57^19^1^^^2
 ;;^UTILITY(U,$J,358.1,293,0)
 ;;=PATIENT INFORMATION^61^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,294,0)
 ;;=ICD-10 DIAGNOSES (V1.0)^61^^116^0^132^584^^^1^DIAGNOSIS^CR^Common ICD-10 diagnoses^0
 ;;^UTILITY(U,$J,358.1,295,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^62^^6^0^132^9^^^1^^CR^1995 visit types WITH CODES SHOWN^0
