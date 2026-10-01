.class public Lcom/shenma/tvlauncher/view/SpringBackScrollView;
.super Landroid/widget/ScrollView;
.source "SpringBackScrollView.java"


# instance fields
.field private isHorizontalScroll:Z

.field private startX:F

.field private startY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/SpringBackScrollView;->isHorizontalScroll:Z

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/SpringBackScrollView;->isHorizontalScroll:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/SpringBackScrollView;->isHorizontalScroll:Z

    .line 23
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 28
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 36
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 37
    .local v1, "nowX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 38
    .local v2, "nowY":F
    iget v3, p0, Lcom/shenma/tvlauncher/view/SpringBackScrollView;->startX:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 39
    .local v3, "deltaX":F
    iget v4, p0, Lcom/shenma/tvlauncher/view/SpringBackScrollView;->startY:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 42
    .local v4, "deltaY":F
    cmpl-float v5, v3, v4

    if-lez v5, :cond_0

    .line 43
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/shenma/tvlauncher/view/SpringBackScrollView;->isHorizontalScroll:Z

    .line 45
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/SpringBackScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 47
    iput v2, p0, Lcom/shenma/tvlauncher/view/SpringBackScrollView;->startY:F

    .line 48
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 55
    .end local v1    # "nowX":F
    .end local v2    # "nowY":F
    .end local v3    # "deltaX":F
    .end local v4    # "deltaY":F
    :pswitch_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/shenma/tvlauncher/view/SpringBackScrollView;->isHorizontalScroll:Z

    .line 56
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/SpringBackScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 31
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/SpringBackScrollView;->startX:F

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/SpringBackScrollView;->startY:F

    .line 33
    nop

    .line 59
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
