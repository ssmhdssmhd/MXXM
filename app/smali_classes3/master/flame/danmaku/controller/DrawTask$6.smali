.class Lmaster/flame/danmaku/controller/DrawTask$6;
.super Ljava/lang/Object;
.source "DrawTask.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/DrawTask;->loadDanmakus(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmaster/flame/danmaku/controller/DrawTask;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/DrawTask;)V
    .locals 0
    .param p1, "this$0"    # Lmaster/flame/danmaku/controller/DrawTask;

    .line 326
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawTask$6;->this$0:Lmaster/flame/danmaku/controller/DrawTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDanmakuAdd(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 1
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 329
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask$6;->this$0:Lmaster/flame/danmaku/controller/DrawTask;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask$6;->this$0:Lmaster/flame/danmaku/controller/DrawTask;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;->onDanmakuAdd(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 332
    :cond_0
    return-void
.end method
