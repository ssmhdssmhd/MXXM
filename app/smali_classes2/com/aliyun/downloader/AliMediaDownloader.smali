.class public abstract Lcom/aliyun/downloader/AliMediaDownloader;
.super Ljava/lang/Object;
.source "AliMediaDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;,
        Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;,
        Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;,
        Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;,
        Lcom/aliyun/downloader/AliMediaDownloader$ConvertURLCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method static deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "saveDir"    # Ljava/lang/String;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 304
    invoke-static {p0, p1, p2, p3}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static setConvertURLCallback(Lcom/aliyun/downloader/AliMediaDownloader$ConvertURLCallback;)V
    .locals 0
    .param p0, "callback"    # Lcom/aliyun/downloader/AliMediaDownloader$ConvertURLCallback;

    .line 318
    invoke-static {p0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->setConvertURLCallback(Lcom/aliyun/downloader/AliMediaDownloader$ConvertURLCallback;)V

    .line 319
    return-void
.end method


# virtual methods
.method public abstract deleteFile()V
.end method

.method public abstract getFilePath()Ljava/lang/String;
.end method

.method public abstract prepare(Lcom/aliyun/player/source/VidAuth;)V
.end method

.method public abstract prepare(Lcom/aliyun/player/source/VidSts;)V
.end method

.method public abstract release()V
.end method

.method public abstract selectItem(I)V
.end method

.method public abstract setDownloaderConfig(Lcom/aliyun/downloader/DownloaderConfig;)V
.end method

.method public abstract setOnCompletionListener(Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;)V
.end method

.method public abstract setOnPreparedListener(Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;)V
.end method

.method public abstract setOnProgressListener(Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;)V
.end method

.method public abstract setSaveDir(Ljava/lang/String;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract updateSource(Lcom/aliyun/player/source/VidAuth;)V
.end method

.method public abstract updateSource(Lcom/aliyun/player/source/VidSts;)V
.end method
