.class public interface abstract Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$OnFrameAvailableListener;
.super Ljava/lang/Object;
.source "FakeDanmakuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFrameAvailableListener"
.end annotation


# virtual methods
.method public abstract onConfig(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
.end method

.method public abstract onFailed(ILjava/lang/String;)V
.end method

.method public abstract onFrameAvailable(JLandroid/graphics/Bitmap;)V
.end method

.method public abstract onFramesFinished(J)V
.end method
