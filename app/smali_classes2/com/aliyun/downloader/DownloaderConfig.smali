.class public Lcom/aliyun/downloader/DownloaderConfig;
.super Ljava/lang/Object;
.source "DownloaderConfig.java"


# instance fields
.field public mConnectTimeoutS:I

.field public mHttpProxy:Ljava/lang/String;

.field public mNetworkTimeoutMs:J

.field public mReferrer:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aliyun/downloader/DownloaderConfig;->mNetworkTimeoutMs:J

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/aliyun/downloader/DownloaderConfig;->mConnectTimeoutS:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/aliyun/downloader/DownloaderConfig;->mHttpProxy:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/aliyun/downloader/DownloaderConfig;->mReferrer:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/aliyun/downloader/DownloaderConfig;->mUserAgent:Ljava/lang/String;

    return-void
.end method
