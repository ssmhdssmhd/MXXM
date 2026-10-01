.class public interface abstract Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;
.super Ljava/lang/Object;
.source "MediaLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/loader/MediaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLoadStatusListener"
.end annotation


# virtual methods
.method public abstract onCanceled(Ljava/lang/String;)V
.end method

.method public abstract onCompleted(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;ILjava/lang/String;)V
.end method
