IBDEI00N ; ; 20-FEB-2013
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;FEB 20, 2013
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,156,1,5,0)
 ;;=5^Acute Alc Intox, Cont
 ;;^UTILITY(U,$J,358.3,156,2)
 ;;=^268184
 ;;^UTILITY(U,$J,358.3,157,0)
 ;;=303.02^^1^13^2
 ;;^UTILITY(U,$J,358.3,157,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,157,1,2,0)
 ;;=2^303.02
 ;;^UTILITY(U,$J,358.3,157,1,5,0)
 ;;=5^Acute Alc Intox, Episod
 ;;^UTILITY(U,$J,358.3,157,2)
 ;;=^268185
 ;;^UTILITY(U,$J,358.3,158,0)
 ;;=305.71^^1^13^15
 ;;^UTILITY(U,$J,358.3,158,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,158,1,2,0)
 ;;=2^305.71
 ;;^UTILITY(U,$J,358.3,158,1,5,0)
 ;;=5^Amphet Abuse, Cont
 ;;^UTILITY(U,$J,358.3,158,2)
 ;;=^268251
 ;;^UTILITY(U,$J,358.3,159,0)
 ;;=305.72^^1^13^16
 ;;^UTILITY(U,$J,358.3,159,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,159,1,2,0)
 ;;=2^305.72
 ;;^UTILITY(U,$J,358.3,159,1,5,0)
 ;;=5^Amphet Abuse, Episod
 ;;^UTILITY(U,$J,358.3,159,2)
 ;;=^268252
 ;;^UTILITY(U,$J,358.3,160,0)
 ;;=304.41^^1^13^18
 ;;^UTILITY(U,$J,358.3,160,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,160,1,2,0)
 ;;=2^304.41
 ;;^UTILITY(U,$J,358.3,160,1,5,0)
 ;;=5^Amphet Dependence, Cont
 ;;^UTILITY(U,$J,358.3,160,2)
 ;;=^268205
 ;;^UTILITY(U,$J,358.3,161,0)
 ;;=304.42^^1^13^19
 ;;^UTILITY(U,$J,358.3,161,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,161,1,2,0)
 ;;=2^304.42
 ;;^UTILITY(U,$J,358.3,161,1,5,0)
 ;;=5^Amphet Dependence, Episod
 ;;^UTILITY(U,$J,358.3,161,2)
 ;;=^268206
 ;;^UTILITY(U,$J,358.3,162,0)
 ;;=305.41^^1^13^23
 ;;^UTILITY(U,$J,358.3,162,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,162,1,2,0)
 ;;=2^305.41
 ;;^UTILITY(U,$J,358.3,162,1,5,0)
 ;;=5^Anxiolytic Abuse, Cont
 ;;^UTILITY(U,$J,358.3,162,2)
 ;;=^268241
 ;;^UTILITY(U,$J,358.3,163,0)
 ;;=305.42^^1^13^24
 ;;^UTILITY(U,$J,358.3,163,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,163,1,2,0)
 ;;=2^305.42
 ;;^UTILITY(U,$J,358.3,163,1,5,0)
 ;;=5^Anxiolytic Abuse, Episod
 ;;^UTILITY(U,$J,358.3,163,2)
 ;;=^268242
 ;;^UTILITY(U,$J,358.3,164,0)
 ;;=304.11^^1^13^30
 ;;^UTILITY(U,$J,358.3,164,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,164,1,2,0)
 ;;=2^304.11
 ;;^UTILITY(U,$J,358.3,164,1,5,0)
 ;;=5^Anxiolytic Dependence, Cont
 ;;^UTILITY(U,$J,358.3,164,2)
 ;;=^268195
 ;;^UTILITY(U,$J,358.3,165,0)
 ;;=304.12^^1^13^27
 ;;^UTILITY(U,$J,358.3,165,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,165,1,2,0)
 ;;=2^304.12
 ;;^UTILITY(U,$J,358.3,165,1,5,0)
 ;;=5^Anxiolytic Depend, Episod
 ;;^UTILITY(U,$J,358.3,165,2)
 ;;=^268196
 ;;^UTILITY(U,$J,358.3,166,0)
 ;;=305.21^^1^13^31
 ;;^UTILITY(U,$J,358.3,166,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,166,1,2,0)
 ;;=2^305.21
 ;;^UTILITY(U,$J,358.3,166,1,5,0)
 ;;=5^Cannabis Abuse, Cont
 ;;^UTILITY(U,$J,358.3,166,2)
 ;;=^268234
 ;;^UTILITY(U,$J,358.3,167,0)
 ;;=305.22^^1^13^32
 ;;^UTILITY(U,$J,358.3,167,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,167,1,2,0)
 ;;=2^305.22
 ;;^UTILITY(U,$J,358.3,167,1,5,0)
 ;;=5^Cannabis Abuse, Episod
 ;;^UTILITY(U,$J,358.3,167,2)
 ;;=^268235
 ;;^UTILITY(U,$J,358.3,168,0)
 ;;=304.31^^1^13^35
 ;;^UTILITY(U,$J,358.3,168,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,168,1,2,0)
 ;;=2^304.31
 ;;^UTILITY(U,$J,358.3,168,1,5,0)
 ;;=5^Cannabis Dependence, Cont
 ;;^UTILITY(U,$J,358.3,168,2)
 ;;=^268201
 ;;^UTILITY(U,$J,358.3,169,0)
 ;;=304.32^^1^13^36
 ;;^UTILITY(U,$J,358.3,169,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,169,1,2,0)
 ;;=2^304.32
 ;;^UTILITY(U,$J,358.3,169,1,5,0)
 ;;=5^Cannabis Dependence, Episod
 ;;^UTILITY(U,$J,358.3,169,2)
 ;;=^268202
 ;;^UTILITY(U,$J,358.3,170,0)
 ;;=305.61^^1^13^39
 ;;^UTILITY(U,$J,358.3,170,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,170,1,2,0)
 ;;=2^305.61
 ;;^UTILITY(U,$J,358.3,170,1,5,0)
 ;;=5^Cocaine Abuse, Cont
 ;;^UTILITY(U,$J,358.3,170,2)
 ;;=^268247
 ;;^UTILITY(U,$J,358.3,171,0)
 ;;=305.62^^1^13^40
 ;;^UTILITY(U,$J,358.3,171,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,171,1,2,0)
 ;;=2^305.62
 ;;^UTILITY(U,$J,358.3,171,1,5,0)
 ;;=5^Cocaine Abuse, Episod
 ;;^UTILITY(U,$J,358.3,171,2)
 ;;=^268248
 ;;^UTILITY(U,$J,358.3,172,0)
 ;;=304.21^^1^13^45
 ;;^UTILITY(U,$J,358.3,172,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,172,1,2,0)
 ;;=2^304.21
 ;;^UTILITY(U,$J,358.3,172,1,5,0)
 ;;=5^Cociane Depend, Cont
 ;;^UTILITY(U,$J,358.3,172,2)
 ;;=^268198
 ;;^UTILITY(U,$J,358.3,173,0)
 ;;=304.22^^1^13^43
 ;;^UTILITY(U,$J,358.3,173,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,173,1,2,0)
 ;;=2^304.22
 ;;^UTILITY(U,$J,358.3,173,1,5,0)
 ;;=5^Cocaine Depend, Episod
 ;;^UTILITY(U,$J,358.3,173,2)
 ;;=^268199
 ;;^UTILITY(U,$J,358.3,174,0)
 ;;=304.81^^1^13^46
 ;;^UTILITY(U,$J,358.3,174,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,174,1,2,0)
 ;;=2^304.81
 ;;^UTILITY(U,$J,358.3,174,1,5,0)
 ;;=5^Combo Drug Dep, Cont
 ;;^UTILITY(U,$J,358.3,174,2)
 ;;=^268219
 ;;^UTILITY(U,$J,358.3,175,0)
 ;;=304.82^^1^13^47
 ;;^UTILITY(U,$J,358.3,175,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,175,1,2,0)
 ;;=2^304.82
 ;;^UTILITY(U,$J,358.3,175,1,5,0)
 ;;=5^Combo Drug Dep, Episod
 ;;^UTILITY(U,$J,358.3,175,2)
 ;;=^268220
 ;;^UTILITY(U,$J,358.3,176,0)
 ;;=304.61^^1^13^79
 ;;^UTILITY(U,$J,358.3,176,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,176,1,2,0)
 ;;=2^304.61
 ;;^UTILITY(U,$J,358.3,176,1,5,0)
 ;;=5^Other Drug Depend, Cont
 ;;^UTILITY(U,$J,358.3,176,2)
 ;;=^268211
 ;;^UTILITY(U,$J,358.3,177,0)
 ;;=304.62^^1^13^76
 ;;^UTILITY(U,$J,358.3,177,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,177,1,2,0)
 ;;=2^304.62
 ;;^UTILITY(U,$J,358.3,177,1,5,0)
 ;;=5^Other Drug Dep, Episod
 ;;^UTILITY(U,$J,358.3,177,2)
 ;;=^268212
 ;;^UTILITY(U,$J,358.3,178,0)
 ;;=304.71^^1^13^63
 ;;^UTILITY(U,$J,358.3,178,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,178,1,2,0)
 ;;=2^304.71
 ;;^UTILITY(U,$J,358.3,178,1,5,0)
 ;;=5^Opioid + Other Dep, Cont
 ;;^UTILITY(U,$J,358.3,178,2)
 ;;=^268215
 ;;^UTILITY(U,$J,358.3,179,0)
 ;;=305.31^^1^13^61
 ;;^UTILITY(U,$J,358.3,179,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,179,1,2,0)
 ;;=2^305.31
 ;;^UTILITY(U,$J,358.3,179,1,5,0)
 ;;=5^Hallucongent Abuse, Cont
 ;;^UTILITY(U,$J,358.3,179,2)
 ;;=^268237
 ;;^UTILITY(U,$J,358.3,180,0)
 ;;=304.72^^1^13^64
 ;;^UTILITY(U,$J,358.3,180,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,180,1,2,0)
 ;;=2^304.72
 ;;^UTILITY(U,$J,358.3,180,1,5,0)
 ;;=5^Opioid + Other Dep, Episod
 ;;^UTILITY(U,$J,358.3,180,2)
 ;;=^268216
 ;;^UTILITY(U,$J,358.3,181,0)
 ;;=305.32^^1^13^54
 ;;^UTILITY(U,$J,358.3,181,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,181,1,2,0)
 ;;=2^305.32
 ;;^UTILITY(U,$J,358.3,181,1,5,0)
 ;;=5^Hallucinogen Abuse, Episod
 ;;^UTILITY(U,$J,358.3,181,2)
 ;;=^268238
 ;;^UTILITY(U,$J,358.3,182,0)
 ;;=304.51^^1^13^57
 ;;^UTILITY(U,$J,358.3,182,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,182,1,2,0)
 ;;=2^304.51
 ;;^UTILITY(U,$J,358.3,182,1,5,0)
 ;;=5^Hallucinogen Depend, Cont
 ;;^UTILITY(U,$J,358.3,182,2)
 ;;=^268208
 ;;^UTILITY(U,$J,358.3,183,0)
 ;;=304.52^^1^13^58
 ;;^UTILITY(U,$J,358.3,183,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,183,1,2,0)
 ;;=2^304.52
 ;;^UTILITY(U,$J,358.3,183,1,5,0)
 ;;=5^Hallucinogen Depend, Episod
 ;;^UTILITY(U,$J,358.3,183,2)
 ;;=^268209
 ;;^UTILITY(U,$J,358.3,184,0)
 ;;=305.51^^1^13^67
 ;;^UTILITY(U,$J,358.3,184,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,184,1,2,0)
 ;;=2^305.51
 ;;^UTILITY(U,$J,358.3,184,1,5,0)
 ;;=5^Opioid Abuse Continuous
 ;;^UTILITY(U,$J,358.3,184,2)
 ;;=^268244
 ;;^UTILITY(U,$J,358.3,185,0)
 ;;=305.52^^1^13^68
 ;;^UTILITY(U,$J,358.3,185,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,185,1,2,0)
 ;;=2^305.52
 ;;^UTILITY(U,$J,358.3,185,1,5,0)
 ;;=5^Opioid Abuse, Episod
 ;;^UTILITY(U,$J,358.3,185,2)
 ;;=Opioid Abuse, Episod^268245
 ;;^UTILITY(U,$J,358.3,186,0)
 ;;=304.01^^1^13^71
 ;;^UTILITY(U,$J,358.3,186,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,186,1,2,0)
 ;;=2^304.01
 ;;^UTILITY(U,$J,358.3,186,1,5,0)
 ;;=5^Opioid Depend, Cont
 ;;^UTILITY(U,$J,358.3,186,2)
 ;;=^268191
 ;;^UTILITY(U,$J,358.3,187,0)
 ;;=304.02^^1^13^72
 ;;^UTILITY(U,$J,358.3,187,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,187,1,2,0)
 ;;=2^304.02
 ;;^UTILITY(U,$J,358.3,187,1,5,0)
 ;;=5^Opioid Depend, Episod
 ;;^UTILITY(U,$J,358.3,187,2)
 ;;=^268192
 ;;^UTILITY(U,$J,358.3,188,0)
 ;;=303.03^^1^13^4
 ;;^UTILITY(U,$J,358.3,188,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,188,1,2,0)
 ;;=2^303.03
 ;;^UTILITY(U,$J,358.3,188,1,5,0)
 ;;=5^Acute Alc Intox, Remission
 ;;^UTILITY(U,$J,358.3,188,2)
 ;;=^268186
 ;;^UTILITY(U,$J,358.3,189,0)
 ;;=304.03^^1^13^75
 ;;^UTILITY(U,$J,358.3,189,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,189,1,2,0)
 ;;=2^304.03
 ;;^UTILITY(U,$J,358.3,189,1,5,0)
 ;;=5^Opioid Depend, Remission
 ;;^UTILITY(U,$J,358.3,189,2)
 ;;=^268193
 ;;^UTILITY(U,$J,358.3,190,0)
 ;;=305.91^^1^13^52
 ;;^UTILITY(U,$J,358.3,190,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,190,1,2,0)
 ;;=2^305.91
 ;;^UTILITY(U,$J,358.3,190,1,5,0)
 ;;=5^Drug Abuse,Continuous
 ;;^UTILITY(U,$J,358.3,190,2)
 ;;=^268259
 ;;^UTILITY(U,$J,358.3,191,0)
 ;;=305.92^^1^13^53
 ;;^UTILITY(U,$J,358.3,191,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,191,1,2,0)
 ;;=2^305.92
 ;;^UTILITY(U,$J,358.3,191,1,5,0)
 ;;=5^Drug Abuse,Episodic
 ;;^UTILITY(U,$J,358.3,191,2)
 ;;=^268260
 ;;^UTILITY(U,$J,358.3,192,0)
 ;;=V65.2^^1^14^16
 ;;^UTILITY(U,$J,358.3,192,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,192,1,2,0)
 ;;=2^V65.2
 ;;^UTILITY(U,$J,358.3,192,1,5,0)
 ;;=5^Malingering
 ;;^UTILITY(U,$J,358.3,192,2)
 ;;=^92393
 ;;^UTILITY(U,$J,358.3,193,0)
 ;;=V65.49^^1^14^20
 ;;^UTILITY(U,$J,358.3,193,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,193,1,2,0)
 ;;=2^V65.49
 ;;^UTILITY(U,$J,358.3,193,1,5,0)
 ;;=5^Other Specified Counseling
 ;;^UTILITY(U,$J,358.3,193,2)
 ;;=^303471
 ;;^UTILITY(U,$J,358.3,194,0)
 ;;=V61.10^^1^14^22
 ;;^UTILITY(U,$J,358.3,194,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,194,1,2,0)
 ;;=2^V61.10
 ;;^UTILITY(U,$J,358.3,194,1,5,0)
 ;;=5^Partner Relational Problem
 ;;^UTILITY(U,$J,358.3,194,2)
 ;;=^74110
 ;;^UTILITY(U,$J,358.3,195,0)
 ;;=V61.20^^1^14^21
 ;;^UTILITY(U,$J,358.3,195,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,195,1,2,0)
 ;;=2^V61.20