IBDEI23C ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,35086,1,4,0)
 ;;=4^L02.213
 ;;^UTILITY(U,$J,358.3,35086,2)
 ;;=^5008952
 ;;^UTILITY(U,$J,358.3,35087,0)
 ;;=L02.214^^163^1789^5
 ;;^UTILITY(U,$J,358.3,35087,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35087,1,3,0)
 ;;=3^Abscess of Groin
 ;;^UTILITY(U,$J,358.3,35087,1,4,0)
 ;;=4^L02.214
 ;;^UTILITY(U,$J,358.3,35087,2)
 ;;=^5008953
 ;;^UTILITY(U,$J,358.3,35088,0)
 ;;=L02.215^^163^1789^7
 ;;^UTILITY(U,$J,358.3,35088,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35088,1,3,0)
 ;;=3^Abscess of Perineum
 ;;^UTILITY(U,$J,358.3,35088,1,4,0)
 ;;=4^L02.215
 ;;^UTILITY(U,$J,358.3,35088,2)
 ;;=^5008954
 ;;^UTILITY(U,$J,358.3,35089,0)
 ;;=L02.216^^163^1789^9
 ;;^UTILITY(U,$J,358.3,35089,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35089,1,3,0)
 ;;=3^Abscess of Umbilicus
 ;;^UTILITY(U,$J,358.3,35089,1,4,0)
 ;;=4^L02.216
 ;;^UTILITY(U,$J,358.3,35089,2)
 ;;=^5008955
 ;;^UTILITY(U,$J,358.3,35090,0)
 ;;=L02.219^^163^1789^8
 ;;^UTILITY(U,$J,358.3,35090,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35090,1,3,0)
 ;;=3^Abscess of Trunk,Unspec
 ;;^UTILITY(U,$J,358.3,35090,1,4,0)
 ;;=4^L02.219
 ;;^UTILITY(U,$J,358.3,35090,2)
 ;;=^5008956
 ;;^UTILITY(U,$J,358.3,35091,0)
 ;;=L02.31^^163^1789^3
 ;;^UTILITY(U,$J,358.3,35091,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35091,1,3,0)
 ;;=3^Abscess of Buttock
 ;;^UTILITY(U,$J,358.3,35091,1,4,0)
 ;;=4^L02.31
 ;;^UTILITY(U,$J,358.3,35091,2)
 ;;=^5008971
 ;;^UTILITY(U,$J,358.3,35092,0)
 ;;=L02.32^^163^1789^27
 ;;^UTILITY(U,$J,358.3,35092,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35092,1,3,0)
 ;;=3^Furuncle of Buttock
 ;;^UTILITY(U,$J,358.3,35092,1,4,0)
 ;;=4^L02.32
 ;;^UTILITY(U,$J,358.3,35092,2)
 ;;=^5008972
 ;;^UTILITY(U,$J,358.3,35093,0)
 ;;=L02.33^^163^1789^10
 ;;^UTILITY(U,$J,358.3,35093,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35093,1,3,0)
 ;;=3^Carbuncle of Buttock
 ;;^UTILITY(U,$J,358.3,35093,1,4,0)
 ;;=4^L02.33
 ;;^UTILITY(U,$J,358.3,35093,2)
 ;;=^5008973
 ;;^UTILITY(U,$J,358.3,35094,0)
 ;;=L03.212^^163^1789^30
 ;;^UTILITY(U,$J,358.3,35094,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35094,1,3,0)
 ;;=3^Lymphagnitis of Face,Acute
 ;;^UTILITY(U,$J,358.3,35094,1,4,0)
 ;;=4^L03.212
 ;;^UTILITY(U,$J,358.3,35094,2)
 ;;=^5009044
 ;;^UTILITY(U,$J,358.3,35095,0)
 ;;=L03.211^^163^1789^20
 ;;^UTILITY(U,$J,358.3,35095,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35095,1,3,0)
 ;;=3^Cellulitis of Face
 ;;^UTILITY(U,$J,358.3,35095,1,4,0)
 ;;=4^L03.211
 ;;^UTILITY(U,$J,358.3,35095,2)
 ;;=^5009043
 ;;^UTILITY(U,$J,358.3,35096,0)
 ;;=L03.311^^163^1789^16
 ;;^UTILITY(U,$J,358.3,35096,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35096,1,3,0)
 ;;=3^Cellulitis of Abdominal Wall
 ;;^UTILITY(U,$J,358.3,35096,1,4,0)
 ;;=4^L03.311
 ;;^UTILITY(U,$J,358.3,35096,2)
 ;;=^5009047
 ;;^UTILITY(U,$J,358.3,35097,0)
 ;;=L03.312^^163^1789^17
 ;;^UTILITY(U,$J,358.3,35097,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35097,1,3,0)
 ;;=3^Cellulitis of Back (except buttock)
 ;;^UTILITY(U,$J,358.3,35097,1,4,0)
 ;;=4^L03.312
 ;;^UTILITY(U,$J,358.3,35097,2)
 ;;=^5009048
 ;;^UTILITY(U,$J,358.3,35098,0)
 ;;=L03.313^^163^1789^19
 ;;^UTILITY(U,$J,358.3,35098,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35098,1,3,0)
 ;;=3^Cellulitis of Chest Wall
 ;;^UTILITY(U,$J,358.3,35098,1,4,0)
 ;;=4^L03.313
 ;;^UTILITY(U,$J,358.3,35098,2)
 ;;=^5009049
 ;;^UTILITY(U,$J,358.3,35099,0)
 ;;=L03.314^^163^1789^21
 ;;^UTILITY(U,$J,358.3,35099,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35099,1,3,0)
 ;;=3^Cellulitis of Groin
 ;;^UTILITY(U,$J,358.3,35099,1,4,0)
 ;;=4^L03.314
 ;;^UTILITY(U,$J,358.3,35099,2)
 ;;=^5009050
