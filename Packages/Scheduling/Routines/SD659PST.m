SD659PST ;ALB/ART - SD*5.3*659 Post Install ;02/16/2017
 ;;5.3;Scheduling;**659**;Aug 13, 1993;Build 5
 ;
 QUIT
 ;
 ;Public, Supported ICRs
 ; #2916  - Data Base Server API: DD Modification Utilities (DDMOD)
 ; #10013 - Classic FileMan API: Entry Deletion & File Reindexing (DIK)
 ; #10141 - XPDUTL - Public APIs for KIDS
 ;
 ;Private ICRs
 ; #6966 - READ ACCESS TO DD(404.43
 ; #6721 - READ ACCESS TO DD(404.52
 ; #6722 - READ ACCESS TO DD(404.53
 ;
EN ;
 ;
 ;delete cross references and indexes
 DO DEL
 ;delete records in PCMM HL7 EVENT file
 DO DELEVNTS
 ;
 QUIT
 ;
DEL ;
 ;
 NEW SDFILE,SDFIELD,SDXREFNM,SDINDEX
 ;
 ;Delete the AEVENT1 Xref in 404.43
 SET SDFILE=404.43
 SET SDFIELD=.01
 SET SDXREFNM="AEVENT1"
 DO DELXREF(SDFILE,SDFIELD,SDXREFNM)
 ;
 ;Delete the AEVENT3 Xref in 404.43
 SET SDFILE=404.43
 SET SDFIELD=.02
 SET SDXREFNM="AEVENT3"
 DO DELXREF(SDFILE,SDFIELD,SDXREFNM)
 ;
 ;Delete the AEVENT4 Xref in 404.43
 SET SDFILE=404.43
 SET SDFIELD=.03
 SET SDXREFNM="AEVENT4"
 DO DELXREF(SDFILE,SDFIELD,SDXREFNM)
 ;
 ;Delete the AEVENT5 Xref in 404.43
 SET SDFILE=404.43
 SET SDFIELD=.04
 SET SDXREFNM="AEVENT5"
 DO DELXREF(SDFILE,SDFIELD,SDXREFNM)
 ;
 ;Delete the AEVENT2 Xref in 404.43
 SET SDFILE=404.43
 SET SDFIELD=.05
 SET SDXREFNM="AEVENT2"
 DO DELXREF(SDFILE,SDFIELD,SDXREFNM)
 ;
 ;Delete the AEVENT1 Xref in 404.52
 SET SDFILE=404.52
 SET SDFIELD=.01
 SET SDXREFNM="AEVENT1"
 DO DELXREF(SDFILE,SDFIELD,SDXREFNM)
 ;
 ;Delete the AEVENT2 Xref in 404.52
 SET SDFILE=404.52
 SET SDFIELD=.02
 SET SDXREFNM="AEVENT2"
 DO DELXREF(SDFILE,SDFIELD,SDXREFNM)
 ;
 ;Delete the AEVENT3 Xref in 404.52
 SET SDFILE=404.52
 SET SDFIELD=.03
 SET SDXREFNM="AEVENT3"
 DO DELXREF(SDFILE,SDFIELD,SDXREFNM)
 ;
 ;Delete the ASTATUS Xref in 404.52
 SET SDFILE=404.52
 SET SDFIELD=.04
 SET SDXREFNM="ASTATUS"
 DO DELXREF(SDFILE,SDFIELD,SDXREFNM)
 ;
 ;Delete the AFTEE Xref in 404.52
 SET SDFILE=404.52
 SET SDFIELD=.09
 SET SDXREFNM="AFTEE"
 DO DELXREF(SDFILE,SDFIELD,SDXREFNM)
 ;
 ;Delete the AEVENT1 Xref in 404.53
 SET SDFILE=404.53
 SET SDFIELD=.01
 SET SDXREFNM="AEVENT1"
 DO DELXREF(SDFILE,SDFIELD,SDXREFNM)
 ;
 ;Delete the AEVENT2 Xref in 404.53
 SET SDFILE=404.53
 SET SDFIELD=.02
 SET SDXREFNM="AEVENT2"
 DO DELXREF(SDFILE,SDFIELD,SDXREFNM)
 ;
 ;Delete the AEVENT3 Xref in 404.53
 SET SDFILE=404.53
 SET SDFIELD=.04
 SET SDXREFNM="AEVENT3"
 DO DELXREF(SDFILE,SDFIELD,SDXREFNM)
 ;
 ;Delete the AEVENT4 Xref in 404.53
 SET SDFILE=404.53
 SET SDFIELD=.06
 SET SDXREFNM="AEVENT4"
 DO DELXREF(SDFILE,SDFIELD,SDXREFNM)
 ;
 ;Delete the AE Index in 404.57
 SET SDFILE=404.57
 SET SDINDEX="AE"
 DO DELINDEX(SDFILE,SDINDEX)
 ;
 ;Delete the AD Index in 404.57
 SET SDFILE=404.57
 SET SDINDEX="AD"
 DO DELINDEX(SDFILE,SDINDEX)
 ;
 ;Delete the AC Index in 404.59
 SET SDFILE=404.59
 SET SDINDEX="AC"
 DO DELINDEX(SDFILE,SDINDEX)
 ;
 QUIT
 ;
