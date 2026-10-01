.class Lcom/aliyun/downloader/ApsaraDownloader;
.super Lcom/aliyun/downloader/AliMediaDownloader;
.source "ApsaraDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/downloader/ApsaraDownloader$InnerOnProgressListener;,
        Lcom/aliyun/downloader/ApsaraDownloader$InnerPreparedListener;,
        Lcom/aliyun/downloader/ApsaraDownloader$InnerErrorListener;,
        Lcom/aliyun/downloader/ApsaraDownloader$InnerCompletionListener;
    }
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

.field private mOuterCompletionListener:Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;

.field private mOuterOnErrorListener:Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;

.field private mOuterOnPreparedListener:Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;

.field private mOuterOnProgressListener:Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0}, Lcom/aliyun/downloader/AliMediaDownloader;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterCompletionListener:Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;

    .line 117
    iput-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnErrorListener:Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;

    .line 147
    iput-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnPreparedListener:Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;

    .line 176
    iput-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnProgressListener:Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    .line 19
    iput-object p1, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mAppContext:Landroid/content/Context;

    .line 20
    new-instance v1, Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-direct {v1, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    .line 21
    iget-object v1, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    new-instance v2, Lcom/aliyun/downloader/ApsaraDownloader$InnerCompletionListener;

    invoke-direct {v2, p0, v0}, Lcom/aliyun/downloader/ApsaraDownloader$InnerCompletionListener;-><init>(Lcom/aliyun/downloader/ApsaraDownloader;Lcom/aliyun/downloader/ApsaraDownloader$1;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->setOnCompletionListener(Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;)V

    .line 22
    iget-object v1, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    new-instance v2, Lcom/aliyun/downloader/ApsaraDownloader$InnerErrorListener;

    invoke-direct {v2, p0, v0}, Lcom/aliyun/downloader/ApsaraDownloader$InnerErrorListener;-><init>(Lcom/aliyun/downloader/ApsaraDownloader;Lcom/aliyun/downloader/ApsaraDownloader$1;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->setOnErrorListener(Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;)V

    .line 23
    iget-object v1, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    new-instance v2, Lcom/aliyun/downloader/ApsaraDownloader$InnerPreparedListener;

    invoke-direct {v2, p0, v0}, Lcom/aliyun/downloader/ApsaraDownloader$InnerPreparedListener;-><init>(Lcom/aliyun/downloader/ApsaraDownloader;Lcom/aliyun/downloader/ApsaraDownloader$1;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->setOnPreparedListener(Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;)V

    .line 24
    iget-object v1, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    new-instance v2, Lcom/aliyun/downloader/ApsaraDownloader$InnerOnProgressListener;

    invoke-direct {v2, p0, v0}, Lcom/aliyun/downloader/ApsaraDownloader$InnerOnProgressListener;-><init>(Lcom/aliyun/downloader/ApsaraDownloader;Lcom/aliyun/downloader/ApsaraDownloader$1;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->setOnProgressListener(Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;)V

    .line 25
    return-void
.end method

.method static synthetic access$400(Lcom/aliyun/downloader/ApsaraDownloader;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/downloader/ApsaraDownloader;

    .line 13
    invoke-direct {p0}, Lcom/aliyun/downloader/ApsaraDownloader;->onCompletion()V

    return-void
.end method

.method static synthetic access$500(Lcom/aliyun/downloader/ApsaraDownloader;Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/downloader/ApsaraDownloader;
    .param p1, "x1"    # Lcom/aliyun/player/bean/ErrorInfo;

    .line 13
    invoke-direct {p0, p1}, Lcom/aliyun/downloader/ApsaraDownloader;->onError(Lcom/aliyun/player/bean/ErrorInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/aliyun/downloader/ApsaraDownloader;Lcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/downloader/ApsaraDownloader;
    .param p1, "x1"    # Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 13
    invoke-direct {p0, p1}, Lcom/aliyun/downloader/ApsaraDownloader;->onPrepared(Lcom/aliyun/player/nativeclass/MediaInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/aliyun/downloader/ApsaraDownloader;I)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/downloader/ApsaraDownloader;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/aliyun/downloader/ApsaraDownloader;->onDownloadingProgress(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/aliyun/downloader/ApsaraDownloader;I)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/downloader/ApsaraDownloader;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/aliyun/downloader/ApsaraDownloader;->onProcessingProgress(I)V

    return-void
.end method

.method private onCompletion()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterCompletionListener:Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterCompletionListener:Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;

    invoke-interface {v0}, Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;->onCompletion()V

    .line 110
    :cond_0
    return-void
.end method

.method private onDownloadingProgress(I)V
    .locals 1
    .param p1, "percent"    # I

    .line 203
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnProgressListener:Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnProgressListener:Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    invoke-interface {v0, p1}, Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;->onDownloadingProgress(I)V

    .line 206
    :cond_0
    return-void
.end method

.method private onError(Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 1
    .param p1, "errorInfo"    # Lcom/aliyun/player/bean/ErrorInfo;

    .line 137
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnErrorListener:Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnErrorListener:Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;

    invoke-interface {v0, p1}, Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;->onError(Lcom/aliyun/player/bean/ErrorInfo;)V

    .line 140
    :cond_0
    return-void
.end method

.method private onPrepared(Lcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 1
    .param p1, "mediaInfo"    # Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 166
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnPreparedListener:Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnPreparedListener:Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;

    invoke-interface {v0, p1}, Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;->onPrepared(Lcom/aliyun/player/nativeclass/MediaInfo;)V

    .line 169
    :cond_0
    return-void
.end method

.method private onProcessingProgress(I)V
    .locals 1
    .param p1, "percent"    # I

    .line 209
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnProgressListener:Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnProgressListener:Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    invoke-interface {v0, p1}, Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;->onProcessingProgress(I)V

    .line 212
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteFile()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->deleteFile()V

    .line 80
    return-void
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prepare(Lcom/aliyun/player/source/VidAuth;)V
    .locals 1
    .param p1, "vidAuth"    # Lcom/aliyun/player/source/VidAuth;

    .line 44
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->prepare(Lcom/aliyun/player/source/VidAuth;)V

    .line 45
    return-void
.end method

.method public prepare(Lcom/aliyun/player/source/VidSts;)V
    .locals 1
    .param p1, "vidSts"    # Lcom/aliyun/player/source/VidSts;

    .line 49
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->prepare(Lcom/aliyun/player/source/VidSts;)V

    .line 50
    return-void
.end method

.method public release()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->release()V

    .line 65
    return-void
.end method

.method public selectItem(I)V
    .locals 1
    .param p1, "index"    # I

    .line 34
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->selectItem(I)V

    .line 35
    return-void
.end method

.method public setDownloaderConfig(Lcom/aliyun/downloader/DownloaderConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/aliyun/downloader/DownloaderConfig;

    .line 84
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->setDownloaderConfig(Lcom/aliyun/downloader/DownloaderConfig;)V

    .line 85
    return-void
.end method

.method public setOnCompletionListener(Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;

    .line 114
    iput-object p1, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterCompletionListener:Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;

    .line 115
    return-void
.end method

.method public setOnErrorListener(Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;

    .line 144
    iput-object p1, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnErrorListener:Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;

    .line 145
    return-void
.end method

.method public setOnPreparedListener(Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;

    .line 173
    iput-object p1, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnPreparedListener:Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;

    .line 174
    return-void
.end method

.method public setOnProgressListener(Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    .line 216
    iput-object p1, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnProgressListener:Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    .line 217
    return-void
.end method

.method public setSaveDir(Ljava/lang/String;)V
    .locals 1
    .param p1, "absPath"    # Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->setSaveDir(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public start()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->start()V

    .line 55
    return-void
.end method

.method public stop()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->stop()V

    .line 60
    return-void
.end method

.method public updateSource(Lcom/aliyun/player/source/VidAuth;)V
    .locals 1
    .param p1, "vidAuth"    # Lcom/aliyun/player/source/VidAuth;

    .line 74
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->updateSource(Lcom/aliyun/player/source/VidAuth;)V

    .line 75
    return-void
.end method

.method public updateSource(Lcom/aliyun/player/source/VidSts;)V
    .locals 1
    .param p1, "vidSts"    # Lcom/aliyun/player/source/VidSts;

    .line 69
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->updateSource(Lcom/aliyun/player/source/VidSts;)V

    .line 70
    return-void
.end method
