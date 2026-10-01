.class public abstract Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;
.super Landroid/widget/ImageView;
.source "ShaderImageView.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private pathHelper:Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method private setup(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 34
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->getPathHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method protected abstract createImageViewHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;
.end method

.method public getBorderAlpha()F
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->getPathHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->getBorderAlpha()F

    move-result v0

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->getPathHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->getBorderWidth()I

    move-result v0

    return v0
.end method

.method protected getPathHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->pathHelper:Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->createImageViewHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->pathHelper:Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->pathHelper:Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 86
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->getPathHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->onDraw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 48
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->getPathHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-super {p0, p1, p1}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 53
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 77
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->getPathHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->onSizeChanged(II)V

    .line 78
    return-void
.end method

.method public setBorderAlpha(F)V
    .locals 1
    .param p1, "borderAlpha"    # F

    .line 110
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->getPathHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->setBorderAlpha(F)V

    .line 111
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->invalidate()V

    .line 112
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "borderColor"    # I

    .line 92
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->getPathHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->setBorderColor(I)V

    .line 93
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->invalidate()V

    .line 94
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "borderWidth"    # I

    .line 101
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->getPathHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->setBorderWidth(I)V

    .line 102
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->invalidate()V

    .line 103
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .line 58
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->getPathHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->onImageDrawableReset(Landroid/graphics/drawable/Drawable;)V

    .line 60
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->getPathHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->onImageDrawableReset(Landroid/graphics/drawable/Drawable;)V

    .line 66
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 70
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->getPathHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->onImageDrawableReset(Landroid/graphics/drawable/Drawable;)V

    .line 72
    return-void
.end method

.method public setSquare(Z)V
    .locals 1
    .param p1, "square"    # Z

    .line 115
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->getPathHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->setSquare(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;->invalidate()V

    .line 117
    return-void
.end method
