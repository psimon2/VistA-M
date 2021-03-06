DDSSTK ;SFISC/MKO - STACK CONTEXT, GO TO A NEW PAGE ;18MAR2017
 ;;22.2;VA FileMan;**3,5**;Jan 05, 2016;Build 28
 ;;Per VA Directive 6402, this routine should not be modified.
 ;;Submitted to OSEHRA 5 January 2015 by the VISTA Expertise Network.
 ;;Based on Medsphere Systems Corporation's MSC FileMan 1051.
 ;;Licensed under the terms of the Apache License, Version 2.0.
 ;;GFT;**1028,1055,1057**
 ;
 ;COME HERE FROM DDS5+11^DDS5 AND NF+8^DDS01 (BECAUSE WE'VE ENCOUNTERED 'DDSSTACK')
 N DDO
 N DDSBK,DDSDN,DDSFLD,DDSNP,DDSOPB,DDSPG,DDSPTB,DDSREP,DDSTP
 ;
 I DDSSTACK?1"`".E D
 . S DDSSTACK=+$E(DDSSTACK,2,999)
 E  I DDSSTACK=+$P(DDSSTACK,"E") D
 . S DDSSTACK=+$O(^DIST(.403,+DDS,40,"B",DDSSTACK,""))
 E  D
UP . S DDSSTACK=$O(^DIST(.403,+DDS,40,"C",$$UP^DILIBF(DDSSTACK),"")) ;**
 ;
 I 'DDSSTACK!($D(^DIST(.403,+DDS,40,+$G(DDSSTACK),0))[0) D  Q  ;QUIT IF WE CAN'T FIGURE OUT WHAT PAGE TO GO TO
 . K DDSSTACK,DDSBR
 ;
 N DDSDAORG,DDSDLORG,DDSFLORG,DDSPG
POPUP I '$P(^DIST(.403,+DDS,40,+DDSSTACK,0),U,6) N DDSSC ;(Page array) if NOT going to a POPUP PAGE
 S DDSSTK=1,DDSATOP=1 ;INFLUENCES SEL+9^DDS & THEN SETUP+10^DDSCOM
 S DDSPG=DDSSTACK
 K DDSSTACK,DDSBR
 ;
 S DDSDLORG=DDSDL,DDSDAORG=DA
 F DDSI=1:1:DDSDL S DDSDAORG(DDSI)=DA(DDSI)
 K DDSI
 ;
 S DDSH=1 ;DDSH tells SM+6^DIR0 to refresh the COMMAND LINE
 D PROC^DDS ;RECURSION!
 Q
