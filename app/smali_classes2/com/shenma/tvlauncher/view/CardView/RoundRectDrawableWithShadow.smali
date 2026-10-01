.class Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawableWithShadow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow$RoundRectHelper;
    }
.end annotation


# static fields
.field private static final COS_45:D

.field private static final SHADOW_MULTIPLIER:F = 1.5f

.field static sRoundRectHelper:Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow$RoundRectHelper;


# instance fields
.field private mAddPaddingForCorners:Z

.field private mBackground:Landroid/content/res/ColorStateList;

.field private final mCardBounds:Landroid/graphics/RectF;

.field private mCornerRadius:F

.field private mCornerShadowPaint:Landroid/graphics/Paint;

.field private mCornerShadowPath:Landroid/graphics/Path;

.field private mDirty:Z

.field private mEdgeShadowPaint:Landroid/graphics/Paint;

.field private final mInsetShadow:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPrintedShadowClipWarning:Z

.field private mRawMaxShadowSize:F

.field private mRawShadowSize:F

.field private final mShadowEndColor:I

.field private mShadowSize:F

.field private final mShadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->COS_45:D

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "backgroundColor"    # Landroid/content/res/ColorStateList;
    .param p3, "radius"    # F
    .param p4, "shadowSize"    # F
    .param p5, "maxShadowSize"    # F

    .line 93
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mDirty:Z

    .line 85
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    .line 94
    sget v1, Lcom/shenma/tvlauncher/R$color;->cardview_shadow_start_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mShadowStartColor:I

    .line 95
    sget v1, Lcom/shenma/tvlauncher/R$color;->cardview_shadow_end_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mShadowEndColor:I

    .line 96
    sget v1, Lcom/shenma/tvlauncher/R$dimen;->cardview_compat_inset_shadow:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mInsetShadow:I

    .line 97
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 98
    invoke-direct {p0, p2}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->setBackground(Landroid/content/res/ColorStateList;)V

    .line 99
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 100
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v1, p3

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 102
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 103
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 104
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    invoke-direct {p0, p4, p5}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    .line 106
    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 335
    iget v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v0, v0, v1

    .line 336
    .local v0, "verticalOffset":F
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    sub-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 338
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->buildShadowCorners()V

    .line 339
    return-void
.end method

