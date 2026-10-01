.class Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;
.super Landroid/os/Handler;
.source "ThumbnailHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/thumbnail/ThumbnailHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultHandler"
.end annotation


# instance fields
.field private thumbnailHelperWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/aliyun/thumbnail/ThumbnailHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/aliyun/thumbnail/ThumbnailHelper;)V
    .locals 1
    .param p1, "thumbnailHelper"    # Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 307
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 308
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;->thumbnailHelperWeakReference:Ljava/lang/ref/WeakReference;

    .line 309
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 313
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;->thumbnailHelperWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 314
    .local v0, "thumbnailHelper":Lcom/aliyun/thumbnail/ThumbnailHelper;
    if-eqz v0, :cond_0

    .line 315
    invoke-static {v0, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$900(Lcom/aliyun/thumbnail/ThumbnailHelper;Landroid/os/Message;)V

    .line 317
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 318
    return-void
.end method
