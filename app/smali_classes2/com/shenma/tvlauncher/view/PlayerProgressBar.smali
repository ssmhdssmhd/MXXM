.class public Lcom/shenma/tvlauncher/view/PlayerProgressBar;
.super Landroid/widget/ProgressBar;
.source "PlayerProgressBar.java"


# instance fields
.field mPaint:Landroid/graphics/Paint;

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->initText()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->initText()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 29
    sget v0, Lcom/shenma/tvlauncher/R$style;->CustomProgressStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->initText()V

    .line 32
    return-void
.end method

.method private initText()V
    .locals 3

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$dimen;->sm_24:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    return-void
.end method

.method private setText()V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setText(I)V

    .line 71
    return-void
.end method

.method private setText(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->text:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 52
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 55
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 56
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v1, v2

    .line 57
    .local v1, "x":I
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v2, v3

    .line 58
    .local v2, "y":I
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->text:Ljava/lang/String;

    int-to-float v4, v1

    int-to-float v5, v2

    iget-object v6, p0, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 51
    .end local v0    # "rect":Landroid/graphics/Rect;
    .end local v1    # "x":I
    .end local v2    # "y":I
    .end local p0    # "this":Lcom/shenma/tvlauncher/view/PlayerProgressBar;
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setText(I)V

    .line 45
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 43
    .end local p0    # "this":Lcom/shenma/tvlauncher/view/PlayerProgressBar;
    .end local p1    # "progress":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
