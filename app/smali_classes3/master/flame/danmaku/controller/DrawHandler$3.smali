.class Lmaster/flame/danmaku/controller/DrawHandler$3;
.super Ljava/lang/Object;
.source "DrawHandler.java"

# interfaces
.implements Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/DrawHandler;->prepare(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmaster/flame/danmaku/controller/DrawHandler;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/DrawHandler;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lmaster/flame/danmaku/controller/DrawHandler;

    .line 568
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    iput-object p2, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDanmakuAdd(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 5
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 577
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    return-void

    .line 580
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v0

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v2}, Lmaster/flame/danmaku/controller/DrawHandler;->getCurrentTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 581
    .local v0, "delay":J
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/DrawHandler;->access$1700(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v2

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/DrawHandler;->access$1800(Lmaster/flame/danmaku/controller/DrawHandler;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/DrawHandler;->access$1300(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v2

    iget-boolean v2, v2, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    if-eqz v2, :cond_2

    .line 582
    :cond_1
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/DrawHandler;->access$1500(Lmaster/flame/danmaku/controller/DrawHandler;)V

    goto :goto_0

    .line 583
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/DrawHandler;->access$1700(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v2

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    .line 584
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 586
    :cond_3
    :goto_0
    return-void
.end method

.method public onDanmakuConfigChanged()V
    .locals 1

    .line 604
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->access$1900(Lmaster/flame/danmaku/controller/DrawHandler;)V

    .line 605
    return-void
.end method

.method public onDanmakuShown(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 1
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 590
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->access$200(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->access$200(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler$Callback;->danmakuShown(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 593
    :cond_0
    return-void
.end method

.method public onDanmakusDrawingFinished()V
    .locals 1

    .line 597
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->access$200(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->access$200(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    move-result-object v0

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/DrawHandler$Callback;->drawingFinished()V

    .line 600
    :cond_0
    return-void
.end method

.method public ready()V
    .locals 1

    .line 571
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->access$1600(Lmaster/flame/danmaku/controller/DrawHandler;)V

    .line 572
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler$3;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 573
    return-void
.end method
