.class Lmaster/flame/danmaku/controller/DrawTask$5;
.super Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;
.source "DrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/DrawTask;->getVisibleDanmakusOnTime(J)Lmaster/flame/danmaku/danmaku/model/IDanmakus;
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

.field final synthetic val$visibleDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/DrawTask;Lmaster/flame/danmaku/danmaku/model/IDanmakus;)V
    .locals 0
    .param p1, "this$0"    # Lmaster/flame/danmaku/controller/DrawTask;

    .line 240
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawTask$5;->this$0:Lmaster/flame/danmaku/controller/DrawTask;

    iput-object p2, p0, Lmaster/flame/danmaku/controller/DrawTask$5;->val$visibleDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)I
    .locals 0

    .line 240
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/DrawTask$5;->accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result p1

    return p1
.end method

.method public accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 1
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 243
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask$5;->val$visibleDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    .line 246
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
