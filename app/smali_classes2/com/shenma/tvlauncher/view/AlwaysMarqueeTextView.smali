.class public Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;
.super Landroid/widget/TextView;
.source "AlwaysMarqueeTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private currentScrollX:I

.field private isMeasure:Z

.field private isStop:Z

.field private textWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->isMeasure:Z

    .line 14
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->isStop:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->isMeasure:Z

    .line 14
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->isStop:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "i"    # I

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->isMeasure:Z

    .line 14
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->isStop:Z

    .line 27
    return-void
.end method

.method private getTextWidth()V
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->textWidth:I

    .line 43
    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 34
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 35
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->isMeasure:Z

    if-nez v0, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->getTextWidth()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->isMeasure:Z

    .line 39
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 51
    iget v0, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->currentScrollX:I

    int-to-double v0, v0

    .line 52
    .local v0, "d":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 53
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->currentScrollX:I

    .line 54
    iget v2, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->currentScrollX:I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->scrollTo(II)V

    .line 55
    iget-boolean v2, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->isStop:Z

    if-nez v2, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->getScrollX()I

    move-result v2

    iget v4, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->textWidth:I

    if-lt v2, v4, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->getWidth()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->scrollTo(II)V

    .line 58
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->getWidth()I

    move-result v2

    neg-int v2, v2

    iput v2, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->currentScrollX:I

    .line 60
    :cond_0
    const-wide/16 v2, 0xa

    invoke-virtual {p0, p0, v2, v3}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "bufferType"    # Landroid/widget/TextView$BufferType;

    .line 46
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->isMeasure:Z

    .line 48
    return-void
.end method

.method public startFor0()V
    .locals 1

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->currentScrollX:I

    .line 77
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->startScroll()V

    .line 78
    return-void
.end method

.method public startScroll()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->isStop:Z

    .line 66
    invoke-virtual {p0, p0}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 67
    invoke-virtual {p0, p0}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->currentScrollX:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->isStop:Z

    .line 73
    return-void
.end method
