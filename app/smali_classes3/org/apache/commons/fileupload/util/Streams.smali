.class public final Lorg/apache/commons/fileupload/util/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static asString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "pStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/fileupload/util/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    .line 149
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static asString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pStream"    # Ljava/io/InputStream;
    .param p1, "pEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 165
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/fileupload/util/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    .line 166
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static checkFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pFileName"    # Ljava/lang/String;

    .line 179
    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 181
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 183
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 184
    .local v2, "c":C
    packed-switch v2, :pswitch_data_0

    .line 189
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 186
    :pswitch_0
    const-string v3, "\\0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    nop

    .line 182
    .end local v2    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/apache/commons/fileupload/InvalidFileNameException;

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid file name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-direct {v1, p0, v2}, Lorg/apache/commons/fileupload/InvalidFileNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 196
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J
    .locals 2
    .param p0, "pInputStream"    # Ljava/io/InputStream;
    .param p1, "pOutputStream"    # Ljava/io/OutputStream;
    .param p2, "pClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    nop

    .line 67
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 66
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/fileupload/util/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z[B)J
    .locals 7
    .param p0, "pIn"    # Ljava/io/InputStream;
    .param p1, "pOut"    # Ljava/io/OutputStream;
    .param p2, "pClose"    # Z
    .param p3, "pBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    move-object v0, p1

    .line 92
    .local v0, "out":Ljava/io/OutputStream;
    move-object v1, p0

    .line 94
    .local v1, "in":Ljava/io/InputStream;
    const-wide/16 v2, 0x0

    .line 96
    .local v2, "total":J
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v1, p3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 97
    .local v4, "res":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    .line 98
    nop

    .line 107
    .end local v4    # "res":I
    if-eqz v0, :cond_2

    .line 108
    if-eqz p2, :cond_1

    .line 109
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 113
    :goto_1
    const/4 v0, 0x0

    .line 115
    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 116
    const/4 v1, 0x0

    .line 117
    nop

    .line 119
    if-eqz v1, :cond_3

    .line 121
    .end local v2    # "total":J
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :goto_2
    goto :goto_3

    :catchall_0
    move-exception v4

    goto :goto_2

    .line 126
    :cond_3
    :goto_3
    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 128
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    :goto_4
    goto :goto_5

    :catchall_1
    move-exception v4

    goto :goto_4

    .line 117
    :cond_4
    :goto_5
    return-wide v2

    .line 100
    .restart local v2    # "total":J
    .restart local v4    # "res":I
    :cond_5
    if-lez v4, :cond_0

    .line 101
    int-to-long v5, v4

    add-long/2addr v2, v5

    .line 102
    if-eqz v0, :cond_0

    .line 103
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v0, p3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 95
    .end local v4    # "res":I
    goto :goto_0

    .line 118
    .end local v2    # "total":J
    :catchall_2
    move-exception v2

    .line 119
    if-eqz v1, :cond_6

    .line 121
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 122
    :goto_6
    goto :goto_7

    :catchall_3
    move-exception v3

    goto :goto_6

    .line 126
    :cond_6
    :goto_7
    if-eqz p2, :cond_7

    if-eqz v0, :cond_7

    .line 128
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 129
    :goto_8
    goto :goto_9

    :catchall_4
    move-exception v3

    goto :goto_8

    .line 133
    :cond_7
    :goto_9
    goto :goto_b

    :goto_a
    throw v2

    :goto_b
    goto :goto_a
.end method
