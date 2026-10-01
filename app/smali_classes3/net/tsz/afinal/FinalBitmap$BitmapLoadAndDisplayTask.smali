.class Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;
.super Lnet/tsz/afinal/core/AsyncTask;
.source "FinalBitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tsz/afinal/FinalBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapLoadAndDisplayTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/tsz/afinal/core/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;

.field private final displayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/tsz/afinal/FinalBitmap;


# direct methods
.method public constructor <init>(Lnet/tsz/afinal/FinalBitmap;Landroid/widget/ImageView;Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;)V
    .locals 0
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "config"    # Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    .line 819
    iput-object p1, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {p0}, Lnet/tsz/afinal/core/AsyncTask;-><init>()V

    .line 820
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 821
    iput-object p3, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->displayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    .line 822
    return-void
.end method

.method static synthetic access$3(Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;)Ljava/lang/Object;
    .locals 0

    .line 815
    iget-object p0, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->data:Ljava/lang/Object;

    return-object p0
.end method

.method private getAttachedImageView()Landroid/widget/ImageView;
    .locals 3

    .line 882
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 883
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-static {v0}, Lnet/tsz/afinal/FinalBitmap;->access$15(Landroid/widget/ImageView;)Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;

    move-result-object v1

    .line 885
    .local v1, "bitmapWorkerTask":Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;
    if-ne p0, v1, :cond_0

    .line 886
    return-object v0

    .line 889
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .line 826
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->data:Ljava/lang/Object;

    .line 827
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->data:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "dataString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 830
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lnet/tsz/afinal/FinalBitmap;

    invoke-static {v2}, Lnet/tsz/afinal/FinalBitmap;->access$9(Lnet/tsz/afinal/FinalBitmap;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 831
    nop

    :goto_0
    :try_start_0
    iget-object v3, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lnet/tsz/afinal/FinalBitmap;

    invoke-static {v3}, Lnet/tsz/afinal/FinalBitmap;->access$10(Lnet/tsz/afinal/FinalBitmap;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->isCancelled()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    goto :goto_1

    .line 833
    :cond_0
    :try_start_1
    iget-object v3, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lnet/tsz/afinal/FinalBitmap;

    invoke-static {v3}, Lnet/tsz/afinal/FinalBitmap;->access$9(Lnet/tsz/afinal/FinalBitmap;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 834
    :catch_0
    move-exception v3

    goto :goto_0

    .line 830
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 839
    invoke-static {}, Lnet/tsz/afinal/FinalBitmap;->access$11()Lnet/tsz/afinal/bitmap/core/BitmapCache;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lnet/tsz/afinal/FinalBitmap;

    invoke-static {v2}, Lnet/tsz/afinal/FinalBitmap;->access$12(Lnet/tsz/afinal/FinalBitmap;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 840
    invoke-static {}, Lnet/tsz/afinal/FinalBitmap;->access$11()Lnet/tsz/afinal/bitmap/core/BitmapCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 843
    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lnet/tsz/afinal/FinalBitmap;

    invoke-static {v2}, Lnet/tsz/afinal/FinalBitmap;->access$12(Lnet/tsz/afinal/FinalBitmap;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 844
    iget-object v2, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lnet/tsz/afinal/FinalBitmap;

    iget-object v3, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->displayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-static {v2, v0, v3}, Lnet/tsz/afinal/FinalBitmap;->access$13(Lnet/tsz/afinal/FinalBitmap;Ljava/lang/String;Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 847
    :cond_3
    if-eqz v1, :cond_4

    invoke-static {}, Lnet/tsz/afinal/FinalBitmap;->access$11()Lnet/tsz/afinal/bitmap/core/BitmapCache;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 848
    invoke-static {}, Lnet/tsz/afinal/FinalBitmap;->access$11()Lnet/tsz/afinal/bitmap/core/BitmapCache;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 851
    :cond_4
    return-object v1

    .line 830
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    throw v3

    :goto_3
    goto :goto_2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 871
    invoke-super {p0, p1}, Lnet/tsz/afinal/core/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 872
    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lnet/tsz/afinal/FinalBitmap;

    invoke-static {v0}, Lnet/tsz/afinal/FinalBitmap;->access$9(Lnet/tsz/afinal/FinalBitmap;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 873
    :try_start_0
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lnet/tsz/afinal/FinalBitmap;

    invoke-static {v1}, Lnet/tsz/afinal/FinalBitmap;->access$9(Lnet/tsz/afinal/FinalBitmap;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 872
    monitor-exit v0

    .line 875
    return-void

    .line 872
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 856
    invoke-virtual {p0}, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lnet/tsz/afinal/FinalBitmap;

    invoke-static {v0}, Lnet/tsz/afinal/FinalBitmap;->access$12(Lnet/tsz/afinal/FinalBitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    :cond_0
    const/4 p1, 0x0

    .line 861
    :cond_1
    invoke-direct {p0}, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 862
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 863
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lnet/tsz/afinal/FinalBitmap;

    invoke-static {v1}, Lnet/tsz/afinal/FinalBitmap;->access$14(Lnet/tsz/afinal/FinalBitmap;)Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    move-result-object v1

    iget-object v1, v1, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->displayer:Lnet/tsz/afinal/bitmap/display/Displayer;

    iget-object v2, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->displayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-interface {v1, v0, p1, v2}, Lnet/tsz/afinal/bitmap/display/Displayer;->loadCompletedisplay(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;)V

    goto :goto_0

    .line 864
    :cond_2
    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    .line 865
    iget-object v1, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lnet/tsz/afinal/FinalBitmap;

    invoke-static {v1}, Lnet/tsz/afinal/FinalBitmap;->access$14(Lnet/tsz/afinal/FinalBitmap;)Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;

    move-result-object v1

    iget-object v1, v1, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->displayer:Lnet/tsz/afinal/bitmap/display/Displayer;

    iget-object v2, p0, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->displayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v2}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->getLoadfailBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lnet/tsz/afinal/bitmap/display/Displayer;->loadFailDisplay(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 867
    :cond_3
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnet/tsz/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
