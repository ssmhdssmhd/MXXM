.class public interface abstract Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;
.super Ljava/lang/Object;
.source "AliMediaDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/downloader/AliMediaDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnProgressListener"
.end annotation


# virtual methods
.method public abstract onDownloadingProgress(I)V
.end method

.method public abstract onProcessingProgress(I)V
.end method
