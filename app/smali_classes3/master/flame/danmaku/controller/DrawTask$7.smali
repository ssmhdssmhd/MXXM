.class Lmaster/flame/danmaku/controller/DrawTask$7;
.super Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;
.source "DrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/DrawTask;->requestSync(JJJ)V
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
.field final synthetic this$0:Lmaster/flame/danmaku/controller/DrawTask;

.field final synthetic val$offsetMills:J


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/DrawTask;J)V
    .locals 0
    .param p1, "this$0"    # Lmaster/flame/danmaku/controller/DrawTask;

    .line 430
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawTask$7;->this$0:Lmaster/flame/danmaku/controller/DrawTask;

    iput-wide p2, p0, Lmaster/flame/danmaku/controller/DrawTask$7;->val$offsetMills:J

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)I
    .locals 0

    .line 430
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/DrawTask$7;->accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result p1

    return p1
.end method

.method public accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 6
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 433
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 434
    return v1

    .line 436
    :cond_0
    iget-wide v2, p0, Lmaster/flame/danmaku/controller/DrawTask$7;->val$offsetMills:J

    iget-wide v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->timeOffset:J

    add-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->setTimeOffset(J)V

    .line 437
    iget-wide v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->timeOffset:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 438
    return v1

    .line 440
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
