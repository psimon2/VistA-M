IBDEI2VC ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,48140,1,4,0)
 ;;=4^F12.29
 ;;^UTILITY(U,$J,358.3,48140,2)
 ;;=^5003177
 ;;^UTILITY(U,$J,358.3,48141,0)
 ;;=F16.20^^211^2382^27
 ;;^UTILITY(U,$J,358.3,48141,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48141,1,3,0)
 ;;=3^Hallucinogen Dependence,Uncomplicated
 ;;^UTILITY(U,$J,358.3,48141,1,4,0)
 ;;=4^F16.20
 ;;^UTILITY(U,$J,358.3,48141,2)
 ;;=^5003336
 ;;^UTILITY(U,$J,358.3,48142,0)
 ;;=F19.20^^211^2382^42
 ;;^UTILITY(U,$J,358.3,48142,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48142,1,3,0)
 ;;=3^Psychoactive Substance Dependence,Uncomplicated
 ;;^UTILITY(U,$J,358.3,48142,1,4,0)
 ;;=4^F19.20
 ;;^UTILITY(U,$J,358.3,48142,2)
 ;;=^5003431
 ;;^UTILITY(U,$J,358.3,48143,0)
 ;;=F10.10^^211^2382^3
 ;;^UTILITY(U,$J,358.3,48143,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48143,1,3,0)
 ;;=3^Alcohol Abuse,Uncomplicated
 ;;^UTILITY(U,$J,358.3,48143,1,4,0)
 ;;=4^F10.10
 ;;^UTILITY(U,$J,358.3,48143,2)
 ;;=^5003068
 ;;^UTILITY(U,$J,358.3,48144,0)
 ;;=F12.10^^211^2382^17
 ;;^UTILITY(U,$J,358.3,48144,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48144,1,3,0)
 ;;=3^Cannabis Abuse,Uncomplicated
 ;;^UTILITY(U,$J,358.3,48144,1,4,0)
 ;;=4^F12.10
 ;;^UTILITY(U,$J,358.3,48144,2)
 ;;=^5003155
 ;;^UTILITY(U,$J,358.3,48145,0)
 ;;=F16.10^^211^2382^26
 ;;^UTILITY(U,$J,358.3,48145,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48145,1,3,0)
 ;;=3^Hallucinogen Abuse,Uncomplicated
 ;;^UTILITY(U,$J,358.3,48145,1,4,0)
 ;;=4^F16.10
 ;;^UTILITY(U,$J,358.3,48145,2)
 ;;=^5003323
 ;;^UTILITY(U,$J,358.3,48146,0)
 ;;=F13.10^^211^2382^49
 ;;^UTILITY(U,$J,358.3,48146,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48146,1,3,0)
 ;;=3^Sedative/Hypnotic/Anxiolytic Abuse,Uncomplicated
 ;;^UTILITY(U,$J,358.3,48146,1,4,0)
 ;;=4^F13.10
 ;;^UTILITY(U,$J,358.3,48146,2)
 ;;=^5003189
 ;;^UTILITY(U,$J,358.3,48147,0)
 ;;=F11.10^^211^2382^37
 ;;^UTILITY(U,$J,358.3,48147,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48147,1,3,0)
 ;;=3^Opioid Abuse,Uncomplicated
 ;;^UTILITY(U,$J,358.3,48147,1,4,0)
 ;;=4^F11.10
 ;;^UTILITY(U,$J,358.3,48147,2)
 ;;=^5003114
 ;;^UTILITY(U,$J,358.3,48148,0)
 ;;=F14.10^^211^2382^19
 ;;^UTILITY(U,$J,358.3,48148,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48148,1,3,0)
 ;;=3^Cocaine Abuse,Uncomplicated
 ;;^UTILITY(U,$J,358.3,48148,1,4,0)
 ;;=4^F14.10
 ;;^UTILITY(U,$J,358.3,48148,2)
 ;;=^5003239
 ;;^UTILITY(U,$J,358.3,48149,0)
 ;;=F18.10^^211^2382^28
 ;;^UTILITY(U,$J,358.3,48149,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48149,1,3,0)
 ;;=3^Inhalant Abuse,Uncomplicated
 ;;^UTILITY(U,$J,358.3,48149,1,4,0)
 ;;=4^F18.10
 ;;^UTILITY(U,$J,358.3,48149,2)
 ;;=^5003380
 ;;^UTILITY(U,$J,358.3,48150,0)
 ;;=F45.41^^211^2382^39
 ;;^UTILITY(U,$J,358.3,48150,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48150,1,3,0)
 ;;=3^Pain Disorder Related to Psychological Factors
 ;;^UTILITY(U,$J,358.3,48150,1,4,0)
 ;;=4^F45.41
 ;;^UTILITY(U,$J,358.3,48150,2)
 ;;=^5003590
 ;;^UTILITY(U,$J,358.3,48151,0)
 ;;=F43.20^^211^2382^1
 ;;^UTILITY(U,$J,358.3,48151,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48151,1,3,0)
 ;;=3^Adjustment Disorder,Unspec
 ;;^UTILITY(U,$J,358.3,48151,1,4,0)
 ;;=4^F43.20
 ;;^UTILITY(U,$J,358.3,48151,2)
 ;;=^5003573
 ;;^UTILITY(U,$J,358.3,48152,0)
 ;;=F07.0^^211^2382^41
 ;;^UTILITY(U,$J,358.3,48152,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48152,1,3,0)
 ;;=3^Personality Change d/t Physiological Condition
 ;;^UTILITY(U,$J,358.3,48152,1,4,0)
 ;;=4^F07.0
 ;;^UTILITY(U,$J,358.3,48152,2)
 ;;=^5003063
 ;;^UTILITY(U,$J,358.3,48153,0)
 ;;=F32.9^^211^2382^33
 ;;^UTILITY(U,$J,358.3,48153,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48153,1,3,0)
 ;;=3^MDD,Single Episode,Unspec