IBDEI39J ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,54835,1,3,0)
 ;;=3^Personal Hx of Urinary Calculi
 ;;^UTILITY(U,$J,358.3,54835,1,4,0)
 ;;=4^Z87.442
 ;;^UTILITY(U,$J,358.3,54835,2)
 ;;=^5063497
 ;;^UTILITY(U,$J,358.3,54836,0)
 ;;=N18.1^^256^2771^13
 ;;^UTILITY(U,$J,358.3,54836,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54836,1,3,0)
 ;;=3^Chronic Kidney Disease,Stage 1
 ;;^UTILITY(U,$J,358.3,54836,1,4,0)
 ;;=4^N18.1
 ;;^UTILITY(U,$J,358.3,54836,2)
 ;;=^5015602
 ;;^UTILITY(U,$J,358.3,54837,0)
 ;;=N18.2^^256^2771^14
 ;;^UTILITY(U,$J,358.3,54837,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54837,1,3,0)
 ;;=3^Chronic Kidney Disease,Stage 2
 ;;^UTILITY(U,$J,358.3,54837,1,4,0)
 ;;=4^N18.2
 ;;^UTILITY(U,$J,358.3,54837,2)
 ;;=^5015603
 ;;^UTILITY(U,$J,358.3,54838,0)
 ;;=N18.3^^256^2771^15
 ;;^UTILITY(U,$J,358.3,54838,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54838,1,3,0)
 ;;=3^Chronic Kidney Disease,Stage 3
 ;;^UTILITY(U,$J,358.3,54838,1,4,0)
 ;;=4^N18.3
 ;;^UTILITY(U,$J,358.3,54838,2)
 ;;=^5015604
 ;;^UTILITY(U,$J,358.3,54839,0)
 ;;=N18.4^^256^2771^16
 ;;^UTILITY(U,$J,358.3,54839,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54839,1,3,0)
 ;;=3^Chronic Kidney Disease,Stage 4
 ;;^UTILITY(U,$J,358.3,54839,1,4,0)
 ;;=4^N18.4
 ;;^UTILITY(U,$J,358.3,54839,2)
 ;;=^5015605
 ;;^UTILITY(U,$J,358.3,54840,0)
 ;;=N18.5^^256^2771^17
 ;;^UTILITY(U,$J,358.3,54840,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54840,1,3,0)
 ;;=3^Chronic Kidney Disease,Stage 5
 ;;^UTILITY(U,$J,358.3,54840,1,4,0)
 ;;=4^N18.5
 ;;^UTILITY(U,$J,358.3,54840,2)
 ;;=^5015606
 ;;^UTILITY(U,$J,358.3,54841,0)
 ;;=Q61.3^^256^2771^80
 ;;^UTILITY(U,$J,358.3,54841,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54841,1,3,0)
 ;;=3^Polycystic Kidney,Unspec
 ;;^UTILITY(U,$J,358.3,54841,1,4,0)
 ;;=4^Q61.3
 ;;^UTILITY(U,$J,358.3,54841,2)
 ;;=^5018797
 ;;^UTILITY(U,$J,358.3,54842,0)
 ;;=N20.1^^256^2771^9
 ;;^UTILITY(U,$J,358.3,54842,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54842,1,3,0)
 ;;=3^Calculus Ureter
 ;;^UTILITY(U,$J,358.3,54842,1,4,0)
 ;;=4^N20.1
 ;;^UTILITY(U,$J,358.3,54842,2)
 ;;=^5015608
 ;;^UTILITY(U,$J,358.3,54843,0)
 ;;=N18.9^^256^2771^18
 ;;^UTILITY(U,$J,358.3,54843,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54843,1,3,0)
 ;;=3^Chronic Kidney Failure,Unspec
 ;;^UTILITY(U,$J,358.3,54843,1,4,0)
 ;;=4^N18.9
 ;;^UTILITY(U,$J,358.3,54843,2)
 ;;=^332812
 ;;^UTILITY(U,$J,358.3,54844,0)
 ;;=N18.6^^256^2771^28
 ;;^UTILITY(U,$J,358.3,54844,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54844,1,3,0)
 ;;=3^End Stage Renal Disease (ESRD)
 ;;^UTILITY(U,$J,358.3,54844,1,4,0)
 ;;=4^N18.6
 ;;^UTILITY(U,$J,358.3,54844,2)
 ;;=^303986
 ;;^UTILITY(U,$J,358.3,54845,0)
 ;;=N52.9^^256^2771^44
 ;;^UTILITY(U,$J,358.3,54845,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54845,1,3,0)
 ;;=3^Erectile Dysfunction,Unspec
 ;;^UTILITY(U,$J,358.3,54845,1,4,0)
 ;;=4^N52.9
 ;;^UTILITY(U,$J,358.3,54845,2)
 ;;=^5015763
 ;;^UTILITY(U,$J,358.3,54846,0)
 ;;=N32.81^^256^2771^75
 ;;^UTILITY(U,$J,358.3,54846,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54846,1,3,0)
 ;;=3^Overactive Bladder
 ;;^UTILITY(U,$J,358.3,54846,1,4,0)
 ;;=4^N32.81
 ;;^UTILITY(U,$J,358.3,54846,2)
 ;;=^5015652
 ;;^UTILITY(U,$J,358.3,54847,0)
 ;;=Q61.2^^256^2771^79
 ;;^UTILITY(U,$J,358.3,54847,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54847,1,3,0)
 ;;=3^Polycystic Kidney,Adult Type
 ;;^UTILITY(U,$J,358.3,54847,1,4,0)
 ;;=4^Q61.2
 ;;^UTILITY(U,$J,358.3,54847,2)
 ;;=^5018796
 ;;^UTILITY(U,$J,358.3,54848,0)
 ;;=N41.1^^256^2771^83
 ;;^UTILITY(U,$J,358.3,54848,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54848,1,3,0)
 ;;=3^Prostatitis,Chronic
