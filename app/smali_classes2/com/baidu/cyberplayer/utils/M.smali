.class public Lcom/baidu/cyberplayer/utils/M;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/InputStream;

.field private a:Ljava/io/OutputStream;

.field private a:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/M;->a:Ljava/net/Socket;

    .line 93
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/M;->a:Ljava/io/InputStream;

    .line 94
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/M;->a:Ljava/io/OutputStream;

    .line 43
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/M;->a(Ljava/net/Socket;)V

    .line 44
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/M;->a()Z

    .line 45
    return-void
.end method

.method private a()Ljava/io/OutputStream;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/M;->a:Ljava/io/OutputStream;

    return-object v0
.end method

.method private a(Ljava/net/Socket;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/M;->a:Ljava/net/Socket;

    .line 68
    return-void
.end method

.method private a(Lcom/baidu/cyberplayer/utils/I;Ljava/io/InputStream;JJZ)Z
    .locals 16

    .line 201
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, p5

    const-string v4, "\r\n"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/cyberplayer/utils/I;->a(Ljava/util/Calendar;)V

    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/baidu/cyberplayer/utils/M;->a()Ljava/io/OutputStream;

    move-result-object v5

    .line 206
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v3}, Lcom/baidu/cyberplayer/utils/I;->a(J)V

    .line 208
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/I;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    .line 209
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    .line 211
    const/4 v7, 0x1

    move/from16 v8, p7

    if-ne v8, v7, :cond_0

    .line 212
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 213
    return v7

    .line 216
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/I;->i()Z

    move-result v0

    .line 218
    const-wide/16 v8, 0x0

    cmp-long v10, v8, p3

    if-gez v10, :cond_1

    .line 219
    invoke-virtual/range {p2 .. p4}, Ljava/io/InputStream;->skip(J)J

    .line 221
    :cond_1
    invoke-static {}, Lcom/baidu/cyberplayer/utils/D;->a()I

    move-result v10

    .line 222
    new-array v11, v10, [B

    .line 223
    nop

    .line 224
    int-to-long v12, v10

    cmp-long v10, v12, v2

    if-gez v10, :cond_2

    move-wide v14, v12

    goto :goto_0

    :cond_2
    move-wide v14, v2

    .line 225
    :goto_0
    long-to-int v10, v14

    invoke-virtual {v1, v11, v6, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    .line 226
    :goto_1
    if-lez v10, :cond_6

    cmp-long v14, v8, v2

    if-gez v14, :cond_6

    .line 227
    if-ne v0, v7, :cond_3

    .line 229
    int-to-long v14, v10

    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    .line 230
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/io/OutputStream;->write([B)V

    .line 231
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/io/OutputStream;->write([B)V

    .line 233
    :cond_3
    invoke-virtual {v5, v11, v6, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 234
    if-ne v0, v7, :cond_4

    .line 235
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/io/OutputStream;->write([B)V

    .line 236
    :cond_4
    int-to-long v14, v10

    add-long/2addr v8, v14

    .line 237
    sub-long v14, v2, v8

    cmp-long v10, v12, v14

    if-gez v10, :cond_5

    move-wide v14, v12

    .line 238
    :cond_5
    long-to-int v10, v14

    invoke-virtual {v1, v11, v6, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    goto :goto_1

    .line 241
    :cond_6
    if-ne v0, v7, :cond_7

    .line 242
    const-string v0, "0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 243
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 246
    :cond_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    nop

    .line 253
    return v7

    .line 248
    :catch_0
    move-exception v0

    .line 250
    return v6
.end method

.method private a(Lcom/baidu/cyberplayer/utils/I;[BJJZ)Z
    .locals 3

    .line 157
    const-string v0, "\r\n"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/I;->a(Ljava/util/Calendar;)V

    .line 159
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/M;->a()Ljava/io/OutputStream;

    move-result-object v1

    .line 162
    :try_start_0
    invoke-virtual {p1, p5, p6}, Lcom/baidu/cyberplayer/utils/I;->a(J)V

    .line 164
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/I;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 166
    const/4 v2, 0x1

    if-ne p7, v2, :cond_0

    .line 167
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 168
    return v2

    .line 171
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/I;->i()Z

    move-result p1

    .line 173
    if-ne p1, v2, :cond_1

    .line 175
    invoke-static {p5, p6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p7

    .line 176
    invoke-virtual {p7}, Ljava/lang/String;->getBytes()[B

    move-result-object p7

    invoke-virtual {v1, p7}, Ljava/io/OutputStream;->write([B)V

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p7

    invoke-virtual {v1, p7}, Ljava/io/OutputStream;->write([B)V

    .line 180
    :cond_1
    long-to-int p4, p3

    long-to-int p3, p5

    invoke-virtual {v1, p2, p4, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 182
    if-ne p1, v2, :cond_2

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 184
    const-string p1, "0"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 188
    :cond_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    nop

    .line 195
    return v2

    .line 190
    :catch_0
    move-exception p1

    .line 192
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/M;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/M;->a()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/net/Socket;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/M;->a:Ljava/net/Socket;

    return-object v0
.end method

.method public a()Z
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/M;->a()Ljava/net/Socket;

    move-result-object v0

    .line 124
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/M;->a:Ljava/io/InputStream;

    .line 125
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/M;->a:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    nop

    .line 131
    const/4 v0, 0x1

    return v0

    .line 127
    :catch_0
    move-exception v0

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/I;JJZ)Z
    .locals 10

    .line 259
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/I;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 260
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/I;->a()Ljava/io/InputStream;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    move-wide v7, p4

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/baidu/cyberplayer/utils/M;->a(Lcom/baidu/cyberplayer/utils/I;Ljava/io/InputStream;JJZ)Z

    move-result p1

    return p1

    .line 261
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/I;->a()[B

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/baidu/cyberplayer/utils/M;->a(Lcom/baidu/cyberplayer/utils/I;[BJJZ)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 1

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/M;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/M;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/M;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/M;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/M;->a()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    nop

    .line 147
    const/4 v0, 0x1

    return v0

    .line 143
    :catch_0
    move-exception v0

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public finalize()V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/M;->b()Z

    .line 57
    return-void
.end method
