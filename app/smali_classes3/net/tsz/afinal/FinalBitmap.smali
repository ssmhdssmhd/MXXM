.class public Lnet/tsz/afinal/FinalBitmap;
.super Ljava/lang/Object;
.source "FinalBitmap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/tsz/afinal/FinalBitmap$AsyncDrawable;,
        Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;,
        Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;,
        Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;
    }
.end annotation


# static fields
.field private static bitmapLoadAndDisplayExecutor:Ljava/util/concurrent/ExecutorService;

.field private static mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

.field private static mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;


# instance fields
.field private configMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

.field private mContext:Landroid/content/Context;

.field private mExitTasksEarly:Z

.field private mPauseWork:Z

.field private final mPauseWorkLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/tsz/afinal/FinalBitmap;->mExitTasksEarly:Z

    .line 53
    iput-boolean v0, p0, Lnet/tsz/afinal/FinalBitmap;->mPauseWork:Z

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mPauseWorkLock:Ljava/lang/Object;

    .line 496
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->configMap:Ljava/util/HashMap;

    .line 62
    iput-object p1, p0, Lnet/tsz/afinal/FinalBitmap;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    invoke-direct {v0, p0, p1}, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;-><init>(Lnet/tsz/afinal/FinalBitmap;Landroid/content/Context;)V

    iput-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    .line 65
    const-string v0, "afinalCache"

    invoke-static {p1, v0}, Lnet/tsz/afinal/bitmap/core/BitmapCommonUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalBitmap;->configDiskCachePath(Ljava/lang/String;)Lnet/tsz/afinal/FinalBitmap;

    .line 66
    new-instance v0, Lnet/tsz/afinal/bitmap/display/SimpleDisplayer;

    invoke-direct {v0}, Lnet/tsz/afinal/bitmap/display/SimpleDisplayer;-><init>()V

    invoke-virtual {p0, v0}, Lnet/tsz/afinal/FinalBitmap;->configDisplayer(Lnet/tsz/afinal/bitmap/display/Displayer;)Lnet/tsz/afinal/FinalBitmap;

    .line 67
    new-instance v0, Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader;

    invoke-direct {v0}, Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader;-><init>()V

    invoke-virtual {p0, v0}, Lnet/tsz/afinal/FinalBitmap;->configDownlader(Lnet/tsz/afinal/bitmap/download/Downloader;)Lnet/tsz/afinal/FinalBitmap;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lnet/tsz/afinal/FinalBitmap;)V
    .locals 0

    .line 519
    invoke-direct {p0}, Lnet/tsz/afinal/FinalBitmap;->clearCacheInternalInBackgroud()V

    return-void
.end method

.method static synthetic access$1(Lnet/tsz/afinal/FinalBitmap;)V
    .locals 0

    .line 510
    invoke-direct {p0}, Lnet/tsz/afinal/FinalBitmap;->initDiskCacheInternalInBackgroud()V

    return-void
.end method

