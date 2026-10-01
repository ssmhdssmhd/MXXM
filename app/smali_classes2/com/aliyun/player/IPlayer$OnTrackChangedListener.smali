.class public interface abstract Lcom/aliyun/player/IPlayer$OnTrackChangedListener;
.super Ljava/lang/Object;
.source "IPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTrackChangedListener"
.end annotation


# virtual methods
.method public abstract onChangedFail(Lcom/aliyun/player/nativeclass/TrackInfo;Lcom/aliyun/player/bean/ErrorInfo;)V
.end method

.method public abstract onChangedSuccess(Lcom/aliyun/player/nativeclass/TrackInfo;)V
.end method
