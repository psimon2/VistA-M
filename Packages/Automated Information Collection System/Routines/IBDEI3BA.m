IBDEI3BA ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,55648,0)
 ;;=D81.810^^256^2785^5
 ;;^UTILITY(U,$J,358.3,55648,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55648,1,3,0)
 ;;=3^Biotinidase Deficiency
 ;;^UTILITY(U,$J,358.3,55648,1,4,0)
 ;;=4^D81.810
 ;;^UTILITY(U,$J,358.3,55648,2)
 ;;=^5002422
 ;;^UTILITY(U,$J,358.3,55649,0)
 ;;=E88.01^^256^2785^2
 ;;^UTILITY(U,$J,358.3,55649,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55649,1,3,0)
 ;;=3^Apha-1 Antitrypsin Deficiency
 ;;^UTILITY(U,$J,358.3,55649,1,4,0)
 ;;=4^E88.01
 ;;^UTILITY(U,$J,358.3,55649,2)
 ;;=^331442
 ;;^UTILITY(U,$J,358.3,55650,0)
 ;;=J09.X1^^256^2785^25
 ;;^UTILITY(U,$J,358.3,55650,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55650,1,3,0)
 ;;=3^Influenza d/t Indent Novel Influenza A Virus w/ Pneumonia
 ;;^UTILITY(U,$J,358.3,55650,1,4,0)
 ;;=4^J09.X1
 ;;^UTILITY(U,$J,358.3,55650,2)
 ;;=^5008144
 ;;^UTILITY(U,$J,358.3,55651,0)
 ;;=J09.X2^^256^2785^26
 ;;^UTILITY(U,$J,358.3,55651,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55651,1,3,0)
 ;;=3^Influenza d/t Indent Novel Influenza A Virus w/ Resp Manifest
 ;;^UTILITY(U,$J,358.3,55651,1,4,0)
 ;;=4^J09.X2
 ;;^UTILITY(U,$J,358.3,55651,2)
 ;;=^5008145
 ;;^UTILITY(U,$J,358.3,55652,0)
 ;;=J09.X3^^256^2785^27
 ;;^UTILITY(U,$J,358.3,55652,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55652,1,3,0)
 ;;=3^Influenza d/t Indent Novel Influenza A Virus w/ GI Manifest
 ;;^UTILITY(U,$J,358.3,55652,1,4,0)
 ;;=4^J09.X3
 ;;^UTILITY(U,$J,358.3,55652,2)
 ;;=^5008146
 ;;^UTILITY(U,$J,358.3,55653,0)
 ;;=J09.X9^^256^2785^28
 ;;^UTILITY(U,$J,358.3,55653,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55653,1,3,0)
 ;;=3^Influenza d/t Indent Novel Influenza A Virus w/ Oth Manifest
 ;;^UTILITY(U,$J,358.3,55653,1,4,0)
 ;;=4^J09.X9
 ;;^UTILITY(U,$J,358.3,55653,2)
 ;;=^5008147
 ;;^UTILITY(U,$J,358.3,55654,0)
 ;;=J44.9^^256^2785^14
 ;;^UTILITY(U,$J,358.3,55654,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55654,1,3,0)
 ;;=3^COPD,Unspec
 ;;^UTILITY(U,$J,358.3,55654,1,4,0)
 ;;=4^J44.9
 ;;^UTILITY(U,$J,358.3,55654,2)
 ;;=^5008241
 ;;^UTILITY(U,$J,358.3,55655,0)
 ;;=J44.1^^256^2785^12
 ;;^UTILITY(U,$J,358.3,55655,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55655,1,3,0)
 ;;=3^COPD w/ Acute Exacerbation
 ;;^UTILITY(U,$J,358.3,55655,1,4,0)
 ;;=4^J44.1
 ;;^UTILITY(U,$J,358.3,55655,2)
 ;;=^5008240
 ;;^UTILITY(U,$J,358.3,55656,0)
 ;;=J42.^^256^2785^10
 ;;^UTILITY(U,$J,358.3,55656,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55656,1,3,0)
 ;;=3^Bronchitis,Unspec Chronic
 ;;^UTILITY(U,$J,358.3,55656,1,4,0)
 ;;=4^J42.
 ;;^UTILITY(U,$J,358.3,55656,2)
 ;;=^5008234
 ;;^UTILITY(U,$J,358.3,55657,0)
 ;;=J43.9^^256^2785^22
 ;;^UTILITY(U,$J,358.3,55657,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55657,1,3,0)
 ;;=3^Emphysema,Unspec
 ;;^UTILITY(U,$J,358.3,55657,1,4,0)
 ;;=4^J43.9
 ;;^UTILITY(U,$J,358.3,55657,2)
 ;;=^5008238
 ;;^UTILITY(U,$J,358.3,55658,0)
 ;;=J43.0^^256^2785^30
 ;;^UTILITY(U,$J,358.3,55658,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55658,1,3,0)
 ;;=3^MacLeod's Syndrome
 ;;^UTILITY(U,$J,358.3,55658,1,4,0)
 ;;=4^J43.0
 ;;^UTILITY(U,$J,358.3,55658,2)
 ;;=^5008235
 ;;^UTILITY(U,$J,358.3,55659,0)
 ;;=J43.1^^256^2785^21
 ;;^UTILITY(U,$J,358.3,55659,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55659,1,3,0)
 ;;=3^Emphysema,Panlobular
 ;;^UTILITY(U,$J,358.3,55659,1,4,0)
 ;;=4^J43.1
 ;;^UTILITY(U,$J,358.3,55659,2)
 ;;=^5008236
 ;;^UTILITY(U,$J,358.3,55660,0)
 ;;=J43.2^^256^2785^19
 ;;^UTILITY(U,$J,358.3,55660,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55660,1,3,0)
 ;;=3^Emphysema,Centrilobular
 ;;^UTILITY(U,$J,358.3,55660,1,4,0)
 ;;=4^J43.2
 ;;^UTILITY(U,$J,358.3,55660,2)
 ;;=^5008237