.method private buildShadowCorners()V
    .locals 15

    .line 298
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v1, v1

    iget v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v2, v2

    iget v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v4, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 299
    .local v0, "innerBounds":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 300
    .local v1, "outerBounds":Landroid/graphics/RectF;
    iget v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mShadowSize:F

    neg-float v2, v2

    iget v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mShadowSize:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 302
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    if-nez v2, :cond_0

    .line 303
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    goto :goto_0

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 307
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 308
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 309
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mShadowSize:F

    neg-float v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 311
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v3, v5, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 313
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v3, 0x43870000    # 270.0f

    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v0, v3, v5, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 314
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 315
    iget v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v5, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float/2addr v3, v5

    div-float/2addr v2, v3

    .line 316
    .local v2, "startRatio":F
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/RadialGradient;

    iget v5, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v8, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float v10, v5, v8

    iget v5, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mShadowStartColor:I

    iget v8, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mShadowStartColor:I

    iget v9, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mShadowEndColor:I

    filled-new-array {v5, v8, v9}, [I

    move-result-object v11

    const/4 v5, 0x3

    new-array v12, v5, [F

    aput v4, v12, v6

    const/4 v4, 0x1

    aput v2, v12, v4

    const/4 v4, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v12, v4

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v7 .. v13}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 324
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/LinearGradient;

    iget v4, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v4, v4

    iget v8, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float v9, v4, v8

    iget v4, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v4, v4

    iget v8, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mShadowSize:F

    sub-float v11, v4, v8

    iget v4, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mShadowStartColor:I

    iget v8, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mShadowStartColor:I

    iget v10, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mShadowEndColor:I

    filled-new-array {v4, v8, v10}, [I

    move-result-object v12

    new-array v13, v5, [F

    fill-array-data v13, :array_0

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 328
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 329
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static calculateHorizontalPadding(FFZ)F
    .locals 6
    .param p0, "maxShadowSize"    # F
    .param p1, "cornerRadius"    # F
    .param p2, "addPaddingForCorners"    # Z

    .line 190
    if-eqz p2, :cond_0

    .line 191
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    .line 193
    :cond_0
    return p0
.end method

.method static calculateVerticalPadding(FFZ)F
    .locals 6
    .param p0, "maxShadowSize"    # F
    .param p1, "cornerRadius"    # F
    .param p2, "addPaddingForCorners"    # Z

    .line 181
    const/high16 v0, 0x3fc00000    # 1.5f

    if-eqz p2, :cond_0

    .line 182
    mul-float v0, v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    .line 184
    :cond_0
    mul-float v0, v0, p0

    return v0
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 250
    iget v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v0, v0

    iget v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mShadowSize:F

    sub-float v4, v0, v1

    .line 251
    .local v4, "edgeShadowTop":F
    iget v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawShadowSize:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    add-float/2addr v0, v1

    .line 252
    .local v0, "inset":F
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v2, v0, v8

    sub-float/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 253
    .local v1, "drawHorizontalEdges":Z
    :goto_0
    iget-object v6, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float v7, v0, v8

    sub-float/2addr v6, v7

    cmpl-float v5, v6, v5

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v9, v2

    .line 255
    .local v9, "drawVerticalEdges":Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 256
    .local v10, "saved":I
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 257
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 258
    if-eqz v1, :cond_2

    .line 259
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 260
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v3, v0, v8

    sub-float v5, v2, v3

    iget v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v6, v2

    iget-object v7, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 259
    const/4 v3, 0x0

    move-object v2, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 258
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    move-object v2, p1

    .line 263
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    :goto_2
    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 265
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result p1

    .line 266
    .end local v10    # "saved":I
    .local p1, "saved":I
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v0

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 267
    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 268
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 269
    if-eqz v1, :cond_3

    .line 270
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 271
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v5, v0, v8

    sub-float v5, v3, v5

    iget v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v3, v3

    iget v6, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float/2addr v6, v3

    iget-object v7, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 270
    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 274
    :cond_3
    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 276
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result p1

    .line 277
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v0

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 278
    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 279
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 280
    if-eqz v9, :cond_4

    .line 281
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 282
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v5, v0, v8

    sub-float v5, v3, v5

    iget v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v6, v3

    iget-object v7, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 281
    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 284
    :cond_4
    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 286
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result p1

    .line 287
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 288
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 289
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 290
    if-eqz v9, :cond_5

    .line 291
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 292
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v8, v8, v0

    sub-float v5, v3, v8

    iget v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v6, v3

    iget-object v7, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 291
    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 294
    :cond_5
    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 295
    return-void
.end method

.method private setBackground(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 109
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    .line 110
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->getState()[I

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    return-void
.end method

.method private setShadowSize(FF)V
    .locals 4
    .param p1, "shadowSize"    # F
    .param p2, "maxShadowSize"    # F

    .line 143
    const-string v0, ". Must be >= 0"

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_3

    .line 147
    cmpg-float v1, p2, v1

    if-ltz v1, :cond_2

    .line 151
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->toEven(F)I

    move-result v0

    int-to-float p1, v0

    .line 152
    invoke-direct {p0, p2}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->toEven(F)I

    move-result v0

    int-to-float p2, v0

    .line 153
    const/4 v0, 0x1

    cmpl-float v1, p1, p2

    if-lez v1, :cond_0

    .line 154
    move p1, p2

    .line 155
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    if-nez v1, :cond_0

    .line 156
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    .line 159
    :cond_0
    iget v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawShadowSize:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1

    .line 160
    return-void

    .line 162
    :cond_1
    iput p1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawShadowSize:F

    .line 163
    iput p2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 164
    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v1, v1, p1

    iget v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 165
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mDirty:Z

    .line 166
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->invalidateSelf()V

    .line 167
    return-void

    .line 148
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid max shadow size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid shadow size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toEven(F)I
    .locals 3
    .param p1, "value"    # F

    .line 117
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int v0, v0

    .line 118
    .local v0, "i":I
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 119
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 121
    :cond_0
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 239
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mDirty:Z

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->buildComponents(Landroid/graphics/Rect;)V

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mDirty:Z

    .line 243
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawShadowSize:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 244
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->drawShadow(Landroid/graphics/Canvas;)V

    .line 245
    iget v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawShadowSize:F

    neg-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 246
    sget-object v0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->sRoundRectHelper:Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow$RoundRectHelper;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow$RoundRectHelper;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    .line 247
    return-void
.end method

.method getColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getCornerRadius()F
    .locals 1

    .line 342
    iget v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    return v0
.end method

.method getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "into"    # Landroid/graphics/Rect;

    .line 346
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->getPadding(Landroid/graphics/Rect;)Z

    .line 347
    return-void
.end method

.method getMaxShadowSize()F
    .locals 1

    .line 362
    iget v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    return v0
.end method

.method getMinHeight()F
    .locals 5

    .line 372
    iget v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v2, v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v4

    .line 374
    .local v0, "content":F
    iget v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    mul-float v1, v1, v3

    iget v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float v1, v1, v4

    add-float/2addr v1, v0

    return v1
.end method

.method getMinWidth()F
    .locals 4

    .line 366
    iget v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 367
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v3

    .line 368
    .local v0, "content":F
    iget v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float v1, v1, v3

    add-float/2addr v1, v0

    return v1
.end method

.method public getOpacity()I
    .locals 1

    .line 221
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 171
    iget v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget-boolean v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 173
    .local v0, "vOffset":I
    iget v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v2, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget-boolean v3, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 175
    .local v1, "hOffset":I
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 176
    const/4 v2, 0x1

    return v2
.end method

.method getShadowSize()F
    .locals 1

    .line 358
    iget v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawShadowSize:F

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 138
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mDirty:Z

    .line 140
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2
    .param p1, "stateSet"    # [I

    .line 199
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 200
    .local v0, "newColor":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 201
    const/4 v1, 0x0

    return v1

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mDirty:Z

    .line 205
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->invalidateSelf()V

    .line 206
    return v1
.end method

.method setAddPaddingForCorners(Z)V
    .locals 0
    .param p1, "addPaddingForCorners"    # Z

    .line 125
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    .line 126
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->invalidateSelf()V

    .line 127
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 131
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 134
    return-void
.end method

.method setColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 378
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->setBackground(Landroid/content/res/ColorStateList;)V

    .line 379
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->invalidateSelf()V

    .line 380
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .line 216
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 217
    return-void
.end method

.method setCornerRadius(F)V
    .locals 3
    .param p1, "radius"    # F

    .line 225
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 228
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int v0, v0

    int-to-float p1, v0

    .line 229
    iget v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 230
    return-void

    .line 232
    :cond_0
    iput p1, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mDirty:Z

    .line 234
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->invalidateSelf()V

    .line 235
    return-void

    .line 226
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid radius "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Must be >= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setMaxShadowSize(F)V
    .locals 1
    .param p1, "size"    # F

    .line 354
    iget v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawShadowSize:F

    invoke-direct {p0, v0, p1}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    .line 355
    return-void
.end method

.method setShadowSize(F)V
    .locals 1
    .param p1, "size"    # F

    .line 350
    iget v0, p0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    invoke-direct {p0, p1, v0}, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    .line 351
    return-void
.end method
