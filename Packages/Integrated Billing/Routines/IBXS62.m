IBXS62 ; ;12/30/17
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(0)=X S X=($P($G(^DGCR(399,DA,"U2")),U,2)=""&$$INPAT^IBCEF(DA,1)) I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"U2")):^("U2"),1:"") S X=$P(Y(1),U,2),X=X S DIU=X K Y S X=DIV S X=DIV X ^DD(399,165,1,1,1.4)
 S X=DG(DQ),DIC=DIE
 X ^DD(399,165,1,2,1.3) I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"U2")):^("U2"),1:"") S X=$P(Y(1),U,3),X=X S DIU=X K Y S X=DIV N Z S X=$$LOS1^IBCU64(DA,.Z),X=+$G(Z) X ^DD(399,165,1,2,1.4)
