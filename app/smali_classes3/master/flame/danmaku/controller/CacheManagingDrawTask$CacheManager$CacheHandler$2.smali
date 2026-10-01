.class Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;
.super Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->prepareCaches(Z)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer<",
        "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
        ">;"
    }
.end annotation


# instance fields
.field currScreenIndex:I

.field orderInScreen:I

.field final synthetic this$2:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

.field final synthetic val$curr:J

.field final synthetic val$finalSleepTime:J

.field final synthetic val$last:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field final synthetic val$repositioned:Z

.field final synthetic val$sizeInScreen:I

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;ZIJJJ)V
    .locals 0
    .param p1, "this$2"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    .line 766
    iput-object p1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->this$2:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    iput-object p2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->val$last:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-boolean p3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->val$repositioned:Z

    iput p4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->val$sizeInScreen:I

    iput-wide p5, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->val$curr:J

    iput-wide p7, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->val$finalSleepTime:J

    iput-wide p9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->val$startTime:J

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;-><init>()V

    .line 767
    const/4 p2, 0x0

    iput p2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->orderInScreen:I

    .line 768
    iput p2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->currScreenIndex:I

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)I
    .locals 0

    .line 766
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result p1

    return p1
.end method

.method public accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 11
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 771
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->this$2:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->access$1000(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->this$2:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->access$1100(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v5, p1

    goto/16 :goto_3

    .line 774
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->val$last:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v2

    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->this$2:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v4, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 775
    return v1

    .line 778
    :cond_1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getDrawingCache()Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    move-result-object v2

    .line 779
    .local v2, "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    const/4 v0, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 780
    return v0

    .line 783
    :cond_2
    iget-boolean v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->val$repositioned:Z

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v3

    if-nez v3, :cond_4

    .line 784
    :cond_3
    return v0

    .line 787
    :cond_4
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->hasPassedFilter()Z

    move-result v3

    if-nez v3, :cond_5

    .line 788
    iget-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->this$2:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v4, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    iget v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->orderInScreen:I

    iget v7, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->val$sizeInScreen:I

    iget-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->this$2:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v10, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v5, p1

    .end local p1    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v5, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-virtual/range {v4 .. v10}, Lmaster/flame/danmaku/controller/DanmakuFilters;->filter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    goto :goto_0

    .line 787
    .end local v5    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local p1    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_5
    move-object v5, p1

    .line 792
    .end local p1    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v5    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :goto_0
    iget-byte p1, v5, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->priority:B

    if-nez p1, :cond_6

    invoke-virtual {v5}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isFiltered()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 793
    return v0

    .line 796
    :cond_6
    invoke-virtual {v5}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result p1

    if-ne p1, v1, :cond_8

    .line 798
    invoke-virtual {v5}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v3

    iget-wide v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->val$curr:J

    sub-long/2addr v3, v6

    iget-object p1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->this$2:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v6, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    div-long/2addr v3, v6

    long-to-int p1, v3

    .line 799
    .local p1, "screenIndex":I
    iget v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->currScreenIndex:I

    if-ne v3, p1, :cond_7

    .line 800
    iget v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->orderInScreen:I

    add-int/2addr v3, v1

    iput v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->orderInScreen:I

    goto :goto_1

    .line 802
    :cond_7
    iput v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->orderInScreen:I

    .line 803
    iput p1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->currScreenIndex:I

    .line 807
    .end local p1    # "screenIndex":I
    :cond_8
    :goto_1
    iget-boolean p1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->val$repositioned:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->this$2:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->access$1300(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 809
    :try_start_0
    iget-object p1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->this$2:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$000(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :try_start_1
    iget-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->this$2:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$000(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->val$finalSleepTime:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 811
    monitor-exit p1

    .line 815
    goto :goto_2

    .line 811
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    .end local v5    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 812
    .restart local v2    # "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    .restart local v5    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :catch_0
    move-exception v0

    move-object p1, v0

    .line 813
    .local p1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 814
    return v1

    .line 819
    .end local p1    # "e":Ljava/lang/InterruptedException;
    :cond_9
    :goto_2
    iget-object p1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->this$2:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-static {p1, v5, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->access$1400(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)B

    .line 820
    iget-boolean p1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->val$repositioned:Z

    if-nez p1, :cond_a

    .line 821
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->val$startTime:J

    sub-long/2addr v3, v6

    .line 822
    .local v3, "consumingTime":J
    iget-object p1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->this$2:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-object p1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;->this$2:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$1200(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)I

    move-result p1

    int-to-long v6, p1

    const-wide/16 v8, 0xed8

    mul-long v6, v6, v8

    cmp-long p1, v3, v6

    if-ltz p1, :cond_a

    .line 824
    return v1

    .line 827
    .end local v3    # "consumingTime":J
    :cond_a
    return v0

    .line 771
    .end local v2    # "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    .end local v5    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local p1, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_b
    move-object v5, p1

    .line 772
    .end local p1    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v5    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :goto_3
    return v1
.end method
