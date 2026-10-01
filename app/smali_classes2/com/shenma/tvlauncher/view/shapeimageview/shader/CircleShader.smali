.class public Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;
.super Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;
.source "CircleShader.java"


# instance fields
.field private bitmapCenterX:F

.field private bitmapCenterY:F

.field private bitmapRadius:I

.field private borderRadius:F

.field private center:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public calculate(IIFFFFF)V
    .locals 2
    .param p1, "bitmapWidth"    # I
    .param p2, "bitmapHeight"    # I
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "scale"    # F
    .param p6, "translateX"    # F
    .param p7, "translateY"    # F

    .line 45
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->bitmapCenterX:F

    .line 46
    int-to-float v0, p2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->bitmapCenterY:F

    .line 47
    div-float v0, p3, p5

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->bitmapRadius:I

    .line 48
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "imagePaint"    # Landroid/graphics/Paint;
    .param p3, "borderPaint"    # Landroid/graphics/Paint;

    .line 26
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->center:F

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->center:F

    iget v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->borderRadius:F

    invoke-virtual {p1, v0, v1, v2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 28
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 29
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->bitmapCenterX:F

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->bitmapCenterY:F

    iget v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->bitmapRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 31
    return-void
.end method

.method public final getBorderRadius()F
    .locals 1

    .line 58
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->borderRadius:F

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 20
    invoke-super {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->square:Z

    .line 22
    return-void
.end method

.method public onSizeChanged(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 35
    invoke-super {p0, p1, p2}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->onSizeChanged(II)V

    .line 36
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->viewWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->center:F

    .line 37
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->viewWidth:I

    iget v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->borderWidth:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->borderRadius:F

    .line 38
    return-void
.end method

.method public reset()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->bitmapRadius:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->bitmapCenterX:F

    .line 54
    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->bitmapCenterY:F

    .line 55
    return-void
.end method

.method public final setBorderRadius(F)V
    .locals 0
    .param p1, "borderRadius"    # F

    .line 62
    iput p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->borderRadius:F

    .line 63
    return-void
.end method
