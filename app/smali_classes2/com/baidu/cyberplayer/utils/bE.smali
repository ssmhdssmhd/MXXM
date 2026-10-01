.class public abstract Lcom/baidu/cyberplayer/utils/bE;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 98
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 99
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 100
    if-gez v0, :cond_0

    .line 101
    const-string p0, ""

    return-object p0

    .line 102
    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/io/File;I)[B
    .locals 1

    .line 68
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/baidu/cyberplayer/utils/bE;->a(Ljava/io/InputStream;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 70
    :catch_0
    move-exception p0

    .line 71
    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 72
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static final a(Ljava/io/InputStream;I)[B
    .locals 1

    .line 52
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bE;->a(Ljava/io/InputStream;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/io/InputStream;II)[B
    .locals 4

    .line 30
    add-int/2addr p2, p1

    .line 31
    new-array v0, p2, [B

    .line 33
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    const/4 p0, 0x0

    :goto_0
    if-ge p0, p2, :cond_1

    .line 35
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 36
    if-ge p0, p1, :cond_0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    sub-int v3, p0, p1

    aput-byte v2, v0, v3

    .line 34
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 44
    :catch_0
    move-exception p0

    .line 45
    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    goto :goto_3

    .line 42
    :catch_1
    move-exception p0

    .line 46
    :goto_2
    nop

    .line 47
    :goto_3
    return-object v0
.end method
