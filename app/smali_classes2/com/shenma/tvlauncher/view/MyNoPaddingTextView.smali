.class public Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MyNoPaddingTextView.java"


# instance fields
.field private minRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 43
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;->minRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 45
    .local v1, "left":I
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;->minRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 46
    .local v2, "top":I
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 47
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;->getCurrentTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    neg-int v4, v1

    int-to-float v4, v4

    neg-int v5, v2

    int-to-float v5, v5

    invoke-virtual {p1, v0, v4, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 53
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 29
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 30
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;->minRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;->minRect:Landroid/graphics/Rect;

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;->minRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 36
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;->minRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 37
    .local v0, "width":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;->minRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 38
    .local v1, "height":I
    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;->setMeasuredDimension(II)V

    .line 39
    return-void
.end method
