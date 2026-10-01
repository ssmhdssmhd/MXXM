.class public Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;
.super Ljava/lang/Object;
.source "DownLoadTools.java"


# instance fields
.field public mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "mHandler"    # Landroid/os/Handler;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;->mHandler:Landroid/os/Handler;

    .line 25
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;->mHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method public static getNetXmlContent(Ljava/lang/String;Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    const-string v0, ""

    .line 43
    .local v0, "html":Ljava/lang/String;
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "temUrl":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 45
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 46
    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 47
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 48
    .local v3, "inStream":Ljava/io/InputStream;
    invoke-static {v3, p1}, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;->readFromInput(Ljava/io/InputStream;Landroid/content/Context;)[B

    move-result-object v4

    .line 49
    .local v4, "data":[B
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 51
    .end local v0    # "html":Ljava/lang/String;
    .local v5, "html":Ljava/lang/String;
    return-object v5
.end method

.method public static isNetConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 29
    nop

    .line 30
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 31
    .local v0, "conManger":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 32
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    const/4 v2, 0x1

    return v2

    .line 35
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static readFromInput(Ljava/io/InputStream;Landroid/content/Context;)[B
    .locals 5
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 59
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 60
    .local v2, "len":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v2, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 61
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 64
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 66
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private sendException(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p1, "handle"    # Landroid/os/Handler;
    .param p2, "exceptionType"    # Ljava/lang/String;

    .line 127
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 128
    .local v0, "exceptionMsg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 129
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 130
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    return-void
.end method


# virtual methods
.method public declared-synchronized getNetXml(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "msg"    # I

    monitor-enter p0

    .line 71
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "dataFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 74
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    goto :goto_0

    .line 75
    .end local p0    # "this":Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 79
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    invoke-static {p3}, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;->isNetConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    const-string v1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    .local v1, "dataXmls":Ljava/lang/String;
    :try_start_3
    invoke-static {p2, p3, p4}, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;->getNetXmlContent(Ljava/lang/String;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    .line 85
    goto :goto_1

    .line 83
    :catch_1
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;->writeDataToXml(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;I)V

    .line 90
    .end local v1    # "dataXmls":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;->mHandler:Landroid/os/Handler;

    const-string v2, "The network is not connected, please connect to the network!"

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;->sendException(Landroid/os/Handler;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    :goto_2
    monitor-exit p0

    return-void

    .line 70
    .end local v0    # "dataFile":Ljava/io/File;
    .end local p1    # "filePath":Ljava/lang/String;
    .end local p2    # "url":Ljava/lang/String;
    .end local p3    # "context":Landroid/content/Context;
    .end local p4    # "msg":I
    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public writeDataToXml(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;I)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "msg"    # I

    .line 100
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    .local v0, "bfWriter":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    nop

    .line 120
    nop

    .line 122
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 124
    return-void

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 107
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;->mHandler:Landroid/os/Handler;

    const-string v3, "Read or Writer Exception !"

    invoke-direct {p0, v2, v3}, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;->sendException(Landroid/os/Handler;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 108
    return-void

    .line 115
    .end local v0    # "bfWriter":Ljava/io/BufferedWriter;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 117
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;->mHandler:Landroid/os/Handler;

    const-string v2, "File Not Find!"

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;->sendException(Landroid/os/Handler;Ljava/lang/String;)V

    .line 118
    return-void

    .line 111
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 113
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;->mHandler:Landroid/os/Handler;

    const-string v2, "Unsupported Encoding !"

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/tvlive/network/DownLoadTools;->sendException(Landroid/os/Handler;Ljava/lang/String;)V

    .line 114
    return-void
.end method