.method static synthetic access$10(Lnet/tsz/afinal/FinalBitmap;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lnet/tsz/afinal/FinalBitmap;->mPauseWork:Z

    return p0
.end method

.method static synthetic access$11()Lnet/tsz/afinal/bitmap/core/BitmapCache;
    .locals 1

    .line 50
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    return-object v0
.end method

.method static synthetic access$12(Lnet/tsz/afinal/FinalBitmap;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lnet/tsz/afinal/FinalBitmap;->mExitTasksEarly:Z

    return p0
.end method

.method static synthetic access$13(Lnet/tsz/afinal/FinalBitmap;Ljava/lang/String;Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .locals 0

    .line 588
    invoke-direct {p0, p1, p2}, Lnet/tsz/afinal/FinalBitmap;->processBitmap(Ljava/lang/String;Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$14(Lnet/tsz/afinal/FinalBitmap;)Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;
    .locals 0

    .line 49
    iget-object p0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    return-object p0
.end method

.method static synthetic access$15(Landroid/widget/ImageView;)Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;
    .locals 0

    .line 707
    invoke-static {p0}, Lnet/tsz/afinal/FinalBitmap;->getBitmapTaskFromImageView(Landroid/widget/ImageView;)Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2(Lnet/tsz/afinal/FinalBitmap;)V
    .locals 0

    .line 529
    invoke-direct {p0}, Lnet/tsz/afinal/FinalBitmap;->clearMemoryCacheInBackgroud()V

    return-void
.end method

.method static synthetic access$3(Lnet/tsz/afinal/FinalBitmap;)V
    .locals 0

    .line 564
    invoke-direct {p0}, Lnet/tsz/afinal/FinalBitmap;->flushCacheInternalInBackgroud()V

    return-void
.end method

.method static synthetic access$4(Lnet/tsz/afinal/FinalBitmap;)V
    .locals 0

    .line 573
    invoke-direct {p0}, Lnet/tsz/afinal/FinalBitmap;->closeCacheInternalInBackgroud()V

    return-void
.end method

.method static synthetic access$5(Lnet/tsz/afinal/FinalBitmap;)V
    .locals 0

    .line 535
    invoke-direct {p0}, Lnet/tsz/afinal/FinalBitmap;->clearDiskCacheInBackgroud()V

    return-void
.end method

.method static synthetic access$6(Lnet/tsz/afinal/FinalBitmap;Ljava/lang/String;)V
    .locals 0

    .line 545
    invoke-direct {p0, p1}, Lnet/tsz/afinal/FinalBitmap;->clearCacheInBackgroud(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lnet/tsz/afinal/FinalBitmap;Ljava/lang/String;)V
    .locals 0

    .line 557
    invoke-direct {p0, p1}, Lnet/tsz/afinal/FinalBitmap;->clearMemoryCacheInBackgroud(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lnet/tsz/afinal/FinalBitmap;Ljava/lang/String;)V
    .locals 0

    .line 551
    invoke-direct {p0, p1}, Lnet/tsz/afinal/FinalBitmap;->clearDiskCacheInBackgroud(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lnet/tsz/afinal/FinalBitmap;)Ljava/lang/Object;
    .locals 0

    .line 54
    iget-object p0, p0, Lnet/tsz/afinal/FinalBitmap;->mPauseWorkLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static checkImageTask(Ljava/lang/Object;Landroid/widget/ImageView;)Z
    .locals 4
    .param p0, "data"    # Ljava/lang/Object;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .line 726
    invoke-static {p1}, Lnet/tsz/afinal/FinalBitmap;->getBitmapTaskFromImageView(Landroid/widget/ImageView;)Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;

    move-result-object v0

    .line 728
    .local v0, "bitmapWorkerTask":Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 729
    invoke-static {v0}, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->access$3(Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;)Ljava/lang/Object;

    move-result-object v2

    .line 730
    .local v2, "bitmapData":Ljava/lang/Object;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 731
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->cancel(Z)Z

    .line 737
    .end local v2    # "bitmapData":Ljava/lang/Object;
    :cond_2
    return v1
.end method

.method private clearCacheInBackgroud(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 546
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 547
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v0, p1}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->clearCache(Ljava/lang/String;)V

    .line 549
    :cond_0
    return-void
.end method

.method private clearCacheInternalInBackgroud()V
    .locals 1

    .line 520
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 521
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v0}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->clearCache()V

    .line 523
    :cond_0
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->bitmapProcess:Lnet/tsz/afinal/bitmap/core/BitmapProcess;

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->bitmapProcess:Lnet/tsz/afinal/bitmap/core/BitmapProcess;

    invoke-virtual {v0}, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->clearCacheInternal()V

    .line 526
    :cond_1
    return-void
.end method

.method private clearDiskCacheInBackgroud()V
    .locals 1

    .line 536
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 537
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v0}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->clearDiskCache()V

    .line 539
    :cond_0
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->bitmapProcess:Lnet/tsz/afinal/bitmap/core/BitmapProcess;

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->bitmapProcess:Lnet/tsz/afinal/bitmap/core/BitmapProcess;

    invoke-virtual {v0}, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->clearCacheInternal()V

    .line 542
    :cond_1
    return-void
.end method

.method private clearDiskCacheInBackgroud(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 552
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 553
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v0, p1}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->clearDiskCache(Ljava/lang/String;)V

    .line 555
    :cond_0
    return-void
.end method

.method private clearMemoryCacheInBackgroud()V
    .locals 1

    .line 530
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 531
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v0}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->clearMemoryCache()V

    .line 533
    :cond_0
    return-void
.end method

.method private clearMemoryCacheInBackgroud(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 558
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 559
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v0, p1}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->clearMemoryCache(Ljava/lang/String;)V

    .line 561
    :cond_0
    return-void
.end method

.method private closeCacheInternalInBackgroud()V
    .locals 1

    .line 574
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 575
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v0}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->close()V

    .line 576
    const/4 v0, 0x0

    sput-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    .line 578
    :cond_0
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->bitmapProcess:Lnet/tsz/afinal/bitmap/core/BitmapProcess;

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->bitmapProcess:Lnet/tsz/afinal/bitmap/core/BitmapProcess;

    invoke-virtual {v0}, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->clearCacheInternal()V

    .line 581
    :cond_1
    return-void
