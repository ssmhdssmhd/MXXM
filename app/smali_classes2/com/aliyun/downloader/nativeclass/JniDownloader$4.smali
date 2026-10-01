.class Lcom/aliyun/downloader/nativeclass/JniDownloader$4;
.super Ljava/lang/Object;
.source "JniDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/downloader/nativeclass/JniDownloader;->onCompletion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;


# direct methods
.method constructor <init>(Lcom/aliyun/downloader/nativeclass/JniDownloader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/downloader/nativeclass/JniDownloader;

    .line 277
    iput-object p1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$4;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$4;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-static {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->access$400(Lcom/aliyun/downloader/nativeclass/JniDownloader;)Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$4;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-static {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->access$400(Lcom/aliyun/downloader/nativeclass/JniDownloader;)Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;->onCompletion()V

    .line 283
    :cond_0
    return-void
.end method
