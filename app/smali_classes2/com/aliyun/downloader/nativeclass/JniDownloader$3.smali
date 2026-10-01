.class Lcom/aliyun/downloader/nativeclass/JniDownloader$3;
.super Ljava/lang/Object;
.source "JniDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/downloader/nativeclass/JniDownloader;->onProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

.field final synthetic val$percent:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/aliyun/downloader/nativeclass/JniDownloader;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/downloader/nativeclass/JniDownloader;

    .line 261
    iput-object p1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    iput p2, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;->val$type:I

    iput p3, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;->val$percent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-static {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->access$300(Lcom/aliyun/downloader/nativeclass/JniDownloader;)Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    iget v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;->val$type:I

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-static {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->access$300(Lcom/aliyun/downloader/nativeclass/JniDownloader;)Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    move-result-object v0

    iget v1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;->val$percent:I

    invoke-interface {v0, v1}, Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;->onDownloadingProgress(I)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-static {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->access$300(Lcom/aliyun/downloader/nativeclass/JniDownloader;)Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    move-result-object v0

    iget v1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;->val$percent:I

    invoke-interface {v0, v1}, Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;->onProcessingProgress(I)V

    .line 271
    :cond_1
    :goto_0
    return-void
.end method
