IBDEI0Y1 ; ; 12-AUG-2014
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;MAY 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,16884,0)
 ;;=96366^^109^1064^39^^^^1
 ;;^UTILITY(U,$J,358.3,16884,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,16884,1,1,0)
 ;;=1^96366
 ;;^UTILITY(U,$J,358.3,16884,1,3,0)
 ;;=3^Ther/Diag/Proph,IV Infus,Ea Addl Hr
 ;;^UTILITY(U,$J,358.3,16885,0)
 ;;=96372^^109^1064^34^^^^1
 ;;^UTILITY(U,$J,358.3,16885,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,16885,1,1,0)
 ;;=1^96372
 ;;^UTILITY(U,$J,358.3,16885,1,3,0)
 ;;=3^Ther/Diag/Proph IM/SQ injection
 ;;^UTILITY(U,$J,358.3,16886,0)
 ;;=96374^^109^1064^35^^^^1
 ;;^UTILITY(U,$J,358.3,16886,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,16886,1,1,0)
 ;;=1^96374
 ;;^UTILITY(U,$J,358.3,16886,1,3,0)
 ;;=3^Ther/Diag/Proph IV push, Init
 ;;^UTILITY(U,$J,358.3,16887,0)
 ;;=96375^^109^1064^36^^^^1
 ;;^UTILITY(U,$J,358.3,16887,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,16887,1,1,0)
 ;;=1^96375
 ;;^UTILITY(U,$J,358.3,16887,1,3,0)
 ;;=3^Ther/Diag/Proph IV push ea add seql,new drug
 ;;^UTILITY(U,$J,358.3,16888,0)
 ;;=96367^^109^1064^40^^^^1
 ;;^UTILITY(U,$J,358.3,16888,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,16888,1,1,0)
 ;;=1^96367
 ;;^UTILITY(U,$J,358.3,16888,1,3,0)
 ;;=3^Ther/Diag/Proph,IV Infusn,Ea add hr seql
 ;;^UTILITY(U,$J,358.3,16889,0)
 ;;=96368^^109^1064^37^^^^1
 ;;^UTILITY(U,$J,358.3,16889,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,16889,1,1,0)
 ;;=1^96368
 ;;^UTILITY(U,$J,358.3,16889,1,3,0)
 ;;=3^Ther/Diag/Proph IV Infus, Concurrent
 ;;^UTILITY(U,$J,358.3,16890,0)
 ;;=96446^^109^1064^6^^^^1
 ;;^UTILITY(U,$J,358.3,16890,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,16890,1,1,0)
 ;;=1^96446
 ;;^UTILITY(U,$J,358.3,16890,1,3,0)
 ;;=3^Chemo Admin,Peritoneal Cavity
 ;;^UTILITY(U,$J,358.3,16891,0)
 ;;=36415^^109^1064^30^^^^1
 ;;^UTILITY(U,$J,358.3,16891,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,16891,1,1,0)
 ;;=1^36415
 ;;^UTILITY(U,$J,358.3,16891,1,3,0)
 ;;=3^Routine Venipuncture
 ;;^UTILITY(U,$J,358.3,16892,0)
 ;;=36430^^109^1064^2^^^^1
 ;;^UTILITY(U,$J,358.3,16892,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,16892,1,1,0)
 ;;=1^36430
 ;;^UTILITY(U,$J,358.3,16892,1,3,0)
 ;;=3^Blood Transfusion Service
 ;;^UTILITY(U,$J,358.3,16893,0)
 ;;=96373^^109^1064^42^^^^1
 ;;^UTILITY(U,$J,358.3,16893,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,16893,1,1,0)
 ;;=1^96373
 ;;^UTILITY(U,$J,358.3,16893,1,3,0)
 ;;=3^Ther/Proph/Diag Inj,IA
 ;;^UTILITY(U,$J,358.3,16894,0)
 ;;=96379^^109^1064^41^^^^1
 ;;^UTILITY(U,$J,358.3,16894,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,16894,1,1,0)
 ;;=1^96379
 ;;^UTILITY(U,$J,358.3,16894,1,3,0)
 ;;=3^Ther/Prop/Diag Inj/Inf Proc
 ;;^UTILITY(U,$J,358.3,16895,0)
 ;;=36000^^109^1064^27^^^^1
 ;;^UTILITY(U,$J,358.3,16895,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,16895,1,1,0)
 ;;=1^36000
 ;;^UTILITY(U,$J,358.3,16895,1,3,0)
 ;;=3^Place Needle in Vein
 ;;^UTILITY(U,$J,358.3,16896,0)
 ;;=86950^^109^1064^26^^^^1
 ;;^UTILITY(U,$J,358.3,16896,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,16896,1,1,0)
 ;;=1^86950
 ;;^UTILITY(U,$J,358.3,16896,1,3,0)
 ;;=3^Leukacyte Transfusion
 ;;^UTILITY(U,$J,358.3,16897,0)
 ;;=90283^^109^1064^22^^^^1
 ;;^UTILITY(U,$J,358.3,16897,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,16897,1,1,0)
 ;;=1^90283
 ;;^UTILITY(U,$J,358.3,16897,1,3,0)
 ;;=3^Human IG IV
 ;;^UTILITY(U,$J,358.3,16898,0)
 ;;=96369^^109^1064^31^^^^1
 ;;^UTILITY(U,$J,358.3,16898,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,16898,1,1,0)
 ;;=1^96369
 ;;^UTILITY(U,$J,358.3,16898,1,3,0)
 ;;=3^SC Ther Infusion Up to 1 hr
 ;;^UTILITY(U,$J,358.3,16899,0)
 ;;=96370^^109^1064^32^^^^1
 ;;^UTILITY(U,$J,358.3,16899,1,0)
 ;;=^358.31IA^3^2