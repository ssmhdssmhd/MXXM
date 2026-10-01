.class public interface abstract Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;
.super Ljava/lang/Object;
.source "AliPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/AliPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnVerifyTimeExpireCallback"
.end annotation


# virtual methods
.method public abstract onVerifyAuth(Lcom/aliyun/player/source/VidAuth;)Lcom/aliyun/player/AliPlayer$Status;
.end method

.method public abstract onVerifySts(Lcom/aliyun/player/source/StsInfo;)Lcom/aliyun/player/AliPlayer$Status;
.end method
