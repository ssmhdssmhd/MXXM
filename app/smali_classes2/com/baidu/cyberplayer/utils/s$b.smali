.class Lcom/baidu/cyberplayer/utils/s$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/utils/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/baidu/cyberplayer/subtitle/utils/a<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/utils/s;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/utils/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/s$b;->a:Lcom/baidu/cyberplayer/utils/s;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/baidu/cyberplayer/utils/s$b;->a:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/baidu/cyberplayer/utils/s$b;->b:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/baidu/cyberplayer/subtitle/utils/a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/baidu/cyberplayer/subtitle/utils/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    const-string v0, "save stream to file, IOException"

    const-string v1, "save stream to file, FileNotFoundException"

    const-string v2, "close output stream, IOException"

    const-string v3, "close input stream, IOException"

    const-string v4, "SubtitleDownloader"

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    iget-object v6, p0, Lcom/baidu/cyberplayer/utils/s$b;->a:Lcom/baidu/cyberplayer/utils/s;

    invoke-static {v6, v5}, Lcom/baidu/cyberplayer/utils/s;->a(Lcom/baidu/cyberplayer/utils/s;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 119
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/s$b;->a:Lcom/baidu/cyberplayer/utils/s;

    const/16 p2, 0xbbf

    const-string v0, "create tmp subtitle fail"

    invoke-static {p1, p2, v0}, Lcom/baidu/cyberplayer/utils/s;->a(Lcom/baidu/cyberplayer/utils/s;ILjava/lang/String;)Lcom/baidu/cyberplayer/subtitle/utils/a;

    move-result-object p1

    return-object p1

    .line 123
    :cond_0
    nop

    .line 125
    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v9, 0x1

    invoke-direct {v8, v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    const/16 v6, 0x400

    :try_start_1
    new-array v6, v6, [B

    .line 128
    nop

    .line 129
    :goto_0
    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 130
    const/4 v9, 0x0

    invoke-virtual {v7, v6, v9, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    if-eqz p1, :cond_2

    .line 144
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    goto :goto_1

    .line 145
    :catch_0
    move-exception p1

    .line 146
    invoke-static {v4, v3, p1}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    :cond_2
    :goto_1
    nop

    .line 151
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 154
    :goto_2
    goto :goto_3

    .line 152
    :catch_1
    move-exception p1

    .line 153
    invoke-static {v4, v2, p1}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 158
    :goto_3
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 163
    :cond_3
    invoke-virtual {v5, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    .line 164
    if-eqz p2, :cond_4

    .line 165
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/cyberplayer/subtitle/utils/a;->a(Ljava/lang/Object;)Lcom/baidu/cyberplayer/subtitle/utils/a;

    move-result-object p1

    return-object p1

    .line 167
    :cond_4
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/s$b;->a:Lcom/baidu/cyberplayer/utils/s;

    const/16 p2, 0xbc0

    const-string v0, "rename subtitle fail"

    invoke-static {p1, p2, v0}, Lcom/baidu/cyberplayer/utils/s;->a(Lcom/baidu/cyberplayer/utils/s;ILjava/lang/String;)Lcom/baidu/cyberplayer/subtitle/utils/a;

    move-result-object p1

    return-object p1

    .line 142
    :catchall_0
    move-exception p2

    move-object v6, v7

    goto :goto_a

    .line 137
    :catch_2
    move-exception p2

    move-object v6, v7

    goto :goto_4

    .line 133
    :catch_3
    move-exception p2

    move-object v6, v7

    goto :goto_7

    .line 142
    :catchall_1
    move-exception p2

    goto :goto_a

    .line 137
    :catch_4
    move-exception p2

    .line 138
    :goto_4
    :try_start_4
    invoke-static {v4, v0, p2}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    iget-object p2, p0, Lcom/baidu/cyberplayer/utils/s$b;->a:Lcom/baidu/cyberplayer/utils/s;

    const/16 v1, 0xbc2

    invoke-static {p2, v1, v0}, Lcom/baidu/cyberplayer/utils/s;->a(Lcom/baidu/cyberplayer/utils/s;ILjava/lang/String;)Lcom/baidu/cyberplayer/subtitle/utils/a;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 142
    if-eqz p1, :cond_5

    .line 144
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 147
    goto :goto_5

    .line 145
    :catch_5
    move-exception p1

    .line 146
    invoke-static {v4, v3, p1}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    :cond_5
    :goto_5
    if-eqz v6, :cond_6

    .line 151
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 154
    goto :goto_6

    .line 152
    :catch_6
    move-exception p1

    .line 153
    invoke-static {v4, v2, p1}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    :cond_6
    :goto_6
    return-object p2

    .line 133
    :catch_7
    move-exception p2

    .line 134
    :goto_7
    :try_start_7
    invoke-static {v4, v1, p2}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    iget-object p2, p0, Lcom/baidu/cyberplayer/utils/s$b;->a:Lcom/baidu/cyberplayer/utils/s;

    const/16 v0, 0xbc3

    invoke-static {p2, v0, v1}, Lcom/baidu/cyberplayer/utils/s;->a(Lcom/baidu/cyberplayer/utils/s;ILjava/lang/String;)Lcom/baidu/cyberplayer/subtitle/utils/a;

    move-result-object p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 142
    if-eqz p1, :cond_7

    .line 144
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 147
    goto :goto_8

    .line 145
    :catch_8
    move-exception p1

    .line 146
    invoke-static {v4, v3, p1}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    :cond_7
    :goto_8
    if-eqz v6, :cond_8

    .line 151
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 154
    goto :goto_9

    .line 152
    :catch_9
    move-exception p1

    .line 153
    invoke-static {v4, v2, p1}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    :cond_8
    :goto_9
    return-object p2

    .line 142
    :goto_a
    if-eqz p1, :cond_9

    .line 144
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 147
    goto :goto_b

    .line 145
    :catch_a
    move-exception p1

    .line 146
    invoke-static {v4, v3, p1}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    :cond_9
    :goto_b
    if-eqz v6, :cond_a

    .line 151
    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    .line 154
    goto :goto_c

    .line 152
    :catch_b
    move-exception p1

    .line 153
    invoke-static {v4, v2, p1}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    :cond_a
    :goto_c
    goto :goto_e

    :goto_d
    throw p2

    :goto_e
    goto :goto_d
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/baidu/cyberplayer/subtitle/utils/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/baidu/cyberplayer/subtitle/utils/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    const-string p1, "down subtitle task, response error, code: "

    const-string v0, "SubtitleDownloader"

    .line 77
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/baidu/cyberplayer/utils/s$b;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 81
    const/16 v1, 0x3a98

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 82
    const/16 v1, 0x7530

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 83
    const-string v1, "GET"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 86
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 87
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_1

    .line 88
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/s$b;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/baidu/cyberplayer/utils/s$b;->a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/baidu/cyberplayer/subtitle/utils/a;

    move-result-object p1
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object p1

    .line 90
    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/cyberplayer/utils/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v3, p0, Lcom/baidu/cyberplayer/utils/s$b;->a:Lcom/baidu/cyberplayer/utils/s;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xbc6

    invoke-static {v3, v1, p1}, Lcom/baidu/cyberplayer/utils/s;->a(Lcom/baidu/cyberplayer/utils/s;ILjava/lang/String;)Lcom/baidu/cyberplayer/subtitle/utils/a;

    move-result-object p1
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    if-eqz v2, :cond_2

    .line 105
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-object p1

    .line 104
    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    .line 99
    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    .line 95
    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_1

    .line 104
    :catchall_1
    move-exception p1

    goto :goto_2

    .line 99
    :catch_2
    move-exception p1

    .line 100
    :goto_0
    :try_start_3
    const-string v2, "IOException: "

    invoke-static {v0, v2, p1}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/s$b;->a:Lcom/baidu/cyberplayer/utils/s;

    const-string v0, "down subtitle, IOException"

    const/16 v2, 0xbc2

    invoke-static {p1, v2, v0}, Lcom/baidu/cyberplayer/utils/s;->a(Lcom/baidu/cyberplayer/utils/s;ILjava/lang/String;)Lcom/baidu/cyberplayer/subtitle/utils/a;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-object p1

    .line 95
    :catch_3
    move-exception p1

    .line 96
    :goto_1
    :try_start_4
    const-string v2, "MalformedURLException: "

    invoke-static {v0, v2, p1}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/s$b;->a:Lcom/baidu/cyberplayer/utils/s;

    const-string v0, "down subtitle, MalformedURLException"

    const/16 v2, 0xbc1

    invoke-static {p1, v2, v0}, Lcom/baidu/cyberplayer/utils/s;->a(Lcom/baidu/cyberplayer/utils/s;ILjava/lang/String;)Lcom/baidu/cyberplayer/subtitle/utils/a;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    if-eqz v1, :cond_4

    .line 105
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-object p1

    .line 104
    :goto_2
    if-eqz v1, :cond_5

    .line 105
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw p1
.end method

.method protected a(Lcom/baidu/cyberplayer/subtitle/utils/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/cyberplayer/subtitle/utils/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/s$b;->a:Lcom/baidu/cyberplayer/utils/s;

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/s;->a(Lcom/baidu/cyberplayer/utils/s;)Lcom/baidu/cyberplayer/utils/s$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/s$b;->a:Lcom/baidu/cyberplayer/utils/s;

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/s;->a(Lcom/baidu/cyberplayer/utils/s;)Lcom/baidu/cyberplayer/utils/s$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/cyberplayer/utils/s$a;->a(Lcom/baidu/cyberplayer/subtitle/utils/a;)V

    .line 177
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .line 58
    move-object v0, p1

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/s$b;->a([Ljava/lang/Void;)Lcom/baidu/cyberplayer/subtitle/utils/a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 58
    move-object v0, p1

    check-cast v0, Lcom/baidu/cyberplayer/subtitle/utils/a;

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/s$b;->a(Lcom/baidu/cyberplayer/subtitle/utils/a;)V

    return-void
.end method
