IBXX32 ; COMPILED XREF FOR FILE #399.0404 ; 12/30/17
 ; 
 S DA(2)=DA(1) S DA(1)=0 S DA=0
A1 ;
 I $D(DISET) K DIKLM S:DIKM1=2 DIKLM=1 S:DIKM1'=2&'$G(DIKPUSH(2)) DIKPUSH(2)=1,DA(2)=DA(1),DA(1)=DA,DA=0 G @DIKM1
A S DA(1)=$O(^DGCR(399,DA(2),"CP",DA(1))) I DA(1)'>0 S DA(1)=0 G END
1 ;
B S DA=$O(^DGCR(399,DA(2),"CP",DA(1),"LNPRV",DA)) I DA'>0 S DA=0 Q:DIKM1=1  G A
2 ;
 S DIKZ(0)=$G(^DGCR(399,DA(2),"CP",DA(1),"LNPRV",DA,0))
 S X=$P($G(DIKZ(0)),U,1)
 I X'="" S ^DGCR(399,DA(2),"CP",DA(1),"LNPRV","B",$E(X,1,30),DA)=""
 S X=$P($G(DIKZ(0)),U,1)
 I X'="" D
 .N DIK,DIV,DIU,DIN
 .K DIV S DIV=X,D0=DA(2),DIV(0)=D0,D1=DA(1),DIV(1)=D1,D2=DA,DIV(2)=D2 S Y(0)=X S X=Y(0),X=X S X=X'=1 I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"CP",D1,"LNPRV",D2,0)):^(0),1:"") S X=$P(Y(1),U,4),X=X S DIU=X K Y S X="" X ^DD(399.0404,.01,1,2,1.4)
 S DIKZ(0)=$G(^DGCR(399,DA(2),"CP",DA(1),"LNPRV",DA,0))
 S X=$P($G(DIKZ(0)),U,2)
 I X'="" D
 .N DIK,DIV,DIU,DIN
 .X ^DD(399.0404,.02,1,1,1.3) I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"CP",D1,"LNPRV",D2,0)):^(0),1:"") S X=$P(Y(1),U,5),X=X S DIU=X K Y S X="" X ^DD(399.0404,.02,1,1,1.4)
 S X=$P($G(DIKZ(0)),U,2)
 I X'="" D
 .N DIK,DIV,DIU,DIN
 .X ^DD(399.0404,.02,1,2,1.3) I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"CP",D1,"LNPRV",D2,0)):^(0),1:"") S X=$P(Y(1),U,3),X=X S DIU=X K Y S X=DIV S X=$$EXTCR^IBCEU5(X) X ^DD(399.0404,.02,1,2,1.4)
 S X=$P($G(DIKZ(0)),U,2)
 I X'="" D
 .N DIK,DIV,DIU,DIN
 .X ^DD(399.0404,.02,1,3,1.3) I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"CP",D1,"LNPRV",D2,0)):^(0),1:"") S X=$P(Y(1),U,8),X=X S DIU=X K Y X ^DD(399.0404,.02,1,3,1.1) X ^DD(399.0404,.02,1,3,1.4)
 S X=$P($G(DIKZ(0)),U,2)
 I X'="" D
 .N DIK,DIV,DIU,DIN
 .K DIV S DIV=X,D0=DA(2),DIV(0)=D0,D1=DA(1),DIV(1)=D1,D2=DA,DIV(2)=D2 S Y(1)=$S($D(^DGCR(399,D0,"CP",D1,"LNPRV",D2,0)):^(0),1:"") S X=$P(Y(1),U,15),X=X S DIU=X K Y X ^DD(399.0404,.02,1,7,1.1) X ^DD(399.0404,.02,1,7,1.4)
 S DIKZ(0)=$G(^DGCR(399,DA(2),"CP",DA(1),"LNPRV",DA,0))
 S X=$P($G(DIKZ(0)),U,5)
 I X'="" D
 .N DIK,DIV,DIU,DIN
 .K DIV S DIV=X,D0=DA(2),DIV(0)=D0,D1=DA(1),DIV(1)=D1,D2=DA,DIV(2)=D2 S Y(0)=X S X=Y(0)="SLF000" I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"CP",D1,"LNPRV",D2,0)):^(0),1:"") S X=$P(Y(1),U,2),X=X S DIU=X K Y S X="" X ^DD(399.0404,.05,1,1,1.4)
CR1 S DIXR=178
 K X
 S DIKZ(0)=$G(^DGCR(399,DA(2),"CP",DA(1),"LNPRV",DA,0))
 S X(1)=$P(DIKZ(0),U,1)
 S X=$$EXTERNAL^DILFD(399.0404,.01,,X(1))
 S:$D(X)#2 X(2)=X
 S X=$G(X(1))
 I $G(X(2))]"" D
 . K X1,X2 M X1=X,X2=X
 . S ^DGCR(399,DA(2),"CP",DA(1),"LNPRV","C",$E(X(2),1,30),DA)=""
CR2 K X
 G:'$D(DIKLM) B Q:$D(DISET)
END G ^IBXX33
