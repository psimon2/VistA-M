IBDEI15Z ; ; 12-AUG-2014
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;MAY 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,20847,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,20847,1,4,0)
 ;;=4^E819.0
 ;;^UTILITY(U,$J,358.3,20847,1,5,0)
 ;;=5^Traffic Accident,Driver
 ;;^UTILITY(U,$J,358.3,20847,2)
 ;;=^294215
 ;;^UTILITY(U,$J,358.3,20848,0)
 ;;=E819.1^^131^1299^20
 ;;^UTILITY(U,$J,358.3,20848,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,20848,1,4,0)
 ;;=4^E819.1
 ;;^UTILITY(U,$J,358.3,20848,1,5,0)
 ;;=5^Traffic Accident,Passenger
 ;;^UTILITY(U,$J,358.3,20848,2)
 ;;=^294216
 ;;^UTILITY(U,$J,358.3,20849,0)
 ;;=E880.1^^131^1299^2
 ;;^UTILITY(U,$J,358.3,20849,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,20849,1,4,0)
 ;;=4^E880.1
 ;;^UTILITY(U,$J,358.3,20849,1,5,0)
 ;;=5^Fall On/From Sidewalk/Curb
 ;;^UTILITY(U,$J,358.3,20849,2)
 ;;=^303367
 ;;^UTILITY(U,$J,358.3,20850,0)
 ;;=E881.0^^131^1299^9
 ;;^UTILITY(U,$J,358.3,20850,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,20850,1,4,0)
 ;;=4^E881.0
 ;;^UTILITY(U,$J,358.3,20850,1,5,0)
 ;;=5^Fall from Ladder
 ;;^UTILITY(U,$J,358.3,20850,2)
 ;;=^294644
 ;;^UTILITY(U,$J,358.3,20851,0)
 ;;=E882.^^131^1299^5
 ;;^UTILITY(U,$J,358.3,20851,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,20851,1,4,0)
 ;;=4^E882.
 ;;^UTILITY(U,$J,358.3,20851,1,5,0)
 ;;=5^Fall from Building
 ;;^UTILITY(U,$J,358.3,20851,2)
 ;;=^294646
 ;;^UTILITY(U,$J,358.3,20852,0)
 ;;=E883.9^^131^1299^17
 ;;^UTILITY(U,$J,358.3,20852,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,20852,1,4,0)
 ;;=4^E883.9
 ;;^UTILITY(U,$J,358.3,20852,1,5,0)
 ;;=5^Fall into Hole
 ;;^UTILITY(U,$J,358.3,20852,2)
 ;;=^294650
 ;;^UTILITY(U,$J,358.3,20853,0)
 ;;=E884.2^^131^1299^6
 ;;^UTILITY(U,$J,358.3,20853,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,20853,1,4,0)
 ;;=4^E884.2
 ;;^UTILITY(U,$J,358.3,20853,1,5,0)
 ;;=5^Fall from Chair
 ;;^UTILITY(U,$J,358.3,20853,2)
 ;;=^294653
 ;;^UTILITY(U,$J,358.3,20854,0)
 ;;=E884.3^^131^1299^15
 ;;^UTILITY(U,$J,358.3,20854,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,20854,1,4,0)
 ;;=4^E884.3
 ;;^UTILITY(U,$J,358.3,20854,1,5,0)
 ;;=5^Fall from Wheelchair
 ;;^UTILITY(U,$J,358.3,20854,2)
 ;;=^303368
 ;;^UTILITY(U,$J,358.3,20855,0)
 ;;=E884.4^^131^1299^4
 ;;^UTILITY(U,$J,358.3,20855,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,20855,1,4,0)
 ;;=4^E884.4
 ;;^UTILITY(U,$J,358.3,20855,1,5,0)
 ;;=5^Fall from Bed
 ;;^UTILITY(U,$J,358.3,20855,2)
 ;;=^303369
 ;;^UTILITY(U,$J,358.3,20856,0)
 ;;=E884.6^^131^1299^8
 ;;^UTILITY(U,$J,358.3,20856,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,20856,1,4,0)
 ;;=4^E884.6
 ;;^UTILITY(U,$J,358.3,20856,1,5,0)
 ;;=5^Fall from Commode
 ;;^UTILITY(U,$J,358.3,20856,2)
 ;;=^303371
 ;;^UTILITY(U,$J,358.3,20857,0)
 ;;=E884.9^^131^1299^3
 ;;^UTILITY(U,$J,358.3,20857,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,20857,1,4,0)
 ;;=4^E884.9
 ;;^UTILITY(U,$J,358.3,20857,1,5,0)
 ;;=5^Fall from 1 Level to Another
 ;;^UTILITY(U,$J,358.3,20857,2)
 ;;=^294654
 ;;^UTILITY(U,$J,358.3,20858,0)
 ;;=E885.1^^131^1299^10
 ;;^UTILITY(U,$J,358.3,20858,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,20858,1,4,0)
 ;;=4^E885.1
 ;;^UTILITY(U,$J,358.3,20858,1,5,0)
 ;;=5^Fall from Roller Skates
 ;;^UTILITY(U,$J,358.3,20858,2)
 ;;=^322100
 ;;^UTILITY(U,$J,358.3,20859,0)
 ;;=E885.2^^131^1299^11
 ;;^UTILITY(U,$J,358.3,20859,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,20859,1,4,0)
 ;;=4^E885.2
 ;;^UTILITY(U,$J,358.3,20859,1,5,0)
 ;;=5^Fall from Skateboard
 ;;^UTILITY(U,$J,358.3,20859,2)
 ;;=^322102
 ;;^UTILITY(U,$J,358.3,20860,0)
 ;;=E885.3^^131^1299^12
 ;;^UTILITY(U,$J,358.3,20860,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,20860,1,4,0)
 ;;=4^E885.3
 ;;^UTILITY(U,$J,358.3,20860,1,5,0)
 ;;=5^Fall from Skis