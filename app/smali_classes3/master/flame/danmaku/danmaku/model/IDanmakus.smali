.class public interface abstract Lmaster/flame/danmaku/danmaku/model/IDanmakus;
.super Ljava/lang/Object;
.source "IDanmakus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/model/IDanmakus$YPosDescComparator;,
        Lmaster/flame/danmaku/danmaku/model/IDanmakus$YPosComparator;,
        Lmaster/flame/danmaku/danmaku/model/IDanmakus$TimeComparator;,
        Lmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;,
        Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;,
        Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;
    }
.end annotation


# static fields
.field public static final ST_BY_LIST:I = 0x4

.field public static final ST_BY_TIME:I = 0x0

.field public static final ST_BY_YPOS:I = 0x1

.field public static final ST_BY_YPOS_DESC:I = 0x2


# virtual methods
.method public abstract addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
.end method

.method public abstract clear()V
.end method

.method public abstract contains(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
.end method

.method public abstract first()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
.end method

.method public abstract forEach(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer<",
            "-",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract forEachSync(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer<",
            "-",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract getCollection()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract last()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
.end method

.method public abstract obtainSynchronizer()Ljava/lang/Object;
.end method

.method public abstract removeItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
.end method

.method public abstract setSubItemsDuplicateMergingEnabled(Z)V
.end method

.method public abstract size()I
.end method

.method public abstract sub(JJ)Lmaster/flame/danmaku/danmaku/model/IDanmakus;
.end method

.method public abstract subnew(JJ)Lmaster/flame/danmaku/danmaku/model/IDanmakus;
.end method