.end method

.method private configBitmapLoadThreadSize(I)Lnet/tsz/afinal/FinalBitmap;
    .locals 1
    .param p1, "size"    # I

    .line 362
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 363
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iput p1, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->poolSize:I

    .line 364
    :cond_0
    return-object p0
.end method

.method private configDiskCachePath(Ljava/lang/String;)Lnet/tsz/afinal/FinalBitmap;
    .locals 1
    .param p1, "strPath"    # Ljava/lang/String;

    .line 322
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iput-object p1, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->cachePath:Ljava/lang/String;

    .line 325
    :cond_0
    return-object p0
.end method

.method private configDiskCacheSize(I)Lnet/tsz/afinal/FinalBitmap;
    .locals 1
    .param p1, "size"    # I

    .line 351
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iput p1, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->diskCacheSize:I

    .line 352
    return-object p0
.end method

.method private configMemoryCachePercent(F)Lnet/tsz/afinal/FinalBitmap;
    .locals 1
    .param p1, "percent"    # F

    .line 342
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iput p1, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->memCacheSizePercent:F

    .line 343
    return-object p0
.end method

.method private configMemoryCacheSize(I)Lnet/tsz/afinal/FinalBitmap;
    .locals 1
    .param p1, "size"    # I

    .line 333
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iput p1, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->memCacheSize:I

    .line 334
    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lnet/tsz/afinal/FinalBitmap;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 76
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lnet/tsz/afinal/FinalBitmap;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/tsz/afinal/FinalBitmap;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    .line 78
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalBitmap;->init()Lnet/tsz/afinal/FinalBitmap;

    .line 80
    :cond_0
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lnet/tsz/afinal/FinalBitmap;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "diskCachePath"    # Ljava/lang/String;

    .line 90
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lnet/tsz/afinal/FinalBitmap;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/tsz/afinal/FinalBitmap;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    .line 92
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0, p1}, Lnet/tsz/afinal/FinalBitmap;->configDiskCachePath(Ljava/lang/String;)Lnet/tsz/afinal/FinalBitmap;

    .line 93
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalBitmap;->init()Lnet/tsz/afinal/FinalBitmap;

    .line 95
    :cond_0
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;F)Lnet/tsz/afinal/FinalBitmap;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "diskCachePath"    # Ljava/lang/String;
    .param p2, "memoryCacheSizePercent"    # F

    .line 108
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lnet/tsz/afinal/FinalBitmap;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/tsz/afinal/FinalBitmap;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    .line 110
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0, p1}, Lnet/tsz/afinal/FinalBitmap;->configDiskCachePath(Ljava/lang/String;)Lnet/tsz/afinal/FinalBitmap;

    .line 111
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0, p2}, Lnet/tsz/afinal/FinalBitmap;->configMemoryCachePercent(F)Lnet/tsz/afinal/FinalBitmap;

    .line 112
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalBitmap;->init()Lnet/tsz/afinal/FinalBitmap;

    .line 115
    :cond_0
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;FI)Lnet/tsz/afinal/FinalBitmap;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "diskCachePath"    # Ljava/lang/String;
    .param p2, "memoryCacheSizePercent"    # F
    .param p3, "threadSize"    # I

    .line 146
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lnet/tsz/afinal/FinalBitmap;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/tsz/afinal/FinalBitmap;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    .line 148
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0, p1}, Lnet/tsz/afinal/FinalBitmap;->configDiskCachePath(Ljava/lang/String;)Lnet/tsz/afinal/FinalBitmap;

    .line 149
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0, p3}, Lnet/tsz/afinal/FinalBitmap;->configBitmapLoadThreadSize(I)Lnet/tsz/afinal/FinalBitmap;

    .line 150
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0, p2}, Lnet/tsz/afinal/FinalBitmap;->configMemoryCachePercent(F)Lnet/tsz/afinal/FinalBitmap;

    .line 151
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalBitmap;->init()Lnet/tsz/afinal/FinalBitmap;

    .line 154
    :cond_0
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;FII)Lnet/tsz/afinal/FinalBitmap;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "diskCachePath"    # Ljava/lang/String;
    .param p2, "memoryCacheSizePercent"    # F
    .param p3, "diskCacheSize"    # I
    .param p4, "threadSize"    # I

    .line 187
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lnet/tsz/afinal/FinalBitmap;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/tsz/afinal/FinalBitmap;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    .line 189
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0, p1}, Lnet/tsz/afinal/FinalBitmap;->configDiskCachePath(Ljava/lang/String;)Lnet/tsz/afinal/FinalBitmap;

    .line 190
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0, p4}, Lnet/tsz/afinal/FinalBitmap;->configBitmapLoadThreadSize(I)Lnet/tsz/afinal/FinalBitmap;

    .line 191
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0, p2}, Lnet/tsz/afinal/FinalBitmap;->configMemoryCachePercent(F)Lnet/tsz/afinal/FinalBitmap;

    .line 192
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0, p3}, Lnet/tsz/afinal/FinalBitmap;->configDiskCacheSize(I)Lnet/tsz/afinal/FinalBitmap;

    .line 193
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalBitmap;->init()Lnet/tsz/afinal/FinalBitmap;

    .line 196
    :cond_0
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;I)Lnet/tsz/afinal/FinalBitmap;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "diskCachePath"    # Ljava/lang/String;
    .param p2, "memoryCacheSize"    # I

    .line 126
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lnet/tsz/afinal/FinalBitmap;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/tsz/afinal/FinalBitmap;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    .line 128
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0, p1}, Lnet/tsz/afinal/FinalBitmap;->configDiskCachePath(Ljava/lang/String;)Lnet/tsz/afinal/FinalBitmap;

    .line 129
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0, p2}, Lnet/tsz/afinal/FinalBitmap;->configMemoryCacheSize(I)Lnet/tsz/afinal/FinalBitmap;

    .line 130
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalBitmap;->init()Lnet/tsz/afinal/FinalBitmap;

    .line 133
    :cond_0
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;II)Lnet/tsz/afinal/FinalBitmap;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "diskCachePath"    # Ljava/lang/String;
    .param p2, "memoryCacheSize"    # I
    .param p3, "threadSize"    # I

    .line 166
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lnet/tsz/afinal/FinalBitmap;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/tsz/afinal/FinalBitmap;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    .line 168
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0, p1}, Lnet/tsz/afinal/FinalBitmap;->configDiskCachePath(Ljava/lang/String;)Lnet/tsz/afinal/FinalBitmap;

    .line 169
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0, p3}, Lnet/tsz/afinal/FinalBitmap;->configBitmapLoadThreadSize(I)Lnet/tsz/afinal/FinalBitmap;

    .line 170
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0, p2}, Lnet/tsz/afinal/FinalBitmap;->configMemoryCacheSize(I)Lnet/tsz/afinal/FinalBitmap;

    .line 171
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalBitmap;->init()Lnet/tsz/afinal/FinalBitmap;

    .line 174
    :cond_0
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;III)Lnet/tsz/afinal/FinalBitmap;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "diskCachePath"    # Ljava/lang/String;
    .param p2, "memoryCacheSize"    # I
    .param p3, "diskCacheSize"    # I
    .param p4, "threadSize"    # I

    .line 209
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lnet/tsz/afinal/FinalBitmap;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/tsz/afinal/FinalBitmap;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    .line 211
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0, p1}, Lnet/tsz/afinal/FinalBitmap;->configDiskCachePath(Ljava/lang/String;)Lnet/tsz/afinal/FinalBitmap;

    .line 212
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0, p4}, Lnet/tsz/afinal/FinalBitmap;->configBitmapLoadThreadSize(I)Lnet/tsz/afinal/FinalBitmap;

    .line 213
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0, p2}, Lnet/tsz/afinal/FinalBitmap;->configMemoryCacheSize(I)Lnet/tsz/afinal/FinalBitmap;

    .line 214
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0, p3}, Lnet/tsz/afinal/FinalBitmap;->configDiskCacheSize(I)Lnet/tsz/afinal/FinalBitmap;

    .line 215
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalBitmap;->init()Lnet/tsz/afinal/FinalBitmap;

    .line 218
    :cond_0
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mFinalBitmap:Lnet/tsz/afinal/FinalBitmap;

    return-object v0
