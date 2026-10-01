.class public Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;
.super Landroid/view/View;
.source "CornerLabelView.java"


# instance fields
.field private bgColor:I

.field private mHalfWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mTextPaint:Landroid/text/TextPaint;

.field private marginLeanSide:I

.field private position:I

.field private sideLength:I

.field private text:Ljava/lang/String;

.field private textColor:I

.field private textSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    nop

    .line 26
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 25
    const/4 v1, 0x1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->sideLength:I

    .line 28
    nop

    .line 29
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 28
    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->textSize:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->textColor:I

    .line 34
    const/high16 v1, -0x10000

    iput v1, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->bgColor:I

    .line 36
    iput v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->marginLeanSide:I

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->init()V

    .line 46
    return-void
.end method

.method private init()V
    .locals 3

    .line 72
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mPath:Landroid/graphics/Path;

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mPaint:Landroid/graphics/Paint;

    .line 75
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->bgColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mTextPaint:Landroid/text/TextPaint;

    .line 79
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 80
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 82
    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    sget-object v0, Lcom/shenma/tvlauncher/R$styleable;->CornerLabelView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 51
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 52
    .local v3, "attr":I
    sget v4, Lcom/shenma/tvlauncher/R$styleable;->CornerLabelView_position:I

    if-ne v3, v4, :cond_0

    .line 53
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->position:I

    goto :goto_1

    .line 54
    :cond_0
    sget v4, Lcom/shenma/tvlauncher/R$styleable;->CornerLabelView_side_length:I

    if-ne v3, v4, :cond_1

    .line 55
    iget v4, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->sideLength:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->sideLength:I

    goto :goto_1

    .line 56
    :cond_1
    sget v4, Lcom/shenma/tvlauncher/R$styleable;->CornerLabelView_text_size:I

    if-ne v3, v4, :cond_2

    .line 57
    iget v4, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->textSize:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->textSize:I

    goto :goto_1

    .line 58
    :cond_2
    sget v4, Lcom/shenma/tvlauncher/R$styleable;->CornerLabelView_text_color:I

    if-ne v3, v4, :cond_3

    .line 59
    iget v4, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->textColor:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->textColor:I

    goto :goto_1

    .line 60
    :cond_3
    sget v4, Lcom/shenma/tvlauncher/R$styleable;->CornerLabelView_text:I

    if-ne v3, v4, :cond_4

    .line 61
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->text:Ljava/lang/String;

    goto :goto_1

    .line 62
    :cond_4
    sget v4, Lcom/shenma/tvlauncher/R$styleable;->CornerLabelView_bg_color:I

    if-ne v3, v4, :cond_5

    .line 63
    iget v4, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->bgColor:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->bgColor:I

    goto :goto_1

    .line 64
    :cond_5
    sget v4, Lcom/shenma/tvlauncher/R$styleable;->CornerLabelView_margin_lean_side:I

    if-ne v3, v4, :cond_6

    .line 65
    iget v4, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->marginLeanSide:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->marginLeanSide:I

    .line 50
    .end local v3    # "attr":I
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v2    # "i":I
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 112
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 114
    iget v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mHalfWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mHalfWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 116
    iget v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->position:I

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 118
    iget v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->sideLength:I

    iget v1, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mHalfWidth:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 119
    iget v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mHalfWidth:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->sideLength:I

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mHalfWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mHalfWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 124
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->sideLength:I

    iget v3, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mHalfWidth:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mHalfWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mHalfWidth:I

    int-to-float v1, v1

    iget v3, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mHalfWidth:I

    iget v4, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->sideLength:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 126
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mHalfWidth:I

    int-to-float v1, v1

    iget v3, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mHalfWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 127
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 128
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 131
    const/high16 v0, 0x42340000    # 45.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 133
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v3, v0

    iget v5, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->sideLength:I

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v3, v3

    .line 134
    .local v3, "h1":I
    iget-object v4, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    neg-float v4, v4

    float-to-int v4, v4

    .line 136
    .local v4, "h2":I
    iget-object v5, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    neg-float v5, v5

    float-to-int v5, v5

    div-int/2addr v5, v2

    .line 138
    .local v5, "x":I
    iget v6, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->marginLeanSide:I

    const/4 v7, 0x1

    if-ltz v6, :cond_6

    .line 139
    iget v6, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->position:I

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->position:I

    if-ne v6, v2, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    iget v6, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->marginLeanSide:I

    int-to-float v6, v6

    iget-object v8, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_2

    .line 147
    iget-object v6, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->marginLeanSide:I

    .line 150
    :cond_2
    iget v6, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->marginLeanSide:I

    sub-int v8, v3, v4

    div-int/2addr v8, v2

    if-le v6, v8, :cond_3

    .line 151
    sub-int v6, v3, v4

    div-int/2addr v6, v2

    iput v6, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->marginLeanSide:I

    .line 153
    :cond_3
    iget v6, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->marginLeanSide:I

    neg-int v6, v6

    .local v6, "y":I
    goto :goto_1

    .line 140
    .end local v6    # "y":I
    :cond_4
    :goto_0
    int-to-float v6, v3

    iget v8, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->marginLeanSide:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    sub-float/2addr v6, v8

    sub-int v8, v3, v4

    div-int/2addr v8, v2

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_5

    .line 141
    sub-int v6, v3, v4

    neg-int v6, v6

    div-int/2addr v6, v2

    .restart local v6    # "y":I
    goto :goto_1

    .line 143
    .end local v6    # "y":I
    :cond_5
    int-to-float v6, v3

    iget v8, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->marginLeanSide:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    sub-float/2addr v6, v8

    neg-float v6, v6

    float-to-int v6, v6

    .restart local v6    # "y":I
    goto :goto_1

    .line 156
    .end local v6    # "y":I
    :cond_6
    iget v6, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->sideLength:I

    iget v8, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mHalfWidth:I

    if-le v6, v8, :cond_7

    .line 157
    iget v6, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mHalfWidth:I

    iput v6, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->sideLength:I

    .line 159
    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    neg-double v8, v8

    div-double/2addr v8, v0

    iget v6, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->sideLength:I

    int-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    int-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v10

    double-to-int v6, v8

    div-int/2addr v6, v2

    .line 163
    .restart local v6    # "y":I
    :goto_1
    iget v8, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->position:I

    if-eq v8, v7, :cond_8

    iget v7, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->position:I

    if-ne v7, v2, :cond_9

    .line 164
    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    neg-double v7, v7

    div-double/2addr v7, v0

    iget v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->sideLength:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v0

    double-to-float v0, v7

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 165
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 168
    :cond_9
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->text:Ljava/lang/String;

    int-to-float v1, v5

    int-to-float v2, v6

    iget-object v7, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 169
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 86
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 87
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 88
    .local v0, "widthSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 89
    .local v1, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 90
    .local v2, "heightSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 92
    .local v3, "heightSpecMode":I
    const/high16 v4, -0x80000000

    if-ne v1, v4, :cond_0

    if-ne v3, v4, :cond_0

    .line 93
    iget v4, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->sideLength:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->sideLength:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v4, v5}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 94
    :cond_0
    if-ne v1, v4, :cond_1

    .line 95
    invoke-virtual {p0, v2, v2}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 96
    :cond_1
    if-ne v3, v4, :cond_2

    .line 97
    invoke-virtual {p0, v0, v0}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 98
    :cond_2
    if-eq v0, v2, :cond_3

    .line 99
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 100
    .local v4, "size":I
    invoke-virtual {p0, v4, v4}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->setMeasuredDimension(II)V

    .line 102
    .end local v4    # "size":I
    :cond_3
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 107
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mHalfWidth:I

    .line 108
    return-void
.end method

.method public setBgColor(I)Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;
    .locals 1
    .param p1, "bgColor"    # I

    .line 192
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->invalidate()V

    .line 194
    return-object p0
.end method

.method public setBgColorId(I)Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;
    .locals 2
    .param p1, "bgColorId"    # I

    .line 179
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->bgColor:I

    .line 180
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->bgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->invalidate()V

    .line 182
    return-object p0
.end method

.method public setText(I)Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;
    .locals 1
    .param p1, "textId"    # I

    .line 229
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->text:Ljava/lang/String;

    .line 230
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->invalidate()V

    .line 231
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 241
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->text:Ljava/lang/String;

    .line 242
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->invalidate()V

    .line 243
    return-object p0
.end method

.method public setTextColor(I)Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;
    .locals 1
    .param p1, "color"    # I

    .line 217
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 218
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->invalidate()V

    .line 219
    return-object p0
.end method

.method public setTextColorId(I)Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;
    .locals 2
    .param p1, "colorId"    # I

    .line 204
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->textColor:I

    .line 205
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 206
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->invalidate()V

    .line 207
    return-object p0
.end method
