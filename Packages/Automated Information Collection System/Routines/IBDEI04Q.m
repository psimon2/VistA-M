IBDEI04Q ; ; 20-FEB-2013
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;FEB 20, 2013
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,5993,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,5993,1,4,0)
 ;;=4^424.90
 ;;^UTILITY(U,$J,358.3,5993,1,5,0)
 ;;=5^Valvular Heart Disease
 ;;^UTILITY(U,$J,358.3,5993,2)
 ;;=^40327
 ;;^UTILITY(U,$J,358.3,5994,0)
 ;;=401.1^^58^498^17
 ;;^UTILITY(U,$J,358.3,5994,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,5994,1,4,0)
 ;;=4^401.1
 ;;^UTILITY(U,$J,358.3,5994,1,5,0)
 ;;=5^Hypertension, Benign
 ;;^UTILITY(U,$J,358.3,5994,2)
 ;;=^269591
 ;;^UTILITY(U,$J,358.3,5995,0)
 ;;=401.9^^58^498^18
 ;;^UTILITY(U,$J,358.3,5995,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,5995,1,4,0)
 ;;=4^401.9
 ;;^UTILITY(U,$J,358.3,5995,1,5,0)
 ;;=5^Hypertension, Essential
 ;;^UTILITY(U,$J,358.3,5995,2)
 ;;=^186630
 ;;^UTILITY(U,$J,358.3,5996,0)
 ;;=427.9^^58^498^5
 ;;^UTILITY(U,$J,358.3,5996,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,5996,1,4,0)
 ;;=4^427.9
 ;;^UTILITY(U,$J,358.3,5996,1,5,0)
 ;;=5^Arrhythmia NOS
 ;;^UTILITY(U,$J,358.3,5996,2)
 ;;=^10166
 ;;^UTILITY(U,$J,358.3,5997,0)
 ;;=398.90^^58^498^30
 ;;^UTILITY(U,$J,358.3,5997,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,5997,1,4,0)
 ;;=4^398.90
 ;;^UTILITY(U,$J,358.3,5997,1,5,0)
 ;;=5^Rheumatic Heart Dis NOS
 ;;^UTILITY(U,$J,358.3,5997,2)
 ;;=^106006
 ;;^UTILITY(U,$J,358.3,5998,0)
 ;;=410.91^^58^498^22
 ;;^UTILITY(U,$J,358.3,5998,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,5998,1,4,0)
 ;;=4^410.91
 ;;^UTILITY(U,$J,358.3,5998,1,5,0)
 ;;=5^MI,AC NOS <8 wks
 ;;^UTILITY(U,$J,358.3,5998,2)
 ;;=^269674
 ;;^UTILITY(U,$J,358.3,5999,0)
 ;;=410.91^^58^498^21
 ;;^UTILITY(U,$J,358.3,5999,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,5999,1,4,0)
 ;;=4^410.91
 ;;^UTILITY(U,$J,358.3,5999,1,5,0)
 ;;=5^MI,AC Initial
 ;;^UTILITY(U,$J,358.3,5999,2)
 ;;=^269674
 ;;^UTILITY(U,$J,358.3,6000,0)
 ;;=410.92^^58^498^19
 ;;^UTILITY(U,$J,358.3,6000,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6000,1,4,0)
 ;;=4^410.92
 ;;^UTILITY(U,$J,358.3,6000,1,5,0)
 ;;=5^MI <8 wks,Subseq
 ;;^UTILITY(U,$J,358.3,6000,2)
 ;;=^269675
 ;;^UTILITY(U,$J,358.3,6001,0)
 ;;=413.9^^58^498^2
 ;;^UTILITY(U,$J,358.3,6001,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6001,1,4,0)
 ;;=4^413.9
 ;;^UTILITY(U,$J,358.3,6001,1,5,0)
 ;;=5^Angina Pectoris
 ;;^UTILITY(U,$J,358.3,6001,2)
 ;;=^87258
 ;;^UTILITY(U,$J,358.3,6002,0)
 ;;=414.00^^58^498^9
 ;;^UTILITY(U,$J,358.3,6002,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6002,1,4,0)
 ;;=4^414.00
 ;;^UTILITY(U,$J,358.3,6002,1,5,0)
 ;;=5^CAD Unspec Type Vessel
 ;;^UTILITY(U,$J,358.3,6002,2)
 ;;=^28512
 ;;^UTILITY(U,$J,358.3,6003,0)
 ;;=414.8^^58^498^20
 ;;^UTILITY(U,$J,358.3,6003,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6003,1,4,0)
 ;;=4^414.8
 ;;^UTILITY(U,$J,358.3,6003,1,5,0)
 ;;=5^MI >8 wks w/Symptoms
 ;;^UTILITY(U,$J,358.3,6003,2)
 ;;=^269680
 ;;^UTILITY(U,$J,358.3,6004,0)
 ;;=414.9^^58^498^13
 ;;^UTILITY(U,$J,358.3,6004,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6004,1,4,0)
 ;;=4^414.9
 ;;^UTILITY(U,$J,358.3,6004,1,5,0)
 ;;=5^Chr Ischemic Heart Disease
 ;;^UTILITY(U,$J,358.3,6004,2)
 ;;=^24401
 ;;^UTILITY(U,$J,358.3,6005,0)
 ;;=425.4^^58^498^11
 ;;^UTILITY(U,$J,358.3,6005,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6005,1,4,0)
 ;;=4^425.4
 ;;^UTILITY(U,$J,358.3,6005,1,5,0)
 ;;=5^Cardiomyopathy
 ;;^UTILITY(U,$J,358.3,6005,2)
 ;;=^87808
 ;;^UTILITY(U,$J,358.3,6006,0)
 ;;=426.4^^58^498^29
 ;;^UTILITY(U,$J,358.3,6006,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6006,1,4,0)
 ;;=4^426.4
 ;;^UTILITY(U,$J,358.3,6006,1,5,0)
 ;;=5^RBBB
 ;;^UTILITY(U,$J,358.3,6006,2)
 ;;=^186730
 ;;^UTILITY(U,$J,358.3,6007,0)
 ;;=427.1^^58^498^33
 ;;^UTILITY(U,$J,358.3,6007,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6007,1,4,0)
 ;;=4^427.1
 ;;^UTILITY(U,$J,358.3,6007,1,5,0)
 ;;=5^VT,Paroxysmal
 ;;^UTILITY(U,$J,358.3,6007,2)
 ;;=^90483
 ;;^UTILITY(U,$J,358.3,6008,0)
 ;;=427.69^^58^498^24
 ;;^UTILITY(U,$J,358.3,6008,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6008,1,4,0)
 ;;=4^427.69
 ;;^UTILITY(U,$J,358.3,6008,1,5,0)
 ;;=5^PVC's
 ;;^UTILITY(U,$J,358.3,6008,2)
 ;;=^87804
 ;;^UTILITY(U,$J,358.3,6009,0)
 ;;=428.9^^58^498^16
 ;;^UTILITY(U,$J,358.3,6009,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6009,1,4,0)
 ;;=4^428.9
 ;;^UTILITY(U,$J,358.3,6009,1,5,0)
 ;;=5^Heart Failure NOS
 ;;^UTILITY(U,$J,358.3,6009,2)
 ;;=^54754
 ;;^UTILITY(U,$J,358.3,6010,0)
 ;;=429.2^^58^498^1
 ;;^UTILITY(U,$J,358.3,6010,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6010,1,4,0)
 ;;=4^429.2
 ;;^UTILITY(U,$J,358.3,6010,1,5,0)
 ;;=5^ASCVD
 ;;^UTILITY(U,$J,358.3,6010,2)
 ;;=^19738
 ;;^UTILITY(U,$J,358.3,6011,0)
 ;;=429.9^^58^498^15
 ;;^UTILITY(U,$J,358.3,6011,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6011,1,4,0)
 ;;=4^429.9
 ;;^UTILITY(U,$J,358.3,6011,1,5,0)
 ;;=5^Diastolic Dysfunction
 ;;^UTILITY(U,$J,358.3,6011,2)
 ;;=^54741
 ;;^UTILITY(U,$J,358.3,6012,0)
 ;;=435.9^^58^498^31
 ;;^UTILITY(U,$J,358.3,6012,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6012,1,4,0)
 ;;=4^435.9
 ;;^UTILITY(U,$J,358.3,6012,1,5,0)
 ;;=5^TIA NOS
 ;;^UTILITY(U,$J,358.3,6012,2)
 ;;=^21635
 ;;^UTILITY(U,$J,358.3,6013,0)
 ;;=440.9^^58^498^6
 ;;^UTILITY(U,$J,358.3,6013,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6013,1,4,0)
 ;;=4^440.9
 ;;^UTILITY(U,$J,358.3,6013,1,5,0)
 ;;=5^Atherosclerosis NOS
 ;;^UTILITY(U,$J,358.3,6013,2)
 ;;=^50055
 ;;^UTILITY(U,$J,358.3,6014,0)
 ;;=453.40^^58^498^14
 ;;^UTILITY(U,$J,358.3,6014,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6014,1,4,0)
 ;;=4^453.40
 ;;^UTILITY(U,$J,358.3,6014,1,5,0)
 ;;=5^Deep Venous Thrombosis
 ;;^UTILITY(U,$J,358.3,6014,2)
 ;;=^338554
 ;;^UTILITY(U,$J,358.3,6015,0)
 ;;=786.50^^58^498^12
 ;;^UTILITY(U,$J,358.3,6015,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6015,1,4,0)
 ;;=4^786.50
 ;;^UTILITY(U,$J,358.3,6015,1,5,0)
 ;;=5^Chest Pain NOS
 ;;^UTILITY(U,$J,358.3,6015,2)
 ;;=^22485
 ;;^UTILITY(U,$J,358.3,6016,0)
 ;;=257.2^^58^499^12
 ;;^UTILITY(U,$J,358.3,6016,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6016,1,4,0)
 ;;=4^257.2
 ;;^UTILITY(U,$J,358.3,6016,1,5,0)
 ;;=5^Hypogonadism,Male
 ;;^UTILITY(U,$J,358.3,6016,2)
 ;;=^88213
 ;;^UTILITY(U,$J,358.3,6017,0)
 ;;=733.00^^58^499^16
 ;;^UTILITY(U,$J,358.3,6017,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6017,1,4,0)
 ;;=4^733.00
 ;;^UTILITY(U,$J,358.3,6017,1,5,0)
 ;;=5^Osteoporosis Nos
 ;;^UTILITY(U,$J,358.3,6017,2)
 ;;=^87159
 ;;^UTILITY(U,$J,358.3,6018,0)
 ;;=272.0^^58^499^6
 ;;^UTILITY(U,$J,358.3,6018,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6018,1,4,0)
 ;;=4^272.0
 ;;^UTILITY(U,$J,358.3,6018,1,5,0)
 ;;=5^Hypercholesterolemia, Pure
 ;;^UTILITY(U,$J,358.3,6018,2)
 ;;=Hypercholesterolemia, Pure^59973
 ;;^UTILITY(U,$J,358.3,6019,0)
 ;;=272.2^^58^499^8
 ;;^UTILITY(U,$J,358.3,6019,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6019,1,4,0)
 ;;=4^272.2
 ;;^UTILITY(U,$J,358.3,6019,1,5,0)
 ;;=5^Hyperlipidemia, Mixed
 ;;^UTILITY(U,$J,358.3,6019,2)
 ;;=^78424
 ;;^UTILITY(U,$J,358.3,6020,0)
 ;;=242.90^^58^499^11
 ;;^UTILITY(U,$J,358.3,6020,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6020,1,4,0)
 ;;=4^242.90
 ;;^UTILITY(U,$J,358.3,6020,1,5,0)
 ;;=5^Hyperthyroid w/o Goiter Or Strm
 ;;^UTILITY(U,$J,358.3,6020,2)
 ;;=^267811
 ;;^UTILITY(U,$J,358.3,6021,0)
 ;;=244.9^^58^499^14
 ;;^UTILITY(U,$J,358.3,6021,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6021,1,4,0)
 ;;=4^244.9
 ;;^UTILITY(U,$J,358.3,6021,1,5,0)
 ;;=5^Hypothyroid, Unspec Cause
 ;;^UTILITY(U,$J,358.3,6021,2)
 ;;=^123752
 ;;^UTILITY(U,$J,358.3,6022,0)
 ;;=266.2^^58^499^20
 ;;^UTILITY(U,$J,358.3,6022,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6022,1,4,0)
 ;;=4^266.2
 ;;^UTILITY(U,$J,358.3,6022,1,5,0)
 ;;=5^Vitamin B12 Deficiency
 ;;^UTILITY(U,$J,358.3,6022,2)
 ;;=Vitamin B12 Deficiency^87347
 ;;^UTILITY(U,$J,358.3,6023,0)
 ;;=255.41^^58^499^2
 ;;^UTILITY(U,$J,358.3,6023,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6023,1,4,0)
 ;;=4^255.41
 ;;^UTILITY(U,$J,358.3,6023,1,5,0)
 ;;=5^Adrenal Insuff
 ;;^UTILITY(U,$J,358.3,6023,2)
 ;;=^335240
 ;;^UTILITY(U,$J,358.3,6024,0)
 ;;=246.9^^58^499^5
 ;;^UTILITY(U,$J,358.3,6024,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6024,1,4,0)
 ;;=4^246.9
 ;;^UTILITY(U,$J,358.3,6024,1,5,0)
 ;;=5^Disorder of Thyroid NOS
 ;;^UTILITY(U,$J,358.3,6024,2)
 ;;=^123878
 ;;^UTILITY(U,$J,358.3,6025,0)
 ;;=255.42^^58^499^15
 ;;^UTILITY(U,$J,358.3,6025,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6025,1,4,0)
 ;;=4^255.42
 ;;^UTILITY(U,$J,358.3,6025,1,5,0)
 ;;=5^Mineral Corticoid Defcnt
 ;;^UTILITY(U,$J,358.3,6025,2)
 ;;=^335241
 ;;^UTILITY(U,$J,358.3,6026,0)
 ;;=272.4^^58^499^7
 ;;^UTILITY(U,$J,358.3,6026,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6026,1,4,0)
 ;;=4^272.4
 ;;^UTILITY(U,$J,358.3,6026,1,5,0)
 ;;=5^Hyperlipidemia NEC/NOS
 ;;^UTILITY(U,$J,358.3,6026,2)
 ;;=^87281
 ;;^UTILITY(U,$J,358.3,6027,0)
 ;;=276.50^^58^499^21
 ;;^UTILITY(U,$J,358.3,6027,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6027,1,4,0)
 ;;=4^276.50
 ;;^UTILITY(U,$J,358.3,6027,1,5,0)
 ;;=5^Volume Depletion NOS
 ;;^UTILITY(U,$J,358.3,6027,2)
 ;;=^332840
 ;;^UTILITY(U,$J,358.3,6028,0)
 ;;=276.51^^58^499^4
 ;;^UTILITY(U,$J,358.3,6028,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6028,1,4,0)
 ;;=4^276.51
 ;;^UTILITY(U,$J,358.3,6028,1,5,0)
 ;;=5^Dehydration
 ;;^UTILITY(U,$J,358.3,6028,2)
 ;;=^332743
 ;;^UTILITY(U,$J,358.3,6029,0)
 ;;=276.8^^58^499^13
 ;;^UTILITY(U,$J,358.3,6029,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6029,1,4,0)
 ;;=4^276.8
 ;;^UTILITY(U,$J,358.3,6029,1,5,0)
 ;;=5^Hypokalemia
 ;;^UTILITY(U,$J,358.3,6029,2)
 ;;=^60611
 ;;^UTILITY(U,$J,358.3,6030,0)
 ;;=278.02^^58^499^17
 ;;^UTILITY(U,$J,358.3,6030,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6030,1,4,0)
 ;;=4^278.02
 ;;^UTILITY(U,$J,358.3,6030,1,5,0)
 ;;=5^Overweight
 ;;^UTILITY(U,$J,358.3,6030,2)
 ;;=^332745
 ;;^UTILITY(U,$J,358.3,6031,0)
 ;;=285.9^^58^499^3
 ;;^UTILITY(U,$J,358.3,6031,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,6031,1,4,0)
 ;;=4^285.9
 ;;^UTILITY(U,$J,358.3,6031,1,5,0)
 ;;=5^Anemia NOS
 ;;^UTILITY(U,$J,358.3,6031,2)
 ;;=^7007