.class public interface abstract Lcom/aliyun/player/AliPlayer;
.super Ljava/lang/Object;
.source "AliPlayer.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;,
        Lcom/aliyun/player/AliPlayer$Status;
    }
.end annotation


# virtual methods
.method public abstract invokeComponent(Ljava/lang/String;)V
.end method

.method public abstract setDataSource(Lcom/aliyun/player/source/BitStreamSource;)V
.end method

.method public abstract setDataSource(Lcom/aliyun/player/source/LiveSts;)V
.end method

.method public abstract setDataSource(Lcom/aliyun/player/source/UrlSource;)V
.end method

.method public abstract setDataSource(Lcom/aliyun/player/source/VidAuth;)V
.end method

.method public abstract setDataSource(Lcom/aliyun/player/source/VidMps;)V
.end method

.method public abstract setDataSource(Lcom/aliyun/player/source/VidSts;)V
.end method

.method public abstract setOnVerifyTimeExpireCallback(Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;)V
.end method

.method public abstract updateStsInfo(Lcom/aliyun/player/source/StsInfo;)V
.end method

.method public abstract updateVidAuth(Lcom/aliyun/player/source/VidAuth;)V
.end method
