IBDEI04C ; ; 20-FEB-2013
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;FEB 20, 2013
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,5428,1,2,0)
 ;;=2^173.91
 ;;^UTILITY(U,$J,358.3,5428,1,5,0)
 ;;=5^BCC of skin, unspecified site
 ;;^UTILITY(U,$J,358.3,5428,2)
 ;;=^340491
 ;;^UTILITY(U,$J,358.3,5429,0)
 ;;=173.92^^50^435^39
 ;;^UTILITY(U,$J,358.3,5429,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,5429,1,2,0)
 ;;=2^173.92
 ;;^UTILITY(U,$J,358.3,5429,1,5,0)
 ;;=5^SCC of skin, unspecified site
 ;;^UTILITY(U,$J,358.3,5429,2)
 ;;=^340492
 ;;^UTILITY(U,$J,358.3,5430,0)
 ;;=173.99^^50^435^40
 ;;^UTILITY(U,$J,358.3,5430,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,5430,1,2,0)
 ;;=2^173.99
 ;;^UTILITY(U,$J,358.3,5430,1,5,0)
 ;;=5^Other spec neoplasm skin, site unspec
 ;;^UTILITY(U,$J,358.3,5430,2)
 ;;=^340493
 ;;^UTILITY(U,$J,358.3,5431,0)
 ;;=99201^^51^436^1
 ;;^UTILITY(U,$J,358.3,5431,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5431,1,1,0)
 ;;=1^Problem Focus
 ;;^UTILITY(U,$J,358.3,5431,1,2,0)
 ;;=2^99201
 ;;^UTILITY(U,$J,358.3,5432,0)
 ;;=99202^^51^436^2
 ;;^UTILITY(U,$J,358.3,5432,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5432,1,1,0)
 ;;=1^Expanded Problem Focus
 ;;^UTILITY(U,$J,358.3,5432,1,2,0)
 ;;=2^99202
 ;;^UTILITY(U,$J,358.3,5433,0)
 ;;=99203^^51^436^3
 ;;^UTILITY(U,$J,358.3,5433,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5433,1,1,0)
 ;;=1^Detailed
 ;;^UTILITY(U,$J,358.3,5433,1,2,0)
 ;;=2^99203
 ;;^UTILITY(U,$J,358.3,5434,0)
 ;;=99204^^51^436^4
 ;;^UTILITY(U,$J,358.3,5434,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5434,1,1,0)
 ;;=1^Comprehensive, Moderate
 ;;^UTILITY(U,$J,358.3,5434,1,2,0)
 ;;=2^99204
 ;;^UTILITY(U,$J,358.3,5435,0)
 ;;=99205^^51^436^5
 ;;^UTILITY(U,$J,358.3,5435,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5435,1,1,0)
 ;;=1^Comprehensive, High
 ;;^UTILITY(U,$J,358.3,5435,1,2,0)
 ;;=2^99205
 ;;^UTILITY(U,$J,358.3,5436,0)
 ;;=99211^^51^437^1
 ;;^UTILITY(U,$J,358.3,5436,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5436,1,1,0)
 ;;=1^Brief Visit
 ;;^UTILITY(U,$J,358.3,5436,1,2,0)
 ;;=2^99211
 ;;^UTILITY(U,$J,358.3,5437,0)
 ;;=99212^^51^437^2
 ;;^UTILITY(U,$J,358.3,5437,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5437,1,1,0)
 ;;=1^Problem Focus
 ;;^UTILITY(U,$J,358.3,5437,1,2,0)
 ;;=2^99212
 ;;^UTILITY(U,$J,358.3,5438,0)
 ;;=99213^^51^437^3
 ;;^UTILITY(U,$J,358.3,5438,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5438,1,1,0)
 ;;=1^Expanded Problem Focus
 ;;^UTILITY(U,$J,358.3,5438,1,2,0)
 ;;=2^99213
 ;;^UTILITY(U,$J,358.3,5439,0)
 ;;=99214^^51^437^4
 ;;^UTILITY(U,$J,358.3,5439,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5439,1,1,0)
 ;;=1^Detailed
 ;;^UTILITY(U,$J,358.3,5439,1,2,0)
 ;;=2^99214
 ;;^UTILITY(U,$J,358.3,5440,0)
 ;;=99215^^51^437^5
 ;;^UTILITY(U,$J,358.3,5440,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5440,1,1,0)
 ;;=1^Comprehensive
 ;;^UTILITY(U,$J,358.3,5440,1,2,0)
 ;;=2^99215
 ;;^UTILITY(U,$J,358.3,5441,0)
 ;;=99241^^51^438^1
 ;;^UTILITY(U,$J,358.3,5441,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5441,1,1,0)
 ;;=1^Problem Focus
 ;;^UTILITY(U,$J,358.3,5441,1,2,0)
 ;;=2^99241
 ;;^UTILITY(U,$J,358.3,5442,0)
 ;;=99242^^51^438^2
 ;;^UTILITY(U,$J,358.3,5442,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5442,1,1,0)
 ;;=1^Expanded Problem Focus
 ;;^UTILITY(U,$J,358.3,5442,1,2,0)
 ;;=2^99242
 ;;^UTILITY(U,$J,358.3,5443,0)
 ;;=99243^^51^438^3
 ;;^UTILITY(U,$J,358.3,5443,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5443,1,1,0)
 ;;=1^Detailed
 ;;^UTILITY(U,$J,358.3,5443,1,2,0)
 ;;=2^99243
 ;;^UTILITY(U,$J,358.3,5444,0)
 ;;=99244^^51^438^4
 ;;^UTILITY(U,$J,358.3,5444,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5444,1,1,0)
 ;;=1^Comprehensive, Moderate
 ;;^UTILITY(U,$J,358.3,5444,1,2,0)
 ;;=2^99244
 ;;^UTILITY(U,$J,358.3,5445,0)
 ;;=99245^^51^438^5
 ;;^UTILITY(U,$J,358.3,5445,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5445,1,1,0)
 ;;=1^Comprehensive, High
 ;;^UTILITY(U,$J,358.3,5445,1,2,0)
 ;;=2^99245
 ;;^UTILITY(U,$J,358.3,5446,0)
 ;;=99385^^51^439^1
 ;;^UTILITY(U,$J,358.3,5446,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5446,1,1,0)
 ;;=1^Init Comp PM Age 18-39
 ;;^UTILITY(U,$J,358.3,5446,1,2,0)
 ;;=2^99385
 ;;^UTILITY(U,$J,358.3,5447,0)
 ;;=99386^^51^439^2
 ;;^UTILITY(U,$J,358.3,5447,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5447,1,1,0)
 ;;=1^Init Comp PM Age 40-64
 ;;^UTILITY(U,$J,358.3,5447,1,2,0)
 ;;=2^99386
 ;;^UTILITY(U,$J,358.3,5448,0)
 ;;=99387^^51^439^3
 ;;^UTILITY(U,$J,358.3,5448,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5448,1,1,0)
 ;;=1^Init Comp PM Age > 65
 ;;^UTILITY(U,$J,358.3,5448,1,2,0)
 ;;=2^99387
 ;;^UTILITY(U,$J,358.3,5449,0)
 ;;=99395^^51^439^4
 ;;^UTILITY(U,$J,358.3,5449,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5449,1,1,0)
 ;;=1^Est Comp PM Age 18-39
 ;;^UTILITY(U,$J,358.3,5449,1,2,0)
 ;;=2^99395
 ;;^UTILITY(U,$J,358.3,5450,0)
 ;;=99396^^51^439^5
 ;;^UTILITY(U,$J,358.3,5450,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5450,1,1,0)
 ;;=1^Est Comp PM Age 40-64
 ;;^UTILITY(U,$J,358.3,5450,1,2,0)
 ;;=2^99396
 ;;^UTILITY(U,$J,358.3,5451,0)
 ;;=99397^^51^439^6
 ;;^UTILITY(U,$J,358.3,5451,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,5451,1,1,0)
 ;;=1^Est Comp PM Age > 65
 ;;^UTILITY(U,$J,358.3,5451,1,2,0)
 ;;=2^99397
 ;;^UTILITY(U,$J,358.3,5452,0)
 ;;=99401^^52^440^1^^^^1
 ;;^UTILITY(U,$J,358.3,5452,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5452,1,2,0)
 ;;=2^99401
 ;;^UTILITY(U,$J,358.3,5452,1,3,0)
 ;;=3^PREVENTIVE COUNSELING, 15 MIN
 ;;^UTILITY(U,$J,358.3,5453,0)
 ;;=99402^^52^440^2^^^^1
 ;;^UTILITY(U,$J,358.3,5453,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5453,1,2,0)
 ;;=2^99402
 ;;^UTILITY(U,$J,358.3,5453,1,3,0)
 ;;=3^PREVENTIVE COUNSELING, 30 MIN
 ;;^UTILITY(U,$J,358.3,5454,0)
 ;;=99403^^52^440^3^^^^1
 ;;^UTILITY(U,$J,358.3,5454,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5454,1,2,0)
 ;;=2^99403
 ;;^UTILITY(U,$J,358.3,5454,1,3,0)
 ;;=3^PREVENTIVE COUNSELING, 45 MIN
 ;;^UTILITY(U,$J,358.3,5455,0)
 ;;=99404^^52^440^4^^^^1
 ;;^UTILITY(U,$J,358.3,5455,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5455,1,2,0)
 ;;=2^99404
 ;;^UTILITY(U,$J,358.3,5455,1,3,0)
 ;;=3^PREVENTIVE COUNSELING, 60 MIN
 ;;^UTILITY(U,$J,358.3,5456,0)
 ;;=10060^^52^441^10^^^^1
 ;;^UTILITY(U,$J,358.3,5456,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5456,1,2,0)
 ;;=2^10060
 ;;^UTILITY(U,$J,358.3,5456,1,3,0)
 ;;=3^I&D ABSCESS, SIMPLE or SINGLE
 ;;^UTILITY(U,$J,358.3,5457,0)
 ;;=10061^^52^441^9^^^^1
 ;;^UTILITY(U,$J,358.3,5457,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5457,1,2,0)
 ;;=2^10061
 ;;^UTILITY(U,$J,358.3,5457,1,3,0)
 ;;=3^I&D ABSCESS, COMPLI or MULTI
 ;;^UTILITY(U,$J,358.3,5458,0)
 ;;=10120^^52^441^14^^^^1
 ;;^UTILITY(U,$J,358.3,5458,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5458,1,2,0)
 ;;=2^10120
 ;;^UTILITY(U,$J,358.3,5458,1,3,0)
 ;;=3^REM FB, SUBCUT;SIMPLE
 ;;^UTILITY(U,$J,358.3,5459,0)
 ;;=10121^^52^441^13^^^^1
 ;;^UTILITY(U,$J,358.3,5459,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5459,1,2,0)
 ;;=2^10121
 ;;^UTILITY(U,$J,358.3,5459,1,3,0)
 ;;=3^REM FB, COMPLICATED
 ;;^UTILITY(U,$J,358.3,5460,0)
 ;;=11042^^52^441^6^^^^1
 ;;^UTILITY(U,$J,358.3,5460,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5460,1,2,0)
 ;;=2^11042
 ;;^UTILITY(U,$J,358.3,5460,1,3,0)
 ;;=3^DEBRIDE SKIN,SQ TISSUE,1st 20 sq cm
 ;;^UTILITY(U,$J,358.3,5461,0)
 ;;=11045^^52^441^3^^^^1
 ;;^UTILITY(U,$J,358.3,5461,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5461,1,2,0)
 ;;=2^11045
 ;;^UTILITY(U,$J,358.3,5461,1,3,0)
 ;;=3^DEB SKIN,SQ TISS,ADD 20 sq cm
 ;;^UTILITY(U,$J,358.3,5462,0)
 ;;=11043^^52^441^1^^^^1
 ;;^UTILITY(U,$J,358.3,5462,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5462,1,2,0)
 ;;=2^11043
 ;;^UTILITY(U,$J,358.3,5462,1,3,0)
 ;;=3^DEB MUSC/FASC 1st 20sq cm or <
 ;;^UTILITY(U,$J,358.3,5463,0)
 ;;=11046^^52^441^2^^^^1
 ;;^UTILITY(U,$J,358.3,5463,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5463,1,2,0)
 ;;=2^11046
 ;;^UTILITY(U,$J,358.3,5463,1,3,0)
 ;;=3^DEB MUSC/FASC,EA ADD 20sq cm
 ;;^UTILITY(U,$J,358.3,5464,0)
 ;;=11044^^52^441^4^^^^1
 ;;^UTILITY(U,$J,358.3,5464,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5464,1,2,0)
 ;;=2^11044
 ;;^UTILITY(U,$J,358.3,5464,1,3,0)
 ;;=3^DEBRIDE BONE UP TO 20sq cm
 ;;^UTILITY(U,$J,358.3,5465,0)
 ;;=11047^^52^441^5^^^^1
 ;;^UTILITY(U,$J,358.3,5465,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5465,1,2,0)
 ;;=2^11047
 ;;^UTILITY(U,$J,358.3,5465,1,3,0)
 ;;=3^DEBRIDE BONE,EA ADDL 20sq cm
 ;;^UTILITY(U,$J,358.3,5466,0)
 ;;=97597^^52^441^8^^^^1
 ;;^UTILITY(U,$J,358.3,5466,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5466,1,2,0)
 ;;=2^97597
 ;;^UTILITY(U,$J,358.3,5466,1,3,0)
 ;;=3^DEBRIDE,OPEN WND 20SQ CM/<
 ;;^UTILITY(U,$J,358.3,5467,0)
 ;;=97598^^52^441^7^^^^1
 ;;^UTILITY(U,$J,358.3,5467,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5467,1,2,0)
 ;;=2^97598
 ;;^UTILITY(U,$J,358.3,5467,1,3,0)
 ;;=3^DEBRIDE,EA ADDTL 20SQ CM
 ;;^UTILITY(U,$J,358.3,5468,0)
 ;;=97602^^52^441^15^^^^1
 ;;^UTILITY(U,$J,358.3,5468,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5468,1,2,0)
 ;;=2^97602
 ;;^UTILITY(U,$J,358.3,5468,1,3,0)
 ;;=3^REM OF DEVITAL TISS NON-SELECT
 ;;^UTILITY(U,$J,358.3,5469,0)
 ;;=97605^^52^441^11^^^^1
 ;;^UTILITY(U,$J,358.3,5469,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5469,1,2,0)
 ;;=2^97605
 ;;^UTILITY(U,$J,358.3,5469,1,3,0)
 ;;=3^NEG PRESS WND TX < 51SQ CM
 ;;^UTILITY(U,$J,358.3,5470,0)
 ;;=97606^^52^441^12^^^^1
 ;;^UTILITY(U,$J,358.3,5470,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5470,1,2,0)
 ;;=2^97606
 ;;^UTILITY(U,$J,358.3,5470,1,3,0)
 ;;=3^NEG PRESS WND TX > 50SQ CM
 ;;^UTILITY(U,$J,358.3,5471,0)
 ;;=98960^^52^442^1^^^^1
 ;;^UTILITY(U,$J,358.3,5471,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5471,1,2,0)
 ;;=2^98960
 ;;^UTILITY(U,$J,358.3,5471,1,3,0)
 ;;=3^SELF-MGMT ED/TRAIN 1 PT,30 MIN
 ;;^UTILITY(U,$J,358.3,5472,0)
 ;;=98961^^52^442^2^^^^1
 ;;^UTILITY(U,$J,358.3,5472,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5472,1,2,0)
 ;;=2^98961
 ;;^UTILITY(U,$J,358.3,5472,1,3,0)
 ;;=3^SELF-MGMT ED/TRN 2-4 PT,30 MIN
 ;;^UTILITY(U,$J,358.3,5473,0)
 ;;=98962^^52^442^3^^^^1