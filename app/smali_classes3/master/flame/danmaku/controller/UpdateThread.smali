.class public Lmaster/flame/danmaku/controller/UpdateThread;
.super Ljava/lang/Thread;
.source "UpdateThread.java"


# instance fields
.field volatile mIsQuited:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public isQuited()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/UpdateThread;->mIsQuited:Z

    return v0
.end method

.method public quit()V
    .locals 1

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/UpdateThread;->mIsQuited:Z

    .line 14
    return-void
.end method

.method public run()V
    .locals 1

    .line 22
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/UpdateThread;->mIsQuited:Z

    if-eqz v0, :cond_0

    .line 23
    return-void

    .line 24
    :cond_0
    return-void
.end method
