.class public Lcom/shenma/tvlauncher/tvlive/parsexml/DonLodeParseXmlWifiTask;
.super Landroid/os/AsyncTask;
.source "DonLodeParseXmlWifiTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/shenma/tvlauncher/tvlive/parsexml/onConnectDoneListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field strResult:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/tvlive/parsexml/onConnectDoneListener;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p1, "callback"    # Lcom/shenma/tvlauncher/tvlive/parsexml/onConnectDoneListener;
    .param p2, "mHandler"    # Landroid/os/Handler;
    .param p3, "mContext"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/DonLodeParseXmlWifiTask;->callback:Lcom/shenma/tvlauncher/tvlive/parsexml/onConnectDoneListener;

    .line 33
    iput-object p2, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/DonLodeParseXmlWifiTask;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object p3, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/DonLodeParseXmlWifiTask;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private downLoadImg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "localAdrrString"    # Ljava/lang/String;

    .line 87
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "urlImg":Ljava/net/URL;
    nop

    .line 89
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 90
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 91
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 92
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 93
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 95
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {p0, v3, p2}, Lcom/shenma/tvlauncher/tvlive/parsexml/DonLodeParseXmlWifiTask;->saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 99
    :cond_0
    const/16 v4, 0xc

    invoke-direct {p0, v4, v3}, Lcom/shenma/tvlauncher/tvlive/parsexml/DonLodeParseXmlWifiTask;->sendMessage(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v0    # "urlImg":Ljava/net/URL;
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 104
    :goto_0
    return-void
.end method

.method private fileToBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "mfFile"    # Ljava/io/File;

    .line 58
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    const/4 v1, 0x0

    .line 63
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 64
    nop

    .line 65
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 66
    .local v2, "len":I
    new-array v3, v2, [B

    .line 67
    .local v3, "bytes":[B
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 69
    array-length v4, v3

    if-eqz v4, :cond_1

    .line 70
    array-length v4, v3

    .line 71
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-object v0

    .line 73
    :cond_1
    return-object v0

    .line 77
    .end local v2    # "len":I
    .end local v3    # "bytes":[B
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v0

    .line 59
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    return-object v0
.end method

.method private isToday(Ljava/io/File;)Z
    .locals 6
    .param p1, "filePath"    # Ljava/io/File;

    .line 49
    const-wide/32 v0, 0xa8c0

    .line 50
    .local v0, "oneDaysTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    .line 51
    const/4 v2, 0x0

    return v2

    .line 53
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private sendMessage(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "mBitmap"    # Landroid/graphics/Bitmap;

    .line 107
    if-nez p2, :cond_0

    .line 108
    return-void

    .line 109
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 110
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 111
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/DonLodeParseXmlWifiTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 40
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/DonLodeParseXmlWifiTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "localAdrrString":Ljava/lang/String;
    new-instance v3, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/DonLodeParseXmlWifiTask;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;-><init>(Landroid/os/Handler;)V

    .line 43
    .local v3, "mDownLoadTools":Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;
    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/DonLodeParseXmlWifiTask;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 43
    invoke-virtual {v3, v2, v1, v4, v0}, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;->getNetXml(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)V

    .line 45
    const/16 v0, 0xc9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 22
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/tvlive/parsexml/DonLodeParseXmlWifiTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/DonLodeParseXmlWifiTask;->callback:Lcom/shenma/tvlauncher/tvlive/parsexml/onConnectDoneListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/DonLodeParseXmlWifiTask;->strResult:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/onConnectDoneListener;->onConnectDone(ILjava/lang/Object;)V

    .line 118
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 22
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/tvlive/parsexml/DonLodeParseXmlWifiTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "CaptureFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 128
    :goto_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 130
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 131
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 132
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 133
    return-void
.end method
