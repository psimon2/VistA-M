IBDEI2LM ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,43618,1,3,0)
 ;;=3^Hlth Service to Consult on Behalf of Another
 ;;^UTILITY(U,$J,358.3,43618,1,4,0)
 ;;=4^Z71.0
 ;;^UTILITY(U,$J,358.3,43618,2)
 ;;=^5063242
 ;;^UTILITY(U,$J,358.3,43619,0)
 ;;=Z59.8^^200^2213^10
 ;;^UTILITY(U,$J,358.3,43619,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43619,1,3,0)
 ;;=3^Housing/Economic Circumstance Problems
 ;;^UTILITY(U,$J,358.3,43619,1,4,0)
 ;;=4^Z59.8
 ;;^UTILITY(U,$J,358.3,43619,2)
 ;;=^5063137
 ;;^UTILITY(U,$J,358.3,43620,0)
 ;;=I20.0^^200^2214^14
 ;;^UTILITY(U,$J,358.3,43620,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43620,1,3,0)
 ;;=3^Unstable Angina
 ;;^UTILITY(U,$J,358.3,43620,1,4,0)
 ;;=4^I20.0
 ;;^UTILITY(U,$J,358.3,43620,2)
 ;;=^5007076
 ;;^UTILITY(U,$J,358.3,43621,0)
 ;;=I25.110^^200^2214^7
 ;;^UTILITY(U,$J,358.3,43621,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43621,1,3,0)
 ;;=3^Athscl Hrt Dis of Native Cor Art w/ Unstable Ang Pctrs
 ;;^UTILITY(U,$J,358.3,43621,1,4,0)
 ;;=4^I25.110
 ;;^UTILITY(U,$J,358.3,43621,2)
 ;;=^5007108
 ;;^UTILITY(U,$J,358.3,43622,0)
 ;;=I25.700^^200^2214^12
 ;;^UTILITY(U,$J,358.3,43622,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43622,1,3,0)
 ;;=3^Athscl of CABG,Unspec w/ Unstable Angina Pectoris
 ;;^UTILITY(U,$J,358.3,43622,1,4,0)
 ;;=4^I25.700
 ;;^UTILITY(U,$J,358.3,43622,2)
 ;;=^5007117
 ;;^UTILITY(U,$J,358.3,43623,0)
 ;;=I25.2^^200^2214^13
 ;;^UTILITY(U,$J,358.3,43623,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43623,1,3,0)
 ;;=3^Old Myocardial Infarction
 ;;^UTILITY(U,$J,358.3,43623,1,4,0)
 ;;=4^I25.2
 ;;^UTILITY(U,$J,358.3,43623,2)
 ;;=^259884
 ;;^UTILITY(U,$J,358.3,43624,0)
 ;;=I20.8^^200^2214^2
 ;;^UTILITY(U,$J,358.3,43624,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43624,1,3,0)
 ;;=3^Angina Pectoris,Oth Forms
 ;;^UTILITY(U,$J,358.3,43624,1,4,0)
 ;;=4^I20.8
 ;;^UTILITY(U,$J,358.3,43624,2)
 ;;=^5007078
 ;;^UTILITY(U,$J,358.3,43625,0)
 ;;=I20.1^^200^2214^1
 ;;^UTILITY(U,$J,358.3,43625,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43625,1,3,0)
 ;;=3^Angina Pectoris w/ Documented Spasm
 ;;^UTILITY(U,$J,358.3,43625,1,4,0)
 ;;=4^I20.1
 ;;^UTILITY(U,$J,358.3,43625,2)
 ;;=^5007077
 ;;^UTILITY(U,$J,358.3,43626,0)
 ;;=I25.119^^200^2214^5
 ;;^UTILITY(U,$J,358.3,43626,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43626,1,3,0)
 ;;=3^Athscl HRT Dis of Native Cor Art w/ Ang Pctrs,Unspec
 ;;^UTILITY(U,$J,358.3,43626,1,4,0)
 ;;=4^I25.119
 ;;^UTILITY(U,$J,358.3,43626,2)
 ;;=^5007111
 ;;^UTILITY(U,$J,358.3,43627,0)
 ;;=I25.701^^200^2214^9
 ;;^UTILITY(U,$J,358.3,43627,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43627,1,3,0)
 ;;=3^Athscl of CABG,Unspec w/ Angina Pectoris w/ Documented Spasm
 ;;^UTILITY(U,$J,358.3,43627,1,4,0)
 ;;=4^I25.701
 ;;^UTILITY(U,$J,358.3,43627,2)
 ;;=^5007118
 ;;^UTILITY(U,$J,358.3,43628,0)
 ;;=I25.708^^200^2214^10
 ;;^UTILITY(U,$J,358.3,43628,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43628,1,3,0)
 ;;=3^Athscl of CABG,Unspec w/ Oth Angina Pectoris
 ;;^UTILITY(U,$J,358.3,43628,1,4,0)
 ;;=4^I25.708
 ;;^UTILITY(U,$J,358.3,43628,2)
 ;;=^5007119
 ;;^UTILITY(U,$J,358.3,43629,0)
 ;;=I20.9^^200^2214^3
 ;;^UTILITY(U,$J,358.3,43629,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43629,1,3,0)
 ;;=3^Angina Pectoris,Unspec
 ;;^UTILITY(U,$J,358.3,43629,1,4,0)
 ;;=4^I20.9
 ;;^UTILITY(U,$J,358.3,43629,2)
 ;;=^5007079
 ;;^UTILITY(U,$J,358.3,43630,0)
 ;;=I25.729^^200^2214^4
 ;;^UTILITY(U,$J,358.3,43630,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,43630,1,3,0)
 ;;=3^Athscl Autologous Artery CABG w/ Unspec Angina Pectoris
 ;;^UTILITY(U,$J,358.3,43630,1,4,0)
 ;;=4^I25.729
 ;;^UTILITY(U,$J,358.3,43630,2)
 ;;=^5133561
