PSDPWK3 ;BIR/JPW-Print Pharm Disp. Worksheet (Summary) ; 23 Jun 94
 ;;3.0; CONTROLLED SUBSTANCES ;;13 Feb 97
 D NOW^%DTC S Y=+$E(%,1,12) X ^DD("DD") S RPDT=Y
 S (PG,PSDOUT)=0
 I '$D(^TMP("PSDWKT",$J)) D HDR W !!,?45,"****  NO PENDING REQUESTS FOR THIS DISPENSING LOCATION  ****" Q
PRINT ;prints data for worksheet
 D HDR Q:PSDOUT
 S LOOP="" F  S LOOP=$O(^TMP("PSDWKT",$J,LOOP)) Q:LOOP=""!(PSDOUT)  W !,?2,"=> ",LOOP D:$Y+4>IOSL HDR Q:PSDOUT  D
 .S LOOP2="" F  S LOOP2=$O(^TMP("PSDWKT",$J,LOOP,LOOP2)) Q:LOOP2=""!(PSDOUT)  D:$Y+4>IOSL HDR Q:PSDOUT  W !,LOOP2,?60,+^TMP("PSDWKT",$J,LOOP,LOOP2),!
DONE I SUM,$E(IOST)'="C" W @IOF
 Q
HDR ;lists header information
 I $E(IOST,1,2)="C-",PG W ! K DA,DIR S DIR(0)="E" D ^DIR K DIR I 'Y S PSDOUT=1 Q
 K LN S $P(LN,"-",80)=""
 W:$Y @IOF S PG=PG+1 W !,?22,"PHARMACY DISPENSING WORKSHEET",?70,"PG "_PG,!,?29,"** SUMMARY **",!,?27,RPDT,!!,"Dispensing Location: ",PSDSN,!!
 W ?2,"=> DRUG",!,"NAOU",?55,"TOTAL TO DISPENSE",!,LN,!
 Q
