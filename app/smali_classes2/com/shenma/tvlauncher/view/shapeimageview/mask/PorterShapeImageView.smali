.class public Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;
.super Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;
.source "PorterShapeImageView.java"


# instance fields
.field private drawMatrix:Landroid/graphics/Matrix;

.field private matrix:Landroid/graphics/Matrix;

.field private shape:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method private configureBitmapBounds(II)V
    .locals 10
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;->drawMatrix:Landroid/graphics/Matrix;

    .line 65
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;->shape:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 66
    .local v0, "drawableWidth":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;->shape:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 67
    .local v1, "drawableHeight":I
    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 69
    .local v3, "fits":Z
    :goto_0
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    if-nez v3, :cond_1

    .line 70
    iget-object v4, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;->shape:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    int-to-float v2, p1

    int-to-float v4, v0

    div-float/2addr v2, v4

    .line 72
    .local v2, "widthRatio":F
    int-to-float v4, p2

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 73
    .local v4, "heightRatio":F
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 74
    .local v5, "scale":F
    int-to-float v6, p1

    int-to-float v7, v0

    mul-float v7, v7, v5

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v6, v6, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    .line 75
    .local v6, "dx":F
    int-to-float v8, p2

    int-to-float v9, v1

    mul-float v9, v9, v5

    sub-float/2addr v8, v9

    mul-float v8, v8, v7

    add-float/2addr v8, v7

    float-to-int v7, v8

    int-to-float v7, v7

    .line 77
    .local v7, "dy":F
    iget-object v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 78
    iget-object v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 80
    .end local v2    # "widthRatio":F
    .end local v4    # "heightRatio":F
    .end local v5    # "scale":F
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    :cond_1
    return-void
.end method

.method private setup(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 35
    if-eqz p2, :cond_0

    .line 36
    sget-object v0, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView_siShape:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;->shape:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;->matrix:Landroid/graphics/Matrix;

    .line 41
    return-void
.end method


# virtual methods
.method protected paintMaskCanvas(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 2
    .param p1, "maskCanvas"    # Landroid/graphics/Canvas;
    .param p2, "maskPaint"    # Landroid/graphics/Paint;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 45
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;->shape:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;->shape:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0, p3, p4}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;->configureBitmapBounds(II)V

    .line 48
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;->drawMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 50
    .local v0, "drawableSaveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 51
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 52
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;->shape:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 54
    return-void

    .line 58
    .end local v0    # "drawableSaveCount":I
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;->shape:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 59
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterShapeImageView;->shape:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 61
    :cond_1
    return-void
.end method
