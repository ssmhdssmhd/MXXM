.class public interface abstract Lcom/aliyun/player/IPlayer$OnThumbnailListener;
.super Ljava/lang/Object;
.source "IPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnThumbnailListener"
.end annotation


# virtual methods
.method public abstract onGetFail(JLcom/aliyun/player/bean/ErrorInfo;)V
.end method

.method public abstract onGetSuccess(JLcom/aliyun/thumbnail/ThumbnailBitmapInfo;)V
.end method
