IBDEI08D ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,3358,1,4,0)
 ;;=4^E11.641
 ;;^UTILITY(U,$J,358.3,3358,2)
 ;;=^5002661
 ;;^UTILITY(U,$J,358.3,3359,0)
 ;;=E11.649^^28^252^24
 ;;^UTILITY(U,$J,358.3,3359,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3359,1,3,0)
 ;;=3^Diabetes Type 2 w/ Hypoglycemia w/o Coma
 ;;^UTILITY(U,$J,358.3,3359,1,4,0)
 ;;=4^E11.649
 ;;^UTILITY(U,$J,358.3,3359,2)
 ;;=^5002662
 ;;^UTILITY(U,$J,358.3,3360,0)
 ;;=E87.6^^28^252^46
 ;;^UTILITY(U,$J,358.3,3360,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3360,1,3,0)
 ;;=3^Hypokalemia
 ;;^UTILITY(U,$J,358.3,3360,1,4,0)
 ;;=4^E87.6
 ;;^UTILITY(U,$J,358.3,3360,2)
 ;;=^60610
 ;;^UTILITY(U,$J,358.3,3361,0)
 ;;=E83.42^^28^252^47
 ;;^UTILITY(U,$J,358.3,3361,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3361,1,3,0)
 ;;=3^Hypomagnesemia
 ;;^UTILITY(U,$J,358.3,3361,1,4,0)
 ;;=4^E83.42
 ;;^UTILITY(U,$J,358.3,3361,2)
 ;;=^5003003
 ;;^UTILITY(U,$J,358.3,3362,0)
 ;;=E87.1^^28^252^44
 ;;^UTILITY(U,$J,358.3,3362,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3362,1,3,0)
 ;;=3^Hypo-osmolality/Hyponatremia
 ;;^UTILITY(U,$J,358.3,3362,1,4,0)
 ;;=4^E87.1
 ;;^UTILITY(U,$J,358.3,3362,2)
 ;;=^5003019
 ;;^UTILITY(U,$J,358.3,3363,0)
 ;;=E03.9^^28^252^48
 ;;^UTILITY(U,$J,358.3,3363,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3363,1,3,0)
 ;;=3^Hypothyroidism,Unspec
 ;;^UTILITY(U,$J,358.3,3363,1,4,0)
 ;;=4^E03.9
 ;;^UTILITY(U,$J,358.3,3363,2)
 ;;=^5002476
 ;;^UTILITY(U,$J,358.3,3364,0)
 ;;=E86.1^^28^252^49
 ;;^UTILITY(U,$J,358.3,3364,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3364,1,3,0)
 ;;=3^Hypovolemia
 ;;^UTILITY(U,$J,358.3,3364,1,4,0)
 ;;=4^E86.1
 ;;^UTILITY(U,$J,358.3,3364,2)
 ;;=^332744
 ;;^UTILITY(U,$J,358.3,3365,0)
 ;;=E73.9^^28^252^52
 ;;^UTILITY(U,$J,358.3,3365,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3365,1,3,0)
 ;;=3^Lactose Intolerance,Unspec
 ;;^UTILITY(U,$J,358.3,3365,1,4,0)
 ;;=4^E73.9
 ;;^UTILITY(U,$J,358.3,3365,2)
 ;;=^5002914
 ;;^UTILITY(U,$J,358.3,3366,0)
 ;;=E46.^^28^252^55
 ;;^UTILITY(U,$J,358.3,3366,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3366,1,3,0)
 ;;=3^Malnutrition,Protein-Calorie,Unspec
 ;;^UTILITY(U,$J,358.3,3366,1,4,0)
 ;;=4^E46.
 ;;^UTILITY(U,$J,358.3,3366,2)
 ;;=^5002790
 ;;^UTILITY(U,$J,358.3,3367,0)
 ;;=E44.1^^28^252^53
 ;;^UTILITY(U,$J,358.3,3367,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3367,1,3,0)
 ;;=3^Malnutrition,Mild Protein-Calorie
 ;;^UTILITY(U,$J,358.3,3367,1,4,0)
 ;;=4^E44.1
 ;;^UTILITY(U,$J,358.3,3367,2)
 ;;=^5002788
 ;;^UTILITY(U,$J,358.3,3368,0)
 ;;=E44.0^^28^252^54
 ;;^UTILITY(U,$J,358.3,3368,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3368,1,3,0)
 ;;=3^Malnutrition,Moderate Protein-Calorie
 ;;^UTILITY(U,$J,358.3,3368,1,4,0)
 ;;=4^E44.0
 ;;^UTILITY(U,$J,358.3,3368,2)
 ;;=^5002787
 ;;^UTILITY(U,$J,358.3,3369,0)
 ;;=E63.9^^28^252^58
 ;;^UTILITY(U,$J,358.3,3369,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3369,1,3,0)
 ;;=3^Nutritional Deficiency,Unspec
 ;;^UTILITY(U,$J,358.3,3369,1,4,0)
 ;;=4^E63.9
 ;;^UTILITY(U,$J,358.3,3369,2)
 ;;=^5002819
 ;;^UTILITY(U,$J,358.3,3370,0)
 ;;=Z68.30^^28^252^60
 ;;^UTILITY(U,$J,358.3,3370,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3370,1,3,0)
 ;;=3^Obesity-BMI 30.0-30.9
 ;;^UTILITY(U,$J,358.3,3370,1,4,0)
 ;;=4^Z68.30
 ;;^UTILITY(U,$J,358.3,3370,2)
 ;;=^5063209
 ;;^UTILITY(U,$J,358.3,3371,0)
 ;;=Z68.31^^28^252^61
 ;;^UTILITY(U,$J,358.3,3371,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,3371,1,3,0)
 ;;=3^Obesity-BMI 31.0-31.9
 ;;^UTILITY(U,$J,358.3,3371,1,4,0)
 ;;=4^Z68.31
 ;;^UTILITY(U,$J,358.3,3371,2)
 ;;=^5063210
 ;;^UTILITY(U,$J,358.3,3372,0)
 ;;=Z68.32^^28^252^62
 ;;^UTILITY(U,$J,358.3,3372,1,0)
 ;;=^358.31IA^4^2
