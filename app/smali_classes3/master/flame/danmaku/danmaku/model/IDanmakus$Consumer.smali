.class public abstract Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;
.super Ljava/lang/Object;
.source "IDanmakus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/model/IDanmakus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Consumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ACTION_BREAK:I = 0x1

.field public static final ACTION_CONTINUE:I = 0x0

.field public static final ACTION_REMOVE:I = 0x2

.field public static final ACTION_REMOVE_AND_BREAK:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    .local p0, "this":Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;, "Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer<TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract accept(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TProgress;)I"
        }
    .end annotation
.end method

.method public after()V
    .locals 0

    .line 51
    .local p0, "this":Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;, "Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer<TProgress;TResult;>;"
    return-void
.end method

.method public before()V
    .locals 0

    .line 47
    .local p0, "this":Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;, "Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer<TProgress;TResult;>;"
    return-void
.end method

.method public result()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;, "Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer<TProgress;TResult;>;"
    const/4 v0, 0x0

    return-object v0
.end method
