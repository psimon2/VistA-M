IBDEI2KR ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,43182,1,4,0)
 ;;=4^F10.10
 ;;^UTILITY(U,$J,358.3,43182,2)
 ;;=^5003068
 ;;^UTILITY(U,$J,358.3,43183,0)
 ;;=R47.01^^195^2172^6
 ;;^UTILITY(U,$J,358.3,43183,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43183,1,3,0)
 ;;=3^Aphasia
 ;;^UTILITY(U,$J,358.3,43183,1,4,0)
 ;;=4^R47.01
 ;;^UTILITY(U,$J,358.3,43183,2)
 ;;=^5019488
 ;;^UTILITY(U,$J,358.3,43184,0)
 ;;=F32.9^^195^2172^24
 ;;^UTILITY(U,$J,358.3,43184,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43184,1,3,0)
 ;;=3^Major depressive disorder, single episode, unspecified
 ;;^UTILITY(U,$J,358.3,43184,1,4,0)
 ;;=4^F32.9
 ;;^UTILITY(U,$J,358.3,43184,2)
 ;;=^5003528
 ;;^UTILITY(U,$J,358.3,43185,0)
 ;;=R26.2^^195^2172^15
 ;;^UTILITY(U,$J,358.3,43185,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43185,1,3,0)
 ;;=3^Difficulty in walking, not elsewhere classified
 ;;^UTILITY(U,$J,358.3,43185,1,4,0)
 ;;=4^R26.2
 ;;^UTILITY(U,$J,358.3,43185,2)
 ;;=^5019306
 ;;^UTILITY(U,$J,358.3,43186,0)
 ;;=R43.0^^195^2172^5
 ;;^UTILITY(U,$J,358.3,43186,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43186,1,3,0)
 ;;=3^Anosmia
 ;;^UTILITY(U,$J,358.3,43186,1,4,0)
 ;;=4^R43.0
 ;;^UTILITY(U,$J,358.3,43186,2)
 ;;=^7949
 ;;^UTILITY(U,$J,358.3,43187,0)
 ;;=R43.9^^195^2172^16
 ;;^UTILITY(U,$J,358.3,43187,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43187,1,3,0)
 ;;=3^Disturbances of smell and taste,Unspec
 ;;^UTILITY(U,$J,358.3,43187,1,4,0)
 ;;=4^R43.9
 ;;^UTILITY(U,$J,358.3,43187,2)
 ;;=^5019454
 ;;^UTILITY(U,$J,358.3,43188,0)
 ;;=H91.91^^195^2172^20
 ;;^UTILITY(U,$J,358.3,43188,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43188,1,3,0)
 ;;=3^Hear,Unspecing loss, right ear
 ;;^UTILITY(U,$J,358.3,43188,1,4,0)
 ;;=4^H91.91
 ;;^UTILITY(U,$J,358.3,43188,2)
 ;;=^5133553
 ;;^UTILITY(U,$J,358.3,43189,0)
 ;;=H91.92^^195^2172^19
 ;;^UTILITY(U,$J,358.3,43189,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43189,1,3,0)
 ;;=3^Hear,Unspecing loss, left ear
 ;;^UTILITY(U,$J,358.3,43189,1,4,0)
 ;;=4^H91.92
 ;;^UTILITY(U,$J,358.3,43189,2)
 ;;=^5133554
 ;;^UTILITY(U,$J,358.3,43190,0)
 ;;=H91.93^^195^2172^21
 ;;^UTILITY(U,$J,358.3,43190,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43190,1,3,0)
 ;;=3^Hearing loss, bilateral,Unspec
 ;;^UTILITY(U,$J,358.3,43190,1,4,0)
 ;;=4^H91.93
 ;;^UTILITY(U,$J,358.3,43190,2)
 ;;=^5006944
 ;;^UTILITY(U,$J,358.3,43191,0)
 ;;=R27.0^^195^2172^7
 ;;^UTILITY(U,$J,358.3,43191,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43191,1,3,0)
 ;;=3^Ataxia, unspecified
 ;;^UTILITY(U,$J,358.3,43191,1,4,0)
 ;;=4^R27.0
 ;;^UTILITY(U,$J,358.3,43191,2)
 ;;=^5019310
 ;;^UTILITY(U,$J,358.3,43192,0)
 ;;=R27.8^^195^2172^22
 ;;^UTILITY(U,$J,358.3,43192,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43192,1,3,0)
 ;;=3^Lack of coordination NEC
 ;;^UTILITY(U,$J,358.3,43192,1,4,0)
 ;;=4^R27.8
 ;;^UTILITY(U,$J,358.3,43192,2)
 ;;=^5019311
 ;;^UTILITY(U,$J,358.3,43193,0)
 ;;=M62.40^^195^2172^14
 ;;^UTILITY(U,$J,358.3,43193,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43193,1,3,0)
 ;;=3^Contracture of muscle, unspecified site
 ;;^UTILITY(U,$J,358.3,43193,1,4,0)
 ;;=4^M62.40
 ;;^UTILITY(U,$J,358.3,43193,2)
 ;;=^5012631
 ;;^UTILITY(U,$J,358.3,43194,0)
 ;;=M62.838^^195^2172^25
 ;;^UTILITY(U,$J,358.3,43194,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43194,1,3,0)
 ;;=3^Muscle Spasm NEC
 ;;^UTILITY(U,$J,358.3,43194,1,4,0)
 ;;=4^M62.838
 ;;^UTILITY(U,$J,358.3,43194,2)
 ;;=^5012682
 ;;^UTILITY(U,$J,358.3,43195,0)
 ;;=R63.5^^195^2172^2
 ;;^UTILITY(U,$J,358.3,43195,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43195,1,3,0)
 ;;=3^Abnormal weight gain
 ;;^UTILITY(U,$J,358.3,43195,1,4,0)
 ;;=4^R63.5
