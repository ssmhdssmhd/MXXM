.class public Lcom/shenma/tvlauncher/view/shapeimageview/RoundedImageView;
.super Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;
.source "RoundedImageView.java"


# instance fields
.field private shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 12
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public createImageViewHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;
    .locals 1

    .line 25
    new-instance v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/RoundedImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;

    .line 26
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/RoundedImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;

    return-object v0
.end method

.method public final getRadius()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/RoundedImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/RoundedImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->getRadius()I

    move-result v0

    return v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setRadius(I)V
    .locals 1
    .param p1, "radius"    # I

    .line 37
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/RoundedImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/RoundedImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/RoundedShader;->setRadius(I)V

    .line 39
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/RoundedImageView;->invalidate()V

    .line 41
    :cond_0
    return-void
.end method
