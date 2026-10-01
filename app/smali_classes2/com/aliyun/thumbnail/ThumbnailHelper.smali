.class public Lcom/aliyun/thumbnail/ThumbnailHelper;
.super Ljava/lang/Object;
.source "ThumbnailHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;,
        Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;,
        Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;,
        Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;,
        Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x1388

.field private static final MSG_KEY_BITMAP_FAIL:I = 0x2

.field private static final MSG_KEY_BITMAP_SUCCESS:I = 0x3

.field private static final MSG_KEY_PREPARE_FAIL:I = 0x0

.field private static final MSG_KEY_PREPARE_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile hasPrepared:Z

.field private final lock:Ljava/lang/Object;

.field private mOnPrepareListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;

.field private mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

.field private mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

.field private mThumbnailInfoArray:[Lcom/aliyun/thumbnail/ThumbnailInfo;

.field private mUrl:Ljava/lang/String;

.field private mUrlDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/thumbnail/ThumbnailHelper;->TAG:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->lock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mUrlDataMap:Ljava/util/Map;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->hasPrepared:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnPrepareListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;

    .line 73
    iput-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

    .line 86
    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mUrl:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    invoke-direct {v0, p0}, Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;-><init>(Lcom/aliyun/thumbnail/ThumbnailHelper;)V

    iput-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 48
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 48
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 48
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mUrlDataMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/thumbnail/ThumbnailHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/aliyun/thumbnail/ThumbnailHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/net/URLConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/thumbnail/ThumbnailHelper;
    .param p1, "x1"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getResponseCode(Ljava/net/URLConnection;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;

    .line 48
    invoke-static {p0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->readStream(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/thumbnail/ThumbnailHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getThumbnailInfos(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/aliyun/thumbnail/ThumbnailHelper;)[Lcom/aliyun/thumbnail/ThumbnailInfo;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 48
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mThumbnailInfoArray:[Lcom/aliyun/thumbnail/ThumbnailInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/aliyun/thumbnail/ThumbnailHelper;[Lcom/aliyun/thumbnail/ThumbnailInfo;)[Lcom/aliyun/thumbnail/ThumbnailInfo;
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/thumbnail/ThumbnailHelper;
    .param p1, "x1"    # [Lcom/aliyun/thumbnail/ThumbnailInfo;

    .line 48
    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mThumbnailInfoArray:[Lcom/aliyun/thumbnail/ThumbnailInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/aliyun/thumbnail/ThumbnailHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 48
    invoke-direct {p0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->sendPrepareSuccessMsg()V

    return-void
.end method

.method static synthetic access$500(Lcom/aliyun/thumbnail/ThumbnailHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 48
    invoke-direct {p0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->sendPrepareFailMsg()V

    return-void
.end method

.method static synthetic access$600(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailInfo;[B)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/thumbnail/ThumbnailHelper;
    .param p1, "x1"    # Lcom/aliyun/thumbnail/ThumbnailInfo;
    .param p2, "x2"    # [B

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getBitmap(Lcom/aliyun/thumbnail/ThumbnailInfo;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/thumbnail/ThumbnailHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/thumbnail/ThumbnailHelper;->sendRequestBitmapFailMsg(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$800(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailInfo;JLandroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/thumbnail/ThumbnailHelper;
    .param p1, "x1"    # Lcom/aliyun/thumbnail/ThumbnailInfo;
    .param p2, "x2"    # J
    .param p4, "x3"    # Landroid/graphics/Bitmap;

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/thumbnail/ThumbnailHelper;->sendRequestBitmapSuccMsg(Lcom/aliyun/thumbnail/ThumbnailInfo;JLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$900(Lcom/aliyun/thumbnail/ThumbnailHelper;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/thumbnail/ThumbnailHelper;
    .param p1, "x1"    # Landroid/os/Message;

    .line 48
    invoke-direct {p0, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private getBitmap(Lcom/aliyun/thumbnail/ThumbnailInfo;[B)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "info"    # Lcom/aliyun/thumbnail/ThumbnailInfo;
    .param p2, "streamBytes"    # [B

    .line 415
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 416
    .local v0, "localStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 418
    .local v1, "cropBitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v0, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    .line 419
    .local v2, "bitmapRegionDecoder":Landroid/graphics/BitmapRegionDecoder;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 420
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 422
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mLeft:I

    iget v6, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mTop:I

    iget v7, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mLeft:I

    iget v8, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mWidth:I

    add-int/2addr v7, v8

    iget v8, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mTop:I

    iget v9, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mHeight:I

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 426
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2, v4, v3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 430
    .end local v2    # "bitmapRegionDecoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 427
    :catch_0
    move-exception v2

    .line 428
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 429
    sget-object v3, Lcom/aliyun/thumbnail/ThumbnailHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u83b7\u53d6\u7f29\u7565\u56fe\u5f02\u5e38\u3002\u3002"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-object v1
.end method

.method private getHttpUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 4
    .param p1, "serverUrl"    # Ljava/lang/String;

    .line 456
    const/4 v0, 0x0

    .line 458
    .local v0, "urlConnection":Ljava/net/URLConnection;
    const/4 v1, 0x0

    .line 460
    .local v1, "url":Ljava/net/URL;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 461
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    .line 462
    nop

    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-nez v2, :cond_0

    .line 463
    const/4 v2, 0x0

    return-object v2

    .line 466
    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 467
    .local v2, "connection":Ljava/net/HttpURLConnection;
    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 468
    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 469
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 470
    :catch_0
    move-exception v2

    .line 474
    :goto_0
    return-object v0
.end method

.method private getHttpsUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 4
    .param p1, "serverUrl"    # Ljava/lang/String;

    .line 478
    const/4 v0, 0x0

    .line 480
    .local v0, "urlConnection":Ljava/net/URLConnection;
    const/4 v1, 0x0

    .line 482
    .local v1, "url":Ljava/net/URL;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 483
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    .line 484
    nop

    instance-of v2, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v2, :cond_0

    .line 485
    const/4 v2, 0x0

    return-object v2

    .line 488
    :cond_0
    move-object v2, v0

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 489
    .local v2, "connection":Ljavax/net/ssl/HttpsURLConnection;
    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 490
    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 491
    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v2    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    goto :goto_0

    .line 492
    :catch_0
    move-exception v2

    .line 496
    :goto_0
    return-object v0
.end method

.method private getInfoByPosition(J)Lcom/aliyun/thumbnail/ThumbnailInfo;
    .locals 7
    .param p1, "position"    # J

    .line 500
    sget-object v0, Lcom/aliyun/thumbnail/ThumbnailHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInfoByPosition position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "targetInfo":Lcom/aliyun/thumbnail/ThumbnailInfo;
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mThumbnailInfoArray:[Lcom/aliyun/thumbnail/ThumbnailInfo;

    if-nez v1, :cond_0

    .line 503
    sget-object v1, Lcom/aliyun/thumbnail/ThumbnailHelper;->TAG:Ljava/lang/String;

    const-string v2, "mThumbnailInfoArray == null"

    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const/4 v1, 0x0

    return-object v1

    .line 507
    :cond_0
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mThumbnailInfoArray:[Lcom/aliyun/thumbnail/ThumbnailInfo;

    array-length v1, v1

    .line 508
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 509
    iget-object v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mThumbnailInfoArray:[Lcom/aliyun/thumbnail/ThumbnailInfo;

    aget-object v3, v3, v2

    .line 510
    .local v3, "info":Lcom/aliyun/thumbnail/ThumbnailInfo;
    iget-wide v4, v3, Lcom/aliyun/thumbnail/ThumbnailInfo;->mStart:J

    cmp-long v6, v4, p1

    if-gtz v6, :cond_1

    iget-wide v4, v3, Lcom/aliyun/thumbnail/ThumbnailInfo;->mUntil:J

    cmp-long v6, v4, p1

    if-ltz v6, :cond_1

    .line 511
    move-object v0, v3

    .line 512
    goto :goto_1

    .line 508
    .end local v3    # "info":Lcom/aliyun/thumbnail/ThumbnailInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 515
    .end local v2    # "i":I
    :cond_2
    :goto_1
    sget-object v2, Lcom/aliyun/thumbnail/ThumbnailHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mThumbnailInfoArray targetInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-object v0
.end method

.method private getResponseCode(Ljava/net/URLConnection;)I
    .locals 2
    .param p1, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "responseCode":I
    instance-of v1, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    .line 437
    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    goto :goto_0

    .line 438
    :cond_0
    instance-of v1, p1, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    .line 439
    move-object v1, p1

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 441
    :cond_1
    :goto_0
    return v0
.end method

.method private native getThumbnailInfos(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private getUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "mImgUrl"    # Ljava/lang/String;

    .line 445
    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-direct {p0, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getHttpsUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0

    .line 447
    :cond_0
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    invoke-direct {p0, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0

    .line 450
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    .line 263
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnPrepareListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnPrepareListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;

    invoke-interface {v0}, Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;->onPrepareSuccess()V

    goto :goto_0

    .line 267
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnPrepareListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;

    if-eqz v0, :cond_3

    .line 269
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnPrepareListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;

    invoke-interface {v0}, Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;->onPrepareFail()V

    goto :goto_0

    .line 271
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "pos"

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 272
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

    if-eqz v0, :cond_3

    .line 273
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 274
    .local v0, "pos":J
    iget-object v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v0, v1, v3}, Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;->onThumbnailGetFail(JLjava/lang/String;)V

    .line 275
    .end local v0    # "pos":J
    goto :goto_0

    .line 276
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 277
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

    if-eqz v0, :cond_3

    .line 278
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 279
    .local v4, "pos":J
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "start"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 280
    .local v6, "start":J
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "until"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 281
    .local v8, "until":J
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 283
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;

    invoke-direct {v2}, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;-><init>()V

    .line 284
    .local v2, "info":Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;
    new-array v3, v3, [J

    const/4 v10, 0x0

    aput-wide v6, v3, v10

    aput-wide v8, v3, v1

    invoke-virtual {v2, v3}, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;->setPositionRange([J)V

    .line 285
    invoke-virtual {v2, v0}, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    .line 286
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

    invoke-interface {v1, v4, v5, v2}, Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;->onThumbnailGetSuccess(JLcom/aliyun/thumbnail/ThumbnailBitmapInfo;)V

    .line 289
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "info":Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;
    .end local v4    # "pos":J
    .end local v6    # "start":J
    .end local v8    # "until":J
    :cond_3
    :goto_0
    return-void
.end method

.method private static readStream(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "inStream"    # Ljava/io/InputStream;

    .line 541
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 542
    .local v0, "outSteam":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 543
    .local v1, "buffer":[B
    const/4 v2, -0x1

    .line 545
    .local v2, "len":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v2, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 546
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 552
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 555
    :goto_1
    goto :goto_2

    .line 553
    :catch_0
    move-exception v3

    .line 554
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 557
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 551
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 548
    :catch_1
    move-exception v3

    .line 549
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 552
    .end local v3    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 559
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 552
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 555
    goto :goto_4

    .line 553
    :catch_2
    move-exception v4

    .line 554
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 555
    .end local v4    # "e":Ljava/io/IOException;
    :goto_4
    goto :goto_6

    :goto_5
    throw v3

    :goto_6
    goto :goto_5
.end method

.method private requestImgData(Ljava/lang/String;Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;)V
    .locals 2
    .param p1, "imgUrl"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;

    .line 351
    sget-object v0, Lcom/aliyun/utils/ThreadManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/aliyun/thumbnail/ThumbnailHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/thumbnail/ThumbnailHelper$3;-><init>(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 412
    return-void
.end method

.method private sendPrepareFailMsg()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    invoke-virtual {v0}, Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 299
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 300
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    invoke-virtual {v1, v0}, Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;->sendMessage(Landroid/os/Message;)Z

    .line 301
    return-void
.end method

.method private sendPrepareSuccessMsg()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    invoke-virtual {v0}, Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 293
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 294
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    invoke-virtual {v1, v0}, Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    return-void
.end method

.method private sendRequestBitmapFailMsg(Ljava/lang/String;J)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "positionMs"    # J

    .line 335
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    invoke-virtual {v0}, Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 336
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 337
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 338
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 339
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "pos"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 340
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 341
    iget-object v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    invoke-virtual {v2, v0}, Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;->sendMessage(Landroid/os/Message;)Z

    .line 342
    return-void
.end method

.method private sendRequestBitmapSuccMsg(Lcom/aliyun/thumbnail/ThumbnailInfo;JLandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "info"    # Lcom/aliyun/thumbnail/ThumbnailInfo;
    .param p2, "positionMs"    # J
    .param p4, "cropBitmap"    # Landroid/graphics/Bitmap;

    .line 323
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    invoke-virtual {v0}, Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 324
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 325
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 326
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 327
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "pos"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 328
    const-string/jumbo v2, "start"

    iget-wide v3, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mStart:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 329
    const-string/jumbo v2, "until"

    iget-wide v3, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mUntil:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 330
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 331
    iget-object v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    invoke-virtual {v2, v0}, Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;->sendMessage(Landroid/os/Message;)Z

    .line 332
    return-void
.end method


# virtual methods
.method public prepare()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-boolean v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->hasPrepared:Z

    if-eqz v1, :cond_0

    .line 189
    sget-object v1, Lcom/aliyun/thumbnail/ThumbnailHelper;->TAG:Ljava/lang/String;

    const-string v2, "prepare again?"

    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    monitor-exit v0

    return-void

    .line 193
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->hasPrepared:Z

    .line 194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    sget-object v0, Lcom/aliyun/utils/ThreadManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/aliyun/thumbnail/ThumbnailHelper$1;

    invoke-direct {v1, p0}, Lcom/aliyun/thumbnail/ThumbnailHelper$1;-><init>(Lcom/aliyun/thumbnail/ThumbnailHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 222
    return-void

    .line 194
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public requestBitmapAtPosition(J)V
    .locals 3
    .param p1, "positionMs"    # J

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getInfoByPosition(J)Lcom/aliyun/thumbnail/ThumbnailInfo;

    move-result-object v0

    .line 236
    .local v0, "info":Lcom/aliyun/thumbnail/ThumbnailInfo;
    if-nez v0, :cond_0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no match thumbnail at position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->sendRequestBitmapFailMsg(Ljava/lang/String;J)V

    .line 238
    return-void

    .line 241
    :cond_0
    iget-object v1, v0, Lcom/aliyun/thumbnail/ThumbnailInfo;->mPath:Ljava/lang/String;

    .line 242
    .local v1, "imgUrl":Ljava/lang/String;
    new-instance v2, Lcom/aliyun/thumbnail/ThumbnailHelper$2;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/aliyun/thumbnail/ThumbnailHelper$2;-><init>(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailInfo;J)V

    invoke-direct {p0, v1, v2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->requestImgData(Ljava/lang/String;Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;)V

    .line 259
    return-void
.end method

.method public setOnPrepareListener(Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;

    .line 125
    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnPrepareListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;

    .line 126
    return-void
.end method

.method public setOnThumbnailGetListener(Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

    .line 177
    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

    .line 178
    return-void
.end method
