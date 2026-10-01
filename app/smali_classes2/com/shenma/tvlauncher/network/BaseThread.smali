.class public abstract Lcom/shenma/tvlauncher/network/BaseThread;
.super Ljava/lang/Object;
.source "BaseThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/network/BaseThread$STATE;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "BaseThread"


# instance fields
.field protected mMainThread:Ljava/lang/Thread;

.field protected mState:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

.field protected mTimeout:J


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .param p1, "timeout"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/network/BaseThread;->mMainThread:Ljava/lang/Thread;

    .line 24
    sget-object v0, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->INIT:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    iput-object v0, p0, Lcom/shenma/tvlauncher/network/BaseThread;->mState:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/network/BaseThread;->mTimeout:J

    .line 36
    const-string v0, "BaseThread() start"

    const-string v1, "BaseThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iput-wide p1, p0, Lcom/shenma/tvlauncher/network/BaseThread;->mTimeout:J

    .line 40
    new-instance v0, Lcom/shenma/tvlauncher/network/BaseThread$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/network/BaseThread$1;-><init>(Lcom/shenma/tvlauncher/network/BaseThread;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/network/BaseThread;->mMainThread:Ljava/lang/Thread;

    .line 71
    sget-object v0, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->INIT:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    iput-object v0, p0, Lcom/shenma/tvlauncher/network/BaseThread;->mState:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    .line 73
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/network/BaseThread;->_init()V

    .line 75
    const-string v0, "BaseThread() end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method


# virtual methods
.method protected abstract _done()V
.end method

.method protected abstract _finish()V
.end method

.method protected abstract _init()V
.end method

.method protected abstract _interrupted()V
.end method

.method public getState()Lcom/shenma/tvlauncher/network/BaseThread$STATE;
    .locals 2

    .line 165
    const-string/jumbo v0, "stop() start"

    const-string v1, "BaseThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string/jumbo v0, "stop() end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/shenma/tvlauncher/network/BaseThread;->mState:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    return-object v0
.end method

.method public interrupt()V
    .locals 3

    .line 149
    const-string v0, "interrupt() start"

    const-string v1, "BaseThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/shenma/tvlauncher/network/BaseThread;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 152
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eq v0, v2, :cond_0

    .line 153
    iget-object v0, p0, Lcom/shenma/tvlauncher/network/BaseThread;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 156
    :cond_0
    const-string v0, "interrupt() end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public setPriority(I)V
    .locals 2
    .param p1, "priority"    # I

    .line 109
    const-string v0, "setPriority() start"

    const-string v1, "BaseThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/shenma/tvlauncher/network/BaseThread;->mMainThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/shenma/tvlauncher/network/BaseThread;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 115
    :cond_0
    const-string v0, "setPriority() end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public start()Z
    .locals 4

    .line 85
    const-string/jumbo v0, "start() start"

    const-string v1, "BaseThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "result":Z
    iget-object v2, p0, Lcom/shenma/tvlauncher/network/BaseThread;->mState:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    sget-object v3, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->INIT:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    if-ne v2, v3, :cond_0

    .line 90
    sget-object v2, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->RUN:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    iput-object v2, p0, Lcom/shenma/tvlauncher/network/BaseThread;->mState:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    .line 91
    iget-object v2, p0, Lcom/shenma/tvlauncher/network/BaseThread;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 93
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    const-string/jumbo v2, "start(): state is not init."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    const-string/jumbo v2, "start() end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v0
.end method

.method public stop()Z
    .locals 4

    .line 125
    const-string/jumbo v0, "stop() start"

    const-string v1, "BaseThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, "result":Z
    iget-object v2, p0, Lcom/shenma/tvlauncher/network/BaseThread;->mState:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    sget-object v3, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->RUN:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/shenma/tvlauncher/network/BaseThread;->mState:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    sget-object v3, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->ERROR:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    const-string/jumbo v2, "start(): state is not run or error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    :cond_1
    :goto_0
    sget-object v2, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->FINISH:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    iput-object v2, p0, Lcom/shenma/tvlauncher/network/BaseThread;->mState:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    .line 131
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/network/BaseThread;->_finish()V

    .line 133
    const/4 v0, 0x1

    .line 138
    :goto_1
    const-string/jumbo v2, "stop() end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v0
.end method
