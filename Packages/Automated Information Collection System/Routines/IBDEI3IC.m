IBDEI3IC ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.4)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.4,1061,0)
 ;;=HEMOGLOBINOPATHIES^8^104
 ;;^UTILITY(U,$J,358.4,1062,0)
 ;;=LYMPHOID NEOPLASMS^9^104
 ;;^UTILITY(U,$J,358.4,1063,0)
 ;;=METASTATIC SITES^10^104
 ;;^UTILITY(U,$J,358.4,1064,0)
 ;;=MISC. NEOPLASMS^11^104
 ;;^UTILITY(U,$J,358.4,1065,0)
 ;;=MYELOID NEOPLASMS/DISORDERS^12^104
 ;;^UTILITY(U,$J,358.4,1066,0)
 ;;=PERSONAL HX OF CANCER^14^104
 ;;^UTILITY(U,$J,358.4,1067,0)
 ;;=OTHER^13^104
 ;;^UTILITY(U,$J,358.4,1068,0)
 ;;=HOSPICE CARE SUPERVISION^1^105
 ;;^UTILITY(U,$J,358.4,1069,0)
 ;;=PROLONGED SERVICES^2^105
 ;;^UTILITY(U,$J,358.4,1070,0)
 ;;=INPATIENT CONSULTATIONS^1^106
 ;;^UTILITY(U,$J,358.4,1071,0)
 ;;=INITIAL INPATIENT CARE^2^106
 ;;^UTILITY(U,$J,358.4,1072,0)
 ;;=SUBSEQUENT INPATIENT CARE^3^106
 ;;^UTILITY(U,$J,358.4,1073,0)
 ;;=DISCHARGE/PRONOUNCEMENT^4^106
 ;;^UTILITY(U,$J,358.4,1074,0)
 ;;=NH INITIAL INPATIENT CARE^5^106
 ;;^UTILITY(U,$J,358.4,1075,0)
 ;;=NH SUBSEQUENT INPATIENT CARE^6^106
 ;;^UTILITY(U,$J,358.4,1076,0)
 ;;=NH DISCHARGE/PRONOUNCEMENT^7^106
 ;;^UTILITY(U,$J,358.4,1077,0)
 ;;=NEOPLASMS^8^107
 ;;^UTILITY(U,$J,358.4,1078,0)
 ;;=CARDIOVASCULAR DISORDERS^2^107
 ;;^UTILITY(U,$J,358.4,1079,0)
 ;;=MENTAL HEALTH^7^107
 ;;^UTILITY(U,$J,358.4,1080,0)
 ;;=NEUROLOGICAL CONDITIONS^9^107
 ;;^UTILITY(U,$J,358.4,1081,0)
 ;;=GI DISORDERS^4^107
 ;;^UTILITY(U,$J,358.4,1082,0)
 ;;=LIVER DISORDERS^6^107
 ;;^UTILITY(U,$J,358.4,1083,0)
 ;;=KIDNEY DISORDERS^5^107
 ;;^UTILITY(U,$J,358.4,1084,0)
 ;;=RESPIRATORY DISORDERS^10^107
 ;;^UTILITY(U,$J,358.4,1085,0)
 ;;=PALLIATIVE/HOSPICE ENCOUNTER^1^107
 ;;^UTILITY(U,$J,358.4,1086,0)
 ;;=OTHER CONDITIONS^11^107
 ;;^UTILITY(U,$J,358.4,1087,0)
 ;;=DEMENTIA^3^107
 ;;^UTILITY(U,$J,358.4,1088,0)
 ;;=HOSPICE CARE SUPERVISION^3^108
 ;;^UTILITY(U,$J,358.4,1089,0)
 ;;=ADVANCE LIFE PLANNING^1^108
 ;;^UTILITY(U,$J,358.4,1090,0)
 ;;=EDUCATION^2^108
 ;;^UTILITY(U,$J,358.4,1091,0)
 ;;=NON-VIDEO MONITORING^4^108
 ;;^UTILITY(U,$J,358.4,1092,0)
 ;;=TEAM CONFERENCE^6^108
 ;;^UTILITY(U,$J,358.4,1093,0)
 ;;=PROLONGED SERVICES^5^108
 ;;^UTILITY(U,$J,358.4,1094,0)
 ;;=NEW PATIENT ^2^109
 ;;^UTILITY(U,$J,358.4,1095,0)
 ;;=ESTABLISHED PATIENT ^1^109
 ;;^UTILITY(U,$J,358.4,1096,0)
 ;;=CONSULTATIONS ^3^109
 ;;^UTILITY(U,$J,358.4,1097,0)
 ;;=NEOPLASMS^8^110
 ;;^UTILITY(U,$J,358.4,1098,0)
 ;;=CARDIOVASCULAR DISORDERS^2^110
 ;;^UTILITY(U,$J,358.4,1099,0)
 ;;=MENTAL HEALTH^7^110
 ;;^UTILITY(U,$J,358.4,1100,0)
 ;;=NEUROLOGICAL CONDITIONS^9^110
 ;;^UTILITY(U,$J,358.4,1101,0)
 ;;=GI DISORDERS^4^110
 ;;^UTILITY(U,$J,358.4,1102,0)
 ;;=LIVER DISORDERS^6^110
 ;;^UTILITY(U,$J,358.4,1103,0)
 ;;=KIDNEY DISORDERS^5^110
 ;;^UTILITY(U,$J,358.4,1104,0)
 ;;=RESPIRATORY DISORDERS^10^110
 ;;^UTILITY(U,$J,358.4,1105,0)
 ;;=PALLIATIVE/HOSPICE ENCOUNTER^1^110
 ;;^UTILITY(U,$J,358.4,1106,0)
 ;;=OTHER CONDITIONS^11^110
 ;;^UTILITY(U,$J,358.4,1107,0)
 ;;=DEMENTIA^3^110
 ;;^UTILITY(U,$J,358.4,1108,0)
 ;;=F-T-F ESTABLISHED PATIENT^1^111
 ;;^UTILITY(U,$J,358.4,1109,0)
 ;;=F-T-F NEW PATIENT^2^111
 ;;^UTILITY(U,$J,358.4,1110,0)
 ;;=HT VIDEO-EST PATIENT^3^111
 ;;^UTILITY(U,$J,358.4,1111,0)
 ;;=HT VIDEO-NEW PATIENT^4^111
 ;;^UTILITY(U,$J,358.4,1112,0)
 ;;=OTHER^5^112
 ;;^UTILITY(U,$J,358.4,1113,0)
 ;;=HT EDUCATION^4^112
 ;;^UTILITY(U,$J,358.4,1114,0)
 ;;=HT MONTHLY MONITOR^1^112
 ;;^UTILITY(U,$J,358.4,1115,0)
 ;;=HOME VISIT-EST PATIENT^2^112
 ;;^UTILITY(U,$J,358.4,1116,0)
 ;;=TELEPSYCH^6^112
 ;;^UTILITY(U,$J,358.4,1117,0)
 ;;=HOME VISIT-NEW PATIENT^3^112
 ;;^UTILITY(U,$J,358.4,1118,0)
 ;;="A" MISC DIAGNOSIS^1^113
 ;;^UTILITY(U,$J,358.4,1119,0)
 ;;=ADJUSTMENT REACTION^2^113
 ;;^UTILITY(U,$J,358.4,1120,0)
 ;;=ANXIETY DISORDER^3^113
