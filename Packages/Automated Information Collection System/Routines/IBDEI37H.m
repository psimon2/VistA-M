IBDEI37H ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,53853,1,4,0)
 ;;=4^E11.9
 ;;^UTILITY(U,$J,358.3,53853,2)
 ;;=^5002666
 ;;^UTILITY(U,$J,358.3,53854,0)
 ;;=R10.9^^253^2727^2
 ;;^UTILITY(U,$J,358.3,53854,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53854,1,3,0)
 ;;=3^Abdominal Pain,Unspec
 ;;^UTILITY(U,$J,358.3,53854,1,4,0)
 ;;=4^R10.9
 ;;^UTILITY(U,$J,358.3,53854,2)
 ;;=^5019230
 ;;^UTILITY(U,$J,358.3,53855,0)
 ;;=R10.11^^253^2727^42
 ;;^UTILITY(U,$J,358.3,53855,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53855,1,3,0)
 ;;=3^Right upper quadrant pain
 ;;^UTILITY(U,$J,358.3,53855,1,4,0)
 ;;=4^R10.11
 ;;^UTILITY(U,$J,358.3,53855,2)
 ;;=^5019206
 ;;^UTILITY(U,$J,358.3,53856,0)
 ;;=R10.31^^253^2727^41
 ;;^UTILITY(U,$J,358.3,53856,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53856,1,3,0)
 ;;=3^Right lower quadrant pain
 ;;^UTILITY(U,$J,358.3,53856,1,4,0)
 ;;=4^R10.31
 ;;^UTILITY(U,$J,358.3,53856,2)
 ;;=^5019211
 ;;^UTILITY(U,$J,358.3,53857,0)
 ;;=R10.84^^253^2727^1
 ;;^UTILITY(U,$J,358.3,53857,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53857,1,3,0)
 ;;=3^Abdominal Pain,Generalized
 ;;^UTILITY(U,$J,358.3,53857,1,4,0)
 ;;=4^R10.84
 ;;^UTILITY(U,$J,358.3,53857,2)
 ;;=^5019229
 ;;^UTILITY(U,$J,358.3,53858,0)
 ;;=R10.10^^253^2727^44
 ;;^UTILITY(U,$J,358.3,53858,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53858,1,3,0)
 ;;=3^Upper abdominal pain, unspecified
 ;;^UTILITY(U,$J,358.3,53858,1,4,0)
 ;;=4^R10.10
 ;;^UTILITY(U,$J,358.3,53858,2)
 ;;=^5019205
 ;;^UTILITY(U,$J,358.3,53859,0)
 ;;=R10.30^^253^2727^28
 ;;^UTILITY(U,$J,358.3,53859,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53859,1,3,0)
 ;;=3^Lower abdominal pain, unspecified
 ;;^UTILITY(U,$J,358.3,53859,1,4,0)
 ;;=4^R10.30
 ;;^UTILITY(U,$J,358.3,53859,2)
 ;;=^5019210
 ;;^UTILITY(U,$J,358.3,53860,0)
 ;;=R10.2^^253^2727^35
 ;;^UTILITY(U,$J,358.3,53860,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53860,1,3,0)
 ;;=3^Pelvic and perineal pain
 ;;^UTILITY(U,$J,358.3,53860,1,4,0)
 ;;=4^R10.2
 ;;^UTILITY(U,$J,358.3,53860,2)
 ;;=^5019209
 ;;^UTILITY(U,$J,358.3,53861,0)
 ;;=R18.8^^253^2727^9
 ;;^UTILITY(U,$J,358.3,53861,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53861,1,3,0)
 ;;=3^Ascites NEC
 ;;^UTILITY(U,$J,358.3,53861,1,4,0)
 ;;=4^R18.8
 ;;^UTILITY(U,$J,358.3,53861,2)
 ;;=^5019253
 ;;^UTILITY(U,$J,358.3,53862,0)
 ;;=R19.7^^253^2727^16
 ;;^UTILITY(U,$J,358.3,53862,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53862,1,3,0)
 ;;=3^Diarrhea, unspecified
 ;;^UTILITY(U,$J,358.3,53862,1,4,0)
 ;;=4^R19.7
 ;;^UTILITY(U,$J,358.3,53862,2)
 ;;=^5019276
 ;;^UTILITY(U,$J,358.3,53863,0)
 ;;=R11.2^^253^2727^32
 ;;^UTILITY(U,$J,358.3,53863,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53863,1,3,0)
 ;;=3^Nausea with vomiting, unspecified
 ;;^UTILITY(U,$J,358.3,53863,1,4,0)
 ;;=4^R11.2
 ;;^UTILITY(U,$J,358.3,53863,2)
 ;;=^5019237
 ;;^UTILITY(U,$J,358.3,53864,0)
 ;;=R11.0^^253^2727^31
 ;;^UTILITY(U,$J,358.3,53864,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53864,1,3,0)
 ;;=3^Nausea
 ;;^UTILITY(U,$J,358.3,53864,1,4,0)
 ;;=4^R11.0
 ;;^UTILITY(U,$J,358.3,53864,2)
 ;;=^5019231
 ;;^UTILITY(U,$J,358.3,53865,0)
 ;;=R11.10^^253^2727^46
 ;;^UTILITY(U,$J,358.3,53865,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53865,1,3,0)
 ;;=3^Vomiting, unspecified
 ;;^UTILITY(U,$J,358.3,53865,1,4,0)
 ;;=4^R11.10
 ;;^UTILITY(U,$J,358.3,53865,2)
 ;;=^5019232
 ;;^UTILITY(U,$J,358.3,53866,0)
 ;;=R11.11^^253^2727^45
 ;;^UTILITY(U,$J,358.3,53866,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53866,1,3,0)
 ;;=3^Vomiting without nausea
 ;;^UTILITY(U,$J,358.3,53866,1,4,0)
 ;;=4^R11.11
 ;;^UTILITY(U,$J,358.3,53866,2)
 ;;=^5019233
 ;;^UTILITY(U,$J,358.3,53867,0)
 ;;=R11.12^^253^2727^37
