.class Lcom/shenma/tvlauncher/utils/Utils$3;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/utils/Utils;->startDownloadzip(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mHandler:Landroid/os/Handler;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1023
    iput-object p1, p0, Lcom/shenma/tvlauncher/utils/Utils$3;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/shenma/tvlauncher/utils/Utils$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/shenma/tvlauncher/utils/Utils$3;->val$mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1026
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/Utils$3;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/shenma/tvlauncher/utils/Utils$3;->val$url:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, "apkName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1029
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lcom/shenma/tvlauncher/utils/Utils$3;->val$url:Ljava/lang/String;

    const-string v4, " "

    const-string v5, "%20"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1030
    .local v2, "hGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 1031
    .local v3, "hResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_2

    .line 1032
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 1033
    .local v4, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 1039
    .local v5, "downsize":F
    iget-object v6, p0, Lcom/shenma/tvlauncher/utils/Utils$3;->val$context:Landroid/content/Context;

    const/4 v7, 0x3

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    move-object v1, v6

    .line 1040
    const/16 v6, 0x2000

    new-array v6, v6, [B

    .line 1041
    .local v6, "buffer":[B
    const/4 v7, 0x0

    .line 1042
    .local v7, "count":I
    :goto_0
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v7, v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 1043
    iget-object v8, p0, Lcom/shenma/tvlauncher/utils/Utils$3;->val$mHandler:Landroid/os/Handler;

    if-eqz v8, :cond_0

    .line 1044
    int-to-float v8, v7

    add-float/2addr v5, v8

    .line 1045
    iget-object v8, p0, Lcom/shenma/tvlauncher/utils/Utils$3;->val$mHandler:Landroid/os/Handler;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/16 v10, 0x3ea

    invoke-virtual {v8, v10, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1047
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1050
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1051
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1052
    iget-object v8, p0, Lcom/shenma/tvlauncher/utils/Utils$3;->val$context:Landroid/content/Context;

    invoke-static {v8, v0}, Lcom/shenma/tvlauncher/utils/Utils;->tarZip(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    .end local v2    # "hGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "hResponse":Lorg/apache/http/HttpResponse;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "downsize":F
    .end local v6    # "buffer":[B
    .end local v7    # "count":I
    :cond_2
    goto :goto_1

    .line 1054
    :catch_0
    move-exception v2

    .line 1055
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1057
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
