.class public Lmaster/flame/danmaku/danmaku/model/IDanmakus$YPosDescComparator;
.super Lmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;
.source "IDanmakus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/model/IDanmakus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YPosDescComparator"
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "duplicateMergingEnabled"    # Z

    .line 156
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;-><init>(Z)V

    .line 157
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 153
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    check-cast p2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$YPosDescComparator;->compare(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result p1

    return p1
.end method

.method public compare(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 2
    .param p1, "obj1"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "obj2"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 161
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/IDanmakus$YPosDescComparator;->mDuplicateMergingEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->isDuplicate(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    return v0

    .line 164
    :cond_0
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v0

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method
