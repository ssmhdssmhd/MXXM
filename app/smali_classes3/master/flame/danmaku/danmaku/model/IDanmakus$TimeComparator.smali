.class public Lmaster/flame/danmaku/danmaku/model/IDanmakus$TimeComparator;
.super Lmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;
.source "IDanmakus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/model/IDanmakus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeComparator"
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "duplicateMergingEnabled"    # Z

    .line 129
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;-><init>(Z)V

    .line 130
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 126
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    check-cast p2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$TimeComparator;->compare(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result p1

    return p1
.end method

.method public compare(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 1
    .param p1, "obj1"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "obj2"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 134
    invoke-super {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;->compare(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result v0

    return v0
.end method
