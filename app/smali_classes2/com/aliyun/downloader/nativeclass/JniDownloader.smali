.class public Lcom/aliyun/downloader/nativeclass/JniDownloader;
.super Ljava/lang/Object;
.source "JniDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/downloader/nativeclass/JniDownloader$MainHandler;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field private static sConvertURLCallback:Lcom/aliyun/downloader/AliMediaDownloader$ConvertURLCallback;


# instance fields
.field private mCurrentThreadHandler:Lcom/aliyun/downloader/nativeclass/JniDownloader$MainHandler;

.field private mNativeContext:J

.field private mOnCompletionListener:Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;

.field private mOnErrorListener:Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;

.field private mOnPreparedListener:Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;

.field private mOnProgressListener:Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->TAG:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    .line 30
    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadDownloader()V

    .line 180
    const/4 v0, 0x0

    sput-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->sConvertURLCallback:Lcom/aliyun/downloader/AliMediaDownloader$ConvertURLCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->mOnPreparedListener:Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;

    .line 192
    iput-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->mOnErrorListener:Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;

    .line 199
    iput-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->mOnProgressListener:Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    .line 206
    iput-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->mOnCompletionListener:Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;

    .line 62
    new-instance v0, Lcom/aliyun/downloader/nativeclass/JniDownloader$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aliyun/downloader/nativeclass/JniDownloader$MainHandler;-><init>(Lcom/aliyun/downloader/nativeclass/JniDownloader;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->mCurrentThreadHandler:Lcom/aliyun/downloader/nativeclass/JniDownloader$MainHandler;

    .line 64
    invoke-virtual {p0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->nConstruct()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/downloader/nativeclass/JniDownloader;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/downloader/nativeclass/JniDownloader;
    .param p1, "x1"    # Landroid/os/Message;

    .line 23
    invoke-direct {p0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/aliyun/downloader/nativeclass/JniDownloader;)Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/downloader/nativeclass/JniDownloader;

    .line 23
    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->mOnPreparedListener:Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aliyun/downloader/nativeclass/JniDownloader;)Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/downloader/nativeclass/JniDownloader;

    .line 23
    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->mOnErrorListener:Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/aliyun/downloader/nativeclass/JniDownloader;)Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/downloader/nativeclass/JniDownloader;

    .line 23
    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->mOnProgressListener:Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/aliyun/downloader/nativeclass/JniDownloader;)Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/downloader/nativeclass/JniDownloader;

    .line 23
    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->mOnCompletionListener:Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;

    return-object v0
.end method

.method public static deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "saveDir"    # Ljava/lang/String;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 136
    invoke-static {p0, p1, p2, p3}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->sDeleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 59
    return-void
.end method

.method protected static nConvertURLCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "srcURL"    # Ljava/lang/String;
    .param p1, "srcFormat"    # Ljava/lang/String;

    .line 289
    sget-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->sConvertURLCallback:Lcom/aliyun/downloader/AliMediaDownloader$ConvertURLCallback;

    if-eqz v0, :cond_0

    .line 290
    sget-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->sConvertURLCallback:Lcom/aliyun/downloader/AliMediaDownloader$ConvertURLCallback;

    invoke-interface {v0, p0, p1}, Lcom/aliyun/downloader/AliMediaDownloader$ConvertURLCallback;->convertURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 292
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private onCompletion()V
    .locals 2

    .line 276
    sget-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->TAG:Ljava/lang/String;

    const-string v1, "onCompletion() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->mCurrentThreadHandler:Lcom/aliyun/downloader/nativeclass/JniDownloader$MainHandler;

    new-instance v1, Lcom/aliyun/downloader/nativeclass/JniDownloader$4;

    invoke-direct {v1, p0}, Lcom/aliyun/downloader/nativeclass/JniDownloader$4;-><init>(Lcom/aliyun/downloader/nativeclass/JniDownloader;)V

    invoke-virtual {v0, v1}, Lcom/aliyun/downloader/nativeclass/JniDownloader$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 285
    return-void
.end method

