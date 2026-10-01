.class Lcom/aliyun/downloader/ApsaraDownloader$InnerErrorListener;
.super Ljava/lang/Object;
.source "ApsaraDownloader.java"

# interfaces
.implements Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/downloader/ApsaraDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerErrorListener"
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

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader$InnerErrorListener;->downloaderWk:Ljava/lang/ref/WeakReference;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Lcom/aliyun/downloader/ApsaraDownloader;Lcom/aliyun/downloader/ApsaraDownloader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/aliyun/downloader/ApsaraDownloader;
    .param p2, "x1"    # Lcom/aliyun/downloader/ApsaraDownloader$1;

    .line 119
    invoke-direct {p0, p1}, Lcom/aliyun/downloader/ApsaraDownloader$InnerErrorListener;-><init>(Lcom/aliyun/downloader/ApsaraDownloader;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 1
    .param p1, "errorInfo"    # Lcom/aliyun/player/bean/ErrorInfo;

    .line 129
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader$InnerErrorListener;->downloaderWk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/downloader/ApsaraDownloader;

    .line 130
    .local v0, "downloader":Lcom/aliyun/downloader/ApsaraDownloader;
    if-eqz v0, :cond_0

    .line 131
    invoke-static {v0, p1}, Lcom/aliyun/downloader/ApsaraDownloader;->access$500(Lcom/aliyun/downloader/ApsaraDownloader;Lcom/aliyun/player/bean/ErrorInfo;)V

    .line 133
    :cond_0
    return-void
.end method
