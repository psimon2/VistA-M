VAQADM21 ;ALB/JRP - MESSAGE ADMINISTRATION;20-MAY-93
 ;;1.5;PATIENT DATA EXCHANGE;;NOV 17, 1993
START ;START RESPONSE TIME MONITORING (TIME TO FILE A SINGLE MESSAGE)
 I ($D(XRTL)) D T0^%ZOSV
 Q
 ;
STOP ;STOP RESPONSE TIME MONITORING
 I ($D(XRT0)) S XRTN=$T(+0) D T1^%ZOSV K XRTN,XRT0
 Q
 ;
ACTIONS ;ACTIONS FOR PDX SERVER (CONTINUATION FOR VAQADM2)
 ;  DECLARATIONS DONE IN SERVER^VAQADM2
 S MESSAGE=""
 F  S MESSAGE=$O(@PARSE@(MESSAGE)) Q:(MESSAGE="")  D START D  D STOP
 .S TRANS=""
 .S STATUS=""
 .S TYPE=""
 .;FILE HEADER BLOCK
 .S XMER=$$HEADER^VAQFIL10(MESSAGE,PARSE)
 .I ($P(XMER,"^",1)="-1") S $P(XMER,"^",1)="header" D ERROR Q
 .S TRANS=+XMER
 .S XMER=$$STATYPE^VAQFIL11(MESSAGE,PARSE)
 .I ($P(XMER,"^",1)="-1") S $P(XMER,"^",1)="header" D ERROR Q
 .S STATUS=$P(XMER,"^",1)
 .S TYPE=$P(XMER,"^",2)
 .;FILE DOMAIN BLOCK
 .S XMER=$$DOMAIN^VAQFIL12(MESSAGE,PARSE,TRANS)
 .I (XMER) S $P(XMER,"^",1)="domain" D ERROR Q
 .;DONE IF ACK
 .I (TYPE="ACK") D  Q
 ..;FILE STATUS
 ..S TMP=$$FILEINFO^VAQFILE(394.61,TRANS,.02,STATUS)
 ..;RESET PURGE FLAGE
 ..S TMP=$$FILEINFO^VAQFILE(394.61,TRANS,90,"NO")
 .;DONE IF RETRANSMIT
 .I (TYPE="RET") D  Q
 ..;FILE STATUS
 ..S TMP=$$FILEINFO^VAQFILE(394.61,TRANS,.02,STATUS)
 ..;RESET PURGE FLAGE
 ..S TMP=$$FILEINFO^VAQFILE(394.61,TRANS,90,"NO")
 ..;QUEUE TRANSMISSION
 ..K @XMIT
 ..S @XMIT@(TRANS)=""
 ..S XMER=$$GENTASK^VAQADM5(XMIT) S:(XMER>0) XMER=0
 ..K @XMIT
 ..I (XMER) D
 ...S @ERROR@(MESSAGE,1)="Unable to queue retransmission  (IFN: "_TRANS_")"
 ...S @ERROR@(MESSAGE,2)=$P(XMER,"^",2)
 .;FILE USER BLOCK
 .S XMER=$$USER^VAQFIL13(MESSAGE,PARSE,TRANS)
 .I (XMER) S $P(XMER,"^",1)="user" D ERROR Q
 .;FILE LOCAL FACILITY NAME FOR REQUESTS & UNSOLICITED PDXS RECEIVED
 .I (TYPE="REQ") S TMP=$$FILEINFO^VAQFILE(394.61,TRANS,60,LOCSITE)
 .I (TYPE="UNS") S TMP=$$FILEINFO^VAQFILE(394.61,TRANS,30,LOCSITE)
 .;FILE PATIENT BLOCK
 .S XMER=$$PATIENT^VAQFIL15(MESSAGE,PARSE,TRANS)
 .I (XMER) S $P(XMER,"^",1)="patient" D ERROR Q
 .;FILE SEGMENT BLOCK
 .S XMER=$$SEGMENT^VAQFIL16(MESSAGE,PARSE,TRANS)
 .I (XMER) S $P(XMER,"^",1)="segment" D ERROR Q
 .;DONE IF REQUEST
 .I (TYPE="REQ") D  Q
 ..S XMER=$$AUTO^VAQADM22(TRANS)
 ..I (XMER) D
 ...S @ERROR@(MESSAGE,1)="Unable to complete automatic processing"
 ...S @ERROR@(MESSAGE,2)=$P(XMER,"^",2)
 .;FILE COMMENT BLOCK
 .S XMER=$$COMMENT^VAQFIL14(MESSAGE,PARSE,TRANS)
 .I (XMER) S $P(XMER,"^",1)="comment" D ERROR Q
 .;FILE ALL DATA BLOCKS
 .S XMER=$$DATA^VAQFIL18(MESSAGE,PARSE,TRANS)
 .I (XMER) S $P(XMER,"^",1)="data" D ERROR Q
 .;FILE ALL DISPLAY BLOCKS
 .S XMER=$$DISPLAY^VAQFIL17(MESSAGE,PARSE,TRANS)
 .I (XMER) S $P(XMER,"^",1)="display" D ERROR Q
 .;SEND RESULTS RECEIVED BULLETIN
 .I (TYPE="RES") D  Q
 ..;FILE STATUS
 ..S TMP=$$FILEINFO^VAQFILE(394.61,TRANS,.02,STATUS)
 ..;RESET PURGE FLAGE
 ..S TMP=$$FILEINFO^VAQFILE(394.61,TRANS,90,"NO")
 ..;SEND BULLETIN
 ..S XMER=$$RESULTS^VAQBUL03(TRANS)
 ..I (XMER) D
 ...S @ERROR@(MESSAGE,1)="Unable to send results received bulletin"
 ...S @ERROR@(MESSAGE,2)=$P(XMER,"^",2)
 ...S @ERROR@(MESSAGE,3)="Was able to file transaction (IFN:"_TRANS_")"
 .;COMPLETE UNSOLICITED
 .I (TYPE="UNS") D  Q
 ..;FILE STATUS
 ..S TMP=$$FILEINFO^VAQFILE(394.61,TRANS,.02,STATUS)
 ..;RESET PURGE FLAGE
 ..S TMP=$$FILEINFO^VAQFILE(394.61,TRANS,90,"NO")
 ..;SEND BULLETIN
 ..S XMER=$$UNSOL^VAQBUL06(TRANS)
 ..I (XMER) D
 ...S @ERROR@(MESSAGE,1)="Unable to send Unsolicited PDX received bulletin"
 ...S @ERROR@(MESSAGE,2)=$P(XMER,"^",2)
 ..;QUEUE ACK
 ..S XMER=$$FILEINFO^VAQFILE(394.61,TRANS,.05,"VAQ-UNACK")
 ..I (XMER) D
 ...S @ERROR@(MESSAGE,5)="Unable to acknowledge receipt of Unsolicited PDX"
 ...S @ERROR@(MESSAGE,6)=$P(XMER,"^",2)
 ..K @XMIT
 ..S @XMIT@(TRANS)=""
 ..I (('XMER)&(VERSION'=1)) S XMER=$$GENTASK^VAQADM5(XMIT) S:(XMER>0) XMER=0
 ..K @XMIT
 ..I (XMER) D
 ...S @ERROR@(MESSAGE,10)="Unable to queue acknowledgement for receipt of Unsolicited PDX"
 ...S @ERROR@(MESSAGE,11)=$P(XMER,"^",2)
 ..S:(+$O(@ERROR@(MESSAGE,""))) @ERROR@(MESSAGE,15)="Was able to file transaction (IFN:"_TRANS_")",XMER="-1^Error completing receipt of Unsolicited PDX"
 S XMER=0
 Q
 ;
ERROR ;MAKE ENTRY IN ERROR ARRAY
 S @ERROR@(MESSAGE,1)="Error occurred while filing "_$P(XMER,"^",1)_" block"
 S @ERROR@(MESSAGE,2)=$P(XMER,"^",2)
 S XMER=-1
 ;TRANSACTION NOT CREATED
 I ('TRANS) S @ERROR@(MESSAGE,3)="(Transaction was not created)" Q
 ;DELETE TRANSACTION
 S TMP=$$DELTRAN^VAQFILE(TRANS)
 S @ERROR@(MESSAGE,3)="Transaction "_$S(TMP:"not ",1:"")_"deleted  (IFN: "_TRANS_")"
 Q
