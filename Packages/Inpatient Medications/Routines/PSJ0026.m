PSJ0026 ;BIR/RPS-UTILITY ROUTINE FOR PSJ*5.0*26 ;09 Mar 99 / 2:48 PM
 ;;5.0; INPATIENT MEDICATIONS ;**26**;16 DEC 97
 N PSJY
 S PSJY=""
 F PSJY=0:0 S PSJY=$O(^PS(53.5,"AC",PSJY)) Q:PSJY=""  D
 .I '$G(^PS(53.5,+PSJY,0)) D
 ..K ^PS(53.5,"AC",+PSJY)
 Q
