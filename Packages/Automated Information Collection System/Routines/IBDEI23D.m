IBDEI23D ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,35100,0)
 ;;=L03.315^^163^1789^22
 ;;^UTILITY(U,$J,358.3,35100,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35100,1,3,0)
 ;;=3^Cellulitis of Perineum
 ;;^UTILITY(U,$J,358.3,35100,1,4,0)
 ;;=4^L03.315
 ;;^UTILITY(U,$J,358.3,35100,2)
 ;;=^5009051
 ;;^UTILITY(U,$J,358.3,35101,0)
 ;;=L03.316^^163^1789^24
 ;;^UTILITY(U,$J,358.3,35101,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35101,1,3,0)
 ;;=3^Cellulitis of Umbilicus
 ;;^UTILITY(U,$J,358.3,35101,1,4,0)
 ;;=4^L03.316
 ;;^UTILITY(U,$J,358.3,35101,2)
 ;;=^5009052
 ;;^UTILITY(U,$J,358.3,35102,0)
 ;;=L03.317^^163^1789^18
 ;;^UTILITY(U,$J,358.3,35102,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35102,1,3,0)
 ;;=3^Cellulitis of Buttock
 ;;^UTILITY(U,$J,358.3,35102,1,4,0)
 ;;=4^L03.317
 ;;^UTILITY(U,$J,358.3,35102,2)
 ;;=^5009053
 ;;^UTILITY(U,$J,358.3,35103,0)
 ;;=L03.319^^163^1789^23
 ;;^UTILITY(U,$J,358.3,35103,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35103,1,3,0)
 ;;=3^Cellulitis of Trunk,Unspec
 ;;^UTILITY(U,$J,358.3,35103,1,4,0)
 ;;=4^L03.319
 ;;^UTILITY(U,$J,358.3,35103,2)
 ;;=^5009054
 ;;^UTILITY(U,$J,358.3,35104,0)
 ;;=B00.9^^163^1790^21
 ;;^UTILITY(U,$J,358.3,35104,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35104,1,3,0)
 ;;=3^Herpes Simplex Infection NOS
 ;;^UTILITY(U,$J,358.3,35104,1,4,0)
 ;;=4^B00.9
 ;;^UTILITY(U,$J,358.3,35104,2)
 ;;=^5000480
 ;;^UTILITY(U,$J,358.3,35105,0)
 ;;=K59.00^^163^1790^11
 ;;^UTILITY(U,$J,358.3,35105,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35105,1,3,0)
 ;;=3^Constipation,Unspec
 ;;^UTILITY(U,$J,358.3,35105,1,4,0)
 ;;=4^K59.00
 ;;^UTILITY(U,$J,358.3,35105,2)
 ;;=^323537
 ;;^UTILITY(U,$J,358.3,35106,0)
 ;;=R42.^^163^1790^13
 ;;^UTILITY(U,$J,358.3,35106,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35106,1,3,0)
 ;;=3^Dizziness and Giddiness
 ;;^UTILITY(U,$J,358.3,35106,1,4,0)
 ;;=4^R42.
 ;;^UTILITY(U,$J,358.3,35106,2)
 ;;=^5019450
 ;;^UTILITY(U,$J,358.3,35107,0)
 ;;=G47.00^^163^1790^22
 ;;^UTILITY(U,$J,358.3,35107,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35107,1,3,0)
 ;;=3^Insomnia,Unspec
 ;;^UTILITY(U,$J,358.3,35107,1,4,0)
 ;;=4^G47.00
 ;;^UTILITY(U,$J,358.3,35107,2)
 ;;=^332924
 ;;^UTILITY(U,$J,358.3,35108,0)
 ;;=G47.30^^163^1790^33
 ;;^UTILITY(U,$J,358.3,35108,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35108,1,3,0)
 ;;=3^Sleep Apnea,Unspec
 ;;^UTILITY(U,$J,358.3,35108,1,4,0)
 ;;=4^G47.30
 ;;^UTILITY(U,$J,358.3,35108,2)
 ;;=^5003977
 ;;^UTILITY(U,$J,358.3,35109,0)
 ;;=R50.9^^163^1790^19
 ;;^UTILITY(U,$J,358.3,35109,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35109,1,3,0)
 ;;=3^Fever,Unspec
 ;;^UTILITY(U,$J,358.3,35109,1,4,0)
 ;;=4^R50.9
 ;;^UTILITY(U,$J,358.3,35109,2)
 ;;=^5019512
 ;;^UTILITY(U,$J,358.3,35110,0)
 ;;=R50.82^^163^1790^28
 ;;^UTILITY(U,$J,358.3,35110,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35110,1,3,0)
 ;;=3^Postprocedural Fever
 ;;^UTILITY(U,$J,358.3,35110,1,4,0)
 ;;=4^R50.82
 ;;^UTILITY(U,$J,358.3,35110,2)
 ;;=^5019509
 ;;^UTILITY(U,$J,358.3,35111,0)
 ;;=R50.83^^163^1790^29
 ;;^UTILITY(U,$J,358.3,35111,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35111,1,3,0)
 ;;=3^Postvaccination Fever
 ;;^UTILITY(U,$J,358.3,35111,1,4,0)
 ;;=4^R50.83
 ;;^UTILITY(U,$J,358.3,35111,2)
 ;;=^5019510
 ;;^UTILITY(U,$J,358.3,35112,0)
 ;;=R68.83^^163^1790^10
 ;;^UTILITY(U,$J,358.3,35112,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35112,1,3,0)
 ;;=3^Chills w/o Fever
 ;;^UTILITY(U,$J,358.3,35112,1,4,0)
 ;;=4^R68.83
 ;;^UTILITY(U,$J,358.3,35112,2)
 ;;=^5019555
 ;;^UTILITY(U,$J,358.3,35113,0)
 ;;=R53.81^^163^1790^23
 ;;^UTILITY(U,$J,358.3,35113,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35113,1,3,0)
 ;;=3^Malaise NOS