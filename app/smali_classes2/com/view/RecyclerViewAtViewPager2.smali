.class public Lcom/view/RecyclerViewAtViewPager2;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "RecyclerViewAtViewPager2.java"


# instance fields
.field private startX:I

.field private startY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method private isLastItem(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 37
    invoke-virtual {p0, p1}, Lcom/view/RecyclerViewAtViewPager2;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 38
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/view/RecyclerViewAtViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 49
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 50
    .local v0, "endX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 51
    .local v1, "endY":I
    iget v2, p0, Lcom/view/RecyclerViewAtViewPager2;->startX:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 52
    .local v2, "disX":I
    iget v3, p0, Lcom/view/RecyclerViewAtViewPager2;->startY:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 53
    .local v3, "disY":I
    if-le v2, v3, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/view/RecyclerViewAtViewPager2;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget v5, p0, Lcom/view/RecyclerViewAtViewPager2;->startX:I

    sub-int/2addr v5, v0

    invoke-virtual {p0, v5}, Lcom/view/RecyclerViewAtViewPager2;->canScrollHorizontally(I)Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/view/RecyclerViewAtViewPager2;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget v5, p0, Lcom/view/RecyclerViewAtViewPager2;->startX:I

    sub-int/2addr v5, v0

    invoke-virtual {p0, v5}, Lcom/view/RecyclerViewAtViewPager2;->canScrollVertically(I)Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 59
    goto :goto_0

    .line 62
    .end local v0    # "endX":I
    .end local v1    # "endY":I
    .end local v2    # "disX":I
    .end local v3    # "disY":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/view/RecyclerViewAtViewPager2;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 44
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/view/RecyclerViewAtViewPager2;->startX:I

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/view/RecyclerViewAtViewPager2;->startY:I

    .line 46
    invoke-virtual {p0}, Lcom/view/RecyclerViewAtViewPager2;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 47
    nop

    .line 65
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 31
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/view/RecyclerViewAtViewPager2;->isLastItem(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 34
    :cond_0
    return-void
.end method
