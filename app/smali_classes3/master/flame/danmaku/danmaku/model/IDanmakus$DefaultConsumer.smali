.class public abstract Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;
.super Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;
.source "IDanmakus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/model/IDanmakus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DefaultConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Progress:",
        "Ljava/lang/Object;",
        ">",
        "Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer<",
        "TProgress;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    .local p0, "this":Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;, "Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer<TProgress;>;"
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;-><init>()V

    return-void
.end method
