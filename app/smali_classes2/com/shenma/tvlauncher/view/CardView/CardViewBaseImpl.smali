.class Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;
.super Ljava/lang/Object;
.source "CardViewBaseImpl.java"

# interfaces
.implements Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;


# instance fields
.field final mCornerRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    return-void
.end method

.method private createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundColor"    # Landroid/content/res/ColorStateList;
    .param p3, "radius"    # F
    .param p4, "elevation"    # F
    .param p5, "maxElevation"    # F

    .line 93
    new-instance v0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p2    # "backgroundColor":Landroid/content/res/ColorStateList;
    .end local p3    # "radius":F
    .end local p4    # "elevation":F
    .end local p5    # "maxElevation":F
    .local v2, "backgroundColor":Landroid/content/res/ColorStateList;
    .local v3, "radius":F
    .local v4, "elevation":F
    .local v5, "maxElevation":F
    invoke-direct/range {v0 .. v5}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    return-object v0
.end method

.method private getShadowBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 171
    invoke-interface {p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;

    return-object v0
.end method


# virtual methods
.method public getBackgroundColor(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 125
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->getShadowBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getElevation(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 146
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->getShadowBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->getShadowSize()F

    move-result v0

    return v0
.end method

.method public getMaxElevation(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 157
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->getShadowBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->getMaxShadowSize()F

    move-result v0

    return v0
.end method

.method public getMinHeight(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 167
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->getShadowBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->getMinHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 162
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->getShadowBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->getMinWidth()F

    move-result v0

    return v0
.end method

.method public getRadius(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 136
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->getShadowBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->getCornerRadius()F

    move-result v0

    return v0
.end method

.method public initStatic()V
    .locals 1

    .line 37
    new-instance v0, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl$1;-><init>(Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;)V

    sput-object v0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->sRoundRectHelper:Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 78
    return-void
.end method

.method public initialize(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 6
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "backgroundColor"    # Landroid/content/res/ColorStateList;
    .param p4, "radius"    # F
    .param p5, "elevation"    # F
    .param p6, "maxElevation"    # F

    .line 83
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "backgroundColor":Landroid/content/res/ColorStateList;
    .end local p4    # "radius":F
    .end local p5    # "elevation":F
    .end local p6    # "maxElevation":F
    .local v1, "context":Landroid/content/Context;
    .local v2, "backgroundColor":Landroid/content/res/ColorStateList;
    .local v3, "radius":F
    .local v4, "elevation":F
    .local v5, "maxElevation":F
    invoke-direct/range {v0 .. v5}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;

    move-result-object p2

    .line 85
    .local p2, "background":Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;
    invoke-interface {p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 86
    invoke-interface {p1, p2}, Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->updatePadding(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)V

    .line 88
    return-void
.end method

.method public onCompatPaddingChanged(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)V
    .locals 0
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 110
    return-void
.end method

.method public onPreventCornerOverlapChanged(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)V
    .locals 2
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 114
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->getShadowBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-interface {p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->updatePadding(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)V

    .line 116
    return-void
.end method

.method public setBackgroundColor(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;
    .param p2, "color"    # Landroid/content/res/ColorStateList;

    .line 120
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->getShadowBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->setColor(Landroid/content/res/ColorStateList;)V

    .line 121
    return-void
.end method

.method public setElevation(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;
    .param p2, "elevation"    # F

    .line 141
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->getShadowBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->setShadowSize(F)V

    .line 142
    return-void
.end method

.method public setMaxElevation(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;
    .param p2, "maxElevation"    # F

    .line 151
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->getShadowBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->setMaxShadowSize(F)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->updatePadding(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)V

    .line 153
    return-void
.end method

.method public setRadius(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;
    .param p2, "radius"    # F

    .line 130
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->getShadowBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->setCornerRadius(F)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->updatePadding(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)V

    .line 132
    return-void
.end method

.method public updatePadding(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)V
    .locals 5
    .param p1, "cardView"    # Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 100
    .local v0, "shadowPadding":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->getShadowBackground(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->getMinWidth(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 102
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;->getMinHeight(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 101
    invoke-interface {p1, v1, v2}, Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;->setMinWidthHeightInternal(II)V

    .line 103
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;->setShadowPadding(IIII)V

    .line 105
    return-void
.end method
