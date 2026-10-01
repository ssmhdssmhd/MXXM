.class public Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;
.super Landroid/view/animation/TranslateAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/BVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranslateAnim"
.end annotation


# instance fields
.field private a:J

.field final synthetic a:Lcom/baidu/cyberplayer/core/BVideoView;

.field private a:Z


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/core/BVideoView;IFIFIFIF)V
    .locals 2
    .param p2, "fromXType"    # I
    .param p3, "fromXValue"    # F
    .param p4, "toXType"    # I
    .param p5, "toXValue"    # F
    .param p6, "fromYType"    # I
    .param p7, "fromYValue"    # F
    .param p8, "toYType"    # I
    .param p9, "toYValue"    # F

    .line 2476
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    .line 2477
    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2480
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->a:J

    .line 2481
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->a:Z

    .line 2478
    return-void
.end method


# virtual methods
.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 5
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;

    .line 2485
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->a:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2486
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->getStartTime()J

    move-result-wide v0

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->a:J

    .line 2488
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->a:Z

    if-eqz v0, :cond_1

    .line 2489
    iget-wide v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->a:J

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->setStartTime(J)V

    .line 2490
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/TranslateAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .line 2494
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->a:J

    .line 2495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->a:Z

    .line 2496
    return-void
.end method

.method public resume()V
    .locals 1

    .line 2499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->a:Z

    .line 2500
    return-void
.end method
