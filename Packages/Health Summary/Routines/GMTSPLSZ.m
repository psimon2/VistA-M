GMTSPLSZ ;SLC/SBW - Updated Problem List 2.0 extract routine. in HS namespace ;18/Apr/95
 ;;2.7;Health Summary;;Oct 20, 1995
GMPLHS ;SLC/MKB,DJP,SBW - Extract for Prob List-Health Summary 2.7 ;15/APR/95
 ;;2.0;Problem List;;Aug 25, 1994
GETLIST(GMPDFN,STATUS) ; Define list 
 N GMPLIST,GMPLVIEW,GMPARAM,GMPTOTAL
 K ^TMP("GMPLHS",$J)
 Q:+GMPDFN'>0
 S GMPARAM("QUIET")=1,GMPARAM("REV")=$P($G(^GMPL(125.99,1,0)),U,5)="R"
 S GMPLVIEW("ACT")=STATUS,GMPLVIEW("PROV")=0,GMPLVIEW("VIEW")=""
 D GETPLIST^GMPLMGR1(.GMPLIST,.GMPTOTAL,.GMPLVIEW)
BUILD ; Build list for selected patient
 ; Returns ^TMP("GMPLHS",$J,STATUS,0) = GMPCNT ^ GMPTOTAL
 N IFN,GMPCNT,NUM
 S (NUM,GMPCNT)=0
 F  S NUM=$O(GMPLIST(NUM)) Q:NUM'>0  D
 . S IFN=+GMPLIST(NUM) Q:IFN'>0
 . D GETPROB(IFN)
 I $G(GMPCNT)'>0 K ^TMP("GMPLHS",$J) Q
 S ^TMP("GMPLHS",$J,STATUS,0)=GMPCNT_U_GMPTOTAL ; # entries extracted ^ # entries that exist
 Q
GETPROB(IFN) ; Get problem data and set it to ^TMP array
 ; Returns ^TMP("GMPLHS",$J,CNT,0)
 ; Returns ^TMP("GMPLHS",$J,CNT,IFN,"N")
 N DIC,DIQ,DR,DA,REC,DIAG,LASTMDT,NARR,SITE,ENTDT,STAT,ONSETDT,RPROV
 N SERV,SERVABB,RESDT,CLIN,RECDT
 S DIC=9000011,DA=IFN,DIQ="REC(",DIQ(0)="IE"
 S DR=".01;.03;.05;.06;.08;.12;.13;1.05;1.06;1.07;1.08;1.09"
 D EN^DIQ1
 S DIAG=REC(9000011,DA,.01,"I")
 S LASTMDT=REC(9000011,DA,.03,"I")
 S NARR=REC(9000011,DA,.05,"E")
 S SITE=REC(9000011,DA,.06,"E")
 S ENTDT=REC(9000011,DA,.08,"I")
 S STAT=REC(9000011,DA,.12,"I")
 S ONSETDT=REC(9000011,DA,.13,"I")
 S RPROV=REC(9000011,DA,1.05,"E")
 S SERV=REC(9000011,DA,1.06,"E")
 S SERVABB=$$SERV(REC(9000011,DA,1.06,"I"),SERV)
 S RESDT=REC(9000011,DA,1.07,"I")
 S CLIN=REC(9000011,DA,1.08,"E")
 S RECDT=REC(9000011,DA,1.09,"I")
 S GMPCNT=GMPCNT+1 ; # of problems included in the extract
 S ^TMP("GMPLHS",$J,GMPCNT,0)=DIAG_U_LASTMDT_U_SITE_U_ENTDT_U_STAT_U_ONSETDT_U_RPROV_U_SERV_U_SERVABB_U_RESDT_U_CLIN_U_RECDT
 S ^TMP("GMPLHS",$J,GMPCNT,"N")=NARR
 D GETCOMM(IFN,GMPCNT)
 Q
GETCOMM(IFN,CNT) ;Get active comments for a note
 ; Returns ^TMP("GMPLHS",$J,CNT,"C",LOCATION,NOTE NMBR,0))
 N IFN2,IFN3,LOC,NODE
 S LOC=0
 Q:$D(^AUPNPROB(IFN,11))'>0
 S IFN2=0
 F  S IFN2=$O(^AUPNPROB(IFN,11,IFN2)) Q:IFN2'>0  D
 . Q:$D(^AUPNPROB(IFN,11,IFN2,11))'>0
 . S LOC=+$G(^AUPNPROB(IFN,11,IFN2,0))
 . S IFN3=0
 . F  S IFN3=$O(^AUPNPROB(IFN,11,IFN2,11,IFN3)) Q:IFN3'>0  D
 . . S NODE=$G(^AUPNPROB(IFN,11,IFN2,11,IFN3,0))
 . . Q:$P(NODE,U,4)']""
 . . S ^TMP("GMPLHS",$J,CNT,"C",LOC,$P(NODE,U),0)=$P(NODE,U,3)_U_$P(NODE,U,5)_U_$P($G(^VA(200,+$P(NODE,U,6),0)),U)
 Q
SERV(X,SERV) ; Return service name abbreviation
 N ABBREV
 S ABBREV=$P($G(^DIC(49,+X,0)),U,2)
 I ABBREV="" S ABBREV=$E($G(SERV),1,5)
 Q ABBREV
