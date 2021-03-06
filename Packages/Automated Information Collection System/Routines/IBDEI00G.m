IBDEI00G ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.1)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.1,133,0)
 ;;=PROCEDURES (V2.1)^28^^16^0^133^84^^^1^PROCEDURES^CR^Common CPT-4 procedures^0
 ;;^UTILITY(U,$J,358.1,134,0)
 ;;=HEADER^28^^1^60^12^1^^^2
 ;;^UTILITY(U,$J,358.1,135,0)
 ;;=PATIENT INFORMATION^28^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,136,0)
 ;;=EYE/TELERETINAL ICD-10^28^^101^0^132^899^^^1^DIAGNOSIS^CR^Common ICD-10 diagnoses^0
 ;;^UTILITY(U,$J,358.1,137,0)
 ;;=HEADER^29^^1^54^23^1^^^2
 ;;^UTILITY(U,$J,358.1,138,0)
 ;;=PATIENT INFORMATION^29^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,139,0)
 ;;=PROCEDURES (V2.1)^29^^7^0^133^26^^^1^PROCEDURES^CR^Common CPT-4 procedures^0
 ;;^UTILITY(U,$J,358.1,140,0)
 ;;=EYE/TELERETINAL ICD-10^29^^34^0^132^899^^^1^DIAGNOSIS^CR^Common ICD-10 diagnoses^
 ;;^UTILITY(U,$J,358.1,141,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^30^^6^0^132^9^^^1^^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,142,0)
 ;;=CPT CODES^30^^15^0^132^30^^^1^MARK PROCEDURE(S) PERFORMED THIS VISIT^RC^Selection list - CPT codes^0
 ;;^UTILITY(U,$J,358.1,143,0)
 ;;=HEADER^30^^1^54^24^1^^^2
 ;;^UTILITY(U,$J,358.1,144,0)
 ;;=PATIENT INFORMATION^30^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,145,0)
 ;;=DAY/GENERAL SURG ICD-10^30^^46^0^132^1348^^^1^DIAGNOSIS^CR^Common ICD-10 diagnoses^0
 ;;^UTILITY(U,$J,358.1,146,0)
 ;;=HEADER^31^^1^51^23^1^^^2
 ;;^UTILITY(U,$J,358.1,147,0)
 ;;=E&M CODES^31^^6^0^132^11^^^1^EXAM CODES FOR OUTPATIENT EVALUATION & MANAGMENT^CR^1997 OUTPATIENT E&M TYPES W CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,148,0)
 ;;=PATIENT INFORMATION^31^^4^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,149,0)
 ;;=PROCEDURES (V2.1)^31^^18^0^132^17^^^1^PROCEDURES^CR^Common CPT-4 procedures^0
 ;;^UTILITY(U,$J,358.1,150,0)
 ;;=GERIATRICS ICD-10^31^^36^0^132^1548^^^1^DIAGNOSIS^CR^Common ICD-10 diagnoses^
 ;;^UTILITY(U,$J,358.1,151,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^32^^6^0^132^9^^^1^TYPE OF VISIT^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,152,0)
 ;;=HEADER^32^^1^54^22^1^^^2
 ;;^UTILITY(U,$J,358.1,153,0)
 ;;=PATIENT INFORMATION^32^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,154,0)
 ;;=CPT CODES (3 COL)^32^^15^0^132^95^^^1^PLEASE CHECK OFF PROCEDURES PERFORMED THIS VISIT^BCU^Selection list - CPT codes^0
 ;;^UTILITY(U,$J,358.1,155,0)
 ;;=ICD-10 DIAGNOSES (V1.0)^32^^111^0^132^239^^^1^DIAGNOSIS^CR^Common ICD-10 diagnoses^0
 ;;^UTILITY(U,$J,358.1,156,0)
 ;;=HEADER^33^^1^58^23^1^^^2
 ;;^UTILITY(U,$J,358.1,157,0)
 ;;=PATIENT INFORMATION^33^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,158,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^33^^6^0^132^8^^^1^TYPE OF HOME VISIT^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,159,0)
 ;;=PROCEDURES (V2.1)^33^^15^0^133^39^^^1^PROCEDURES^CR^Common CPT-4 procedures^0
 ;;^UTILITY(U,$J,358.1,160,0)
 ;;=PRIMARY CARE ICD-10^33^^55^0^132^2197^^^1^DIAGNOSIS^CR^Common ICD-10 diagnoses^
 ;;^UTILITY(U,$J,358.1,161,0)
 ;;=HEADER^34^^1^46^23^1^^^2
 ;;^UTILITY(U,$J,358.1,162,0)
 ;;=HOME VISIT CODES^34^^7^0^132^8^^^1^PLEASE CHECK OFF HOME VISIT - PER 15 MINUTES^CU^Selection list - CPT codes^0
 ;;^UTILITY(U,$J,358.1,163,0)
 ;;=PATIENT INFORMATION^34^^4^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,164,0)
 ;;=PROCEDURE CODES^34^^16^0^132^39^^^1^PLEASE CHECK OFF PROCEDURE CODES PERFORMED AT THIS VISIT^CU^Selection list - CPT codes^0
 ;;^UTILITY(U,$J,358.1,165,0)
 ;;=NURSING ICD-10^34^^56^0^132^439^^^1^DIAGNOSIS^CR^Common ICD-10 diagnoses^
