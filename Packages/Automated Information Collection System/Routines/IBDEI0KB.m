IBDEI0KB ; ; 19-NOV-2014
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,27480,1,3,0)
 ;;=3^Thyrotoxicosis w/o Crisis Thyroid Eye Dis
 ;;^UTILITY(U,$J,358.3,27480,1,4,0)
 ;;=4^242.90
 ;;^UTILITY(U,$J,358.3,27480,2)
 ;;=Thyroid Eye Disease^267811^376.21
 ;;^UTILITY(U,$J,358.3,27481,0)
 ;;=374.05^^155^1744^100
 ;;^UTILITY(U,$J,358.3,27481,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27481,1,3,0)
 ;;=3^Trichiasis w/o Entropion
 ;;^UTILITY(U,$J,358.3,27481,1,4,0)
 ;;=4^374.05
 ;;^UTILITY(U,$J,358.3,27481,2)
 ;;=Trichiasis^269082
 ;;^UTILITY(U,$J,358.3,27482,0)
 ;;=375.21^^155^1744^69
 ;;^UTILITY(U,$J,358.3,27482,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27482,1,3,0)
 ;;=3^Lacrimal,Epiphora,Excess
 ;;^UTILITY(U,$J,358.3,27482,1,4,0)
 ;;=4^375.21
 ;;^UTILITY(U,$J,358.3,27482,2)
 ;;=Epiphora, excess lacrimation^269137
 ;;^UTILITY(U,$J,358.3,27483,0)
 ;;=375.22^^155^1744^23
 ;;^UTILITY(U,$J,358.3,27483,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27483,1,3,0)
 ;;=3^Epiphora, Insuff Drainage
 ;;^UTILITY(U,$J,358.3,27483,1,4,0)
 ;;=4^375.22
 ;;^UTILITY(U,$J,358.3,27483,2)
 ;;=Epiphora, Insuff Drainage^269138
 ;;^UTILITY(U,$J,358.3,27484,0)
 ;;=375.53^^155^1744^67
 ;;^UTILITY(U,$J,358.3,27484,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27484,1,3,0)
 ;;=3^Lacrimal,Canal Stenosis
 ;;^UTILITY(U,$J,358.3,27484,1,4,0)
 ;;=4^375.53
 ;;^UTILITY(U,$J,358.3,27484,2)
 ;;=Lacrimal Canal Stenosis^269154
 ;;^UTILITY(U,$J,358.3,27485,0)
 ;;=375.51^^155^1744^70
 ;;^UTILITY(U,$J,358.3,27485,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27485,1,3,0)
 ;;=3^Lacrimal,Punctum Eversion
 ;;^UTILITY(U,$J,358.3,27485,1,4,0)
 ;;=4^375.51
 ;;^UTILITY(U,$J,358.3,27485,2)
 ;;=Lacrimal Punctum Eversion^269150
 ;;^UTILITY(U,$J,358.3,27486,0)
 ;;=375.54^^155^1744^71
 ;;^UTILITY(U,$J,358.3,27486,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27486,1,3,0)
 ;;=3^Lacrimal,Sac Stenosis
 ;;^UTILITY(U,$J,358.3,27486,1,4,0)
 ;;=4^375.54
 ;;^UTILITY(U,$J,358.3,27486,2)
 ;;=Lacrimal Punctum Stenosis^269156
 ;;^UTILITY(U,$J,358.3,27487,0)
 ;;=375.56^^155^1744^78
 ;;^UTILITY(U,$J,358.3,27487,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27487,1,3,0)
 ;;=3^Nasolacrimal Duct Obstruction
 ;;^UTILITY(U,$J,358.3,27487,1,4,0)
 ;;=4^375.56
 ;;^UTILITY(U,$J,358.3,27487,2)
 ;;=Obstruction, Nasolacrimal duct^269159
 ;;^UTILITY(U,$J,358.3,27488,0)
 ;;=376.30^^155^1744^87
 ;;^UTILITY(U,$J,358.3,27488,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27488,1,3,0)
 ;;=3^Orbit Exophalmos
 ;;^UTILITY(U,$J,358.3,27488,1,4,0)
 ;;=4^376.30
 ;;^UTILITY(U,$J,358.3,27488,2)
 ;;=Exophthalmos^43683
 ;;^UTILITY(U,$J,358.3,27489,0)
 ;;=802.8^^155^1744^88
 ;;^UTILITY(U,$J,358.3,27489,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27489,1,3,0)
 ;;=3^Orbit Fracture
 ;;^UTILITY(U,$J,358.3,27489,1,4,0)
 ;;=4^802.8
 ;;^UTILITY(U,$J,358.3,27489,2)
 ;;=Fracture of Orbit^25315
 ;;^UTILITY(U,$J,358.3,27490,0)
 ;;=870.4^^155^1744^92
 ;;^UTILITY(U,$J,358.3,27490,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27490,1,3,0)
 ;;=3^Orbit Penetrating Wound w/ Foreign Body
 ;;^UTILITY(U,$J,358.3,27490,1,4,0)
 ;;=4^870.4
 ;;^UTILITY(U,$J,358.3,27490,2)
 ;;=Foreign Body in Orbit^274883
 ;;^UTILITY(U,$J,358.3,27491,0)
 ;;=376.10^^155^1744^91
 ;;^UTILITY(U,$J,358.3,27491,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27491,1,3,0)
 ;;=3^Orbit Inflammation,Chronic
 ;;^UTILITY(U,$J,358.3,27491,1,4,0)
 ;;=4^376.10
 ;;^UTILITY(U,$J,358.3,27491,2)
 ;;=Orbital Inflammation^269175
 ;;^UTILITY(U,$J,358.3,27492,0)
 ;;=360.41^^155^1744^66
 ;;^UTILITY(U,$J,358.3,27492,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27492,1,3,0)
 ;;=3^Hypotensive Blind Phthisis,Blind
 ;;^UTILITY(U,$J,358.3,27492,1,4,0)
 ;;=4^360.41
 ;;^UTILITY(U,$J,358.3,27492,2)
 ;;=Phthisis^268564
 ;;^UTILITY(U,$J,358.3,27493,0)
 ;;=376.50^^155^1744^86
 ;;^UTILITY(U,$J,358.3,27493,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27493,1,3,0)
 ;;=3^Orbit Enopthalmos
 ;;^UTILITY(U,$J,358.3,27493,1,4,0)
 ;;=4^376.50
 ;;^UTILITY(U,$J,358.3,27493,2)
 ;;=Enopthalmos^40801
 ;;^UTILITY(U,$J,358.3,27494,0)
 ;;=239.2^^155^1744^95
 ;;^UTILITY(U,$J,358.3,27494,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27494,1,3,0)
 ;;=3^Orbital Tumor,Neopl,Unspec Nature
 ;;^UTILITY(U,$J,358.3,27494,1,4,0)
 ;;=4^239.2
 ;;^UTILITY(U,$J,358.3,27494,2)
 ;;=Orbital Tumor^267783
 ;;^UTILITY(U,$J,358.3,27495,0)
 ;;=239.7^^155^1744^79
 ;;^UTILITY(U,$J,358.3,27495,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27495,1,3,0)
 ;;=3^Optic Nerve Neop,Unspec Nature
 ;;^UTILITY(U,$J,358.3,27495,1,4,0)
 ;;=4^239.7
 ;;^UTILITY(U,$J,358.3,27495,2)
 ;;=Optic Nerve Tumor^267785
 ;;^UTILITY(U,$J,358.3,27496,0)
 ;;=V52.2^^155^1744^2
 ;;^UTILITY(U,$J,358.3,27496,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27496,1,3,0)
 ;;=3^Artificial Eye Prosthethic Check
 ;;^UTILITY(U,$J,358.3,27496,1,4,0)
 ;;=4^V52.2
 ;;^UTILITY(U,$J,358.3,27496,2)
 ;;=Prosthethic Eye Check^295498^V43.0
 ;;^UTILITY(U,$J,358.3,27497,0)
 ;;=173.10^^155^1744^56
 ;;^UTILITY(U,$J,358.3,27497,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27497,1,3,0)
 ;;=3^Eyelid/Canthus,Malig Neopl,Unspec
 ;;^UTILITY(U,$J,358.3,27497,1,4,0)
 ;;=4^173.10
 ;;^UTILITY(U,$J,358.3,27497,2)
 ;;=^340597
 ;;^UTILITY(U,$J,358.3,27498,0)
 ;;=173.11^^155^1744^53
 ;;^UTILITY(U,$J,358.3,27498,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27498,1,3,0)
 ;;=3^Eyelid/Canthus,BCC
 ;;^UTILITY(U,$J,358.3,27498,1,4,0)
 ;;=4^173.11
 ;;^UTILITY(U,$J,358.3,27498,2)
 ;;=^340467
 ;;^UTILITY(U,$J,358.3,27499,0)
 ;;=173.12^^155^1744^57
 ;;^UTILITY(U,$J,358.3,27499,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27499,1,3,0)
 ;;=3^Eyelid/Canthus,SCC
 ;;^UTILITY(U,$J,358.3,27499,1,4,0)
 ;;=4^173.12
 ;;^UTILITY(U,$J,358.3,27499,2)
 ;;=^340468
 ;;^UTILITY(U,$J,358.3,27500,0)
 ;;=173.19^^155^1744^55
 ;;^UTILITY(U,$J,358.3,27500,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27500,1,3,0)
 ;;=3^Eyelid/Canthus,Malig Neopl,Oth
 ;;^UTILITY(U,$J,358.3,27500,1,4,0)
 ;;=4^173.19
 ;;^UTILITY(U,$J,358.3,27500,2)
 ;;=^340469
 ;;^UTILITY(U,$J,358.3,27501,0)
 ;;=053.20^^155^1744^51
 ;;^UTILITY(U,$J,358.3,27501,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27501,1,3,0)
 ;;=3^Eyelid,Herpes Zoster
 ;;^UTILITY(U,$J,358.3,27501,1,4,0)
 ;;=4^053.20
 ;;^UTILITY(U,$J,358.3,27501,2)
 ;;=^56937
 ;;^UTILITY(U,$J,358.3,27502,0)
 ;;=054.41^^155^1744^50
 ;;^UTILITY(U,$J,358.3,27502,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27502,1,3,0)
 ;;=3^Eyelid,Herpes Simplex
 ;;^UTILITY(U,$J,358.3,27502,1,4,0)
 ;;=4^054.41
 ;;^UTILITY(U,$J,358.3,27502,2)
 ;;=^266563
 ;;^UTILITY(U,$J,358.3,27503,0)
 ;;=078.0^^155^1744^77
 ;;^UTILITY(U,$J,358.3,27503,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27503,1,3,0)
 ;;=3^Molluscum Contagiosum
 ;;^UTILITY(U,$J,358.3,27503,1,4,0)
 ;;=4^078.0
 ;;^UTILITY(U,$J,358.3,27503,2)
 ;;=^78675
 ;;^UTILITY(U,$J,358.3,27504,0)
 ;;=228.1^^155^1744^76
 ;;^UTILITY(U,$J,358.3,27504,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27504,1,3,0)
 ;;=3^Lymphangioma
 ;;^UTILITY(U,$J,358.3,27504,1,4,0)
 ;;=4^228.1
 ;;^UTILITY(U,$J,358.3,27504,2)
 ;;=^72391
 ;;^UTILITY(U,$J,358.3,27505,0)
 ;;=238.2^^155^1744^3
 ;;^UTILITY(U,$J,358.3,27505,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27505,1,3,0)
 ;;=3^Benign Neopl,Oth & Unspec Sites/Tissue
 ;;^UTILITY(U,$J,358.3,27505,1,4,0)
 ;;=4^238.2
 ;;^UTILITY(U,$J,358.3,27505,2)
 ;;=^267777
 ;;^UTILITY(U,$J,358.3,27506,0)
 ;;=242.00^^155^1744^61
 ;;^UTILITY(U,$J,358.3,27506,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27506,1,3,0)
 ;;=3^Goiter Toxic Dif/Graves Thyrotoxic Exoph
 ;;^UTILITY(U,$J,358.3,27506,1,4,0)
 ;;=4^242.00
 ;;^UTILITY(U,$J,358.3,27506,2)
 ;;=^267793
 ;;^UTILITY(U,$J,358.3,27507,0)
 ;;=272.2^^155^1744^101
 ;;^UTILITY(U,$J,358.3,27507,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27507,1,3,0)
 ;;=3^Xanthelasma
 ;;^UTILITY(U,$J,358.3,27507,1,4,0)
 ;;=4^272.2
 ;;^UTILITY(U,$J,358.3,27507,2)
 ;;=^78424
 ;;^UTILITY(U,$J,358.3,27508,0)
 ;;=360.40^^155^1744^60
 ;;^UTILITY(U,$J,358.3,27508,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27508,1,3,0)
 ;;=3^Globe/Eye Degenerative,Unspec
 ;;^UTILITY(U,$J,358.3,27508,1,4,0)
 ;;=4^360.40
 ;;^UTILITY(U,$J,358.3,27508,2)
 ;;=^268563
 ;;^UTILITY(U,$J,358.3,27509,0)
 ;;=360.42^^155^1744^65
 ;;^UTILITY(U,$J,358.3,27509,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27509,1,3,0)
 ;;=3^Hypertensive Blind/Absolute Glaucoma
 ;;^UTILITY(U,$J,358.3,27509,1,4,0)
 ;;=4^360.42
 ;;^UTILITY(U,$J,358.3,27509,2)
 ;;=^268565
 ;;^UTILITY(U,$J,358.3,27510,0)
 ;;=360.89^^155^1744^59
 ;;^UTILITY(U,$J,358.3,27510,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27510,1,3,0)
 ;;=3^Globe D/O,Other
 ;;^UTILITY(U,$J,358.3,27510,1,4,0)
 ;;=4^360.89
 ;;^UTILITY(U,$J,358.3,27510,2)
 ;;=^268581
 ;;^UTILITY(U,$J,358.3,27511,0)
 ;;=373.01^^155^1744^5
 ;;^UTILITY(U,$J,358.3,27511,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27511,1,3,0)
 ;;=3^Blepharitis,Ulcerative
 ;;^UTILITY(U,$J,358.3,27511,1,4,0)
 ;;=4^373.01
 ;;^UTILITY(U,$J,358.3,27511,2)
 ;;=^269053
 ;;^UTILITY(U,$J,358.3,27512,0)
 ;;=373.31^^155^1744^49
 ;;^UTILITY(U,$J,358.3,27512,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27512,1,3,0)
 ;;=3^Eyelid,Dermatitis,Eczematous
 ;;^UTILITY(U,$J,358.3,27512,1,4,0)
 ;;=4^373.31
 ;;^UTILITY(U,$J,358.3,27512,2)
 ;;=^269060
 ;;^UTILITY(U,$J,358.3,27513,0)
 ;;=373.34^^155^1744^52
 ;;^UTILITY(U,$J,358.3,27513,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27513,1,3,0)
 ;;=3^Eyelid,Lupus Erythematosus,Discoid
 ;;^UTILITY(U,$J,358.3,27513,1,4,0)
 ;;=4^373.34
 ;;^UTILITY(U,$J,358.3,27513,2)
 ;;=^269064
 ;;^UTILITY(U,$J,358.3,27514,0)
 ;;=373.9^^155^1744^37
 ;;^UTILITY(U,$J,358.3,27514,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27514,1,3,0)
 ;;=3^Eyelid Inflammation,NOS
 ;;^UTILITY(U,$J,358.3,27514,1,4,0)
 ;;=4^373.9
 ;;^UTILITY(U,$J,358.3,27514,2)
 ;;=^269070
 ;;^UTILITY(U,$J,358.3,27515,0)
 ;;=374.21^^155^1744^75
 ;;^UTILITY(U,$J,358.3,27515,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27515,1,3,0)
 ;;=3^Lagophthalmos,Paralytic