IBDEI1TP ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,30520,1,3,0)
 ;;=3^Osteonecrosis,Pelvis
 ;;^UTILITY(U,$J,358.3,30520,1,4,0)
 ;;=4^M87.850
 ;;^UTILITY(U,$J,358.3,30520,2)
 ;;=^5014852
 ;;^UTILITY(U,$J,358.3,30521,0)
 ;;=M87.851^^135^1378^78
 ;;^UTILITY(U,$J,358.3,30521,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30521,1,3,0)
 ;;=3^Osteonecrosis,Right Femur
 ;;^UTILITY(U,$J,358.3,30521,1,4,0)
 ;;=4^M87.851
 ;;^UTILITY(U,$J,358.3,30521,2)
 ;;=^5014853
 ;;^UTILITY(U,$J,358.3,30522,0)
 ;;=M87.852^^135^1378^75
 ;;^UTILITY(U,$J,358.3,30522,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30522,1,3,0)
 ;;=3^Osteonecrosis,Left Femur
 ;;^UTILITY(U,$J,358.3,30522,1,4,0)
 ;;=4^M87.852
 ;;^UTILITY(U,$J,358.3,30522,2)
 ;;=^5014854
 ;;^UTILITY(U,$J,358.3,30523,0)
 ;;=M88.0^^135^1378^66
 ;;^UTILITY(U,$J,358.3,30523,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30523,1,3,0)
 ;;=3^Osteitis Deformans of Skull
 ;;^UTILITY(U,$J,358.3,30523,1,4,0)
 ;;=4^M88.0
 ;;^UTILITY(U,$J,358.3,30523,2)
 ;;=^5014874
 ;;^UTILITY(U,$J,358.3,30524,0)
 ;;=M88.1^^135^1378^67
 ;;^UTILITY(U,$J,358.3,30524,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30524,1,3,0)
 ;;=3^Osteitis Deformans of Vertebrae
 ;;^UTILITY(U,$J,358.3,30524,1,4,0)
 ;;=4^M88.1
 ;;^UTILITY(U,$J,358.3,30524,2)
 ;;=^5014875
 ;;^UTILITY(U,$J,358.3,30525,0)
 ;;=M88.89^^135^1378^65
 ;;^UTILITY(U,$J,358.3,30525,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30525,1,3,0)
 ;;=3^Osteitis Deformans of Mult Sites
 ;;^UTILITY(U,$J,358.3,30525,1,4,0)
 ;;=4^M88.89
 ;;^UTILITY(U,$J,358.3,30525,2)
 ;;=^5014898
 ;;^UTILITY(U,$J,358.3,30526,0)
 ;;=M94.0^^135^1378^15
 ;;^UTILITY(U,$J,358.3,30526,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30526,1,3,0)
 ;;=3^Chondrocostal Junction Syndrome/Costochondritis
 ;;^UTILITY(U,$J,358.3,30526,1,4,0)
 ;;=4^M94.0
 ;;^UTILITY(U,$J,358.3,30526,2)
 ;;=^5015327
 ;;^UTILITY(U,$J,358.3,30527,0)
 ;;=M94.20^^135^1378^18
 ;;^UTILITY(U,$J,358.3,30527,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30527,1,3,0)
 ;;=3^Chondromalacia,Unspec Site
 ;;^UTILITY(U,$J,358.3,30527,1,4,0)
 ;;=4^M94.20
 ;;^UTILITY(U,$J,358.3,30527,2)
 ;;=^5015329
 ;;^UTILITY(U,$J,358.3,30528,0)
 ;;=M94.261^^135^1378^17
 ;;^UTILITY(U,$J,358.3,30528,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30528,1,3,0)
 ;;=3^Chondromalacia,Right Knee
 ;;^UTILITY(U,$J,358.3,30528,1,4,0)
 ;;=4^M94.261
 ;;^UTILITY(U,$J,358.3,30528,2)
 ;;=^5015345
 ;;^UTILITY(U,$J,358.3,30529,0)
 ;;=M94.262^^135^1378^16
 ;;^UTILITY(U,$J,358.3,30529,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30529,1,3,0)
 ;;=3^Chondromalacia,Left Knee
 ;;^UTILITY(U,$J,358.3,30529,1,4,0)
 ;;=4^M94.262
 ;;^UTILITY(U,$J,358.3,30529,2)
 ;;=^5015346
 ;;^UTILITY(U,$J,358.3,30530,0)
 ;;=R25.2^^135^1378^36
 ;;^UTILITY(U,$J,358.3,30530,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30530,1,3,0)
 ;;=3^Cramp and Spasm
 ;;^UTILITY(U,$J,358.3,30530,1,4,0)
 ;;=4^R25.2
 ;;^UTILITY(U,$J,358.3,30530,2)
 ;;=^5019301
 ;;^UTILITY(U,$J,358.3,30531,0)
 ;;=R70.0^^135^1378^38
 ;;^UTILITY(U,$J,358.3,30531,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30531,1,3,0)
 ;;=3^Elevated Erythrocyte Sedimentation Rate
 ;;^UTILITY(U,$J,358.3,30531,1,4,0)
 ;;=4^R70.0
 ;;^UTILITY(U,$J,358.3,30531,2)
 ;;=^5019559
 ;;^UTILITY(U,$J,358.3,30532,0)
 ;;=M25.511^^135^1378^98
 ;;^UTILITY(U,$J,358.3,30532,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30532,1,3,0)
 ;;=3^Pain in Right Shoulder
 ;;^UTILITY(U,$J,358.3,30532,1,4,0)
 ;;=4^M25.511
 ;;^UTILITY(U,$J,358.3,30532,2)
 ;;=^5011602
 ;;^UTILITY(U,$J,358.3,30533,0)
 ;;=M25.512^^135^1378^88
 ;;^UTILITY(U,$J,358.3,30533,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30533,1,3,0)
 ;;=3^Pain in Left Shoulder