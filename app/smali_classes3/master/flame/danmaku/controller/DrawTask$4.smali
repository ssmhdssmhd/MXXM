.class Lmaster/flame/danmaku/controller/DrawTask$4;
.super Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;
.source "DrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/DrawTask;->removeUnusedLiveDanmakusIn(I)V
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

.field final synthetic this$0:Lmaster/flame/danmaku/controller/DrawTask;

.field final synthetic val$msec:I


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/DrawTask;I)V
    .locals 2
    .param p1, "this$0"    # Lmaster/flame/danmaku/controller/DrawTask;

    .line 203
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawTask$4;->this$0:Lmaster/flame/danmaku/controller/DrawTask;

    iput p2, p0, Lmaster/flame/danmaku/controller/DrawTask$4;->val$msec:I

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;-><init>()V

    .line 204
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/DrawTask$4;->startTime:J

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)I
    .locals 0

    .line 203
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/DrawTask$4;->accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result p1

    return p1
.end method

.method public accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 7
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 208
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v0

    .line 209
    .local v0, "isTimeout":Z
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lmaster/flame/danmaku/controller/DrawTask$4;->startTime:J

    sub-long/2addr v1, v3

    iget v3, p0, Lmaster/flame/danmaku/controller/DrawTask$4;->val$msec:I

    int-to-long v3, v3

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-lez v6, :cond_0

    .line 210
    return v5

    .line 212
    :cond_0
    if-eqz v0, :cond_1

    .line 213
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask$4;->this$0:Lmaster/flame/danmaku/controller/DrawTask;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v1, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->removeItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    .line 214
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask$4;->this$0:Lmaster/flame/danmaku/controller/DrawTask;

    invoke-virtual {v1, p1}, Lmaster/flame/danmaku/controller/DrawTask;->onDanmakuRemoved(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 215
    const/4 v1, 0x2

    return v1

    .line 217
    :cond_1
    return v5
.end method