.end method

.method private doDisplay(Landroid/widget/ImageView;Ljava/lang/String;Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;)V
    .locals 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "displayConfig"    # Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    .line 469
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 473
    :cond_0
    if-nez p3, :cond_1

    .line 474
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object p3, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    .line 476
    :cond_1
    const/4 v0, 0x0

    .line 478
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v1, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    if-eqz v1, :cond_2

    .line 479
    sget-object v1, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v1, p2}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 482
    :cond_2
    if-eqz v0, :cond_3

    .line 483
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 485
    :cond_3
    invoke-static {p2, p1}, Lnet/tsz/afinal/FinalBitmap;->checkImageTask(Ljava/lang/Object;Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 487
    new-instance v1, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;

    invoke-direct {v1, p0, p1, p3}, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;-><init>(Lnet/tsz/afinal/FinalBitmap;Landroid/widget/ImageView;Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;)V

    .line 489
    .local v1, "task":Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;
    new-instance v2, Lnet/tsz/afinal/FinalBitmap$AsyncDrawable;

    iget-object v3, p0, Lnet/tsz/afinal/FinalBitmap;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p3}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->getLoadingBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lnet/tsz/afinal/FinalBitmap$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;)V

    .line 490
    .local v2, "asyncDrawable":Lnet/tsz/afinal/FinalBitmap$AsyncDrawable;
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 492
    sget-object v3, Lnet/tsz/afinal/FinalBitmap;->bitmapLoadAndDisplayExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v3, v4}, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lnet/tsz/afinal/core/AsyncTask;

    .line 494
    .end local v1    # "task":Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;
    .end local v2    # "asyncDrawable":Lnet/tsz/afinal/FinalBitmap$AsyncDrawable;
    :cond_4
    :goto_0
    return-void

    .line 470
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    :goto_1
    return-void
