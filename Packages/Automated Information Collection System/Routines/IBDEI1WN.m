IBDEI1WN ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,31901,1,3,0)
 ;;=3^Anxiety Disorder NOS
 ;;^UTILITY(U,$J,358.3,31901,1,4,0)
 ;;=4^F41.9
 ;;^UTILITY(U,$J,358.3,31901,2)
 ;;=^5003567
 ;;^UTILITY(U,$J,358.3,31902,0)
 ;;=F40.02^^141^1475^2
 ;;^UTILITY(U,$J,358.3,31902,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31902,1,3,0)
 ;;=3^Agoraphobia
 ;;^UTILITY(U,$J,358.3,31902,1,4,0)
 ;;=4^F40.02
 ;;^UTILITY(U,$J,358.3,31902,2)
 ;;=^5003543
 ;;^UTILITY(U,$J,358.3,31903,0)
 ;;=F40.10^^141^1475^16
 ;;^UTILITY(U,$J,358.3,31903,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31903,1,3,0)
 ;;=3^Social Anxiety Disorder
 ;;^UTILITY(U,$J,358.3,31903,1,4,0)
 ;;=4^F40.10
 ;;^UTILITY(U,$J,358.3,31903,2)
 ;;=^5003544
 ;;^UTILITY(U,$J,358.3,31904,0)
 ;;=F40.218^^141^1475^4
 ;;^UTILITY(U,$J,358.3,31904,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31904,1,3,0)
 ;;=3^Animal Type Phobias
 ;;^UTILITY(U,$J,358.3,31904,1,4,0)
 ;;=4^F40.218
 ;;^UTILITY(U,$J,358.3,31904,2)
 ;;=^5003547
 ;;^UTILITY(U,$J,358.3,31905,0)
 ;;=F40.228^^141^1475^13
 ;;^UTILITY(U,$J,358.3,31905,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31905,1,3,0)
 ;;=3^Natural Environment Type Phobia
 ;;^UTILITY(U,$J,358.3,31905,1,4,0)
 ;;=4^F40.228
 ;;^UTILITY(U,$J,358.3,31905,2)
 ;;=^5003549
 ;;^UTILITY(U,$J,358.3,31906,0)
 ;;=F40.230^^141^1475^8
 ;;^UTILITY(U,$J,358.3,31906,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31906,1,3,0)
 ;;=3^Fear of Blood
 ;;^UTILITY(U,$J,358.3,31906,1,4,0)
 ;;=4^F40.230
 ;;^UTILITY(U,$J,358.3,31906,2)
 ;;=^5003550
 ;;^UTILITY(U,$J,358.3,31907,0)
 ;;=F40.231^^141^1475^9
 ;;^UTILITY(U,$J,358.3,31907,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31907,1,3,0)
 ;;=3^Fear of Injections & Transfusions
 ;;^UTILITY(U,$J,358.3,31907,1,4,0)
 ;;=4^F40.231
 ;;^UTILITY(U,$J,358.3,31907,2)
 ;;=^5003551
 ;;^UTILITY(U,$J,358.3,31908,0)
 ;;=F40.232^^141^1475^11
 ;;^UTILITY(U,$J,358.3,31908,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31908,1,3,0)
 ;;=3^Fear of Oth Medical Care
 ;;^UTILITY(U,$J,358.3,31908,1,4,0)
 ;;=4^F40.232
 ;;^UTILITY(U,$J,358.3,31908,2)
 ;;=^5003552
 ;;^UTILITY(U,$J,358.3,31909,0)
 ;;=F40.233^^141^1475^10
 ;;^UTILITY(U,$J,358.3,31909,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31909,1,3,0)
 ;;=3^Fear of Injury
 ;;^UTILITY(U,$J,358.3,31909,1,4,0)
 ;;=4^F40.233
 ;;^UTILITY(U,$J,358.3,31909,2)
 ;;=^5003553
 ;;^UTILITY(U,$J,358.3,31910,0)
 ;;=F40.240^^141^1475^7
 ;;^UTILITY(U,$J,358.3,31910,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31910,1,3,0)
 ;;=3^Claustrophobia
 ;;^UTILITY(U,$J,358.3,31910,1,4,0)
 ;;=4^F40.240
 ;;^UTILITY(U,$J,358.3,31910,2)
 ;;=^5003554
 ;;^UTILITY(U,$J,358.3,31911,0)
 ;;=F40.241^^141^1475^1
 ;;^UTILITY(U,$J,358.3,31911,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31911,1,3,0)
 ;;=3^Acrophobia
 ;;^UTILITY(U,$J,358.3,31911,1,4,0)
 ;;=4^F40.241
 ;;^UTILITY(U,$J,358.3,31911,2)
 ;;=^5003555
 ;;^UTILITY(U,$J,358.3,31912,0)
 ;;=F40.248^^141^1475^15
 ;;^UTILITY(U,$J,358.3,31912,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31912,1,3,0)
 ;;=3^Situational Type Phobia NEC
 ;;^UTILITY(U,$J,358.3,31912,1,4,0)
 ;;=4^F40.248
 ;;^UTILITY(U,$J,358.3,31912,2)
 ;;=^5003558
 ;;^UTILITY(U,$J,358.3,31913,0)
 ;;=F40.01^^141^1475^3
 ;;^UTILITY(U,$J,358.3,31913,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31913,1,3,0)
 ;;=3^Agoraphobia w/ Panic Disorder
 ;;^UTILITY(U,$J,358.3,31913,1,4,0)
 ;;=4^F40.01
 ;;^UTILITY(U,$J,358.3,31913,2)
 ;;=^331911
 ;;^UTILITY(U,$J,358.3,31914,0)
 ;;=F06.33^^141^1476^1
 ;;^UTILITY(U,$J,358.3,31914,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31914,1,3,0)
 ;;=3^Bipolar & Related Disorder d/t Medical Condition w/ Manic Features