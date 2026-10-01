.class public Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;
.super Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;
.source "SvgShader.java"


# static fields
.field public static final BORDER_TYPE_DEFAULT:I = 0x0

.field public static final BORDER_TYPE_FILL:I = 0x1

.field public static final STROKE_CAP_BUTT:I = 0x0

.field public static final STROKE_CAP_DEFAULT:I = -0x1

.field public static final STROKE_CAP_ROUND:I = 0x1

.field public static final STROKE_CAP_SQUARE:I = 0x2

.field public static final STROKE_JOIN_BEVEL:I = 0x0

.field public static final STROKE_JOIN_DEFAULT:I = -0x1

.field public static final STROKE_JOIN_MITER:I = 0x1

.field public static final STROKE_JOIN_ROUND:I = 0x2


# instance fields
.field private final borderPath:Landroid/graphics/Path;

.field private borderType:I

.field private final path:Landroid/graphics/Path;

.field private final pathDimensions:[F

.field private final pathMatrix:Landroid/graphics/Matrix;

.field private resId:I

.field private shapePath:Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;

.field private strokeCap:I

.field private strokeJoin:I

.field private strokeMiter:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->path:Landroid/graphics/Path;

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderPath:Landroid/graphics/Path;

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathMatrix:Landroid/graphics/Matrix;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathDimensions:[F

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->resId:I

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderType:I

    .line 38
    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeCap:I

    .line 39
    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeJoin:I

    .line 40
    iput v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeMiter:I

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 46
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->path:Landroid/graphics/Path;

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderPath:Landroid/graphics/Path;

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathMatrix:Landroid/graphics/Matrix;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathDimensions:[F

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->resId:I

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderType:I

    .line 38
    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeCap:I

    .line 39
    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeJoin:I

    .line 40
    iput v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeMiter:I

    .line 47
    iput p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->resId:I

    .line 48
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "borderType"    # I

    .line 50
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->path:Landroid/graphics/Path;

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderPath:Landroid/graphics/Path;

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathMatrix:Landroid/graphics/Matrix;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathDimensions:[F

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->resId:I

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderType:I

    .line 38
    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeCap:I

    .line 39
    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeJoin:I

    .line 40
    iput v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeMiter:I

    .line 51
    iput p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->resId:I

    .line 52
    iput p2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderType:I

    .line 53
    return-void
.end method


# virtual methods
.method public calculate(IIFFFFF)V
    .locals 8
    .param p1, "bitmapWidth"    # I
    .param p2, "bitmapHeight"    # I
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "scale"    # F
    .param p6, "translateX"    # F
    .param p7, "translateY"    # F

    .line 150
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 151
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 153
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathDimensions:[F

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->shapePath:Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;->getWidth()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 154
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathDimensions:[F

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->shapePath:Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;->getHeight()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 156
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 158
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathDimensions:[F

    aget v0, v0, v2

    div-float v0, p3, v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathDimensions:[F

    aget v1, v1, v3

    div-float v1, p4, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p5

    .line 159
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathDimensions:[F

    aget v0, v0, v2

    mul-float v0, v0, p5

    sub-float v0, p3, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float p6, v0

    .line 160
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathDimensions:[F

    aget v0, v0, v3

    mul-float v0, v0, p5

    sub-float v0, p4, v0

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float p7, v0

    .line 161
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p5, p5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 162
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p6, p7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 163
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->shapePath:Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v5}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 164
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->path:Landroid/graphics/Path;

    iget v4, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderWidth:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->offset(FF)V

    .line 166
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderWidth:I

    if-lez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 171
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderType:I

    if-nez v0, :cond_0

    .line 172
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->viewWidth:I

    iget v4, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderWidth:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    .line 173
    .local v0, "newWidth":F
    iget v4, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->viewHeight:I

    iget v5, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 174
    .local v4, "newHeight":F
    iget v5, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .local v5, "d":F
    goto :goto_0

    .line 176
    .end local v0    # "newWidth":F
    .end local v4    # "newHeight":F
    .end local v5    # "d":F
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->viewWidth:I

    int-to-float v0, v0

    .line 177
    .restart local v0    # "newWidth":F
    iget v4, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->viewHeight:I

    int-to-float v4, v4

    .line 178
    .restart local v4    # "newHeight":F
    const/4 v5, 0x0

    .line 180
    .restart local v5    # "d":F
    :goto_0
    iget-object v6, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathDimensions:[F

    aget v6, v6, v2

    div-float v6, v0, v6

    iget-object v7, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathDimensions:[F

    aget v7, v7, v3

    div-float v7, v4, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result p5

    .line 181
    iget-object v6, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathDimensions:[F

    aget v2, v6, v2

    mul-float v2, v2, p5

    sub-float v2, v0, v2

    mul-float v2, v2, v1

    add-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float p6, v2

    .line 182
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathDimensions:[F

    aget v2, v2, v3

    mul-float v2, v2, p5

    sub-float v2, v4, v2

    mul-float v2, v2, v1

    add-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float p7, v1

    .line 183
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p5, p5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 184
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p6, p7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 185
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->shapePath:Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 189
    .end local v0    # "newWidth":F
    .end local v4    # "newHeight":F
    .end local v5    # "d":F
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 190
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 191
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->pathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 192
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "imagePaint"    # Landroid/graphics/Paint;
    .param p3, "borderPaint"    # Landroid/graphics/Paint;

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 142
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 143
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 144
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 146
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    if-eqz p2, :cond_0

    .line 59
    sget-object v0, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView_siShape:I

    iget v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->resId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->resId:I

    .line 61
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView_siBorderType:I

    iget v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderType:I

    .line 62
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView_siStrokeCap:I

    iget v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeCap:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeCap:I

    .line 63
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView_siStrokeJoin:I

    iget v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeJoin:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeJoin:I

    .line 64
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView_siStrokeMiter:I

    iget v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeMiter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeMiter:I

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->resId:I

    invoke-virtual {p0, p1, v0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->setShapeResId(Landroid/content/Context;I)V

    .line 69
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderType:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->setBorderType(I)V

    .line 70
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeCap:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->setStrokeCap(I)V

    .line 71
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeJoin:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->setStrokeJoin(I)V

    .line 72
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeMiter:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->setStrokeMiter(I)V

    .line 73
    return-void
.end method

.method public reset()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 197
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 198
    return-void
.end method

.method public setBorderType(I)V
    .locals 2
    .param p1, "borderType"    # I

    .line 127
    iput p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderType:I

    .line 128
    packed-switch p1, :pswitch_data_0

    .line 134
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    nop

    .line 137
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setShapeResId(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 76
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 77
    invoke-static {p1, p2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/SvgUtil;->readSvg(Landroid/content/Context;I)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->shapePath:Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;

    .line 81
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No resource is defined as shape"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStrokeCap(I)V
    .locals 2
    .param p1, "strokeCap"    # I

    .line 91
    iput p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeCap:I

    .line 92
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 101
    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 98
    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 95
    nop

    .line 106
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setStrokeJoin(I)V
    .locals 2
    .param p1, "strokeJoin"    # I

    .line 109
    iput p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeJoin:I

    .line 110
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 119
    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 116
    goto :goto_0

    .line 112
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 113
    nop

    .line 124
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setStrokeMiter(I)V
    .locals 2
    .param p1, "strokeMiter"    # I

    .line 84
    iput p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->strokeMiter:I

    .line 85
    if-lez p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->borderPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 88
    :cond_0
    return-void
.end method
