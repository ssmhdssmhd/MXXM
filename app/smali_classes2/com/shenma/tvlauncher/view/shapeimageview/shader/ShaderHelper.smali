.class public abstract Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;
.super Ljava/lang/Object;
.source "ShaderHelper.java"


# static fields
.field private static final ALPHA_MAX:I = 0xff


# instance fields
.field protected borderAlpha:F

.field protected borderColor:I

.field protected final borderPaint:Landroid/graphics/Paint;

.field protected borderWidth:I

.field protected drawable:Landroid/graphics/drawable/Drawable;

.field protected final imagePaint:Landroid/graphics/Paint;

.field protected final matrix:Landroid/graphics/Matrix;

.field protected shader:Landroid/graphics/BitmapShader;

.field protected square:Z

.field protected viewHeight:I

.field protected viewWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderColor:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderWidth:I

    .line 29
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderAlpha:F

    .line 30
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->square:Z

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->matrix:Landroid/graphics/Matrix;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderPaint:Landroid/graphics/Paint;

    .line 40
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->imagePaint:Landroid/graphics/Paint;

    .line 44
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    return-void
.end method


# virtual methods
.method public abstract calculate(IIFFFFF)V
.end method

.method public calculateDrawableSizes()Landroid/graphics/Bitmap;
    .locals 12

    .line 98
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 101
    .local v2, "bitmapWidth":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 103
    .local v3, "bitmapHeight":I
    if-lez v2, :cond_1

    if-lez v3, :cond_1

    .line 104
    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->viewWidth:I

    int-to-float v1, v1

    iget v4, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v4, v5

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v4, v1

    .line 105
    .local v4, "width":F
    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->viewHeight:I

    int-to-float v1, v1

    iget v6, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderWidth:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 108
    .local v1, "height":F
    const/4 v6, 0x0

    .line 109
    .local v6, "translateX":F
    const/4 v7, 0x0

    .line 111
    .local v7, "translateY":F
    int-to-float v8, v2

    mul-float v8, v8, v1

    int-to-float v9, v3

    mul-float v9, v9, v4

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 112
    int-to-float v8, v3

    div-float v8, v1, v8

    .line 113
    .local v8, "scale":F
    div-float v9, v4, v8

    int-to-float v10, v2

    sub-float/2addr v9, v10

    div-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v6, v5

    move v11, v7

    move v7, v6

    move v6, v8

    move v8, v11

    goto :goto_0

    .line 115
    .end local v8    # "scale":F
    :cond_0
    int-to-float v8, v2

    div-float v8, v4, v8

    .line 116
    .restart local v8    # "scale":F
    div-float v9, v1, v8

    int-to-float v10, v3

    sub-float/2addr v9, v10

    div-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v7, v5

    move v11, v7

    move v7, v6

    move v6, v8

    move v8, v11

    .line 119
    .local v6, "scale":F
    .local v7, "translateX":F
    .local v8, "translateY":F
    :goto_0
    iget-object v5, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 120
    iget-object v5, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 121
    iget-object v5, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->matrix:Landroid/graphics/Matrix;

    iget v9, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderWidth:I

    int-to-float v10, v10

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 123
    move v5, v1

    move-object v1, p0

    .end local v1    # "height":F
    .local v5, "height":F
    invoke-virtual/range {v1 .. v8}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->calculate(IIFFFFF)V

    .line 125
    return-object v0

    .line 129
    .end local v2    # "bitmapWidth":I
    .end local v3    # "bitmapHeight":I
    .end local v4    # "width":F
    .end local v5    # "height":F
    .end local v6    # "scale":F
    .end local v7    # "translateX":F
    .end local v8    # "translateY":F
    :cond_1
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->reset()V

    .line 130
    const/4 v1, 0x0

    return-object v1
.end method

.method protected createShader()V
    .locals 4

    .line 140
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->calculateDrawableSizes()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 142
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->shader:Landroid/graphics/BitmapShader;

    .line 143
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->imagePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 145
    :cond_0
    return-void
.end method

.method protected final dpToPx(Landroid/util/DisplayMetrics;I)I
    .locals 3
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "dp"    # I

    .line 55
    int-to-float v0, p2

    iget v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
.end method

.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    :cond_0
    return-object v0
.end method

.method public final getBorderAlpha()F
    .locals 1

    .line 181
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderAlpha:F

    return v0
.end method

.method public final getBorderColor()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderColor:I

    return v0
.end method

.method public final getBorderWidth()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderWidth:I

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 59
    if-eqz p2, :cond_0

    .line 60
    sget-object v0, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView_siBorderColor:I

    iget v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderColor:I

    .line 62
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView_siBorderWidth:I

    iget v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderWidth:I

    .line 63
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView_siBorderAlpha:I

    iget v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderAlpha:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderAlpha:F

    .line 64
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView_siSquare:I

    iget-boolean v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->square:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->square:Z

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 70
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    return-void
.end method

.method public final isSquare()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->square:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)Z
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 74
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->shader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->createShader()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->shader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->viewWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->viewHeight:I

    if-lez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->imagePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, v1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 79
    const/4 v0, 0x1

    return v0

    .line 82
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final onImageDrawableReset(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 134
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->drawable:Landroid/graphics/drawable/Drawable;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->shader:Landroid/graphics/BitmapShader;

    .line 136
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 137
    return-void
.end method

.method public onSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 86
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->viewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->viewHeight:I

    if-ne v0, p2, :cond_0

    return-void

    .line 87
    :cond_0
    iput p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->viewWidth:I

    .line 88
    iput p2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->viewHeight:I

    .line 89
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->viewHeight:I

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->viewWidth:I

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->shader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->calculateDrawableSizes()Landroid/graphics/Bitmap;

    .line 95
    :cond_2
    return-void
.end method

.method public abstract reset()V
.end method

.method public final setBorderAlpha(F)V
    .locals 2
    .param p1, "borderAlpha"    # F

    .line 185
    iput p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderAlpha:F

    .line 186
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 189
    :cond_0
    return-void
.end method

.method public final setBorderColor(I)V
    .locals 1
    .param p1, "borderColor"    # I

    .line 163
    iput p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderColor:I

    .line 164
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    :cond_0
    return-void
.end method

.method public final setBorderWidth(I)V
    .locals 2
    .param p1, "borderWidth"    # I

    .line 174
    iput p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderWidth:I

    .line 175
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->borderPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 178
    :cond_0
    return-void
.end method

.method public final setSquare(Z)V
    .locals 0
    .param p1, "square"    # Z

    .line 192
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->square:Z

    .line 193
    return-void
.end method
