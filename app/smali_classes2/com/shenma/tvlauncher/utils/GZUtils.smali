.class public Lcom/shenma/tvlauncher/utils/GZUtils;
.super Ljava/lang/Object;
.source "GZUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A([B)[B
    .locals 6
    .param p0, "H"    # [B

    .line 9
    const/4 v0, 0x0

    .line 10
    .local v0, "T":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 11
    .local v1, "C":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2}, Ljava/util/zip/Inflater;-><init>()V

    .line 13
    .local v2, "R":Ljava/util/zip/Inflater;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 14
    const/16 v3, 0x100

    new-array v3, v3, [B

    .line 15
    .local v3, "M":[B
    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_0

    .line 16
    invoke-virtual {v2, v3}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v4

    .line 17
    .local v4, "count":I
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 18
    .end local v4    # "count":I
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object v0, v4

    .line 20
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "M":[B
    goto :goto_1

    .line 24
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 21
    :catch_0
    move-exception v3

    .line 22
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    .line 25
    nop

    .line 26
    return-object v0

    .line 24
    :goto_2
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    .line 25
    goto :goto_4

    :goto_3
    throw v3

    :goto_4
    goto :goto_3
.end method
