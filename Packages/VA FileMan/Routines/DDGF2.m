DDGF2 ;SFISC/MKO - ACTIONS FOR SELECTED FIELDS ;1FEB2017
 ;;22.2;VA FileMan;**3,5**;Jan 05, 2016;Build 28
 ;;Per VA Directive 6402, this routine should not be modified.
 ;;Submitted to OSEHRA 5 January 2015 by the VISTA Expertise Network.
 ;;Based on Medsphere Systems Corporation's MSC FileMan 1051.
 ;;Licensed under the terms of the Apache License, Version 2.0.
 ;GFT;**1055,1057**
 ;
 ;Input:
 ;  B  = internal block number
 ;  F  = internal field order
 ;  T  = type of element ("C" = caption, "D" = data)
 ;  C  = caption
 ;  C1 = $Y of caption
 ;  C2 = $X of caption
 ;  D  = data representation (underlines)
 ;  D1 = $Y of data
 ;  D2 = $X of data
 ;  L  = length of data
 ;  P1 = page $Y
 ;  P2 = page $X
 ; DDGFWID = "P1" or such
 N DDGFE
 S DDGFE=0,DDGFLSV=DDGFLIM
 S DDGFLIM=$P(@DDGFREF@("F",DDGFPG,B),U,1,2)_U_$P(DDGFLIM,U,3,4)
 ;
 D PAINTS
 S DDGFE=0 F  S Y=$$READ W:$T(@Y)="" $C(7) D:$T(@Y)]"" @Y Q:DDGFE  ;MOVE THE FIELD AROUND UNTIL SPACEBAR DESELECTS IT.
 D END
 D:$G(DDGFSUBP) SUBPG1^DDGFPG
 Q
 ;
