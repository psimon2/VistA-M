IBDEI226 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,34510,1,4,0)
 ;;=4^G56.21
 ;;^UTILITY(U,$J,358.3,34510,2)
 ;;=^5004024
 ;;^UTILITY(U,$J,358.3,34511,0)
 ;;=G56.11^^157^1755^10
 ;;^UTILITY(U,$J,358.3,34511,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34511,1,3,0)
 ;;=3^Lesion of Median Nerve,Right Upper Limb
 ;;^UTILITY(U,$J,358.3,34511,1,4,0)
 ;;=4^G56.11
 ;;^UTILITY(U,$J,358.3,34511,2)
 ;;=^5004021
 ;;^UTILITY(U,$J,358.3,34512,0)
 ;;=G56.12^^157^1755^9
 ;;^UTILITY(U,$J,358.3,34512,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34512,1,3,0)
 ;;=3^Lesion of Median Nerve,Left Upper Limb
 ;;^UTILITY(U,$J,358.3,34512,1,4,0)
 ;;=4^G56.12
 ;;^UTILITY(U,$J,358.3,34512,2)
 ;;=^5004022
 ;;^UTILITY(U,$J,358.3,34513,0)
 ;;=G56.01^^157^1755^3
 ;;^UTILITY(U,$J,358.3,34513,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34513,1,3,0)
 ;;=3^Carpal Tunnel Syndrome,Right Upper Limb
 ;;^UTILITY(U,$J,358.3,34513,1,4,0)
 ;;=4^G56.01
 ;;^UTILITY(U,$J,358.3,34513,2)
 ;;=^5004018
 ;;^UTILITY(U,$J,358.3,34514,0)
 ;;=G56.02^^157^1755^2
 ;;^UTILITY(U,$J,358.3,34514,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34514,1,3,0)
 ;;=3^Carpal Tunnel Syndrome,Left Upper Limb
 ;;^UTILITY(U,$J,358.3,34514,1,4,0)
 ;;=4^G56.02
 ;;^UTILITY(U,$J,358.3,34514,2)
 ;;=^5004019
 ;;^UTILITY(U,$J,358.3,34515,0)
 ;;=R26.89^^157^1755^1
 ;;^UTILITY(U,$J,358.3,34515,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34515,1,3,0)
 ;;=3^Abnormalities of Gait & Mobility NEC
 ;;^UTILITY(U,$J,358.3,34515,1,4,0)
 ;;=4^R26.89
 ;;^UTILITY(U,$J,358.3,34515,2)
 ;;=^5019308
 ;;^UTILITY(U,$J,358.3,34516,0)
 ;;=M79.602^^157^1755^13
 ;;^UTILITY(U,$J,358.3,34516,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34516,1,3,0)
 ;;=3^Pain in Left Arm
 ;;^UTILITY(U,$J,358.3,34516,1,4,0)
 ;;=4^M79.602
 ;;^UTILITY(U,$J,358.3,34516,2)
 ;;=^5013326
 ;;^UTILITY(U,$J,358.3,34517,0)
 ;;=M79.605^^157^1755^14
 ;;^UTILITY(U,$J,358.3,34517,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34517,1,3,0)
 ;;=3^Pain in Left Leg
 ;;^UTILITY(U,$J,358.3,34517,1,4,0)
 ;;=4^M79.605
 ;;^UTILITY(U,$J,358.3,34517,2)
 ;;=^5013329
 ;;^UTILITY(U,$J,358.3,34518,0)
 ;;=M79.601^^157^1755^15
 ;;^UTILITY(U,$J,358.3,34518,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34518,1,3,0)
 ;;=3^Pain in Right Arm
 ;;^UTILITY(U,$J,358.3,34518,1,4,0)
 ;;=4^M79.601
 ;;^UTILITY(U,$J,358.3,34518,2)
 ;;=^5013325
 ;;^UTILITY(U,$J,358.3,34519,0)
 ;;=M79.604^^157^1755^16
 ;;^UTILITY(U,$J,358.3,34519,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34519,1,3,0)
 ;;=3^Pain in Right Leg
 ;;^UTILITY(U,$J,358.3,34519,1,4,0)
 ;;=4^M79.604
 ;;^UTILITY(U,$J,358.3,34519,2)
 ;;=^5013328
 ;;^UTILITY(U,$J,358.3,34520,0)
 ;;=R20.2^^157^1755^17
 ;;^UTILITY(U,$J,358.3,34520,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34520,1,3,0)
 ;;=3^Paresthesia of Skin
 ;;^UTILITY(U,$J,358.3,34520,1,4,0)
 ;;=4^R20.2
 ;;^UTILITY(U,$J,358.3,34520,2)
 ;;=^5019280
 ;;^UTILITY(U,$J,358.3,34521,0)
 ;;=M54.12^^157^1755^19
 ;;^UTILITY(U,$J,358.3,34521,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34521,1,3,0)
 ;;=3^Radiculopathy,Cervical Region
 ;;^UTILITY(U,$J,358.3,34521,1,4,0)
 ;;=4^M54.12
 ;;^UTILITY(U,$J,358.3,34521,2)
 ;;=^5012297
 ;;^UTILITY(U,$J,358.3,34522,0)
 ;;=M54.13^^157^1755^20
 ;;^UTILITY(U,$J,358.3,34522,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34522,1,3,0)
 ;;=3^Radiculopathy,Cervicothoracic Region
 ;;^UTILITY(U,$J,358.3,34522,1,4,0)
 ;;=4^M54.13
 ;;^UTILITY(U,$J,358.3,34522,2)
 ;;=^5012298
 ;;^UTILITY(U,$J,358.3,34523,0)
 ;;=M54.14^^157^1755^24
 ;;^UTILITY(U,$J,358.3,34523,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34523,1,3,0)
 ;;=3^Radiculopathy,Thoracic Region
 ;;^UTILITY(U,$J,358.3,34523,1,4,0)
 ;;=4^M54.14
