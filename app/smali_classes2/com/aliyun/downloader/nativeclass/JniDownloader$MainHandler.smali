.class Lcom/aliyun/downloader/nativeclass/JniDownloader$MainHandler;
.super Landroid/os/Handler;
.source "JniDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/downloader/nativeclass/JniDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private downloaderWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/aliyun/downloader/nativeclass/JniDownloader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/aliyun/downloader/nativeclass/JniDownloader;Landroid/os/Looper;)V
    .locals 1
    .param p1, "jniDownloader"    # Lcom/aliyun/downloader/nativeclass/JniDownloader;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .line 40
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$MainHandler;->downloaderWeakReference:Ljava/lang/ref/WeakReference;

    .line 42
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 47
    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$MainHandler;->downloaderWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/downloader/nativeclass/JniDownloader;

    .line 48
    .local v0, "player":Lcom/aliyun/downloader/nativeclass/JniDownloader;
    if-eqz v0, :cond_0

    .line 49
    invoke-static {v0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->access$000(Lcom/aliyun/downloader/nativeclass/JniDownloader;Landroid/os/Message;)V

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 54
    return-void
.end method
