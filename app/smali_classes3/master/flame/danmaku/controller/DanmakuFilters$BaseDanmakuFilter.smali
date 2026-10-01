.class public abstract Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;
.super Ljava/lang/Object;
.source "DanmakuFilters.java"

# interfaces
.implements Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/DanmakuFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseDanmakuFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    .local p0, "this":Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 56
    .local p0, "this":Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter<TT;>;"
    return-void
.end method
