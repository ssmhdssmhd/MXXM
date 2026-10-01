.class Lcom/aliyun/downloader/nativeclass/JniDownloader$1;
.super Ljava/lang/Object;
.source "JniDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/downloader/nativeclass/JniDownloader;->onPrepared(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

.field final synthetic val$info:Lcom/aliyun/player/nativeclass/MediaInfo;


# direct methods
.method constructor <init>(Lcom/aliyun/downloader/nativeclass/JniDownloader;Lcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/downloader/nativeclass/JniDownloader;

    .line 222
    iput-object p1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$1;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    iput-object p2, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$1;->val$info:Lcom/aliyun/player/nativeclass/MediaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$1;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-static {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->access$100(Lcom/aliyun/downloader/nativeclass/JniDownloader;)Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$1;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-static {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->access$100(Lcom/aliyun/downloader/nativeclass/JniDownloader;)Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$1;->val$info:Lcom/aliyun/player/nativeclass/MediaInfo;

    invoke-interface {v0, v1}, Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;->onPrepared(Lcom/aliyun/player/nativeclass/MediaInfo;)V

    .line 228
    :cond_0
    return-void
.end method
