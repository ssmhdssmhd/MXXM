.class public Lcom/baidu/cyberplayer/utils/ZipUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/utils/ZipUtils$a;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/cyberplayer/utils/ZipUtils;


# instance fields
.field private a:Ljava/util/zip/ZipEntry;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/ZipUtils;->a:Ljava/util/zip/ZipEntry;

    .line 53
    return-void
.end method

.method private a(Ljava/util/zip/ZipInputStream;)V
    .locals 3

    .line 68
    :try_start_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/ZipUtils;->a:Ljava/util/zip/ZipEntry;

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/ZipUtils;->a:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/ZipUtils;->a:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/ZipUtils;->a:Ljava/util/zip/ZipEntry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/ZipUtils;->a:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_1

    .line 79
    goto :goto_1

    .line 78
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 74
    :catch_0
    move-exception v0

    .line 78
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/ZipUtils;->a:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_1

    .line 79
    :goto_1
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/ZipUtils;->b(Ljava/util/zip/ZipInputStream;)V

    .line 82
    :cond_1
    return-void

    .line 72
    :catch_1
    move-exception v0

    .line 73
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "could not get next zip entry"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :goto_2
    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/ZipUtils;->a:Ljava/util/zip/ZipEntry;

    if-nez v1, :cond_2

    .line 79
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/ZipUtils;->b(Ljava/util/zip/ZipInputStream;)V

    :cond_2
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private b(Ljava/util/zip/ZipInputStream;)V
    .locals 0

    .line 87
    if-eqz p1, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception p1

    goto :goto_1

    .line 90
    :cond_0
    :goto_0
    nop

    .line 91
    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/baidu/cyberplayer/utils/ZipUtils;
    .locals 1

    .line 56
    sget-object v0, Lcom/baidu/cyberplayer/utils/ZipUtils;->a:Lcom/baidu/cyberplayer/utils/ZipUtils;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/baidu/cyberplayer/utils/ZipUtils;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ZipUtils;-><init>()V

    sput-object v0, Lcom/baidu/cyberplayer/utils/ZipUtils;->a:Lcom/baidu/cyberplayer/utils/ZipUtils;

    .line 59
    :cond_0
    sget-object v0, Lcom/baidu/cyberplayer/utils/ZipUtils;->a:Lcom/baidu/cyberplayer/utils/ZipUtils;

    return-object v0
.end method


# virtual methods
.method public unZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zipFile"    # Ljava/lang/String;
    .param p3, "targetDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    nop

    .line 107
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 108
    new-instance v1, Lcom/baidu/cyberplayer/utils/ZipUtils$a;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, p0, v2}, Lcom/baidu/cyberplayer/utils/ZipUtils$a;-><init>(Lcom/baidu/cyberplayer/utils/ZipUtils;Ljava/io/InputStream;)V

    .line 109
    invoke-direct {p0, v1}, Lcom/baidu/cyberplayer/utils/ZipUtils;->a(Ljava/util/zip/ZipInputStream;)V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/ZipUtils;->a:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_2

    .line 113
    const/16 v0, 0x1000

    new-array v2, v0, [B

    .line 114
    iget-object v3, p0, Lcom/baidu/cyberplayer/utils/ZipUtils;->a:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 116
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 119
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 121
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 124
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 125
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 126
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/baidu/cyberplayer/utils/ZipUtils$a;->read([BII)I

    move-result v5

    .line 127
    :goto_1
    if-lez v5, :cond_1

    .line 128
    invoke-virtual {v4, v2, v3, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 129
    invoke-virtual {v1, v2, v3, v0}, Lcom/baidu/cyberplayer/utils/ZipUtils$a;->read([BII)I

    move-result v5

    goto :goto_1

    .line 133
    :cond_1
    invoke-direct {p0, v1}, Lcom/baidu/cyberplayer/utils/ZipUtils;->a(Ljava/util/zip/ZipInputStream;)V

    .line 134
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ZipUtils$a;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    nop

    .line 144
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :catch_1
    move-exception v0

    .line 139
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
