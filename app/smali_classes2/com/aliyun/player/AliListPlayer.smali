.class public interface abstract Lcom/aliyun/player/AliListPlayer;
.super Ljava/lang/Object;
.source "AliListPlayer.java"

# interfaces
.implements Lcom/aliyun/player/AliPlayer;


# virtual methods
.method public abstract addUrl(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addVid(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract clear()V
.end method

.method public abstract getCurrentUid()Ljava/lang/String;
.end method

.method public abstract getMaxPreloadMemorySizeMB()I
.end method

.method public abstract moveTo(Ljava/lang/String;)Z
.end method

.method public abstract moveTo(Ljava/lang/String;Lcom/aliyun/player/source/StsInfo;)Z
.end method

.method public abstract moveToNext()Z
.end method

.method public abstract moveToNext(Lcom/aliyun/player/source/StsInfo;)Z
.end method

.method public abstract moveToPrev()Z
.end method

.method public abstract moveToPrev(Lcom/aliyun/player/source/StsInfo;)Z
.end method

.method public abstract removeSource(Ljava/lang/String;)V
.end method

.method public abstract setDefinition(Ljava/lang/String;)V
.end method

.method public abstract setMaxPreloadMemorySizeMB(I)V
.end method

.method public abstract setPreloadCount(I)V
.end method
