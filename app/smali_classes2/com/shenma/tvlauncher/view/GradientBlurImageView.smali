.class public Lcom/shenma/tvlauncher/view/GradientBlurImageView;
.super Landroid/widget/ImageView;
.source "GradientBlurImageView.java"


# instance fields
.field private drawRect:Landroid/graphics/RectF;

.field private gradientEnabled:Z

.field private gradientPaint:Landroid/graphics/Paint;

.field private matrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->gradientPaint:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->matrix:Landroid/graphics/Matrix;

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->drawRect:Landroid/graphics/RectF;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->gradientEnabled:Z

    .line 26
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->gradientPaint:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->matrix:Landroid/graphics/Matrix;

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->drawRect:Landroid/graphics/RectF;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->gradientEnabled:Z

    .line 31
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->gradientPaint:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->matrix:Landroid/graphics/Matrix;

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->drawRect:Landroid/graphics/RectF;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->gradientEnabled:Z

    .line 36
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->init()V

    .line 37
    return-void
.end method

.method private init()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->gradientPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 42
    return-void
.end method

.method private updateGradient()V
    .locals 9

    .line 51
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 55
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    const/4 v0, 0x0

    const/4 v2, -0x1

    filled-new-array {v0, v2}, [I

    move-result-object v6

    const/4 v0, 0x2

    new-array v7, v0, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 61
    .local v1, "gradient":Landroid/graphics/LinearGradient;
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 64
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 65
    return-void

    .line 51
    .end local v1    # "gradient":Landroid/graphics/LinearGradient;
    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 69
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->gradientEnabled:Z

    if-nez v0, :cond_0

    .line 70
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 71
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result p1

    .line 78
    .local p1, "saveCount":I
    invoke-super {p0, v1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 81
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->drawRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 84
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 85
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 47
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->updateGradient()V

    .line 48
    return-void
.end method

.method public setGradientDirection(Z)V
    .locals 0
    .param p1, "leftToRight"    # Z

    .line 93
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->updateGradient()V

    .line 94
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->invalidate()V

    .line 95
    return-void
.end method

.method public setGradientEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 88
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->gradientEnabled:Z

    .line 89
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/GradientBlurImageView;->invalidate()V

    .line 90
    return-void
.end method
