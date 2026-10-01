.class Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;
.super Ljava/lang/Object;
.source "CardViewApi21Impl.java"

# interfaces
.implements Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCardBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawable;
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 122
    invoke-interface {p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawable;

    return-object v0
.end method


# virtual methods
.method public getBackgroundColor(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 118
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;->getCardBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getElevation(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 83
    invoke-interface {p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public getMaxElevation(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 58
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;->getCardBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawable;->getPadding()F

    move-result v0

    return v0
.end method

.method public getMinHeight(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F
    .locals 2
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 68
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;->getRadius(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public getMinWidth(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F
    .locals 2
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 63
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;->getRadius(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public getRadius(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 73
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;->getCardBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawable;->getRadius()F

    move-result v0

    return v0
.end method

.method public initStatic()V
    .locals 0

    .line 47
    return-void
.end method

.method public initialize(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 3
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "backgroundColor"    # Landroid/content/res/ColorStateList;
    .param p4, "radius"    # F
    .param p5, "elevation"    # F
    .param p6, "maxElevation"    # F

    .line 31
    new-instance v0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawable;

    invoke-direct {v0, p3, p4}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawable;-><init>(Landroid/content/res/ColorStateList;F)V

    .line 32
    .local v0, "background":Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawable;
    invoke-interface {p1, v0}, Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    .line 34
    invoke-interface {p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object v1

    .line 35
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 36
    invoke-virtual {v1, p5}, Landroid/view/View;->setElevation(F)V

    .line 37
    invoke-virtual {p0, p1, p6}, Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;->setMaxElevation(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;F)V

    .line 38
    return-void
.end method

.method public onCompatPaddingChanged(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)V
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 103
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;->getMaxElevation(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;->setMaxElevation(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;F)V

    .line 104
    return-void
.end method

.method public onPreventCornerOverlapChanged(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)V
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 108
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;->getMaxElevation(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;->setMaxElevation(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;F)V

    .line 109
    return-void
.end method

.method public setBackgroundColor(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;
    .param p2, "color"    # Landroid/content/res/ColorStateList;

    .line 113
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;->getCardBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 114
    return-void
.end method

.method public setElevation(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;
    .param p2, "elevation"    # F

    .line 78
    invoke-interface {p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setElevation(F)V

    .line 79
    return-void
.end method

.method public setMaxElevation(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;F)V
    .locals 3
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;
    .param p2, "maxElevation"    # F

    .line 51
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;->getCardBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawable;

    move-result-object v0

    .line 52
    invoke-interface {p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;->getUseCompatPadding()Z

    move-result v1

    invoke-interface {p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    .line 51
    invoke-virtual {v0, p2, v1, v2}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawable;->setPadding(FZZ)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;->updatePadding(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)V

    .line 54
    return-void
.end method

.method public setRadius(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;
    .param p2, "radius"    # F

    .line 42
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;->getCardBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawable;->setRadius(F)V

    .line 43
    return-void
.end method

.method public updatePadding(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)V
    .locals 5
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 88
    invoke-interface {p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;->getUseCompatPadding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, v0}, Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;->setShadowPadding(IIII)V

    .line 90
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;->getMaxElevation(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F

    move-result v0

    .line 93
    .local v0, "elevation":F
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;->getRadius(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F

    move-result v1

    .line 94
    .local v1, "radius":F
    nop

    .line 95
    invoke-interface {p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v2

    float-to-double v2, v2

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 96
    .local v2, "hPadding":I
    nop

    .line 97
    invoke-interface {p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v3

    float-to-double v3, v3

    .line 96
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 98
    .local v3, "vPadding":I
    invoke-interface {p1, v2, v3, v2, v3}, Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;->setShadowPadding(IIII)V

    .line 99
    return-void
.end method
