IBDEI388 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,54232,1,4,0)
 ;;=4^I13.11
 ;;^UTILITY(U,$J,358.3,54232,2)
 ;;=^5007069
 ;;^UTILITY(U,$J,358.3,54233,0)
 ;;=I13.2^^256^2763^5
 ;;^UTILITY(U,$J,358.3,54233,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54233,1,3,0)
 ;;=3^HTN Hrt & Chr Kdny Dis w/ Hrt Fail w/ Stg 5 Chr Kdny
 ;;^UTILITY(U,$J,358.3,54233,1,4,0)
 ;;=4^I13.2
 ;;^UTILITY(U,$J,358.3,54233,2)
 ;;=^5007070
 ;;^UTILITY(U,$J,358.3,54234,0)
 ;;=I48.91^^256^2763^1
 ;;^UTILITY(U,$J,358.3,54234,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54234,1,3,0)
 ;;=3^Atrial Fibrillation,Unspec
 ;;^UTILITY(U,$J,358.3,54234,1,4,0)
 ;;=4^I48.91
 ;;^UTILITY(U,$J,358.3,54234,2)
 ;;=^5007229
 ;;^UTILITY(U,$J,358.3,54235,0)
 ;;=I48.92^^256^2763^2
 ;;^UTILITY(U,$J,358.3,54235,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54235,1,3,0)
 ;;=3^Atrial Flutter,Unspec
 ;;^UTILITY(U,$J,358.3,54235,1,4,0)
 ;;=4^I48.92
 ;;^UTILITY(U,$J,358.3,54235,2)
 ;;=^5007230
 ;;^UTILITY(U,$J,358.3,54236,0)
 ;;=B07.9^^256^2764^288
 ;;^UTILITY(U,$J,358.3,54236,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54236,1,3,0)
 ;;=3^Viral Wart,Unspec
 ;;^UTILITY(U,$J,358.3,54236,1,4,0)
 ;;=4^B07.9
 ;;^UTILITY(U,$J,358.3,54236,2)
 ;;=^5000519
 ;;^UTILITY(U,$J,358.3,54237,0)
 ;;=A63.0^^256^2764^34
 ;;^UTILITY(U,$J,358.3,54237,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54237,1,3,0)
 ;;=3^Anogenital (Venereal) Warts
 ;;^UTILITY(U,$J,358.3,54237,1,4,0)
 ;;=4^A63.0
 ;;^UTILITY(U,$J,358.3,54237,2)
 ;;=^5000360
 ;;^UTILITY(U,$J,358.3,54238,0)
 ;;=B35.0^^256^2764^279
 ;;^UTILITY(U,$J,358.3,54238,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54238,1,3,0)
 ;;=3^Tinea Barbae and Tinea Capitis
 ;;^UTILITY(U,$J,358.3,54238,1,4,0)
 ;;=4^B35.0
 ;;^UTILITY(U,$J,358.3,54238,2)
 ;;=^5000604
 ;;^UTILITY(U,$J,358.3,54239,0)
 ;;=B35.1^^256^2764^284
 ;;^UTILITY(U,$J,358.3,54239,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54239,1,3,0)
 ;;=3^Tinea Unguium
 ;;^UTILITY(U,$J,358.3,54239,1,4,0)
 ;;=4^B35.1
 ;;^UTILITY(U,$J,358.3,54239,2)
 ;;=^119748
 ;;^UTILITY(U,$J,358.3,54240,0)
 ;;=B35.6^^256^2764^281
 ;;^UTILITY(U,$J,358.3,54240,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54240,1,3,0)
 ;;=3^Tinea Cruris
 ;;^UTILITY(U,$J,358.3,54240,1,4,0)
 ;;=4^B35.6
 ;;^UTILITY(U,$J,358.3,54240,2)
 ;;=^119711
 ;;^UTILITY(U,$J,358.3,54241,0)
 ;;=B35.3^^256^2764^283
 ;;^UTILITY(U,$J,358.3,54241,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54241,1,3,0)
 ;;=3^Tinea Pedis
 ;;^UTILITY(U,$J,358.3,54241,1,4,0)
 ;;=4^B35.3
 ;;^UTILITY(U,$J,358.3,54241,2)
 ;;=^119732
 ;;^UTILITY(U,$J,358.3,54242,0)
 ;;=B35.5^^256^2764^282
 ;;^UTILITY(U,$J,358.3,54242,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54242,1,3,0)
 ;;=3^Tinea Imbricata
 ;;^UTILITY(U,$J,358.3,54242,1,4,0)
 ;;=4^B35.5
 ;;^UTILITY(U,$J,358.3,54242,2)
 ;;=^119725
 ;;^UTILITY(U,$J,358.3,54243,0)
 ;;=B35.4^^256^2764^280
 ;;^UTILITY(U,$J,358.3,54243,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54243,1,3,0)
 ;;=3^Tinea Corporis
 ;;^UTILITY(U,$J,358.3,54243,1,4,0)
 ;;=4^B35.4
 ;;^UTILITY(U,$J,358.3,54243,2)
 ;;=^119704
 ;;^UTILITY(U,$J,358.3,54244,0)
 ;;=B35.8^^256^2764^137
 ;;^UTILITY(U,$J,358.3,54244,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54244,1,3,0)
 ;;=3^Dermatophytoses,Other
 ;;^UTILITY(U,$J,358.3,54244,1,4,0)
 ;;=4^B35.8
 ;;^UTILITY(U,$J,358.3,54244,2)
 ;;=^5000606
 ;;^UTILITY(U,$J,358.3,54245,0)
 ;;=B36.9^^256^2764^272
 ;;^UTILITY(U,$J,358.3,54245,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54245,1,3,0)
 ;;=3^Superficial Mycosis,Unspec
 ;;^UTILITY(U,$J,358.3,54245,1,4,0)
 ;;=4^B36.9
 ;;^UTILITY(U,$J,358.3,54245,2)
 ;;=^5000611
 ;;^UTILITY(U,$J,358.3,54246,0)
 ;;=D69.0^^256^2764^32