.method private onError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "ext"    # Ljava/lang/String;

    .line 233
    sget-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError() .. code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , ext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/aliyun/player/bean/ErrorCode;->ERROR_UNKNOWN:Lcom/aliyun/player/bean/ErrorCode;

    .line 236
    .local v0, "errorCode":Lcom/aliyun/player/bean/ErrorCode;
    invoke-static {}, Lcom/aliyun/player/bean/ErrorCode;->values()[Lcom/aliyun/player/bean/ErrorCode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 237
    .local v4, "item":Lcom/aliyun/player/bean/ErrorCode;
    invoke-virtual {v4}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 238
    move-object v0, v4

    .line 239
    goto :goto_1

    .line 236
    .end local v4    # "item":Lcom/aliyun/player/bean/ErrorCode;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    :cond_1
    :goto_1
    move-object v1, v0

    .line 245
    .local v1, "finalErrorCode":Lcom/aliyun/player/bean/ErrorCode;
    iget-object v2, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->mCurrentThreadHandler:Lcom/aliyun/downloader/nativeclass/JniDownloader$MainHandler;

    new-instance v3, Lcom/aliyun/downloader/nativeclass/JniDownloader$2;

    invoke-direct {v3, p0, v1, p2, p3}, Lcom/aliyun/downloader/nativeclass/JniDownloader$2;-><init>(Lcom/aliyun/downloader/nativeclass/JniDownloader;Lcom/aliyun/player/bean/ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/aliyun/downloader/nativeclass/JniDownloader$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 257
    return-void
.end method

.method private onPrepared(Ljava/lang/Object;)V
    .locals 3
    .param p1, "mediaInfo"    # Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared(mediaInfo) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    if-nez p1, :cond_0

    .line 218
    return-void

    .line 221
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 222
    .local v0, "info":Lcom/aliyun/player/nativeclass/MediaInfo;
    iget-object v1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->mCurrentThreadHandler:Lcom/aliyun/downloader/nativeclass/JniDownloader$MainHandler;

    new-instance v2, Lcom/aliyun/downloader/nativeclass/JniDownloader$1;

    invoke-direct {v2, p0, v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader$1;-><init>(Lcom/aliyun/downloader/nativeclass/JniDownloader;Lcom/aliyun/player/nativeclass/MediaInfo;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/downloader/nativeclass/JniDownloader$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method

.method private onProgress(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "percent"    # I

    .line 260
    sget-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress() .. type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->mCurrentThreadHandler:Lcom/aliyun/downloader/nativeclass/JniDownloader$MainHandler;

    new-instance v1, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;-><init>(Lcom/aliyun/downloader/nativeclass/JniDownloader;II)V

    invoke-virtual {v0, v1}, Lcom/aliyun/downloader/nativeclass/JniDownloader$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 273
    return-void
.end method

.method static native sDeleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static setConvertURLCallback(Lcom/aliyun/downloader/AliMediaDownloader$ConvertURLCallback;)V
    .locals 0
    .param p0, "callback"    # Lcom/aliyun/downloader/AliMediaDownloader$ConvertURLCallback;

    .line 183
    sput-object p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->sConvertURLCallback:Lcom/aliyun/downloader/AliMediaDownloader$ConvertURLCallback;

    .line 184
    return-void
.end method


# virtual methods
.method public deleteFile()V
    .locals 2

    .line 130
    sget-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->TAG:Ljava/lang/String;

    const-string v1, "deleteFile()"

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->nDeleteFile()V

    .line 132
    return-void
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 4

    .line 140
    invoke-virtual {p0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->nGetFilePath()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "filePath":Ljava/lang/String;
    sget-object v1, Lcom/aliyun/downloader/nativeclass/JniDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilePath() , return = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-object v0
.end method

.method protected getNativeContext()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->mNativeContext:J

    return-wide v0
.end method

.method native nConstruct()V
.end method

.method native nDeleteFile()V
.end method

.method native nGetFilePath()Ljava/lang/String;
.end method

.method native nPrepare(Lcom/aliyun/player/source/VidAuth;)V
.end method

.method native nPrepare(Lcom/aliyun/player/source/VidSts;)V
.end method

.method native nRelease()V
.end method

.method native nSelectItem(I)V
.end method

.method native nSetConnectivityManager(Ljava/lang/Object;)V
.end method

.method native nSetDownloaderConfig(Ljava/lang/Object;)V
.end method

.method native nSetSaveDir(Ljava/lang/String;)V
.end method

.method native nStart()V
.end method

.method native nStop()V
.end method

.method native nUpdateSource(Lcom/aliyun/player/source/VidAuth;)V
.end method

.method native nUpdateSource(Lcom/aliyun/player/source/VidSts;)V
.end method

.method public prepare(Lcom/aliyun/player/source/VidAuth;)V
    .locals 3
    .param p1, "vidAuth"    # Lcom/aliyun/player/source/VidAuth;

    .line 95
    sget-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare(vidAuth) vid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aliyun/player/source/VidAuth;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->nPrepare(Lcom/aliyun/player/source/VidAuth;)V

    .line 97
    return-void
.end method

.method public prepare(Lcom/aliyun/player/source/VidSts;)V
    .locals 3
    .param p1, "vidSts"    # Lcom/aliyun/player/source/VidSts;

    .line 90
    sget-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare(vidSts) vid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aliyun/player/source/VidSts;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->nPrepare(Lcom/aliyun/player/source/VidSts;)V

    .line 92
    return-void
.end method

.method public release()V
    .locals 2

    .line 125
    sget-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->TAG:Ljava/lang/String;

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->nRelease()V

    .line 127
    return-void
.end method

.method public selectItem(I)V
    .locals 3
    .param p1, "index"    # I

    .line 100
    sget-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectItem(index) index :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->nSelectItem(I)V

    .line 102
    return-void
.end method

.method public setDownloaderConfig(Lcom/aliyun/downloader/DownloaderConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/aliyun/downloader/DownloaderConfig;

    .line 146
    sget-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->TAG:Ljava/lang/String;

    const-string v1, "setDownloaderConfig() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->nSetDownloaderConfig(Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method protected setNativeContext(J)V
    .locals 3
    .param p1, "l"    # J

    .line 79
    sget-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNativeContext "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iput-wide p1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->mNativeContext:J

    .line 81
    return-void
.end method

.method public setOnCompletionListener(Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;

    .line 209
    iput-object p1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->mOnCompletionListener:Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;

    .line 210
    return-void
.end method

.method public setOnErrorListener(Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;

    .line 195
    iput-object p1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->mOnErrorListener:Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;

    .line 196
    return-void
.end method

.method public setOnPreparedListener(Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;

    .line 189
    iput-object p1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->mOnPreparedListener:Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;

    .line 190
    return-void
.end method

.method public setOnProgressListener(Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    .line 202
    iput-object p1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->mOnProgressListener:Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    .line 203
    return-void
.end method

.method public setSaveDir(Ljava/lang/String;)V
    .locals 3
    .param p1, "absPath"    # Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSaveDir() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->nSetSaveDir(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public start()V
    .locals 2

    .line 115
    sget-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->nStart()V

    .line 117
    return-void
.end method

.method public stop()V
    .locals 2

    .line 120
    sget-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->nStop()V

    .line 122
    return-void
.end method

.method public updateSource(Lcom/aliyun/player/source/VidAuth;)V
    .locals 3
    .param p1, "vidAuth"    # Lcom/aliyun/player/source/VidAuth;

    .line 110
    sget-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSource(vidAuth) vid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aliyun/player/source/VidAuth;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->nUpdateSource(Lcom/aliyun/player/source/VidAuth;)V

    .line 112
    return-void
.end method

.method public updateSource(Lcom/aliyun/player/source/VidSts;)V
    .locals 3
    .param p1, "vidSts"    # Lcom/aliyun/player/source/VidSts;

    .line 105
    sget-object v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSource(vidsts) vid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aliyun/player/source/VidSts;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->nUpdateSource(Lcom/aliyun/player/source/VidSts;)V

    .line 107
    return-void
.end method