END ;Redraw field 'F' on block 'B'
 S DDGFLIM=DDGFLSV K DDGFLSV
 Q:$D(^DIST(.404,B,40,F,0))[0
 N OLD,NEW,CAP,DATA S (NEW,OLD)=$G(^(2)),CAP=$P(NEW,U,3),DATA=$P(NEW,U,1)
 ;^DIST(.404,D0,40,D1,2)= (#4.1) DATA COORDINATE [1F] ^ (#4.2) DATA LENGTH [2N] ^ (#5.1) CAPTION COORDINATE [3F] ^ (#5.2) SUPPRESS COLON AFTER CAPTION? [4S] 
 S $P(NEW,U,2)=$G(L) ;LENGTH WILL NOT BE THERE, IF THIS IS A CAPTION
 S $P(CAP,",",1)=C1+1,$P(CAP,",",2)=C2+1
 S C3=C2+$L(C)-1 ;CAPTION END POINT
 I T="C",C]"" D
 . D WRITE^DDGLIBW(DDGFWID,C,C1-P1,C2-P2)
 . S @DDGFREF@("RC",DDGFWID,C1,C2,C3,B,F,"C")=""
 ;
 I $D(D) D
 . S $P(DATA,",",1)=D1+1,$P(DATA,",",2)=D2+1
 . S D3=D2+L-1 ;DATA END POINT
 . D WRITE^DDGLIBW(DDGFWID,D,D1-P1,D2-P2)
 . S @DDGFREF@("RC",DDGFWID,D1,D2,D3,B,F,"D")=""
 ;
 S @DDGFREF@("F",DDGFPG,B,F)=C1_U_C2_U_C3_U_C_U_$S($D(D):D1_U_D2_U_D3_U_L,1:"^^^")_U_1,DDGFCHG=1
 D KILLPGS^DDGFFLDA(B,DDGFWID) ;BLOCK MAY BE ON ANOTHER PAGE
 ;
 X IOXY
 Q
 ;
TO ;Time-out
 W $C(7)
 G DESELECT
 ;
DESELECT ;SPACE-BAR HAS DESELECTED FIELD
 S DDGFE=1
 Q
 ;
LNU I T="C" Q:C1'>$P(DDGFLIM,U)  ;LINE FEED UP
 I $D(D),D1'>$P(DDGFLIM,U) Q
 D REDRAW S:T="C" C1=C1-1
 S:$D(D) D1=D1-1
 S DY=DY-1
 D PAINTS
 Q
LND I T="C" Q:C1'<$P(DDGFLIM,U,3)  ;LINE FEED DOWN
 I $D(D),D1'<$P(DDGFLIM,U,3) Q
 D REDRAW
 S:T="C" C1=C1+1
 S:$D(D) D1=D1+1
 S DY=DY+1
 D PAINTS
 Q
CHR I T="C" Q:C2+$L(C)>$P(DDGFLIM,U,4)
 I $D(D),D2+L>$P(DDGFLIM,U,4) Q
 D REDRAW S:T="C" C2=C2+1
 S:$D(D) D2=D2+1
 S DX=DX+1
 D PAINTS
 Q
CHL I T="C" Q:C2'>$P(DDGFLIM,U,2)
 I $D(D),D2'>$P(DDGFLIM,U,2) Q
 D REDRAW S:T="C" C2=C2-1
 S:$D(D) D2=D2-1
 S DX=DX-1
 D PAINTS
 Q
TBR N X
 I T="C" Q:C2+$L(C)>$P(DDGFLIM,U,4)
 I $D(D),D2+L>$P(DDGFLIM,U,4) Q
 D REDRAW
 I T="C" D
 . S X=$$MIN(5,$P(DDGFLIM,U,4)-(C2+$L(C)),$S($D(D):$P(DDGFLIM,U,4)-(D2+L)+1,1:""))
 . S C2=C2+X
 E  S X=$$MIN(5,$P(DDGFLIM,U,4)-(D2+L)+1)
 S:$D(D) D2=D2+X
 S DX=DX+X
 D PAINTS
 Q
TBL N X
 I T="C" Q:C2'>$P(DDGFLIM,U,2)
 I $D(D),D2'>$P(DDGFLIM,U,2) Q
 D REDRAW
 I T="C" D
 . S X=$$MIN(5,C2-$P(DDGFLIM,U,2),$S($D(D):D2-$P(DDGFLIM,U,2),1:""))
 . S C2=C2-X
 E  S X=$$MIN(5,D2-$P(DDGFLIM,U,2))
 S:$D(D) D2=D2-X
 S DX=DX-X
 D PAINTS
 Q
SCT N Y
 I T="C" Q:C1'>$P(DDGFLIM,U)
 I $D(D),D1'>$P(DDGFLIM,U) Q
 D REDRAW
 I T="C" S Y=$S('$D(D):C1,C1<D1:C1,1:D1)-$P(DDGFLIM,U),C1=C1-Y
 E  S Y=D1-$P(DDGFLIM,U)
 S:$D(D) D1=D1-Y
 S DY=DY-Y
 D PAINTS
 Q
SCB N Y
 I T="C" Q:C1'<$P(DDGFLIM,U,3)
 I $D(D),D1'<$P(DDGFLIM,U,3) Q
 D REDRAW
 I T="C" S Y=$P(DDGFLIM,U,3)-$S('$D(D):C1,C1>D1:C1,1:D1),C1=C1+Y
 E  S Y=$P(DDGFLIM,U,3)-D1
 S:$D(D) D1=D1+Y
 S DY=DY+Y
 D PAINTS
 Q
SCR N X
 I T="C" Q:C2+$L(C)>$P(DDGFLIM,U,4)
 I $D(D),D2+L>$P(DDGFLIM,U,4) Q
 D REDRAW
 I T="C" D
 . S X=$P(DDGFLIM,U,4)-$S('$D(D):C2+$L(C),C2+$L(C)>(D2+L):C2+$L(C),1:D2+L)+1
 . S C2=C2+X
 E  S X=$P(DDGFLIM,U,4)-(D2+L)+1
 S:$D(D) D2=D2+X
 S DX=DX+X
 D PAINTS
 Q
SCL N X
 I T="C" Q:C2'>$P(DDGFLIM,U,2)
 I $D(D),D2'>$P(DDGFLIM,U,2) Q
 D REDRAW
 I T="C" S X=$S('$D(D):C2,C2<D2:C2,1:D2)-$P(DDGFLIM,U,2),C2=C2-X
 E  S X=D2-$P(DDGFLIM,U,2)
 S:$D(D) D2=D2-X
 S DX=DX-X
 D PAINTS
 Q
EDIT ;A SEPARATE SCREENMAN FORM WILL EDIT THIS SINGLE FIELD
 G EDIT^DDGFFLD
SUBPG ;
 G SUBPG^DDGFPG
 ;
RC(DDGFY,DDGFX) ;Update status line, reset DX and DY, move cursor
 N DDGFS
 I DDGFR D
 . S DY=IOSL-6,DX=IOM-9,DDGFS="R"_(DDGFY+1)_",C"_(DDGFX+1)
 . X IOXY W DDGFS_$J("",7-$L(DDGFS))
 S DY=DDGFY,DX=DDGFX X IOXY
 Q
 ;
REDRAW ;
 D:T="C" REPAINT^DDGLIBW(DDGFWID,(C1-P1)_U_(C2-P2)_U_1_U_$L(C))
 D:$D(D) REPAINT^DDGLIBW(DDGFWID,(D1-P1)_U_(D2-P2)_U_1_U_L)
 Q
 ;
PAINTS ;
 N Y,X
 S Y=DY,X=DX
 I T="C" S DY=C1,DX=C2 X IOXY W $P(DDGLVID,DDGLDEL,6)_$E(C,1,$$MIN($L(C),$P(DDGFLIM,U,4)-C2+1))_$P(DDGLVID,DDGLDEL,10)
 I $D(D) S DY=D1,DX=D2 X IOXY W $P(DDGLVID,DDGLDEL,6)_$E(D,1,$$MIN(L,$P(DDGFLIM,U,4)-D2+1))_$P(DDGLVID,DDGLDEL,10)
 D RC(Y,X)
 Q
 ;
MIN(X,Y,Z) ;Return the minimum of two or three numbers
 N A
 S A=$S(X<Y:X,1:Y)
 Q:$G(Z)="" A
 Q $S(A<Z:A,1:Z)
 ;
READ() N S,Y
 F  R *Y:DTIME D C Q:Y'=-1
 Q Y
 ;
C I Y<0 S Y="TO" Q
 S S=""
C1 S S=S_$C(Y)
 I DDGF("SIN")'[(U_S) D  I Y=-1 W $C(7) Q
 . I $C(Y)'?1L S Y=-1 Q
 . S S=$E(S,1,$L(S)-1)_$C(Y-32) S:DDGF("SIN")'[(U_S_U) Y=-1
 ;
 I DDGF("SIN")[(U_S_U),S'=$C(27) S Y=$P(DDGF("SOUT"),U,$L($P(DDGF("SIN"),U_S_U),U)) Q
 R *Y:5 G:Y'=-1 C1 W $C(7)
 Q
