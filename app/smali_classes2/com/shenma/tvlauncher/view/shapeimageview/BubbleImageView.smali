.class public Lcom/shenma/tvlauncher/view/shapeimageview/BubbleImageView;
.super Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;
.source "BubbleImageView.java"


# instance fields
.field private shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 13
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public createImageViewHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;
    .locals 1

    .line 26
    new-instance v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/BubbleImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;

    .line 27
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/BubbleImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;

    return-object v0
.end method

.method public getArrowPosition()Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/BubbleImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/BubbleImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->getArrowPosition()Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->LEFT:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    return-object v0
.end method

.method public getTriangleHeightPx()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/BubbleImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/BubbleImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->getTriangleHeightPx()I

    move-result v0

    return v0

    .line 34
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setArrowPosition(Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;)V
    .locals 1
    .param p1, "arrowPosition"    # Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    .line 53
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/BubbleImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/BubbleImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->setArrowPosition(Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;)V

    .line 55
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/BubbleImageView;->invalidate()V

    .line 57
    :cond_0
    return-void
.end method

.method public setTriangleHeightPx(I)V
    .locals 1
    .param p1, "triangleHeightPx"    # I

    .line 38
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/BubbleImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/BubbleImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->setTriangleHeightPx(I)V

    .line 40
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/BubbleImageView;->invalidate()V

    .line 42
    :cond_0
    return-void
.end method
