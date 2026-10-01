.class Lmaster/flame/danmaku/controller/DrawHandler$2;
.super Lmaster/flame/danmaku/controller/UpdateThread;
.source "DrawHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/DrawHandler;->updateInNewThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmaster/flame/danmaku/controller/DrawHandler;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/DrawHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lmaster/flame/danmaku/controller/DrawHandler;
    .param p2, "name"    # Ljava/lang/String;

    .line 423
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-direct {p0, p2}, Lmaster/flame/danmaku/controller/UpdateThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 426
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 427
    .local v0, "lastTime":J
    const-wide/16 v2, 0x0

    .line 428
    .local v2, "dTime":J
    :goto_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DrawHandler$2;->isQuited()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v4}, Lmaster/flame/danmaku/controller/DrawHandler;->access$300(Lmaster/flame/danmaku/controller/DrawHandler;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 429
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 430
    .local v4, "startMS":J
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v0

    .line 431
    iget-object v6, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v6}, Lmaster/flame/danmaku/controller/DrawHandler;->access$400(Lmaster/flame/danmaku/controller/DrawHandler;)J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 432
    .local v6, "diffTime":J
    const-wide/16 v8, 0x1

    cmp-long v10, v6, v8

    if-lez v10, :cond_0

    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$500(Lmaster/flame/danmaku/controller/DrawHandler;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 433
    invoke-static {v8, v9}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->sleep(J)V

    .line 434
    goto :goto_0

    .line 436
    :cond_0
    move-wide v0, v4

    .line 437
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v8, v4, v5}, Lmaster/flame/danmaku/controller/DrawHandler;->access$600(Lmaster/flame/danmaku/controller/DrawHandler;J)J

    move-result-wide v8

    .line 438
    .local v8, "d":J
    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-gez v12, :cond_1

    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$500(Lmaster/flame/danmaku/controller/DrawHandler;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 439
    const-wide/16 v10, 0x3c

    sub-long/2addr v10, v8

    invoke-static {v10, v11}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->sleep(J)V

    .line 440
    goto :goto_0

    .line 442
    :cond_1
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$700(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/controller/IDanmakuViewController;

    move-result-object v10

    invoke-interface {v10}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->drawDanmakus()J

    move-result-wide v8

    .line 443
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$800(Lmaster/flame/danmaku/controller/DrawHandler;)J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-lez v12, :cond_2

    .line 444
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$900(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->add(J)J

    .line 445
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$1000(Lmaster/flame/danmaku/controller/DrawHandler;)Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/LinkedList;->clear()V

    .line 447
    :cond_2
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$1100(Lmaster/flame/danmaku/controller/DrawHandler;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 448
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    const-wide/32 v11, 0x989680

    invoke-static {v10, v11, v12}, Lmaster/flame/danmaku/controller/DrawHandler;->access$1200(Lmaster/flame/danmaku/controller/DrawHandler;J)V

    goto :goto_1

    .line 449
    :cond_3
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$1300(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v10

    iget-boolean v10, v10, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$1400(Lmaster/flame/danmaku/controller/DrawHandler;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 450
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$1300(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v10

    iget-wide v10, v10, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    iget-object v12, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v12}, Lmaster/flame/danmaku/controller/DrawHandler;->access$900(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v12

    iget-wide v12, v12, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long/2addr v10, v12

    .line 451
    .end local v2    # "dTime":J
    .local v10, "dTime":J
    const-wide/16 v2, 0x1f4

    cmp-long v12, v10, v2

    if-lez v12, :cond_4

    .line 452
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/DrawHandler;->access$1500(Lmaster/flame/danmaku/controller/DrawHandler;)V

    .line 453
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    const-wide/16 v12, 0xa

    sub-long v12, v10, v12

    invoke-static {v2, v12, v13}, Lmaster/flame/danmaku/controller/DrawHandler;->access$1200(Lmaster/flame/danmaku/controller/DrawHandler;J)V

    .line 456
    .end local v4    # "startMS":J
    .end local v6    # "diffTime":J
    .end local v8    # "d":J
    :cond_4
    move-wide v2, v10

    .end local v10    # "dTime":J
    .restart local v2    # "dTime":J
    :cond_5
    :goto_1
    goto/16 :goto_0

    .line 457
    :cond_6
    return-void
.end method
