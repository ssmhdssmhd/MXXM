.class public Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;
.super Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;
.source "RoundedShader.java"


# instance fields
.field private bitmapRadius:I

.field private final borderRect:Landroid/graphics/RectF;

.field private final imageRect:Landroid/graphics/RectF;

.field private radius:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->borderRect:Landroid/graphics/RectF;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->imageRect:Landroid/graphics/RectF;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->radius:I

    .line 22
    return-void
.end method


# virtual methods
.method public calculate(IIFFFFF)V
    .locals 5
    .param p1, "bitmapWidth"    # I
    .param p2, "bitmapHeight"    # I
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "scale"    # F
    .param p6, "translateX"    # F
    .param p7, "translateY"    # F

    .line 56
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->imageRect:Landroid/graphics/RectF;

    neg-float v1, p6

    neg-float v2, p7

    int-to-float v3, p1

    add-float/2addr v3, p6

    int-to-float v4, p2

    add-float/2addr v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 57
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->radius:I

    int-to-float v0, v0

    div-float/2addr v0, p5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->bitmapRadius:I

    .line 58
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "imagePaint"    # Landroid/graphics/Paint;
    .param p3, "borderPaint"    # Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->borderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->radius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->radius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 39
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 40
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->imageRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->bitmapRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->bitmapRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 42
    return-void
.end method

.method public final getRadius()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->radius:I

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->borderWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    if-eqz p2, :cond_0

    .line 29
    sget-object v0, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView_siRadius:I

    iget v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->radius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->radius:I

    .line 31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method public onSizeChanged(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 47
    invoke-super {p0, p1, p2}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->onSizeChanged(II)V

    .line 48
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->borderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->borderWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->borderWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->viewWidth:I

    iget v4, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->borderWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->viewHeight:I

    iget v5, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->borderWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 49
    return-void
.end method

.method public reset()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->imageRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->bitmapRadius:I

    .line 64
    return-void
.end method

.method public final setRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .line 71
    iput p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->radius:I

    .line 72
    return-void
.end method
