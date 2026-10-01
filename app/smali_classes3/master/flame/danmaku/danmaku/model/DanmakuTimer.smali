.class public Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
.super Ljava/lang/Object;
.source "DanmakuTimer.java"


# instance fields
.field public currMillisecond:J

.field private lastInterval:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "curr"    # J

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 30
    return-void
.end method


# virtual methods
.method public add(J)J
    .locals 2
    .param p1, "mills"    # J

    .line 39
    iget-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public lastInterval()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->lastInterval:J

    return-wide v0
.end method

.method public update(J)J
    .locals 2
    .param p1, "curr"    # J

    .line 33
    iget-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->lastInterval:J

    .line 34
    iput-wide p1, p0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    .line 35
    iget-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->lastInterval:J

    return-wide v0
.end method
