IBDEI0AE ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,4335,1,4,0)
 ;;=4^Z74.1
 ;;^UTILITY(U,$J,358.3,4335,2)
 ;;=^5063284
 ;;^UTILITY(U,$J,358.3,4336,0)
 ;;=R27.9^^28^266^3
 ;;^UTILITY(U,$J,358.3,4336,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4336,1,3,0)
 ;;=3^Coordination,Lack of,Unspec
 ;;^UTILITY(U,$J,358.3,4336,1,4,0)
 ;;=4^R27.9
 ;;^UTILITY(U,$J,358.3,4336,2)
 ;;=^5019312
 ;;^UTILITY(U,$J,358.3,4337,0)
 ;;=R26.9^^28^266^6
 ;;^UTILITY(U,$J,358.3,4337,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4337,1,3,0)
 ;;=3^Gait/Mobility,Abnormalities,Unspec
 ;;^UTILITY(U,$J,358.3,4337,1,4,0)
 ;;=4^R26.9
 ;;^UTILITY(U,$J,358.3,4337,2)
 ;;=^5019309
 ;;^UTILITY(U,$J,358.3,4338,0)
 ;;=R26.0^^28^266^4
 ;;^UTILITY(U,$J,358.3,4338,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4338,1,3,0)
 ;;=3^Gait,Ataxic
 ;;^UTILITY(U,$J,358.3,4338,1,4,0)
 ;;=4^R26.0
 ;;^UTILITY(U,$J,358.3,4338,2)
 ;;=^5019304
 ;;^UTILITY(U,$J,358.3,4339,0)
 ;;=R26.1^^28^266^5
 ;;^UTILITY(U,$J,358.3,4339,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4339,1,3,0)
 ;;=3^Gait,Paralytic
 ;;^UTILITY(U,$J,358.3,4339,1,4,0)
 ;;=4^R26.1
 ;;^UTILITY(U,$J,358.3,4339,2)
 ;;=^5019305
 ;;^UTILITY(U,$J,358.3,4340,0)
 ;;=R29.890^^28^266^7
 ;;^UTILITY(U,$J,358.3,4340,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4340,1,3,0)
 ;;=3^Height Loss
 ;;^UTILITY(U,$J,358.3,4340,1,4,0)
 ;;=4^R29.890
 ;;^UTILITY(U,$J,358.3,4340,2)
 ;;=^322157
 ;;^UTILITY(U,$J,358.3,4341,0)
 ;;=R29.5^^28^266^8
 ;;^UTILITY(U,$J,358.3,4341,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4341,1,3,0)
 ;;=3^Paralysis,Transient
 ;;^UTILITY(U,$J,358.3,4341,1,4,0)
 ;;=4^R29.5
 ;;^UTILITY(U,$J,358.3,4341,2)
 ;;=^5019316
 ;;^UTILITY(U,$J,358.3,4342,0)
 ;;=R54.^^28^266^9
 ;;^UTILITY(U,$J,358.3,4342,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4342,1,3,0)
 ;;=3^Physical Debility,Age-Related
 ;;^UTILITY(U,$J,358.3,4342,1,4,0)
 ;;=4^R54.
 ;;^UTILITY(U,$J,358.3,4342,2)
 ;;=^5019521
 ;;^UTILITY(U,$J,358.3,4343,0)
 ;;=Z72.3^^28^266^10
 ;;^UTILITY(U,$J,358.3,4343,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4343,1,3,0)
 ;;=3^Physical Exercise,Lack of
 ;;^UTILITY(U,$J,358.3,4343,1,4,0)
 ;;=4^Z72.3
 ;;^UTILITY(U,$J,358.3,4343,2)
 ;;=^5063256
 ;;^UTILITY(U,$J,358.3,4344,0)
 ;;=R26.81^^28^266^11
 ;;^UTILITY(U,$J,358.3,4344,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4344,1,3,0)
 ;;=3^Unsteadiness on Feet
 ;;^UTILITY(U,$J,358.3,4344,1,4,0)
 ;;=4^R26.81
 ;;^UTILITY(U,$J,358.3,4344,2)
 ;;=^5019307
 ;;^UTILITY(U,$J,358.3,4345,0)
 ;;=R26.2^^28^266^12
 ;;^UTILITY(U,$J,358.3,4345,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4345,1,3,0)
 ;;=3^Walking Difficulty NEC
 ;;^UTILITY(U,$J,358.3,4345,1,4,0)
 ;;=4^R26.2
 ;;^UTILITY(U,$J,358.3,4345,2)
 ;;=^5019306
 ;;^UTILITY(U,$J,358.3,4346,0)
 ;;=R53.1^^28^266^13
 ;;^UTILITY(U,$J,358.3,4346,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4346,1,3,0)
 ;;=3^Weakness
 ;;^UTILITY(U,$J,358.3,4346,1,4,0)
 ;;=4^R53.1
 ;;^UTILITY(U,$J,358.3,4346,2)
 ;;=^5019516
 ;;^UTILITY(U,$J,358.3,4347,0)
 ;;=Z99.3^^28^266^14
 ;;^UTILITY(U,$J,358.3,4347,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4347,1,3,0)
 ;;=3^Wheelchair Dependence
 ;;^UTILITY(U,$J,358.3,4347,1,4,0)
 ;;=4^Z99.3
 ;;^UTILITY(U,$J,358.3,4347,2)
 ;;=^5063759
 ;;^UTILITY(U,$J,358.3,4348,0)
 ;;=99605^^29^267^1^^^^1
 ;;^UTILITY(U,$J,358.3,4348,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4348,1,2,0)
 ;;=2^MTMS BY PHARM,INIT 15 MIN
 ;;^UTILITY(U,$J,358.3,4348,1,3,0)
 ;;=3^99605
 ;;^UTILITY(U,$J,358.3,4349,0)
 ;;=99607^^29^267^2^^^^1
 ;;^UTILITY(U,$J,358.3,4349,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4349,1,2,0)
 ;;=2^MTMS BY PHARM, EA ADDL 15 MIN
 ;;^UTILITY(U,$J,358.3,4349,1,3,0)
 ;;=3^99607
