.class public Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;
.super Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;
.source "ContentLoadingSmoothProgressBar.java"


# static fields
.field private static final MIN_DELAY:I = 0x1f4

.field private static final MIN_SHOW_TIME:I = 0x1f4


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private mPostedHide:Z

.field private mPostedShow:Z

.field private mStartTime:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmDismissed(Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mDismissed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmPostedHide(Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mPostedHide:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPostedShow(Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mPostedShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartTime(Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;J)V
    .locals 0

    iput-wide p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mStartTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mStartTime:J

    .line 19
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mPostedHide:Z

    .line 21
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mPostedShow:Z

    .line 23
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mDismissed:Z

    .line 25
    new-instance v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar$1;-><init>(Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar$2;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar$2;-><init>(Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    .line 53
    return-void
.end method

.method private removeCallbacks()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 10

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mDismissed:Z

    .line 79
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mStartTime:J

    sub-long/2addr v1, v3

    .line 81
    .local v1, "diff":J
    const-wide/16 v3, 0x1f4

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    iget-wide v5, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mStartTime:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-boolean v5, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mPostedHide:Z

    if-nez v5, :cond_2

    .line 91
    iget-object v5, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    sub-long/2addr v3, v1

    invoke-virtual {p0, v5, v3, v4}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mPostedHide:Z

    goto :goto_1

    .line 85
    :cond_1
    :goto_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->setVisibility(I)V

    .line 95
    :cond_2
    :goto_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 57
    invoke-super {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->onAttachedToWindow()V

    .line 58
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->removeCallbacks()V

    .line 59
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 63
    invoke-super {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->onDetachedFromWindow()V

    .line 64
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->removeCallbacks()V

    .line 65
    return-void
.end method

.method public show()V
    .locals 3

    .line 103
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mStartTime:J

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mDismissed:Z

    .line 105
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 106
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mPostedShow:Z

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->mPostedShow:Z

    .line 110
    :cond_0
    return-void
.end method