DELXREF(SDFILE,SDFIELD,SDXREFNM) ; Delete traditional cross reference
 ;Inputs: SDFILE - file number
 ;        SDFIELD - field number
 ;        SDXREFNM - xref name
 ;
 NEW SDHIT,SDOUT,SDERR,SDXREF
 DO BMES^XPDUTL("Delete the "_SDXREFNM_" xref in "_SDFILE_"/"_SDFIELD_".")
 ;
 SET SDHIT=0
 SET SDXREF=0
 FOR  SET SDXREF=$O(^DD(SDFILE,SDFIELD,1,SDXREF)) QUIT:('+SDXREF)!(SDHIT)  DO
 . IF $GET(^DD(SDFILE,SDFIELD,1,SDXREF,0))[SDXREFNM DO
 . . ;W !,"SDXREF: ",SDXREF,"   Node: ",^DD(SDFILE,SDFIELD,1,SDXREF,0),!
 . . DO DELIX^DDMOD(SDFILE,SDFIELD,SDXREF,"","SDOUT","SDERR")
 . . IF '$DATA(SDERR) DO
 . . . DO MES^XPDUTL("The "_SDXREFNM_" cross reference was deleted.")
 . . . SET SDHIT=1
 . . ELSE  DO
 . . . DO MES^XPDUTL("ERROR encountered deleting the "_SDXREFNM_" cross reference.")
 ;
 DO:'SDHIT MES^XPDUTL("The "_SDXREFNM_" cross reference was not found.")
 ;
 QUIT
 ;
DELINDEX(SDFILE,SDINDEX) ; Delete a new style index
 ;Inputs: SDFILE - file number
 ;        SDINDEX - index name
 ;
 NEW SDOUT,SDERR
 DO BMES^XPDUTL("Delete the "_SDINDEX_" Index in "_SDFILE_".")
 ;
 DO DELIXN^DDMOD(SDFILE,SDINDEX,"","SDOUT","SDERR")
 IF '$DATA(SDERR) DO
 . DO MES^XPDUTL("The "_SDINDEX_" Index in "_SDFILE_" was deleted.")
 ELSE  DO
 . DO MES^XPDUTL("ERROR encountered deleting the "_SDINDEX_" Index in "_SDFILE_".")
 QUIT
 ;
DELEVNTS ; Delete records in PCMM HL7 EVENT FILE (#404.48)
 NEW DA,DIK
 SET DA=0
 FOR  SET DA=$ORDER(^SCPT(404.48,DA)) QUIT:'+DA  DO
 . SET DIK="^SCPT(404.48,"
 . DO ^DIK
 ;
 DO BMES^XPDUTL("  Records were deleted from PCMM HL7 EVENT FILE.")
 QUIT
 ;