.class public abstract Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;
.super Ljava/lang/Object;
.source "BaseCacheStuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;
    }
.end annotation


# instance fields
.field protected mProxy:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public clearCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 0
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 63
    return-void
.end method

.method public abstract clearCaches()V
.end method

.method public drawCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;Landroid/text/TextPaint;)Z
    .locals 3
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "alphaPaint"    # Landroid/graphics/Paint;
    .param p6, "paint"    # Landroid/text/TextPaint;

    .line 51
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getDrawingCache()Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    move-result-object v0

    .line 52
    .local v0, "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;

    .line 54
    .local v1, "holder":Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;
    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v1, p2, p3, p4, p5}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)Z

    move-result v2

    return v2

    .line 58
    .end local v1    # "holder":Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public abstract drawDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FFZLmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;)V
.end method

.method public abstract measure(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/text/TextPaint;Z)V
.end method

.method public prepare(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V
    .locals 1
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "fromWorkerThread"    # Z

    .line 31
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->mProxy:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->mProxy:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;->prepareDrawing(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V

    .line 34
    :cond_0
    return-void
.end method

.method public releaseResource(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 1
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 70
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->mProxy:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->mProxy:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;->releaseResource(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 73
    :cond_0
    return-void
.end method

.method public setProxy(Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;)V
    .locals 0
    .param p1, "adapter"    # Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    .line 66
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->mProxy:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    .line 67
    return-void
.end method
