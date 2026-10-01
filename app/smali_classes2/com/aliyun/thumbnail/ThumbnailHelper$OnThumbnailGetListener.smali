.class public interface abstract Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;
.super Ljava/lang/Object;
.source "ThumbnailHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/thumbnail/ThumbnailHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnThumbnailGetListener"
.end annotation


# virtual methods
.method public abstract onThumbnailGetFail(JLjava/lang/String;)V
.end method

.method public abstract onThumbnailGetSuccess(JLcom/aliyun/thumbnail/ThumbnailBitmapInfo;)V
.end method
