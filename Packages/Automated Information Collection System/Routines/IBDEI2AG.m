IBDEI2AG ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,38433,1,2,0)
 ;;=2^Neg Press Wound Tx, > 50 Cm
 ;;^UTILITY(U,$J,358.3,38433,1,3,0)
 ;;=3^97606
 ;;^UTILITY(U,$J,358.3,38434,0)
 ;;=97602^^179^1962^8^^^^1
 ;;^UTILITY(U,$J,358.3,38434,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,38434,1,2,0)
 ;;=2^Remove Divit. Tissue w/o Anesth
 ;;^UTILITY(U,$J,358.3,38434,1,3,0)
 ;;=3^97602
 ;;^UTILITY(U,$J,358.3,38435,0)
 ;;=G0281^^179^1962^4^^^^1
 ;;^UTILITY(U,$J,358.3,38435,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,38435,1,2,0)
 ;;=2^Electrical Stim,Wound Care
 ;;^UTILITY(U,$J,358.3,38435,1,3,0)
 ;;=3^G0281
 ;;^UTILITY(U,$J,358.3,38436,0)
 ;;=G0283^^179^1962^3^^^^1
 ;;^UTILITY(U,$J,358.3,38436,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,38436,1,2,0)
 ;;=2^Electrical Stim,Oth than Wnd Care
 ;;^UTILITY(U,$J,358.3,38436,1,3,0)
 ;;=3^G0283
 ;;^UTILITY(U,$J,358.3,38437,0)
 ;;=G0329^^179^1962^5^^^^1
 ;;^UTILITY(U,$J,358.3,38437,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,38437,1,2,0)
 ;;=2^Electromagnetic Therapy,Wound Care
 ;;^UTILITY(U,$J,358.3,38437,1,3,0)
 ;;=3^G0329
 ;;^UTILITY(U,$J,358.3,38438,0)
 ;;=97610^^179^1962^9^^^^1
 ;;^UTILITY(U,$J,358.3,38438,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,38438,1,2,0)
 ;;=2^US LF Non-Contact Non-Therm,Wnd Assess
 ;;^UTILITY(U,$J,358.3,38438,1,3,0)
 ;;=3^97610
 ;;^UTILITY(U,$J,358.3,38439,0)
 ;;=99070^^179^1963^1^^^^1
 ;;^UTILITY(U,$J,358.3,38439,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,38439,1,2,0)
 ;;=2^SPECIAL SUPPLIES
 ;;^UTILITY(U,$J,358.3,38439,1,3,0)
 ;;=3^99070
 ;;^UTILITY(U,$J,358.3,38440,0)
 ;;=97039^^179^1963^3^^^^1
 ;;^UTILITY(U,$J,358.3,38440,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,38440,1,2,0)
 ;;=2^UNLISTED PT MODALITY
 ;;^UTILITY(U,$J,358.3,38440,1,3,0)
 ;;=3^97039
 ;;^UTILITY(U,$J,358.3,38441,0)
 ;;=97799^^179^1963^2^^^^1
 ;;^UTILITY(U,$J,358.3,38441,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,38441,1,2,0)
 ;;=2^UNLISTED PROCEDURE
 ;;^UTILITY(U,$J,358.3,38441,1,3,0)
 ;;=3^97799
 ;;^UTILITY(U,$J,358.3,38442,0)
 ;;=95860^^179^1964^2^^^^1
 ;;^UTILITY(U,$J,358.3,38442,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,38442,1,2,0)
 ;;=2^EMG 1 Limb
 ;;^UTILITY(U,$J,358.3,38442,1,3,0)
 ;;=3^95860
 ;;^UTILITY(U,$J,358.3,38443,0)
 ;;=95863^^179^1964^4^^^^1
 ;;^UTILITY(U,$J,358.3,38443,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,38443,1,2,0)
 ;;=2^EMG 3 Limbs
 ;;^UTILITY(U,$J,358.3,38443,1,3,0)
 ;;=3^95863
 ;;^UTILITY(U,$J,358.3,38444,0)
 ;;=95864^^179^1964^5^^^^1
 ;;^UTILITY(U,$J,358.3,38444,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,38444,1,2,0)
 ;;=2^EMG 4 Limbs
 ;;^UTILITY(U,$J,358.3,38444,1,3,0)
 ;;=3^95864
 ;;^UTILITY(U,$J,358.3,38445,0)
 ;;=95867^^179^1964^6^^^^1
 ;;^UTILITY(U,$J,358.3,38445,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,38445,1,2,0)
 ;;=2^EMG Cran Ner Mus-Unilat
 ;;^UTILITY(U,$J,358.3,38445,1,3,0)
 ;;=3^95867
 ;;^UTILITY(U,$J,358.3,38446,0)
 ;;=95868^^179^1964^7^^^^1
 ;;^UTILITY(U,$J,358.3,38446,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,38446,1,2,0)
 ;;=2^EMG Head or Neck
 ;;^UTILITY(U,$J,358.3,38446,1,3,0)
 ;;=3^95868
 ;;^UTILITY(U,$J,358.3,38447,0)
 ;;=95870^^179^1964^8^^^^1
 ;;^UTILITY(U,$J,358.3,38447,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,38447,1,2,0)
 ;;=2^EMG Nonparaspinal
 ;;^UTILITY(U,$J,358.3,38447,1,3,0)
 ;;=3^95870
 ;;^UTILITY(U,$J,358.3,38448,0)
 ;;=95861^^179^1964^3^^^^1
 ;;^UTILITY(U,$J,358.3,38448,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,38448,1,2,0)
 ;;=2^EMG 2 Limbs
 ;;^UTILITY(U,$J,358.3,38448,1,3,0)
 ;;=3^95861
 ;;^UTILITY(U,$J,358.3,38449,0)
 ;;=95885^^179^1964^17^^^^1
 ;;^UTILITY(U,$J,358.3,38449,1,0)
 ;;=^358.31IA^3^2
