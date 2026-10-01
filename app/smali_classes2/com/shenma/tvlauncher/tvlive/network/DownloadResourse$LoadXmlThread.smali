.class Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$LoadXmlThread;
.super Ljava/lang/Thread;
.source "DownloadResourse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadXmlThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$LoadXmlThread;->this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 242
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 243
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$LoadXmlThread;->this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->-$$Nest$fgetupdateList(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$LoadXmlThread;->this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->getVersion()F

    move-result v1

    iput v1, v0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;->version:F

    .line 245
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$LoadXmlThread;->this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "version.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .local v0, "fi":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 249
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 250
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 251
    .local v2, "buffer":[B
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 252
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 253
    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "res":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x3ee

    if-nez v4, :cond_3

    if-nez v3, :cond_1

    goto :goto_0

    .line 260
    :cond_1
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iget-object v6, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$LoadXmlThread;->this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

    invoke-static {v6}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->-$$Nest$fgetupdateList(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;

    move-result-object v6

    iget v6, v6, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;->version:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    .line 262
    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$LoadXmlThread;->this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

    invoke-static {v4}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->-$$Nest$fgetmHandler(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 263
    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$LoadXmlThread;->this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

    invoke-static {v4}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->-$$Nest$mdownloadZip(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)V

    goto :goto_1

    .line 267
    :cond_2
    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$LoadXmlThread;->this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

    invoke-static {v4}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->-$$Nest$fgetmHandler(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x3ed

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 257
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$LoadXmlThread;->this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

    invoke-static {v4}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->-$$Nest$fgetmHandler(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 258
    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$LoadXmlThread;->this$0:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

    invoke-static {v4}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->-$$Nest$mdownloadZip(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v0    # "fi":Ljava/io/File;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "buffer":[B
    .end local v3    # "res":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
