.class Lcom/aliyun/downloader/ApsaraDownloader$InnerOnProgressListener;
.super Ljava/lang/Object;
.source "ApsaraDownloader.java"

# interfaces
.implements Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/downloader/ApsaraDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerOnProgressListener"
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

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader$InnerOnProgressListener;->downloaderWk:Ljava/lang/ref/WeakReference;

    .line 183
    return-void
.end method

.method synthetic constructor <init>(Lcom/aliyun/downloader/ApsaraDownloader;Lcom/aliyun/downloader/ApsaraDownloader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/aliyun/downloader/ApsaraDownloader;
    .param p2, "x1"    # Lcom/aliyun/downloader/ApsaraDownloader$1;

    .line 178
    invoke-direct {p0, p1}, Lcom/aliyun/downloader/ApsaraDownloader$InnerOnProgressListener;-><init>(Lcom/aliyun/downloader/ApsaraDownloader;)V

    return-void
.end method


# virtual methods
.method public onDownloadingProgress(I)V
    .locals 1
    .param p1, "percent"    # I

    .line 187
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader$InnerOnProgressListener;->downloaderWk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/downloader/ApsaraDownloader;

    .line 188
    .local v0, "downloader":Lcom/aliyun/downloader/ApsaraDownloader;
    if-eqz v0, :cond_0

    .line 189
    invoke-static {v0, p1}, Lcom/aliyun/downloader/ApsaraDownloader;->access$700(Lcom/aliyun/downloader/ApsaraDownloader;I)V

    .line 191
    :cond_0
    return-void
.end method

.method public onProcessingProgress(I)V
    .locals 1
    .param p1, "percent"    # I

    .line 195
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader$InnerOnProgressListener;->downloaderWk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/downloader/ApsaraDownloader;

    .line 196
    .local v0, "downloader":Lcom/aliyun/downloader/ApsaraDownloader;
    if-eqz v0, :cond_0

    .line 197
    invoke-static {v0, p1}, Lcom/aliyun/downloader/ApsaraDownloader;->access$800(Lcom/aliyun/downloader/ApsaraDownloader;I)V

    .line 199
    :cond_0
    return-void
.end method
