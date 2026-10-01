.class public Lmaster/flame/danmaku/danmaku/model/FBDanmaku;
.super Lmaster/flame/danmaku/danmaku/model/FTDanmaku;
.source "FBDanmaku.java"


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/Duration;)V
    .locals 0
    .param p1, "duration"    # Lmaster/flame/danmaku/danmaku/model/Duration;

    .line 22
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;-><init>(Lmaster/flame/danmaku/danmaku/model/Duration;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 27
    const/4 v0, 0x4

    return v0
.end method
