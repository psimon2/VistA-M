IBDEI0W1 ; ; 12-AUG-2014
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;MAY 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,15846,0)
 ;;=95808^^99^978^2^^^^1
 ;;^UTILITY(U,$J,358.3,15846,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,15846,1,2,0)
 ;;=2^95808
 ;;^UTILITY(U,$J,358.3,15846,1,3,0)
 ;;=3^POLYSOMNOGRAPHY, 1-3
 ;;^UTILITY(U,$J,358.3,15847,0)
 ;;=95860^^99^979^13^^^^1
 ;;^UTILITY(U,$J,358.3,15847,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,15847,1,2,0)
 ;;=2^95860
 ;;^UTILITY(U,$J,358.3,15847,1,3,0)
 ;;=3^EMG, one extremity
 ;;^UTILITY(U,$J,358.3,15848,0)
 ;;=95861^^99^979^2^^^^1
 ;;^UTILITY(U,$J,358.3,15848,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,15848,1,2,0)
 ;;=2^95861
 ;;^UTILITY(U,$J,358.3,15848,1,3,0)
 ;;=3^EMG, 2 extremities
 ;;^UTILITY(U,$J,358.3,15849,0)
 ;;=95863^^99^979^3^^^^1
 ;;^UTILITY(U,$J,358.3,15849,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,15849,1,2,0)
 ;;=2^95863
 ;;^UTILITY(U,$J,358.3,15849,1,3,0)
 ;;=3^EMG, 3 extremities
 ;;^UTILITY(U,$J,358.3,15850,0)
 ;;=95864^^99^979^4^^^^1
 ;;^UTILITY(U,$J,358.3,15850,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,15850,1,2,0)
 ;;=2^95864
 ;;^UTILITY(U,$J,358.3,15850,1,3,0)
 ;;=3^EMG, 4 extremities
 ;;^UTILITY(U,$J,358.3,15851,0)
 ;;=95869^^99^979^12^^^^1
 ;;^UTILITY(U,$J,358.3,15851,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,15851,1,2,0)
 ;;=2^95869
 ;;^UTILITY(U,$J,358.3,15851,1,3,0)
 ;;=3^EMG, Thoracic Paraspinal Muscles
 ;;^UTILITY(U,$J,358.3,15852,0)
 ;;=95867^^99^979^7^^^^1
 ;;^UTILITY(U,$J,358.3,15852,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,15852,1,2,0)
 ;;=2^95867
 ;;^UTILITY(U,$J,358.3,15852,1,3,0)
 ;;=3^EMG, Cranial Nerve supplied Muscles, unilat
 ;;^UTILITY(U,$J,358.3,15853,0)
 ;;=51785^^99^979^5^^^^1
 ;;^UTILITY(U,$J,358.3,15853,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,15853,1,2,0)
 ;;=2^51785
 ;;^UTILITY(U,$J,358.3,15853,1,3,0)
 ;;=3^EMG, Anal/Urinary Muscle
 ;;^UTILITY(U,$J,358.3,15854,0)
 ;;=51792^^99^979^28^^^^1
 ;;^UTILITY(U,$J,358.3,15854,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,15854,1,2,0)
 ;;=2^51792
 ;;^UTILITY(U,$J,358.3,15854,1,3,0)
 ;;=3^Urinary Reflex Study
 ;;^UTILITY(U,$J,358.3,15855,0)
 ;;=95865^^99^979^9^^^^1
 ;;^UTILITY(U,$J,358.3,15855,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,15855,1,2,0)
 ;;=2^95865
 ;;^UTILITY(U,$J,358.3,15855,1,3,0)
 ;;=3^EMG, Larynx
 ;;^UTILITY(U,$J,358.3,15856,0)
 ;;=95866^^99^979^8^^^^1
 ;;^UTILITY(U,$J,358.3,15856,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,15856,1,2,0)
 ;;=2^95866
 ;;^UTILITY(U,$J,358.3,15856,1,3,0)
 ;;=3^EMG, Hemidiaphragm
 ;;^UTILITY(U,$J,358.3,15857,0)
 ;;=95870^^99^979^10^^^^1
 ;;^UTILITY(U,$J,358.3,15857,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,15857,1,2,0)
 ;;=2^95870
 ;;^UTILITY(U,$J,358.3,15857,1,3,0)
 ;;=3^EMG, Limited-One extremity
 ;;^UTILITY(U,$J,358.3,15858,0)
 ;;=95872^^99^979^11^^^^1
 ;;^UTILITY(U,$J,358.3,15858,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,15858,1,2,0)
 ;;=2^95872
 ;;^UTILITY(U,$J,358.3,15858,1,3,0)
 ;;=3^EMG, Single Fiber Electrode
 ;;^UTILITY(U,$J,358.3,15859,0)
 ;;=95873^^99^979^17^^^^1
 ;;^UTILITY(U,$J,358.3,15859,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,15859,1,2,0)
 ;;=2^95873
 ;;^UTILITY(U,$J,358.3,15859,1,3,0)
 ;;=3^Elec Stim,Guide chemodenervation
 ;;^UTILITY(U,$J,358.3,15860,0)
 ;;=95874^^99^979^27^^^^1
 ;;^UTILITY(U,$J,358.3,15860,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,15860,1,2,0)
 ;;=2^95874
 ;;^UTILITY(U,$J,358.3,15860,1,3,0)
 ;;=3^Needle EMG,Guide Chemodenervation
 ;;^UTILITY(U,$J,358.3,15861,0)
 ;;=95875^^99^979^18^^^^1
 ;;^UTILITY(U,$J,358.3,15861,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,15861,1,2,0)
 ;;=2^95875
 ;;^UTILITY(U,$J,358.3,15861,1,3,0)
 ;;=3^Ischemic limb exercise test