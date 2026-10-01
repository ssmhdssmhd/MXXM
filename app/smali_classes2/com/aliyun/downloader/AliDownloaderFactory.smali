.class public Lcom/aliyun/downloader/AliDownloaderFactory;
.super Ljava/lang/Object;
.source "AliDownloaderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/aliyun/downloader/AliMediaDownloader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 20
    new-instance v0, Lcom/aliyun/downloader/ApsaraDownloader;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aliyun/downloader/ApsaraDownloader;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, "apsaraDownloader":Lcom/aliyun/downloader/ApsaraDownloader;
    return-object v0
.end method

.method public static deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "saveDir"    # Ljava/lang/String;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/aliyun/downloader/AliMediaDownloader;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
