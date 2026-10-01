.class Lcom/shenma/tvlauncher/SettingWallpaperActivity$8;
.super Ljava/lang/Object;
.source "SettingWallpaperActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/SettingWallpaperActivity;->startDownload(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SettingWallpaperActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 335
    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$8;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$8;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 337
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$8;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 338
    .local v0, "file":Ljava/io/File;
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$8;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$8;->val$url:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 344
    :cond_0
    :try_start_0
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 346
    .local v2, "client":Lokhttp3/OkHttpClient;
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$8;->val$url:Ljava/lang/String;

    .line 347
    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 348
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 350
    .local v3, "request":Lokhttp3/Request;
    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    .line 352
    .local v4, "call":Lokhttp3/Call;
    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v5

    .line 353
    .local v5, "response":Lokhttp3/Response;
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    .line 354
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v6

    .line 356
    .local v6, "is":Ljava/io/InputStream;
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$8;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    iget-object v7, v7, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->context:Landroid/content/Context;

    const/4 v8, 0x3

    invoke-virtual {v7, v1, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 357
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/16 v8, 0x2000

    new-array v8, v8, [B

    .line 359
    .local v8, "buffer":[B
    :goto_0
    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 360
    .local v9, "count":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 361
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 362
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 363
    iget-object v10, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$8;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    invoke-static {v10, v1}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->-$$Nest$msendBroadcast(Lcom/shenma/tvlauncher/SettingWallpaperActivity;Ljava/lang/String;)V

    .line 364
    return-void

    .line 366
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v9    # "count":I
    goto :goto_0

    .line 371
    .end local v2    # "client":Lokhttp3/OkHttpClient;
    .end local v3    # "request":Lokhttp3/Request;
    .end local v4    # "call":Lokhttp3/Call;
    .end local v5    # "response":Lokhttp3/Response;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "buffer":[B
    :cond_2
    goto :goto_1

    .line 369
    :catch_0
    move-exception v2

    .line 370
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
