.class Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$5;
.super Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->clearTimeOutAndFilteredCaches(IZ)V
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
.field final synthetic this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

.field final synthetic val$fexpectedFreeSize:I

.field final synthetic val$forcePush:Z


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;IZ)V
    .locals 0
    .param p1, "this$1"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    .line 987
    iput-object p1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$5;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iput p2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$5;->val$fexpectedFreeSize:I

    iput-boolean p3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$5;->val$forcePush:Z

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)I
    .locals 0

    .line 987
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$5;->accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result p1

    return p1
.end method

.method public accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 3
    .param p1, "oldValue"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 990
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$5;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$200(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 991
    return v1

    .line 993
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$5;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$1700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)I

    move-result v0

    iget v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$5;->val$fexpectedFreeSize:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$5;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$1800(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)I

    move-result v2

    if-le v0, v2, :cond_4

    .line 994
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isFiltered()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 997
    :cond_1
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$5;->val$forcePush:Z

    if-eqz v0, :cond_2

    .line 998
    return v1

    .line 1003
    :cond_2
    return v2

    .line 995
    :cond_3
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$5;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->entryRemoved(ZLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 996
    const/4 v0, 0x2

    return v0

    .line 1001
    :cond_4
    return v1
.end method
