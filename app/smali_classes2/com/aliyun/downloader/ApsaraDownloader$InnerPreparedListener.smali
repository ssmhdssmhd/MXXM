.class Lcom/aliyun/downloader/ApsaraDownloader$InnerPreparedListener;
.super Ljava/lang/Object;
.source "ApsaraDownloader.java"

# interfaces
.implements Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/downloader/ApsaraDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerPreparedListener"
.end annotation


# instance fields
.field private downloaderWk:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/aliyun/downloader/ApsaraDownloader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/aliyun/downloader/ApsaraDownloader;)V
    .locals 1
    .param p1, "downloader"    # Lcom/aliyun/downloader/ApsaraDownloader;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader$InnerPreparedListener;->downloaderWk:Ljava/lang/ref/WeakReference;

    .line 154
    return-void
.end method

.method synthetic constructor <init>(Lcom/aliyun/downloader/ApsaraDownloader;Lcom/aliyun/downloader/ApsaraDownloader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/aliyun/downloader/ApsaraDownloader;
    .param p2, "x1"    # Lcom/aliyun/downloader/ApsaraDownloader$1;

    .line 149
    invoke-direct {p0, p1}, Lcom/aliyun/downloader/ApsaraDownloader$InnerPreparedListener;-><init>(Lcom/aliyun/downloader/ApsaraDownloader;)V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 1
    .param p1, "mediaInfo"    # Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 158
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader$InnerPreparedListener;->downloaderWk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/downloader/ApsaraDownloader;

    .line 159
    .local v0, "downloader":Lcom/aliyun/downloader/ApsaraDownloader;
    if-eqz v0, :cond_0

    .line 160
    invoke-static {v0, p1}, Lcom/aliyun/downloader/ApsaraDownloader;->access$600(Lcom/aliyun/downloader/ApsaraDownloader;Lcom/aliyun/player/nativeclass/MediaInfo;)V

    .line 162
    :cond_0
    return-void
.end method
