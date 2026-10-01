.class public Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;
.super Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;
.source "BubbleShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;
    }
.end annotation


# static fields
.field private static final DEFAULT_HEIGHT_DP:I = 0xa


# instance fields
.field private arrowPosition:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

.field private final path:Landroid/graphics/Path;

.field private triangleHeightPx:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    .line 25
    sget-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->LEFT:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->arrowPosition:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    .line 28
    return-void
.end method


# virtual methods
.method public calculate(IIFFFFF)V
    .locals 17
    .param p1, "bitmapWidth"    # I
    .param p2, "bitmapHeight"    # I
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "scale"    # F
    .param p6, "translateX"    # F
    .param p7, "translateY"    # F

    .line 60
    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p7

    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 61
    neg-float v3, v1

    .line 62
    .local v3, "x":F
    neg-float v6, v2

    .line 63
    .local v6, "y":F
    iget v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->triangleHeightPx:I

    int-to-float v4, v4

    div-float v10, v4, p5

    .line 64
    .local v10, "scaledTriangleHeight":F
    move/from16 v11, p1

    int-to-float v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v7, v1, v5

    add-float v12, v4, v7

    .line 65
    .local v12, "resultWidth":F
    move/from16 v13, p2

    int-to-float v4, v13

    mul-float v7, v2, v5

    add-float v14, v4, v7

    .line 66
    .local v14, "resultHeight":F
    div-float v4, v14, v5

    add-float v15, v4, v6

    .line 68
    .local v15, "centerY":F
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 71
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->arrowPosition:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 83
    :pswitch_0
    move v5, v3

    .line 84
    .local v5, "rectLeft":F
    add-float v4, v12, v5

    .line 85
    .local v4, "imgRight":F
    sub-float v7, v4, v10

    .line 86
    .local v7, "rectRight":F
    move v8, v4

    .end local v4    # "imgRight":F
    .local v8, "imgRight":F
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    move v9, v8

    .end local v8    # "imgRight":F
    .local v9, "imgRight":F
    add-float v8, v14, v6

    move/from16 v16, v9

    .end local v9    # "imgRight":F
    .local v16, "imgRight":F
    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v1, v16

    .end local v16    # "imgRight":F
    .local v1, "imgRight":F
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 87
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v1, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 88
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    sub-float v8, v15, v10

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 89
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    add-float v8, v15, v10

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 90
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v1, v15}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 73
    .end local v1    # "imgRight":F
    .end local v5    # "rectLeft":F
    .end local v7    # "rectRight":F
    :pswitch_1
    add-float v5, v10, v3

    .line 74
    .restart local v5    # "rectLeft":F
    add-float v7, v12, v5

    .line 75
    .restart local v7    # "rectRight":F
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    add-float v8, v14, v6

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 77
    iget-object v1, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 78
    iget-object v1, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    sub-float v4, v15, v10

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 79
    iget-object v1, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    add-float v4, v15, v10

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    iget-object v1, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    nop

    .line 93
    .end local v5    # "rectLeft":F
    .end local v7    # "rectRight":F
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "imagePaint"    # Landroid/graphics/Paint;
    .param p3, "borderPaint"    # Landroid/graphics/Paint;

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 50
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 51
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 53
    return-void
.end method

.method public getArrowPosition()Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->arrowPosition:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    return-object v0
.end method

.method public getTriangleHeightPx()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->triangleHeightPx:I

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 32
    invoke-super {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->borderWidth:I

    .line 34
    if-eqz p2, :cond_0

    .line 35
    sget-object v1, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 36
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    sget v2, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView_siTriangleHeight:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->triangleHeightPx:I

    .line 37
    sget v0, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView_siArrowPosition:I

    sget-object v2, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->LEFT:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 38
    .local v0, "arrowPositionInt":I
    invoke-static {}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->values()[Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    move-result-object v2

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->arrowPosition:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    .line 39
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    .end local v0    # "arrowPositionInt":I
    .end local v1    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->triangleHeightPx:I

    if-nez v0, :cond_1

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->triangleHeightPx:I

    .line 45
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 98
    return-void
.end method

.method public setArrowPosition(Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;)V
    .locals 0
    .param p1, "arrowPosition"    # Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    .line 113
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->arrowPosition:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    .line 114
    return-void
.end method

.method public setTriangleHeightPx(I)V
    .locals 0
    .param p1, "triangleHeightPx"    # I

    .line 105
    iput p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->triangleHeightPx:I

    .line 106
    return-void
.end method