.end method

.method private flushCacheInternalInBackgroud()V
    .locals 1

    .line 565
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 566
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v0}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->flush()V

    .line 568
    :cond_0
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->bitmapProcess:Lnet/tsz/afinal/bitmap/core/BitmapProcess;

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->bitmapProcess:Lnet/tsz/afinal/bitmap/core/BitmapProcess;

    invoke-virtual {v0}, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->flushCacheInternal()V

    .line 571
    :cond_1
    return-void
.end method

.method private static getBitmapTaskFromImageView(Landroid/widget/ImageView;)Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;
    .locals 3
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .line 708
    if-eqz p0, :cond_0

    .line 709
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 710
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lnet/tsz/afinal/FinalBitmap$AsyncDrawable;

    if-eqz v1, :cond_0

    .line 711
    move-object v1, v0

    check-cast v1, Lnet/tsz/afinal/FinalBitmap$AsyncDrawable;

    .line 712
    .local v1, "asyncDrawable":Lnet/tsz/afinal/FinalBitmap$AsyncDrawable;
    invoke-virtual {v1}, Lnet/tsz/afinal/FinalBitmap$AsyncDrawable;->getBitmapWorkerTask()Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;

    move-result-object v2

    return-object v2

    .line 715
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "asyncDrawable":Lnet/tsz/afinal/FinalBitmap$AsyncDrawable;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDisplayConfig()Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;
    .locals 2

    .line 500
    new-instance v0, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-direct {v0}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;-><init>()V

    .line 501
    .local v0, "config":Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v1, v1, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setAnimation(Landroid/view/animation/Animation;)V

    .line 502
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v1, v1, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->getAnimationType()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setAnimationType(I)V

    .line 503
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v1, v1, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->getBitmapHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapHeight(I)V

    .line 504
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v1, v1, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->getBitmapWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapWidth(I)V

    .line 505
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v1, v1, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->getLoadfailBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setLoadfailBitmap(Landroid/graphics/Bitmap;)V

    .line 506
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v1, v1, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->getLoadingBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 507
    return-object v0
.end method

