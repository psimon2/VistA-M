IBDEI056 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,1744,1,3,0)
 ;;=3^Subq Remove Sgl/Dual Pulse Gen
 ;;^UTILITY(U,$J,358.3,1745,0)
 ;;=33244^^17^169^64^^^^1
 ;;^UTILITY(U,$J,358.3,1745,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,1745,1,2,0)
 ;;=2^33244
 ;;^UTILITY(U,$J,358.3,1745,1,3,0)
 ;;=3^Transv Remove Sgl/Dual Elec
 ;;^UTILITY(U,$J,358.3,1746,0)
 ;;=33249^^17^169^16^^^^1
 ;;^UTILITY(U,$J,358.3,1746,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,1746,1,2,0)
 ;;=2^33249
 ;;^UTILITY(U,$J,358.3,1746,1,3,0)
 ;;=3^Ins/Reposit Lead, Insert Pulse Gen
 ;;^UTILITY(U,$J,358.3,1747,0)
 ;;=93285^^17^169^13^^^^1
 ;;^UTILITY(U,$J,358.3,1747,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,1747,1,2,0)
 ;;=2^93285
 ;;^UTILITY(U,$J,358.3,1747,1,3,0)
 ;;=3^ILR Device Eval Progr
 ;;^UTILITY(U,$J,358.3,1748,0)
 ;;=93291^^17^169^15^^^^1
 ;;^UTILITY(U,$J,358.3,1748,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,1748,1,2,0)
 ;;=2^93291
 ;;^UTILITY(U,$J,358.3,1748,1,3,0)
 ;;=3^ILR Device Interrogate
 ;;^UTILITY(U,$J,358.3,1749,0)
 ;;=93294^^17^169^31^^^^1
 ;;^UTILITY(U,$J,358.3,1749,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,1749,1,2,0)
 ;;=2^93294
 ;;^UTILITY(U,$J,358.3,1749,1,3,0)
 ;;=3^PM Device Interrogate Remote
 ;;^UTILITY(U,$J,358.3,1750,0)
 ;;=93280^^17^169^32^^^^1
 ;;^UTILITY(U,$J,358.3,1750,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,1750,1,2,0)
 ;;=2^93280
 ;;^UTILITY(U,$J,358.3,1750,1,3,0)
 ;;=3^PM Device Progr Eval,Dual
 ;;^UTILITY(U,$J,358.3,1751,0)
 ;;=93288^^17^169^30^^^^1
 ;;^UTILITY(U,$J,358.3,1751,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,1751,1,2,0)
 ;;=2^93288
 ;;^UTILITY(U,$J,358.3,1751,1,3,0)
 ;;=3^PM Device Eval in Person
 ;;^UTILITY(U,$J,358.3,1752,0)
 ;;=93279^^17^169^34^^^^1
 ;;^UTILITY(U,$J,358.3,1752,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,1752,1,2,0)
 ;;=2^93279
 ;;^UTILITY(U,$J,358.3,1752,1,3,0)
 ;;=3^PM Device Progr Eval,Sngl
 ;;^UTILITY(U,$J,358.3,1753,0)
 ;;=93282^^17^169^9^^^^1
 ;;^UTILITY(U,$J,358.3,1753,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,1753,1,2,0)
 ;;=2^93282
 ;;^UTILITY(U,$J,358.3,1753,1,3,0)
 ;;=3^ICD Device Prog Eval,1 Sngl
 ;;^UTILITY(U,$J,358.3,1754,0)
 ;;=93289^^17^169^7^^^^1
 ;;^UTILITY(U,$J,358.3,1754,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,1754,1,2,0)
 ;;=2^93289
 ;;^UTILITY(U,$J,358.3,1754,1,3,0)
 ;;=3^ICD Device Interrogatate
 ;;^UTILITY(U,$J,358.3,1755,0)
 ;;=93292^^17^169^66^^^^1
 ;;^UTILITY(U,$J,358.3,1755,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,1755,1,2,0)
 ;;=2^93292
 ;;^UTILITY(U,$J,358.3,1755,1,3,0)
 ;;=3^WCD Device Interrogate
 ;;^UTILITY(U,$J,358.3,1756,0)
 ;;=93295^^17^169^8^^^^1
 ;;^UTILITY(U,$J,358.3,1756,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,1756,1,2,0)
 ;;=2^93295
 ;;^UTILITY(U,$J,358.3,1756,1,3,0)
 ;;=3^ICD Device Interrogate Remote
 ;;^UTILITY(U,$J,358.3,1757,0)
 ;;=93283^^17^169^10^^^^1
 ;;^UTILITY(U,$J,358.3,1757,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,1757,1,2,0)
 ;;=2^93283
 ;;^UTILITY(U,$J,358.3,1757,1,3,0)
 ;;=3^ICD Device Progr Eval,Dual
 ;;^UTILITY(U,$J,358.3,1758,0)
 ;;=93284^^17^169^11^^^^1
 ;;^UTILITY(U,$J,358.3,1758,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,1758,1,2,0)
 ;;=2^93284
 ;;^UTILITY(U,$J,358.3,1758,1,3,0)
 ;;=3^ICD Device Progr Eval,Multi
 ;;^UTILITY(U,$J,358.3,1759,0)
 ;;=93281^^17^169^33^^^^1
 ;;^UTILITY(U,$J,358.3,1759,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,1759,1,2,0)
 ;;=2^93281
 ;;^UTILITY(U,$J,358.3,1759,1,3,0)
 ;;=3^PM Device Progr Eval,Multi
 ;;^UTILITY(U,$J,358.3,1760,0)
 ;;=33227^^17^169^50^^^^1
 ;;^UTILITY(U,$J,358.3,1760,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,1760,1,2,0)
 ;;=2^33227
