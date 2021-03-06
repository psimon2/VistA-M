RMPRSEC ;PHX/JLT-PROSTHETICS SECURITY CHECK ;10/01/1994
 ;;3.0;PROSTHETICS;;Feb 09, 1996
RO ;REQUESTING OFFICAL SIGNATURE
 S X1="" K DIR S DIR(0)="F^1:30",DIR("A")="Electronic Signature Code of Requesting Official" G SIG
AP ;APPROVING OFFICIAL SIGNATURE
 ;VARIABLE REQUIRED - DUZ
 S X1="" K DIR S DIR(0)="FO^1:30",DIR("A")="Electronic Signature Code of Approving Official" D SIG Q  ;K ^RMPR(664,"AP",RMPR("SITE"),
IP ;INSPECTING OFFICIAL SIGNATURE
 S X1="" K DIR S DIR(0)="F^1:30",DIR("A")="Electronic Signature Code of Inspecting Official" G SIG
EX ;COLLECT SIGNATURE OF EXAMINER
 ;CALLED BY RMPREYC
 ;VARIABLE REQUIRED - DUZ
 S X1="" K DIR S DIR(0)="F^1:30",DIR("A")="Electronic Signature Code of Examiner"
SIG S RMPRC=0
CHK S X1=$S($D(^VA(200,+$G(DUZ),20))[0:"",1:$P(^(20),"^",4),1:"") I X1="" W !!,$C(7),?5,"YOU DO NOT HAVE AN ELECTRONIC SIGNATURE CODE.",!,?5,"USE THE TBOX OPTION TO ENTER OR CHANGE YOUR SIGNATURE CODE" Q
 X ^%ZOSF("EOFF") D WRT D ^DIR X ^%ZOSF("EON")
 S RMPRX=X W:RMPRX="^"!(X["?") RMPRX
 Q:RMPRX="^"
 W:$D(DIRUT) !!,?5,$C(7),"This document must be signed for Authentication Purposes!!" K X1 Q:$D(DIRUT)
 I RMPRC>2 W !!,$C(7),?5,"Use the TBOX option to change your Electronic Signature code." Q
 D HASH^XUSHSHP I $P(^VA(200,DUZ,20),U,4)'=X W !!,$C(7),?5,"**That is not your Electronic Signature Code.  Try again**",!! S RMPRC=RMPRC+1 G CHK
 S RMPRSBP=$P(^VA(200,DUZ,20),U,2),RMPRSBT=$P(^(20),U,3),X1=X W !!,?5,$C(7),"Signature Code verified!" Q
ENCODE(X,X1,X2) ;ENCRYPT ELECTRONIC SIGNATURE
 D EN^XUSHSHP Q X
DECODE(X,X1,X2) ;DECRYPT ELECTRONIC SIGNATURE
 D DE^XUSHSHP Q X
SUM(X) ;CREATE CHECKSUM VALUE FOR STRING
 N I,Y
 S Y=0 F I=1:1:$L(X) S Y=$A(X,I)*I+Y
 Q Y
WRT ;WRITE HELP SCREENS FOR ELECTRONIC SIGNATURE PROMPTS
 S DIR("?")="YOU MUST ENTER YOUR CORRECT ELECTRONIC SIGNATURE CODE TO ACCOMPLISH THE ACTION"
 S DIR("??")="RMPR-ELECTRONIC SIGNATURE" Q
