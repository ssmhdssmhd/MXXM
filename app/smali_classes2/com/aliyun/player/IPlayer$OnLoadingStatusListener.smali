.class public interface abstract Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;
.super Ljava/lang/Object;
.source "IPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLoadingStatusListener"
.end annotation


# virtual methods
.method public abstract onLoadingBegin()V
.end method

.method public abstract onLoadingEnd()V
.end method

.method public abstract onLoadingProgress(IF)V
.end method
