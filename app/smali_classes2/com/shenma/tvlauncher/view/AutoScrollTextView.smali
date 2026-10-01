.class public Lcom/shenma/tvlauncher/view/AutoScrollTextView;
.super Landroid/widget/TextView;
.source "AutoScrollTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public isStarting:Z

.field private paint:Landroid/graphics/Paint;

.field private step:F

.field private temp_view_plus_text_length:F

.field private temp_view_plus_two_text_length:F

.field private text:Ljava/lang/String;

.field private textLength:F

.field private viewWidth:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->isStarting:Z

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->textLength:F

    .line 20
    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->viewWidth:F

    .line 21
    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->step:F

    .line 22
    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->y:F

    .line 23
    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->temp_view_plus_text_length:F

    .line 24
    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->temp_view_plus_two_text_length:F

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->text:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->initView()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->isStarting:Z

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->textLength:F

    .line 20
    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->viewWidth:F

    .line 21
    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->step:F

    .line 22
    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->y:F

    .line 23
    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->temp_view_plus_text_length:F

    .line 24
    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->temp_view_plus_two_text_length:F

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->text:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->initView()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->isStarting:Z

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->textLength:F

    .line 20
    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->viewWidth:F

    .line 21
    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->step:F

    .line 22
    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->y:F

    .line 23
    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->temp_view_plus_text_length:F

    .line 24
    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->temp_view_plus_two_text_length:F

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->text:Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->initView()V

    .line 41
    return-void
.end method

.method private initView()V
    .locals 0

    .line 44
    invoke-virtual {p0, p0}, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method


# virtual methods
.method public init(Landroid/view/WindowManager;)V
    .locals 3
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .line 48
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->paint:Landroid/graphics/Paint;

    .line 49
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->text:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->textLength:F

    .line 53
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->viewWidth:F

    .line 54
    iget v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->viewWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 57
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->viewWidth:F

    .line 60
    .end local v0    # "display":Landroid/view/Display;
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->textLength:F

    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->step:F

    .line 61
    iget v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->viewWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->textLength:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->temp_view_plus_text_length:F

    .line 62
    iget v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->viewWidth:F

    div-float/2addr v0, v1

    iget v2, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->textLength:F

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->temp_view_plus_two_text_length:F

    .line 63
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->y:F

    .line 64
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 116
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->isStarting:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->stopScroll()V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->startScroll()V

    .line 121
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 103
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->text:Ljava/lang/String;

    iget v1, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->temp_view_plus_text_length:F

    iget v2, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->step:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->y:F

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 104
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->isStarting:Z

    if-nez v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->step:F

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->step:F

    .line 108
    iget v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->step:F

    iget v1, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->temp_view_plus_two_text_length:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 109
    iget v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->textLength:F

    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->step:F

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->invalidate()V

    .line 112
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 80
    instance-of v0, p1, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;

    if-nez v0, :cond_0

    .line 81
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 82
    return-void

    .line 84
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;

    .line 85
    .local v0, "ss":Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 87
    iget v1, v0, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;->step:F

    iput v1, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->step:F

    .line 88
    iget-boolean v1, v0, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;->isStarting:Z

    iput-boolean v1, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->isStarting:Z

    .line 89
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 68
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 69
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;

    invoke-direct {v1, v0}, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 71
    .local v1, "ss":Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;
    iget v2, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->step:F

    iput v2, v1, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;->step:F

    .line 72
    iget-boolean v2, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->isStarting:Z

    iput-boolean v2, v1, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;->isStarting:Z

    .line 74
    return-object v1
.end method

.method public startScroll()V
    .locals 1

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->isStarting:Z

    .line 93
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->invalidate()V

    .line 94
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->isStarting:Z

    .line 98
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/AutoScrollTextView;->invalidate()V

    .line 99
    return-void
.end method
