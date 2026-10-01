.class public Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader;
.super Ljava/lang/Object;
.source "SimpleHttpDownloader.java"

# interfaces
.implements Lnet/tsz/afinal/bitmap/download/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader$FlushedInputStream;
    }
.end annotation


# static fields
.field private static final IO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "BitmapDownloader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadToLocalStreamByUrl(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 8
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 45
    .local v1, "out":Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 48
    .local v2, "in":Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader$FlushedInputStream;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 49
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    move-object v0, v4

    .line 50
    new-instance v4, Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader$FlushedInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v4, p0, v5}, Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader$FlushedInputStream;-><init>(Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader;Ljava/io/InputStream;)V

    move-object v2, v4

    .line 51
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, p2, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v1, v4

    .line 54
    nop

    :goto_0
    invoke-virtual {v2}, Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader$FlushedInputStream;->read()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v4

    .local v5, "b":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 65
    :cond_0
    nop

    .line 66
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 68
    nop

    .line 69
    invoke-virtual {v2}, Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader$FlushedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 71
    :catch_0
    move-exception v4

    .line 57
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 55
    :cond_1
    :try_start_2
    invoke-virtual {v1, v5}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 60
    .end local v3    # "url":Ljava/net/URL;
    .end local v5    # "b":I
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 58
    :catch_1
    move-exception v3

    .line 59
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "BitmapDownloader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error in downloadBitmap - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 65
    :cond_2
    if-eqz v1, :cond_3

    .line 66
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_2

    .line 71
    :catch_2
    move-exception v3

    goto :goto_3

    .line 68
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 69
    invoke-virtual {v2}, Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader$FlushedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 73
    :cond_4
    :goto_3
    const/4 v3, 0x0

    return v3

    .line 61
    :goto_4
    if-eqz v0, :cond_5

    .line 62
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 65
    :cond_5
    if-eqz v1, :cond_6

    .line 66
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_5

    .line 71
    :catch_3
    move-exception v4

    goto :goto_6

    .line 68
    :cond_6
    :goto_5
    if-eqz v2, :cond_7

    .line 69
    invoke-virtual {v2}, Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader$FlushedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 72
    :cond_7
    :goto_6
    goto :goto_8

    :goto_7
    throw v3

    :goto_8
    goto :goto_7
.end method
