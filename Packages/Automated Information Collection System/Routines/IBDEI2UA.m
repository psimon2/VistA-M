IBDEI2UA ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,47649,1,4,0)
 ;;=4^C92.12
 ;;^UTILITY(U,$J,358.3,47649,2)
 ;;=^5001794
 ;;^UTILITY(U,$J,358.3,47650,0)
 ;;=C92.20^^209^2346^85
 ;;^UTILITY(U,$J,358.3,47650,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47650,1,3,0)
 ;;=3^Chronic Myeloid Leukemia,BCR/ABL-Negative,Not in Remission
 ;;^UTILITY(U,$J,358.3,47650,1,4,0)
 ;;=4^C92.20
 ;;^UTILITY(U,$J,358.3,47650,2)
 ;;=^5001795
 ;;^UTILITY(U,$J,358.3,47651,0)
 ;;=C92.21^^209^2346^86
 ;;^UTILITY(U,$J,358.3,47651,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47651,1,3,0)
 ;;=3^Chronic Myeloid Leukemia,BCR/ABL-Negative,In Remission
 ;;^UTILITY(U,$J,358.3,47651,1,4,0)
 ;;=4^C92.21
 ;;^UTILITY(U,$J,358.3,47651,2)
 ;;=^5001796
 ;;^UTILITY(U,$J,358.3,47652,0)
 ;;=C92.22^^209^2346^87
 ;;^UTILITY(U,$J,358.3,47652,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47652,1,3,0)
 ;;=3^Chronic Myeloid Leukemia,BCR/ABL-Negative,In Relapse
 ;;^UTILITY(U,$J,358.3,47652,1,4,0)
 ;;=4^C92.22
 ;;^UTILITY(U,$J,358.3,47652,2)
 ;;=^5001797
 ;;^UTILITY(U,$J,358.3,47653,0)
 ;;=C92.30^^209^2346^371
 ;;^UTILITY(U,$J,358.3,47653,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47653,1,3,0)
 ;;=3^Myeloid Sarcoma,Not in Remission
 ;;^UTILITY(U,$J,358.3,47653,1,4,0)
 ;;=4^C92.30
 ;;^UTILITY(U,$J,358.3,47653,2)
 ;;=^5001798
 ;;^UTILITY(U,$J,358.3,47654,0)
 ;;=C92.31^^209^2346^370
 ;;^UTILITY(U,$J,358.3,47654,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47654,1,3,0)
 ;;=3^Myeloid Sarcoma,In Remission
 ;;^UTILITY(U,$J,358.3,47654,1,4,0)
 ;;=4^C92.31
 ;;^UTILITY(U,$J,358.3,47654,2)
 ;;=^5001799
 ;;^UTILITY(U,$J,358.3,47655,0)
 ;;=C92.32^^209^2346^369
 ;;^UTILITY(U,$J,358.3,47655,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47655,1,3,0)
 ;;=3^Myeloid Sarcoma,In Relapse
 ;;^UTILITY(U,$J,358.3,47655,1,4,0)
 ;;=4^C92.32
 ;;^UTILITY(U,$J,358.3,47655,2)
 ;;=^5001800
 ;;^UTILITY(U,$J,358.3,47656,0)
 ;;=C92.40^^209^2346^33
 ;;^UTILITY(U,$J,358.3,47656,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47656,1,3,0)
 ;;=3^Acute Promyelocytic Leukemia,Not in Remission
 ;;^UTILITY(U,$J,358.3,47656,1,4,0)
 ;;=4^C92.40
 ;;^UTILITY(U,$J,358.3,47656,2)
 ;;=^5001801
 ;;^UTILITY(U,$J,358.3,47657,0)
 ;;=C92.41^^209^2346^32
 ;;^UTILITY(U,$J,358.3,47657,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47657,1,3,0)
 ;;=3^Acute Promyelocytic Leukemia,In Remission
 ;;^UTILITY(U,$J,358.3,47657,1,4,0)
 ;;=4^C92.41
 ;;^UTILITY(U,$J,358.3,47657,2)
 ;;=^5001802
 ;;^UTILITY(U,$J,358.3,47658,0)
 ;;=C92.42^^209^2346^31
 ;;^UTILITY(U,$J,358.3,47658,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47658,1,3,0)
 ;;=3^Acute Promyelocytic Leukemia,In Relapse
 ;;^UTILITY(U,$J,358.3,47658,1,4,0)
 ;;=4^C92.42
 ;;^UTILITY(U,$J,358.3,47658,2)
 ;;=^5001803
 ;;^UTILITY(U,$J,358.3,47659,0)
 ;;=C92.50^^209^2346^27
 ;;^UTILITY(U,$J,358.3,47659,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47659,1,3,0)
 ;;=3^Acute Myelomonocytic Leukemia,Not in Remission
 ;;^UTILITY(U,$J,358.3,47659,1,4,0)
 ;;=4^C92.50
 ;;^UTILITY(U,$J,358.3,47659,2)
 ;;=^5001804
 ;;^UTILITY(U,$J,358.3,47660,0)
 ;;=C92.51^^209^2346^26
 ;;^UTILITY(U,$J,358.3,47660,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47660,1,3,0)
 ;;=3^Acute Myelomonocytic Leukemia,In Remission
 ;;^UTILITY(U,$J,358.3,47660,1,4,0)
 ;;=4^C92.51
 ;;^UTILITY(U,$J,358.3,47660,2)
 ;;=^5001805
 ;;^UTILITY(U,$J,358.3,47661,0)
 ;;=C92.52^^209^2346^25
 ;;^UTILITY(U,$J,358.3,47661,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47661,1,3,0)
 ;;=3^Acute Myelomonocytic Leukemia,In Relapse
 ;;^UTILITY(U,$J,358.3,47661,1,4,0)
 ;;=4^C92.52
 ;;^UTILITY(U,$J,358.3,47661,2)
 ;;=^5001806
 ;;^UTILITY(U,$J,358.3,47662,0)
 ;;=C92.60^^209^2346^19
