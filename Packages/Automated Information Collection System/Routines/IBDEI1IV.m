IBDEI1IV ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,25440,1,3,0)
 ;;=3^Bronchitis,Acute,Unspec
 ;;^UTILITY(U,$J,358.3,25440,1,4,0)
 ;;=4^J20.9
 ;;^UTILITY(U,$J,358.3,25440,2)
 ;;=^5008195
 ;;^UTILITY(U,$J,358.3,25441,0)
 ;;=B37.3^^124^1247^23
 ;;^UTILITY(U,$J,358.3,25441,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25441,1,3,0)
 ;;=3^Candidiasis,Vulvovaginal
 ;;^UTILITY(U,$J,358.3,25441,1,4,0)
 ;;=4^B37.3
 ;;^UTILITY(U,$J,358.3,25441,2)
 ;;=^5000615
 ;;^UTILITY(U,$J,358.3,25442,0)
 ;;=B37.2^^124^1247^20
 ;;^UTILITY(U,$J,358.3,25442,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25442,1,3,0)
 ;;=3^Candidiasis,Intertriginal
 ;;^UTILITY(U,$J,358.3,25442,1,4,0)
 ;;=4^B37.2
 ;;^UTILITY(U,$J,358.3,25442,2)
 ;;=^5000614
 ;;^UTILITY(U,$J,358.3,25443,0)
 ;;=B37.81^^124^1247^19
 ;;^UTILITY(U,$J,358.3,25443,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25443,1,3,0)
 ;;=3^Candidiasis,Esophageal
 ;;^UTILITY(U,$J,358.3,25443,1,4,0)
 ;;=4^B37.81
 ;;^UTILITY(U,$J,358.3,25443,2)
 ;;=b377^5000620
 ;;^UTILITY(U,$J,358.3,25444,0)
 ;;=B37.7^^124^1247^17
 ;;^UTILITY(U,$J,358.3,25444,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25444,1,3,0)
 ;;=3^Candidal Sepsis
 ;;^UTILITY(U,$J,358.3,25444,1,4,0)
 ;;=4^B37.7
 ;;^UTILITY(U,$J,358.3,25444,2)
 ;;=^5000619
 ;;^UTILITY(U,$J,358.3,25445,0)
 ;;=B37.0^^124^1247^21
 ;;^UTILITY(U,$J,358.3,25445,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25445,1,3,0)
 ;;=3^Candidiasis,Oral
 ;;^UTILITY(U,$J,358.3,25445,1,4,0)
 ;;=4^B37.0
 ;;^UTILITY(U,$J,358.3,25445,2)
 ;;=^5000612
 ;;^UTILITY(U,$J,358.3,25446,0)
 ;;=B37.89^^124^1247^18
 ;;^UTILITY(U,$J,358.3,25446,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25446,1,3,0)
 ;;=3^Candidiasis NEC
 ;;^UTILITY(U,$J,358.3,25446,1,4,0)
 ;;=4^B37.89
 ;;^UTILITY(U,$J,358.3,25446,2)
 ;;=^5000623
 ;;^UTILITY(U,$J,358.3,25447,0)
 ;;=N81.9^^124^1247^1
 ;;^UTILITY(U,$J,358.3,25447,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25447,1,3,0)
 ;;=3
 ;;^UTILITY(U,$J,358.3,25447,1,4,0)
 ;;=4^N81.9
 ;;^UTILITY(U,$J,358.3,25447,2)
 ;;=^5015845
 ;;^UTILITY(U,$J,358.3,25448,0)
 ;;=R50.9^^124^1247^28
 ;;^UTILITY(U,$J,358.3,25448,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25448,1,3,0)
 ;;=3^Fever, unspecified
 ;;^UTILITY(U,$J,358.3,25448,1,4,0)
 ;;=4^R50.9
 ;;^UTILITY(U,$J,358.3,25448,2)
 ;;=^5019512
 ;;^UTILITY(U,$J,358.3,25449,0)
 ;;=B15.9^^124^1247^34
 ;;^UTILITY(U,$J,358.3,25449,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25449,1,3,0)
 ;;=3^Hepatitis A w/o Hepatic Coma
 ;;^UTILITY(U,$J,358.3,25449,1,4,0)
 ;;=4^B15.9
 ;;^UTILITY(U,$J,358.3,25449,2)
 ;;=^5000536
 ;;^UTILITY(U,$J,358.3,25450,0)
 ;;=B19.10^^124^1247^35
 ;;^UTILITY(U,$J,358.3,25450,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25450,1,3,0)
 ;;=3^Hepatitis B w/o Hepatic Coma
 ;;^UTILITY(U,$J,358.3,25450,1,4,0)
 ;;=4^B19.10
 ;;^UTILITY(U,$J,358.3,25450,2)
 ;;=^5000552
 ;;^UTILITY(U,$J,358.3,25451,0)
 ;;=B19.20^^124^1247^38
 ;;^UTILITY(U,$J,358.3,25451,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25451,1,3,0)
 ;;=3^Hepatitis C w/o Hepatic Coma
 ;;^UTILITY(U,$J,358.3,25451,1,4,0)
 ;;=4^B19.20
 ;;^UTILITY(U,$J,358.3,25451,2)
 ;;=^331436
 ;;^UTILITY(U,$J,358.3,25452,0)
 ;;=B19.9^^124^1247^42
 ;;^UTILITY(U,$J,358.3,25452,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25452,1,3,0)
 ;;=3^Hepatitis w/o Hepatic Coma,Unspec
 ;;^UTILITY(U,$J,358.3,25452,1,4,0)
 ;;=4^B19.9
 ;;^UTILITY(U,$J,358.3,25452,2)
 ;;=^5000554
 ;;^UTILITY(U,$J,358.3,25453,0)
 ;;=K75.89^^124^1247^41
 ;;^UTILITY(U,$J,358.3,25453,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25453,1,3,0)
 ;;=3^Hepatitis NEC
 ;;^UTILITY(U,$J,358.3,25453,1,4,0)
 ;;=4^K75.89
 ;;^UTILITY(U,$J,358.3,25453,2)
 ;;=^5008829
