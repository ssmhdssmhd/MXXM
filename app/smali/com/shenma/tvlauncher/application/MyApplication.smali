.class public final Lcom/shenma/tvlauncher/application/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/application/MyApplication$Config;
    }
.end annotation


# static fields
.field public static PUBLIC_DIR:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MyApplication"

.field private static cacheDir:Ljava/io/File;

.field public static context:Landroid/content/Context;

.field protected static technology:Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private onPlay:Ljava/lang/String;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-string v0, ""

    sput-object v0, Lcom/shenma/tvlauncher/application/MyApplication;->technology:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ShenMa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/application/MyApplication;->PUBLIC_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 54
    new-instance v0, Lcom/shenma/tvlauncher/application/MyApplication$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/application/MyApplication$1;-><init>(Lcom/shenma/tvlauncher/application/MyApplication;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/application/MyApplication;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    new-instance v0, Lcom/shenma/tvlauncher/application/MyApplication$2;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/application/MyApplication$2;-><init>(Lcom/shenma/tvlauncher/application/MyApplication;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/application/MyApplication;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 168
    sget-object v0, Lcom/shenma/tvlauncher/application/MyApplication;->context:Landroid/content/Context;

    return-object v0
.end method

.method private makedir()V
    .locals 5

    .line 213
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shenma/tvlauncher/application/MyApplication;->PUBLIC_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "zhouchuan"

    if-nez v1, :cond_1

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    .line 217
    .local v1, "flag":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application class. \u521b\u5efaShenMa\u6587\u4ef6\u5939"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    const-string v4, "\u6210\u529f"

    goto :goto_0

    :cond_0
    const-string v4, "\u5931\u8d25"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/application/MyApplication;->PUBLIC_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .end local v1    # "flag":Z
    goto :goto_1

    .line 220
    :cond_1
    sget-object v1, Lcom/shenma/tvlauncher/application/MyApplication;->PUBLIC_DIR:Ljava/lang/String;

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->deleteAppApks(Ljava/lang/String;)V

    .line 221
    const-string v1, "Application class. ShenMa\u6587\u4ef6\u5939\u5b58\u5728"

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_1
    return-void
.end method


# virtual methods
.method protected _finish()V
    .locals 2

    .line 266
    const-string v0, "_finish() start"

    const-string v1, "MyApplication"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v0, "_finish() end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method public getOnPlay()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/shenma/tvlauncher/application/MyApplication;->onPlay:Ljava/lang/String;

    return-object v0
.end method

.method public getTechnology()Ljava/lang/String;
    .locals 2

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "mm":Landroid/net/wifi/WifiManager;
    sget-object v1, Lcom/shenma/tvlauncher/application/MyApplication;->technology:Ljava/lang/String;

    return-object v1
.end method

.method protected init()V
    .locals 2

    .line 249
    const-string v0, "MyApplication"

    const-string v1, "init() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {p0}, Lcom/shenma/tvlauncher/application/MyVolley;->init(Landroid/content/Context;)V

    .line 259
    return-void
.end method

.method public initImageLoader(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 176
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    .line 178
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/utils/AuthImageDownloader;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/utils/AuthImageDownloader;-><init>(Landroid/content/Context;)V

    .line 179
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageDownloader(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache;

    const/high16 v2, 0x400000

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache;-><init>(I)V

    .line 181
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;

    sget-object v2, Lcom/shenma/tvlauncher/application/MyApplication;->cacheDir:Ljava/io/File;

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;-><init>(Ljava/io/File;)V

    .line 182
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache(Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    .line 183
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 184
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeDebugLogs()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 188
    .local v0, "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 189
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 195
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 196
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/application/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/application/MyApplication;->context:Landroid/content/Context;

    .line 197
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;)Ljava/lang/String;

    .line 198
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 199
    .local v0, "technologyfilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/shenma/tvlauncher/application/MyApplication;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/application/MyApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/shenma/tvlauncher/application/MyApplication;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/shenma/tvlauncher/application/MyApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/application/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "UniversalImageLoader/Cache"

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getOwnCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    sput-object v2, Lcom/shenma/tvlauncher/application/MyApplication;->cacheDir:Ljava/io/File;

    .line 206
    invoke-direct {p0}, Lcom/shenma/tvlauncher/application/MyApplication;->makedir()V

    .line 207
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/application/MyApplication;->init()V

    .line 208
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/application/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/shenma/tvlauncher/application/MyApplication;->initImageLoader(Landroid/content/Context;)V

    .line 210
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 276
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 277
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 228
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 229
    return-void
.end method

.method public setOnPlay(Ljava/lang/String;)V
    .locals 0
    .param p1, "onPlay"    # Ljava/lang/String;

    .line 236
    iput-object p1, p0, Lcom/shenma/tvlauncher/application/MyApplication;->onPlay:Ljava/lang/String;

    .line 237
    return-void
.end method
