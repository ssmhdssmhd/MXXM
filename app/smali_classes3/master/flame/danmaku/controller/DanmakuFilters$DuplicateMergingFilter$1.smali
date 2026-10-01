.class Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter$1;
.super Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->removeTimeoutDanmakus(Lmaster/flame/danmaku/danmaku/model/IDanmakus;J)V
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
.field startTime:J

.field final synthetic this$0:Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;

.field final synthetic val$limitTime:J


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;J)V
    .locals 0
    .param p1, "this$0"    # Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;

    .line 378
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter$1;->this$0:Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;

    iput-wide p2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter$1;->val$limitTime:J

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;-><init>()V

    .line 379
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter$1;->startTime:J

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)I
    .locals 0

    .line 378
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter$1;->accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result p1

    return p1
.end method

.method public accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 6
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 383
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter$1;->startTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter$1;->val$limitTime:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 384
    return v0

    .line 386
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 387
    const/4 v0, 0x2

    return v0

    .line 389
    :cond_1
    return v0

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method