.method private init()Lnet/tsz/afinal/FinalBitmap;
    .locals 6

    .line 373
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    invoke-virtual {v0}, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->init()V

    .line 375
    new-instance v0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v1, v1, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->cachePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, "imageCacheParams":Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget v1, v1, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->memCacheSizePercent:F

    float-to-double v1, v1

    const-wide v3, 0x3fa999999999999aL    # 0.05

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget v1, v1, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->memCacheSizePercent:F

    float-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    .line 377
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget v2, v2, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->memCacheSizePercent:F

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    goto :goto_0

    .line 379
    :cond_0
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget v1, v1, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->memCacheSize:I

    const/high16 v2, 0x200000

    if-le v1, v2, :cond_1

    .line 380
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget v1, v1, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->memCacheSize:I

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->setMemCacheSize(I)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->mContext:Landroid/content/Context;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 386
    :goto_0
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget v1, v1, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->diskCacheSize:I

    const/high16 v2, 0x500000

    if-le v1, v2, :cond_2

    .line 387
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget v1, v1, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->diskCacheSize:I

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->setDiskCacheSize(I)V

    .line 388
    :cond_2
    new-instance v1, Lnet/tsz/afinal/bitmap/core/BitmapCache;

    invoke-direct {v1, v0}, Lnet/tsz/afinal/bitmap/core/BitmapCache;-><init>(Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;)V

    sput-object v1, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    .line 390
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget v1, v1, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->poolSize:I

    new-instance v2, Lnet/tsz/afinal/FinalBitmap$1;

    invoke-direct {v2, p0}, Lnet/tsz/afinal/FinalBitmap$1;-><init>(Lnet/tsz/afinal/FinalBitmap;)V

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lnet/tsz/afinal/FinalBitmap;->bitmapLoadAndDisplayExecutor:Ljava/util/concurrent/ExecutorService;

    .line 399
    new-instance v1, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;-><init>(Lnet/tsz/afinal/FinalBitmap;Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;->execute([Ljava/lang/Object;)Lnet/tsz/afinal/core/AsyncTask;

    .line 401
    return-object p0
.end method

.method private initDiskCacheInternalInBackgroud()V
    .locals 1

    .line 511
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 512
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v0}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->initDiskCache()V

    .line 514
    :cond_0
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->bitmapProcess:Lnet/tsz/afinal/bitmap/core/BitmapProcess;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->bitmapProcess:Lnet/tsz/afinal/bitmap/core/BitmapProcess;

    invoke-virtual {v0}, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->initHttpDiskCache()V

    .line 517
    :cond_1
    return-void
.end method

.method private processBitmap(Ljava/lang/String;Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "config"    # Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    .line 589
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->bitmapProcess:Lnet/tsz/afinal/bitmap/core/BitmapProcess;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->bitmapProcess:Lnet/tsz/afinal/bitmap/core/BitmapProcess;

    invoke-virtual {v0, p1, p2}, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->processBitmap(Ljava/lang/String;Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 592
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public clearCache()V
    .locals 4

    .line 625
    new-instance v0, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;-><init>(Lnet/tsz/afinal/FinalBitmap;Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;->execute([Ljava/lang/Object;)Lnet/tsz/afinal/core/AsyncTask;

    .line 626
    return-void
.end method

.method public clearCache(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 633
    new-instance v0, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;-><init>(Lnet/tsz/afinal/FinalBitmap;Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;)V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;->execute([Ljava/lang/Object;)Lnet/tsz/afinal/core/AsyncTask;

    .line 634
    return-void
.end method

.method public clearDiskCache()V
    .locals 4

    .line 656
    new-instance v0, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;-><init>(Lnet/tsz/afinal/FinalBitmap;Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;)V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;->execute([Ljava/lang/Object;)Lnet/tsz/afinal/core/AsyncTask;

    .line 657
    return-void
.end method

.method public clearDiskCache(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 664
    new-instance v0, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;-><init>(Lnet/tsz/afinal/FinalBitmap;Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;)V

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;->execute([Ljava/lang/Object;)Lnet/tsz/afinal/core/AsyncTask;

    .line 665
    return-void
.end method

.method public clearMemoryCache()V
    .locals 4

    .line 640
    new-instance v0, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;-><init>(Lnet/tsz/afinal/FinalBitmap;Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;)V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;->execute([Ljava/lang/Object;)Lnet/tsz/afinal/core/AsyncTask;

    .line 641
    return-void
.end method

.method public clearMemoryCache(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 648
    new-instance v0, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;-><init>(Lnet/tsz/afinal/FinalBitmap;Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;)V

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;->execute([Ljava/lang/Object;)Lnet/tsz/afinal/core/AsyncTask;

    .line 649
    return-void
.end method

.method public closeCache()V
    .locals 4

    .line 680
    new-instance v0, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;-><init>(Lnet/tsz/afinal/FinalBitmap;Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;)V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;->execute([Ljava/lang/Object;)Lnet/tsz/afinal/core/AsyncTask;

    .line 681
    return-void
.end method

.method public configBitmapMaxHeight(I)Lnet/tsz/afinal/FinalBitmap;
    .locals 1
    .param p1, "bitmapHeight"    # I

    .line 264
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapHeight(I)V

    .line 265
    return-object p0
.end method

.method public configBitmapMaxWidth(I)Lnet/tsz/afinal/FinalBitmap;
    .locals 1
    .param p1, "bitmapWidth"    # I

    .line 273
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapWidth(I)V

    .line 274
    return-object p0
.end method

.method public configCalculateBitmapSizeWhenDecode(Z)Lnet/tsz/afinal/FinalBitmap;
    .locals 1
    .param p1, "neverCalculate"    # Z

    .line 311
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->bitmapProcess:Lnet/tsz/afinal/bitmap/core/BitmapProcess;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->bitmapProcess:Lnet/tsz/afinal/bitmap/core/BitmapProcess;

    invoke-virtual {v0, p1}, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->configCalculateBitmap(Z)V

    .line 313
    :cond_0
    return-object p0
.end method

.method public configCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 1
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .line 303
    sget-object v0, Lnet/tsz/afinal/FinalBitmap;->mImageCache:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v0, p1}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)V

    .line 304
    return-void
.end method

.method public configDisplayer(Lnet/tsz/afinal/bitmap/display/Displayer;)Lnet/tsz/afinal/FinalBitmap;
    .locals 1
    .param p1, "displayer"    # Lnet/tsz/afinal/bitmap/display/Displayer;

    .line 293
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iput-object p1, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->displayer:Lnet/tsz/afinal/bitmap/display/Displayer;

    .line 294
    return-object p0
.end method

.method public configDownlader(Lnet/tsz/afinal/bitmap/download/Downloader;)Lnet/tsz/afinal/FinalBitmap;
    .locals 1
    .param p1, "downlader"    # Lnet/tsz/afinal/bitmap/download/Downloader;

    .line 283
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iput-object p1, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->downloader:Lnet/tsz/afinal/bitmap/download/Downloader;

    .line 284
    return-object p0
.end method

.method public configLoadfailImage(I)Lnet/tsz/afinal/FinalBitmap;
    .locals 2
    .param p1, "resId"    # I

    .line 254
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setLoadfailBitmap(Landroid/graphics/Bitmap;)V

    .line 255
    return-object p0
.end method

.method public configLoadfailImage(Landroid/graphics/Bitmap;)Lnet/tsz/afinal/FinalBitmap;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 245
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setLoadfailBitmap(Landroid/graphics/Bitmap;)V

    .line 246
    return-object p0
.end method

.method public configLoadingImage(I)Lnet/tsz/afinal/FinalBitmap;
    .locals 2
    .param p1, "resId"    # I

    .line 236
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    return-object p0
.end method

.method public configLoadingImage(Landroid/graphics/Bitmap;)Lnet/tsz/afinal/FinalBitmap;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 227
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mConfig:Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    return-object p0
.end method

.method public display(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;

    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/tsz/afinal/FinalBitmap;->doDisplay(Landroid/widget/ImageView;Ljava/lang/String;Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;)V

    .line 408
    return-void
.end method

.method public display(Landroid/widget/ImageView;Ljava/lang/String;II)V
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "imageWidth"    # I
    .param p4, "imageHeight"    # I

    .line 413
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->configMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    .line 414
    .local v0, "displayConfig":Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;
    if-nez v0, :cond_0

    .line 415
    invoke-direct {p0}, Lnet/tsz/afinal/FinalBitmap;->getDisplayConfig()Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    move-result-object v0

    .line 416
    invoke-virtual {v0, p4}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapHeight(I)V

    .line 417
    invoke-virtual {v0, p3}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapWidth(I)V

    .line 418
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->configMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lnet/tsz/afinal/FinalBitmap;->doDisplay(Landroid/widget/ImageView;Ljava/lang/String;Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;)V

    .line 422
    return-void
.end method

.method public display(Landroid/widget/ImageView;Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "imageWidth"    # I
    .param p4, "imageHeight"    # I
    .param p5, "loadingBitmap"    # Landroid/graphics/Bitmap;
    .param p6, "laodfailBitmap"    # Landroid/graphics/Bitmap;

    .line 449
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->configMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    .line 450
    .local v0, "displayConfig":Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;
    if-nez v0, :cond_0

    .line 451
    invoke-direct {p0}, Lnet/tsz/afinal/FinalBitmap;->getDisplayConfig()Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    move-result-object v0

    .line 452
    invoke-virtual {v0, p4}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapHeight(I)V

    .line 453
    invoke-virtual {v0, p3}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapWidth(I)V

    .line 454
    invoke-virtual {v0, p5}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 455
    invoke-virtual {v0, p6}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setLoadfailBitmap(Landroid/graphics/Bitmap;)V

    .line 456
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->configMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lnet/tsz/afinal/FinalBitmap;->doDisplay(Landroid/widget/ImageView;Ljava/lang/String;Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;)V

    .line 460
    return-void
.end method

.method public display(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "loadingBitmap"    # Landroid/graphics/Bitmap;

    .line 425
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->configMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    .line 426
    .local v0, "displayConfig":Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;
    if-nez v0, :cond_0

    .line 427
    invoke-direct {p0}, Lnet/tsz/afinal/FinalBitmap;->getDisplayConfig()Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    move-result-object v0

    .line 428
    invoke-virtual {v0, p3}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 429
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->configMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lnet/tsz/afinal/FinalBitmap;->doDisplay(Landroid/widget/ImageView;Ljava/lang/String;Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;)V

    .line 433
    return-void
.end method

.method public display(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "loadingBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "laodfailBitmap"    # Landroid/graphics/Bitmap;

    .line 437
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->configMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    .line 438
    .local v0, "displayConfig":Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;
    if-nez v0, :cond_0

    .line 439
    invoke-direct {p0}, Lnet/tsz/afinal/FinalBitmap;->getDisplayConfig()Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    move-result-object v0

    .line 440
    invoke-virtual {v0, p3}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 441
    invoke-virtual {v0, p4}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setLoadfailBitmap(Landroid/graphics/Bitmap;)V

    .line 442
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->configMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lnet/tsz/afinal/FinalBitmap;->doDisplay(Landroid/widget/ImageView;Ljava/lang/String;Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;)V

    .line 446
    return-void
.end method

.method public display(Landroid/widget/ImageView;Ljava/lang/String;Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "config"    # Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    .line 464
    invoke-direct {p0, p1, p2, p3}, Lnet/tsz/afinal/FinalBitmap;->doDisplay(Landroid/widget/ImageView;Ljava/lang/String;Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;)V

    .line 465
    return-void
.end method

.method public exitTasksEarly(Z)V
    .locals 1
    .param p1, "exitTasksEarly"    # Z

    .line 688
    iput-boolean p1, p0, Lnet/tsz/afinal/FinalBitmap;->mExitTasksEarly:Z

    .line 689
    if-eqz p1, :cond_0

    .line 690
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/tsz/afinal/FinalBitmap;->pauseWork(Z)V

    .line 691
    :cond_0
    return-void
.end method

.method public flushCache()V
    .locals 4

    .line 673
    new-instance v0, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;-><init>(Lnet/tsz/afinal/FinalBitmap;Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lnet/tsz/afinal/FinalBitmap$CacheExecutecTask;->execute([Ljava/lang/Object;)Lnet/tsz/afinal/core/AsyncTask;

    .line 674
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 618
    invoke-virtual {p0}, Lnet/tsz/afinal/FinalBitmap;->closeCache()V

    .line 619
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 610
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/tsz/afinal/FinalBitmap;->setExitTasksEarly(Z)V

    .line 611
    invoke-virtual {p0}, Lnet/tsz/afinal/FinalBitmap;->flushCache()V

    .line 612
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 603
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/tsz/afinal/FinalBitmap;->setExitTasksEarly(Z)V

    .line 604
    return-void
.end method

.method public pauseWork(Z)V
    .locals 2
    .param p1, "pauseWork"    # Z

    .line 698
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap;->mPauseWorkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_0
    iput-boolean p1, p0, Lnet/tsz/afinal/FinalBitmap;->mPauseWork:Z

    .line 700
    iget-boolean v1, p0, Lnet/tsz/afinal/FinalBitmap;->mPauseWork:Z

    if-nez v1, :cond_0

    .line 701
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap;->mPauseWorkLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 698
    :cond_0
    monitor-exit v0

    .line 704
    return-void

    .line 698
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setExitTasksEarly(Z)V
    .locals 0
    .param p1, "exitTasksEarly"    # Z

    .line 596
    iput-boolean p1, p0, Lnet/tsz/afinal/FinalBitmap;->mExitTasksEarly:Z

    .line 597
    return-void
.end method
