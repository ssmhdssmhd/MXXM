.class public Lcom/view/FlexibleStepSeekBar;
.super Landroid/view/View;
.source "FlexibleStepSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/view/FlexibleStepSeekBar$OnStepChangeListener;
    }
.end annotation


# instance fields
.field private currentStepIndex:I

.field private listener:Lcom/view/FlexibleStepSeekBar$OnStepChangeListener;

.field private markerColor:I

.field private markerPaint:Landroid/graphics/Paint;

.field private markerRadius:I

.field private progressColor:I

.field private progressPaint:Landroid/graphics/Paint;

.field private segmentWidth:F

.field private stepValues:[Ljava/lang/String;

.field private thumbColor:I

.field private thumbPaint:Landroid/graphics/Paint;

.field private thumbRadius:I

.field private trackColor:I

.field private trackHeight:I

.field private trackLength:F

.field private trackPaint:Landroid/graphics/Paint;

.field private viewHeight:F

.field private viewWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->trackHeight:I

    .line 33
    const v0, -0x777778

    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->trackColor:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->progressColor:I

    .line 35
    const/high16 v1, -0x10000

    iput v1, p0, Lcom/view/FlexibleStepSeekBar;->thumbColor:I

    .line 36
    const/16 v1, 0x14

    iput v1, p0, Lcom/view/FlexibleStepSeekBar;->thumbRadius:I

    .line 37
    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->markerColor:I

    .line 38
    const/4 v0, 0x6

    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->markerRadius:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/view/FlexibleStepSeekBar;->currentStepIndex:I

    .line 51
    invoke-direct {p0, v0}, Lcom/view/FlexibleStepSeekBar;->init(Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->trackHeight:I

    .line 33
    const v0, -0x777778

    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->trackColor:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->progressColor:I

    .line 35
    const/high16 v1, -0x10000

    iput v1, p0, Lcom/view/FlexibleStepSeekBar;->thumbColor:I

    .line 36
    const/16 v1, 0x14

    iput v1, p0, Lcom/view/FlexibleStepSeekBar;->thumbRadius:I

    .line 37
    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->markerColor:I

    .line 38
    const/4 v0, 0x6

    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->markerRadius:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->currentStepIndex:I

    .line 56
    invoke-direct {p0, p2}, Lcom/view/FlexibleStepSeekBar;->init(Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->trackHeight:I

    .line 33
    const v0, -0x777778

    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->trackColor:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->progressColor:I

    .line 35
    const/high16 v1, -0x10000

    iput v1, p0, Lcom/view/FlexibleStepSeekBar;->thumbColor:I

    .line 36
    const/16 v1, 0x14

    iput v1, p0, Lcom/view/FlexibleStepSeekBar;->thumbRadius:I

    .line 37
    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->markerColor:I

    .line 38
    const/4 v0, 0x6

    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->markerRadius:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->currentStepIndex:I

    .line 61
    invoke-direct {p0, p2}, Lcom/view/FlexibleStepSeekBar;->init(Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method private calculateNearestStepIndex(F)I
    .locals 6
    .param p1, "x"    # F

    .line 229
    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    array-length v0, v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iget v0, p0, Lcom/view/FlexibleStepSeekBar;->thumbRadius:I

    int-to-float v0, v0

    .line 235
    .local v0, "trackStart":F
    iget v3, p0, Lcom/view/FlexibleStepSeekBar;->trackLength:F

    add-float/2addr v3, v0

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 238
    sub-float v3, p1, v0

    iget v4, p0, Lcom/view/FlexibleStepSeekBar;->segmentWidth:F

    div-float/2addr v3, v4

    .line 239
    .local v3, "position":F
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 241
    .local v4, "index":I
    iget-object v5, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    array-length v5, v5

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 230
    .end local v0    # "trackStart":F
    .end local v3    # "position":F
    .end local v4    # "index":I
    :cond_1
    :goto_0
    return v1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 66
    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/view/FlexibleStepSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/R$styleable;->FlexibleStepSeekBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->FlexibleStepSeekBar_trackHeight:I

    iget v2, p0, Lcom/view/FlexibleStepSeekBar;->trackHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/view/FlexibleStepSeekBar;->trackHeight:I

    .line 69
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->FlexibleStepSeekBar_trackColor:I

    iget v2, p0, Lcom/view/FlexibleStepSeekBar;->trackColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/view/FlexibleStepSeekBar;->trackColor:I

    .line 70
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->FlexibleStepSeekBar_progressColor:I

    iget v2, p0, Lcom/view/FlexibleStepSeekBar;->progressColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/view/FlexibleStepSeekBar;->progressColor:I

    .line 71
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->FlexibleStepSeekBar_thumbColor:I

    iget v2, p0, Lcom/view/FlexibleStepSeekBar;->thumbColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/view/FlexibleStepSeekBar;->thumbColor:I

    .line 72
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->FlexibleStepSeekBar_thumbRadius:I

    iget v2, p0, Lcom/view/FlexibleStepSeekBar;->thumbRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/view/FlexibleStepSeekBar;->thumbRadius:I

    .line 73
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->FlexibleStepSeekBar_markerColor:I

    iget v2, p0, Lcom/view/FlexibleStepSeekBar;->markerColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/view/FlexibleStepSeekBar;->markerColor:I

    .line 74
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->FlexibleStepSeekBar_markerRadius:I

    iget v2, p0, Lcom/view/FlexibleStepSeekBar;->markerRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/view/FlexibleStepSeekBar;->markerRadius:I

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    .end local v0    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/view/FlexibleStepSeekBar;->trackPaint:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->trackPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/view/FlexibleStepSeekBar;->trackColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->trackPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/view/FlexibleStepSeekBar;->progressPaint:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->progressPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/view/FlexibleStepSeekBar;->progressColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->progressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/view/FlexibleStepSeekBar;->thumbPaint:Landroid/graphics/Paint;

    .line 88
    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->thumbPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/view/FlexibleStepSeekBar;->thumbColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->thumbPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/view/FlexibleStepSeekBar;->markerPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->markerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/view/FlexibleStepSeekBar;->markerColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->markerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    invoke-virtual {p0, v1}, Lcom/view/FlexibleStepSeekBar;->setFocusable(Z)V

    .line 97
    invoke-virtual {p0, v1}, Lcom/view/FlexibleStepSeekBar;->setFocusableInTouchMode(Z)V

    .line 98
    return-void
.end method


# virtual methods
.method public getCurrentStepIndex()I
    .locals 1

    .line 300
    iget v0, p0, Lcom/view/FlexibleStepSeekBar;->currentStepIndex:I

    return v0
.end method

.method public getCurrentStepValue()Ljava/lang/String;
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    iget v1, p0, Lcom/view/FlexibleStepSeekBar;->currentStepIndex:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 115
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto/16 :goto_1

    .line 121
    :cond_0
    iget v0, p0, Lcom/view/FlexibleStepSeekBar;->viewHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 122
    .local v0, "centerY":F
    iget v2, p0, Lcom/view/FlexibleStepSeekBar;->thumbRadius:I

    int-to-float v2, v2

    .line 123
    .local v2, "trackStart":F
    iget v3, p0, Lcom/view/FlexibleStepSeekBar;->trackLength:F

    add-float/2addr v3, v2

    .line 126
    .local v3, "trackEnd":F
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/view/FlexibleStepSeekBar;->trackHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v0, v5

    iget v6, p0, Lcom/view/FlexibleStepSeekBar;->trackHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v0

    invoke-direct {v4, v2, v5, v3, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 128
    .local v4, "trackRect":Landroid/graphics/RectF;
    iget v5, p0, Lcom/view/FlexibleStepSeekBar;->trackHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/view/FlexibleStepSeekBar;->trackHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/view/FlexibleStepSeekBar;->trackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 131
    iget v5, p0, Lcom/view/FlexibleStepSeekBar;->currentStepIndex:I

    int-to-float v5, v5

    iget v6, p0, Lcom/view/FlexibleStepSeekBar;->segmentWidth:F

    mul-float v5, v5, v6

    add-float/2addr v5, v2

    .line 132
    .local v5, "progressEnd":F
    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Lcom/view/FlexibleStepSeekBar;->trackHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v7, v0, v7

    iget v8, p0, Lcom/view/FlexibleStepSeekBar;->trackHeight:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v8, v0

    invoke-direct {v6, v2, v7, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 134
    .local v6, "progressRect":Landroid/graphics/RectF;
    iget v7, p0, Lcom/view/FlexibleStepSeekBar;->trackHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget v8, p0, Lcom/view/FlexibleStepSeekBar;->trackHeight:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget-object v9, p0, Lcom/view/FlexibleStepSeekBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 137
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v8, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    array-length v8, v8

    const/high16 v9, 0x40400000    # 3.0f

    if-ge v7, v8, :cond_1

    .line 138
    int-to-float v8, v7

    iget v10, p0, Lcom/view/FlexibleStepSeekBar;->segmentWidth:F

    mul-float v8, v8, v10

    add-float/2addr v8, v2

    .line 139
    .local v8, "markerX":F
    iget-object v10, p0, Lcom/view/FlexibleStepSeekBar;->markerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 137
    .end local v8    # "markerX":F
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 143
    .end local v7    # "i":I
    :cond_1
    iget v7, p0, Lcom/view/FlexibleStepSeekBar;->currentStepIndex:I

    int-to-float v7, v7

    iget v8, p0, Lcom/view/FlexibleStepSeekBar;->segmentWidth:F

    mul-float v7, v7, v8

    add-float/2addr v7, v2

    .line 144
    .local v7, "thumbX":F
    iget v8, p0, Lcom/view/FlexibleStepSeekBar;->thumbRadius:I

    int-to-float v8, v8

    iget-object v10, p0, Lcom/view/FlexibleStepSeekBar;->thumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v8, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 147
    iget v8, p0, Lcom/view/FlexibleStepSeekBar;->markerRadius:I

    int-to-float v8, v8

    iget-object v10, p0, Lcom/view/FlexibleStepSeekBar;->markerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v8, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 150
    invoke-virtual {p0}, Lcom/view/FlexibleStepSeekBar;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 152
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 153
    .local v8, "focusPaint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    const/16 v1, -0x100

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget v1, p0, Lcom/view/FlexibleStepSeekBar;->thumbRadius:I

    add-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-virtual {p1, v7, v0, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 158
    .end local v8    # "focusPaint":Landroid/graphics/Paint;
    :cond_2
    return-void

    .line 118
    .end local v0    # "centerY":F
    .end local v2    # "trackStart":F
    .end local v3    # "trackEnd":F
    .end local v4    # "trackRect":Landroid/graphics/RectF;
    .end local v5    # "progressEnd":F
    .end local v6    # "progressRect":Landroid/graphics/RectF;
    .end local v7    # "thumbX":F
    :cond_3
    :goto_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 198
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 200
    invoke-virtual {p0}, Lcom/view/FlexibleStepSeekBar;->invalidate()V

    .line 201
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 165
    invoke-virtual {p0}, Lcom/view/FlexibleStepSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 167
    :cond_0
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 185
    :sswitch_0
    iget-object v1, p0, Lcom/view/FlexibleStepSeekBar;->listener:Lcom/view/FlexibleStepSeekBar$OnStepChangeListener;

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/view/FlexibleStepSeekBar;->listener:Lcom/view/FlexibleStepSeekBar$OnStepChangeListener;

    iget v2, p0, Lcom/view/FlexibleStepSeekBar;->currentStepIndex:I

    iget-object v3, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    iget v4, p0, Lcom/view/FlexibleStepSeekBar;->currentStepIndex:I

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/view/FlexibleStepSeekBar$OnStepChangeListener;->onStepChanged(ILjava/lang/String;)V

    .line 188
    :cond_1
    return v0

    .line 177
    :sswitch_1
    iget v1, p0, Lcom/view/FlexibleStepSeekBar;->currentStepIndex:I

    iget-object v2, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    .line 178
    iget v1, p0, Lcom/view/FlexibleStepSeekBar;->currentStepIndex:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/view/FlexibleStepSeekBar;->setCurrentStepIndex(I)V

    .line 179
    return v0

    .line 170
    :sswitch_2
    iget v1, p0, Lcom/view/FlexibleStepSeekBar;->currentStepIndex:I

    if-lez v1, :cond_2

    .line 171
    iget v1, p0, Lcom/view/FlexibleStepSeekBar;->currentStepIndex:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/view/FlexibleStepSeekBar;->setCurrentStepIndex(I)V

    .line 172
    return v0

    .line 190
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 103
    int-to-float v0, p1

    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->viewWidth:F

    .line 104
    int-to-float v0, p2

    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->viewHeight:F

    .line 107
    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 108
    iget v0, p0, Lcom/view/FlexibleStepSeekBar;->viewWidth:F

    iget v2, p0, Lcom/view/FlexibleStepSeekBar;->thumbRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->trackLength:F

    .line 109
    iget v0, p0, Lcom/view/FlexibleStepSeekBar;->trackLength:F

    iget-object v2, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->segmentWidth:F

    .line 111
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 205
    invoke-virtual {p0}, Lcom/view/FlexibleStepSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 207
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 225
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 211
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 213
    .local v0, "x":F
    invoke-direct {p0, v0}, Lcom/view/FlexibleStepSeekBar;->calculateNearestStepIndex(F)I

    move-result v1

    .line 214
    .local v1, "newIndex":I
    iget v2, p0, Lcom/view/FlexibleStepSeekBar;->currentStepIndex:I

    if-eq v1, v2, :cond_1

    .line 215
    iput v1, p0, Lcom/view/FlexibleStepSeekBar;->currentStepIndex:I

    .line 216
    invoke-virtual {p0}, Lcom/view/FlexibleStepSeekBar;->invalidate()V

    .line 219
    iget-object v2, p0, Lcom/view/FlexibleStepSeekBar;->listener:Lcom/view/FlexibleStepSeekBar$OnStepChangeListener;

    if-eqz v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/view/FlexibleStepSeekBar;->listener:Lcom/view/FlexibleStepSeekBar$OnStepChangeListener;

    iget v3, p0, Lcom/view/FlexibleStepSeekBar;->currentStepIndex:I

    iget-object v4, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    iget v5, p0, Lcom/view/FlexibleStepSeekBar;->currentStepIndex:I

    aget-object v4, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/view/FlexibleStepSeekBar$OnStepChangeListener;->onStepChanged(ILjava/lang/String;)V

    .line 223
    :cond_1
    const/4 v2, 0x1

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentStepIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .line 289
    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 290
    iput p1, p0, Lcom/view/FlexibleStepSeekBar;->currentStepIndex:I

    .line 291
    invoke-virtual {p0}, Lcom/view/FlexibleStepSeekBar;->invalidate()V

    .line 292
    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->listener:Lcom/view/FlexibleStepSeekBar$OnStepChangeListener;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/view/FlexibleStepSeekBar;->listener:Lcom/view/FlexibleStepSeekBar$OnStepChangeListener;

    iget-object v1, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v0, p1, v1}, Lcom/view/FlexibleStepSeekBar$OnStepChangeListener;->onStepChanged(ILjava/lang/String;)V

    .line 296
    :cond_0
    return-void
.end method

.method public setOnStepChangeListener(Lcom/view/FlexibleStepSeekBar$OnStepChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/view/FlexibleStepSeekBar$OnStepChangeListener;

    .line 308
    iput-object p1, p0, Lcom/view/FlexibleStepSeekBar;->listener:Lcom/view/FlexibleStepSeekBar$OnStepChangeListener;

    .line 309
    return-void
.end method

.method public setStepValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/String;

    .line 250
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 251
    iput-object p1, p0, Lcom/view/FlexibleStepSeekBar;->stepValues:[Ljava/lang/String;

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/view/FlexibleStepSeekBar;->currentStepIndex:I

    .line 255
    invoke-virtual {p0}, Lcom/view/FlexibleStepSeekBar;->requestLayout()V

    .line 256
    invoke-virtual {p0}, Lcom/view/FlexibleStepSeekBar;->invalidate()V

    .line 258
    :cond_0
    return-void
.end method

.method public setStringValues([Ljava/lang/String;)V
    .locals 1
    .param p1, "stringValues"    # [Ljava/lang/String;

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/view/FlexibleStepSeekBar;->setStringValues([Ljava/lang/String;F)V

    .line 281
    return-void
.end method

.method public setStringValues([Ljava/lang/String;F)V
    .locals 2
    .param p1, "stringValues"    # [Ljava/lang/String;
    .param p2, "defaultFloatValue"    # F

    .line 267
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 270
    invoke-virtual {p0, p1}, Lcom/view/FlexibleStepSeekBar;->setStepValues([Ljava/lang/String;)V

    .line 272
    :cond_0
    return-void
.end method
