IBDEI1IM ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,25324,1,4,0)
 ;;=4^M75.101
 ;;^UTILITY(U,$J,358.3,25324,2)
 ;;=^5013242
 ;;^UTILITY(U,$J,358.3,25325,0)
 ;;=M75.102^^124^1244^50
 ;;^UTILITY(U,$J,358.3,25325,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25325,1,3,0)
 ;;=3^Rotator Cuff Tear/Rupture,Left Shoulder
 ;;^UTILITY(U,$J,358.3,25325,1,4,0)
 ;;=4^M75.102
 ;;^UTILITY(U,$J,358.3,25325,2)
 ;;=^5013243
 ;;^UTILITY(U,$J,358.3,25326,0)
 ;;=M79.7^^124^1244^10
 ;;^UTILITY(U,$J,358.3,25326,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25326,1,3,0)
 ;;=3^Fibromyalgia
 ;;^UTILITY(U,$J,358.3,25326,1,4,0)
 ;;=4^M79.7
 ;;^UTILITY(U,$J,358.3,25326,2)
 ;;=^46261
 ;;^UTILITY(U,$J,358.3,25327,0)
 ;;=M54.10^^124^1244^47
 ;;^UTILITY(U,$J,358.3,25327,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25327,1,3,0)
 ;;=3^Radiculopathy,Site Unspec
 ;;^UTILITY(U,$J,358.3,25327,1,4,0)
 ;;=4^M54.10
 ;;^UTILITY(U,$J,358.3,25327,2)
 ;;=^5012295
 ;;^UTILITY(U,$J,358.3,25328,0)
 ;;=M79.2^^124^1244^15
 ;;^UTILITY(U,$J,358.3,25328,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25328,1,3,0)
 ;;=3^Neuralgia and Neuritis,Unspec
 ;;^UTILITY(U,$J,358.3,25328,1,4,0)
 ;;=4^M79.2
 ;;^UTILITY(U,$J,358.3,25328,2)
 ;;=^5013322
 ;;^UTILITY(U,$J,358.3,25329,0)
 ;;=M79.89^^124^1244^70
 ;;^UTILITY(U,$J,358.3,25329,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25329,1,3,0)
 ;;=3^Soft Tissue Disorders
 ;;^UTILITY(U,$J,358.3,25329,1,4,0)
 ;;=4^M79.89
 ;;^UTILITY(U,$J,358.3,25329,2)
 ;;=^5013357
 ;;^UTILITY(U,$J,358.3,25330,0)
 ;;=M88.9^^124^1244^16
 ;;^UTILITY(U,$J,358.3,25330,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25330,1,3,0)
 ;;=3^Osteitis Deformans,Unspec Bone
 ;;^UTILITY(U,$J,358.3,25330,1,4,0)
 ;;=4^M88.9
 ;;^UTILITY(U,$J,358.3,25330,2)
 ;;=^5014899
 ;;^UTILITY(U,$J,358.3,25331,0)
 ;;=M81.0^^124^1244^19
 ;;^UTILITY(U,$J,358.3,25331,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25331,1,3,0)
 ;;=3^Osteoporosis,Age-Related w/o Current Fx
 ;;^UTILITY(U,$J,358.3,25331,1,4,0)
 ;;=4^M81.0
 ;;^UTILITY(U,$J,358.3,25331,2)
 ;;=^5013555
 ;;^UTILITY(U,$J,358.3,25332,0)
 ;;=M84.40XA^^124^1244^21
 ;;^UTILITY(U,$J,358.3,25332,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25332,1,3,0)
 ;;=3^Pathological Fx,Unspec Site,Init Encntr for Fx
 ;;^UTILITY(U,$J,358.3,25332,1,4,0)
 ;;=4^M84.40XA
 ;;^UTILITY(U,$J,358.3,25332,2)
 ;;=^5013794
 ;;^UTILITY(U,$J,358.3,25333,0)
 ;;=M84.40XD^^124^1244^22
 ;;^UTILITY(U,$J,358.3,25333,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25333,1,3,0)
 ;;=3^Pathological Fx,Unspec Site,Subsq Encntr for Fx w/ Routine Healing
 ;;^UTILITY(U,$J,358.3,25333,1,4,0)
 ;;=4^M84.40XD
 ;;^UTILITY(U,$J,358.3,25333,2)
 ;;=^5013795
 ;;^UTILITY(U,$J,358.3,25334,0)
 ;;=M84.40XG^^124^1244^23
 ;;^UTILITY(U,$J,358.3,25334,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25334,1,3,0)
 ;;=3^Pathological Fx,Unspec Site,Subsq Encntr for Fx w/ Delay Healing
 ;;^UTILITY(U,$J,358.3,25334,1,4,0)
 ;;=4^M84.40XG
 ;;^UTILITY(U,$J,358.3,25334,2)
 ;;=^5013796
 ;;^UTILITY(U,$J,358.3,25335,0)
 ;;=M84.40XK^^124^1244^24
 ;;^UTILITY(U,$J,358.3,25335,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25335,1,3,0)
 ;;=3^Pathological Fx,Unspec Site,Subsq Encntr for Fx w/ Nonunion
 ;;^UTILITY(U,$J,358.3,25335,1,4,0)
 ;;=4^M84.40XK
 ;;^UTILITY(U,$J,358.3,25335,2)
 ;;=^5013797
 ;;^UTILITY(U,$J,358.3,25336,0)
 ;;=M84.40XP^^124^1244^25
 ;;^UTILITY(U,$J,358.3,25336,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,25336,1,3,0)
 ;;=3^Pathological Fx,Unspec Site,Subsq Encntr for Fx w/ Malunion
 ;;^UTILITY(U,$J,358.3,25336,1,4,0)
 ;;=4^M84.40XP
 ;;^UTILITY(U,$J,358.3,25336,2)
 ;;=^5013798
 ;;^UTILITY(U,$J,358.3,25337,0)
 ;;=M84.40XS^^124^1244^26