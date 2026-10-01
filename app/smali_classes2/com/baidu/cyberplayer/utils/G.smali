.class public Lcom/baidu/cyberplayer/utils/G;
.super Lcom/baidu/cyberplayer/utils/F;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Lcom/baidu/cyberplayer/utils/M;

.field private a:Ljava/lang/String;

.field private a:Ljava/net/Socket;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/F;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/G;->a:Ljava/lang/String;

    .line 157
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/G;->b:Ljava/lang/String;

    .line 224
    const-string v1, ""

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/G;->c:Ljava/lang/String;

    .line 236
    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/cyberplayer/utils/G;->a:I

    .line 252
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/G;->a:Lcom/baidu/cyberplayer/utils/M;

    .line 387
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/G;->a:Ljava/net/Socket;

    .line 83
    const-string v0, "1.0"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/G;->a(Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/baidu/cyberplayer/utils/I;
    .locals 1

    .line 471
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/cyberplayer/utils/G;->a(Ljava/lang/String;IZ)Lcom/baidu/cyberplayer/utils/I;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;IZ)Lcom/baidu/cyberplayer/utils/I;
    .locals 11

    .line 391
    const-string v0, "\r\n"

    new-instance v1, Lcom/baidu/cyberplayer/utils/I;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/I;-><init>()V

    .line 393
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/G;->f(Ljava/lang/String;)V

    .line 395
    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    const-string v3, "Keep-Alive"

    goto :goto_0

    :cond_0
    const-string v3, "close"

    :goto_0
    invoke-virtual {p0, v3}, Lcom/baidu/cyberplayer/utils/G;->d(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->l()Z

    move-result v3

    .line 399
    nop

    .line 400
    nop

    .line 403
    const/16 v4, 0x1f4

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/baidu/cyberplayer/utils/G;->a:Ljava/net/Socket;

    if-nez v6, :cond_1

    .line 404
    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/baidu/cyberplayer/utils/G;->a:Ljava/net/Socket;

    .line 405
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/G;->a:Ljava/net/Socket;

    const/16 p2, 0x1388

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 408
    :cond_1
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/G;->a:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 409
    :try_start_1
    new-instance p2, Ljava/io/PrintStream;

    invoke-direct {p2, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 410
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->i()Z

    move-result v6

    .line 415
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->d()Ljava/lang/String;

    move-result-object v7

    .line 416
    nop

    .line 417
    if-eqz v7, :cond_2

    .line 418
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_1

    .line 417
    :cond_2
    const/4 v8, 0x0

    .line 420
    :goto_1
    if-lez v8, :cond_4

    .line 421
    if-ne v6, v2, :cond_3

    .line 423
    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    .line 424
    invoke-virtual {p2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 427
    :cond_3
    invoke-virtual {p2, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 428
    if-ne v6, v2, :cond_4

    .line 429
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 432
    :cond_4
    if-ne v6, v2, :cond_5

    .line 433
    const-string v2, "0"

    invoke-virtual {p2, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 437
    :cond_5
    invoke-virtual {p2}, Ljava/io/PrintStream;->flush()V

    .line 439
    iget-object p2, p0, Lcom/baidu/cyberplayer/utils/G;->a:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 440
    :try_start_2
    invoke-virtual {v1, p2, v3}, Lcom/baidu/cyberplayer/utils/I;->a(Ljava/io/InputStream;Z)Z
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 450
    if-nez p3, :cond_a

    .line 452
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 453
    :goto_2
    goto :goto_3

    :catch_0
    move-exception p3

    goto :goto_2

    .line 454
    :goto_3
    if-eqz p2, :cond_6

    .line 456
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 457
    :goto_4
    goto :goto_5

    :catch_1
    move-exception p2

    goto :goto_4

    .line 458
    :cond_6
    :goto_5
    if-eqz p1, :cond_9

    .line 460
    :try_start_5
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/G;->a:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_10

    .line 461
    :catch_2
    move-exception p1

    goto/16 :goto_10

    .line 450
    :catchall_0
    move-exception v0

    move-object v10, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, v10

    goto/16 :goto_11

    .line 444
    :catch_3
    move-exception v0

    move-object v10, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, v10

    goto :goto_6

    .line 441
    :catch_4
    move-exception v0

    move-object v10, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, v10

    goto :goto_b

    .line 450
    :catchall_1
    move-exception p2

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, v5

    goto/16 :goto_11

    .line 444
    :catch_5
    move-exception p2

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, v5

    goto :goto_6

    .line 441
    :catch_6
    move-exception p2

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, v5

    goto :goto_b

    .line 450
    :catchall_2
    move-exception p1

    move-object p2, v5

    move-object v0, p2

    goto :goto_11

    .line 444
    :catch_7
    move-exception p1

    move-object p2, v5

    move-object v0, p2

    .line 447
    :goto_6
    :try_start_6
    invoke-virtual {v1, v4}, Lcom/baidu/cyberplayer/utils/I;->b(I)V

    .line 448
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 450
    if-nez p3, :cond_a

    .line 452
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 453
    :goto_7
    goto :goto_8

    :catch_8
    move-exception p1

    goto :goto_7

    .line 454
    :goto_8
    if-eqz v0, :cond_7

    .line 456
    :try_start_8
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 457
    :goto_9
    goto :goto_a

    :catch_9
    move-exception p1

    goto :goto_9

    .line 458
    :cond_7
    :goto_a
    if-eqz p2, :cond_9

    .line 460
    :try_start_9
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/G;->a:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_10

    .line 461
    :catch_a
    move-exception p1

    goto :goto_10

    .line 441
    :catch_b
    move-exception p1

    move-object p2, v5

    move-object v0, p2

    .line 442
    :goto_b
    :try_start_a
    invoke-virtual {v1, v4}, Lcom/baidu/cyberplayer/utils/I;->b(I)V

    .line 443
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 450
    if-nez p3, :cond_a

    .line 452
    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    .line 453
    :goto_c
    goto :goto_d

    :catch_c
    move-exception p1

    goto :goto_c

    .line 454
    :goto_d
    if-eqz v0, :cond_8

    .line 456
    :try_start_c
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    .line 457
    :goto_e
    goto :goto_f

    :catch_d
    move-exception p1

    goto :goto_e

    .line 458
    :cond_8
    :goto_f
    if-eqz p2, :cond_9

    .line 460
    :try_start_d
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/G;->a:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    goto :goto_10

    .line 461
    :catch_e
    move-exception p1

    :goto_10
    nop

    .line 462
    :cond_9
    iput-object v5, p0, Lcom/baidu/cyberplayer/utils/G;->a:Ljava/net/Socket;

    .line 466
    :cond_a
    return-object v1

    .line 450
    :catchall_3
    move-exception p1

    :goto_11
    if-nez p3, :cond_d

    .line 452
    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f

    .line 453
    :goto_12
    goto :goto_13

    :catch_f
    move-exception p3

    goto :goto_12

    .line 454
    :goto_13
    if-eqz v0, :cond_b

    .line 456
    :try_start_f
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_10

    .line 457
    :goto_14
    goto :goto_15

    :catch_10
    move-exception p3

    goto :goto_14

    .line 458
    :cond_b
    :goto_15
    if-eqz p2, :cond_c

    .line 460
    :try_start_10
    iget-object p2, p0, Lcom/baidu/cyberplayer/utils/G;->a:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_11

    goto :goto_16

    .line 461
    :catch_11
    move-exception p2

    :goto_16
    nop

    .line 462
    :cond_c
    iput-object v5, p0, Lcom/baidu/cyberplayer/utils/G;->a:Ljava/net/Socket;

    :cond_d
    goto :goto_18

    :goto_17
    throw p1

    :goto_18
    goto :goto_17
.end method

.method public a()Lcom/baidu/cyberplayer/utils/M;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/G;->a:Lcom/baidu/cyberplayer/utils/M;

    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/P;
    .locals 6

    .line 186
    new-instance v0, Lcom/baidu/cyberplayer/utils/P;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/P;-><init>()V

    .line 187
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->j()Ljava/lang/String;

    move-result-object v1

    .line 188
    if-nez v1, :cond_0

    .line 189
    return-object v0

    .line 190
    :cond_0
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 191
    if-gez v2, :cond_1

    .line 192
    return-object v0

    .line 193
    :cond_1
    :goto_0
    if-lez v2, :cond_3

    .line 194
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x3d

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 195
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 196
    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x26

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 197
    if-lez v4, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    :goto_1
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 198
    new-instance v5, Lcom/baidu/cyberplayer/utils/O;

    invoke-direct {v5, v2, v3}, Lcom/baidu/cyberplayer/utils/O;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, v5}, Lcom/baidu/cyberplayer/utils/P;->add(Ljava/lang/Object;)Z

    .line 200
    nop

    .line 201
    move v2, v4

    goto :goto_0

    .line 202
    :cond_3
    return-object v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/G;)V
    .locals 0

    .line 480
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/G;->a(Lcom/baidu/cyberplayer/utils/F;)V

    .line 481
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->a()Lcom/baidu/cyberplayer/utils/M;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/G;->a(Lcom/baidu/cyberplayer/utils/M;)V

    .line 482
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/M;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/G;->a:Lcom/baidu/cyberplayer/utils/M;

    .line 257
    return-void
.end method

.method public a(I)Z
    .locals 3

    .line 490
    new-instance v0, Lcom/baidu/cyberplayer/utils/I;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/I;-><init>()V

    .line 491
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/I;->b(I)V

    .line 492
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/cyberplayer/utils/I;->a(J)V

    .line 493
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/G;->a(Lcom/baidu/cyberplayer/utils/I;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/I;)Z
    .locals 12

    .line 361
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->a()Lcom/baidu/cyberplayer/utils/M;

    move-result-object v0

    .line 362
    nop

    .line 363
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/I;->a()J

    move-result-wide v6

    .line 364
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->g()Z

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 365
    move-wide v4, v3

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->b()J

    move-result-wide v2

    .line 366
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->c()J

    move-result-wide v8

    .line 369
    const-wide/16 v10, 0x1

    cmp-long v1, v8, v4

    if-gtz v1, :cond_0

    .line 370
    sub-long v8, v6, v10

    move-wide v4, v8

    goto :goto_0

    .line 369
    :cond_0
    move-wide v4, v8

    .line 371
    :goto_0
    cmp-long v1, v2, v6

    if-gtz v1, :cond_2

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    goto :goto_1

    .line 373
    :cond_1
    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/cyberplayer/utils/I;->a(JJJ)V

    .line 374
    const/16 p1, 0xce

    invoke-virtual {v1, p1}, Lcom/baidu/cyberplayer/utils/I;->b(I)V

    .line 376
    nop

    .line 377
    sub-long/2addr v4, v2

    add-long v6, v4, v10

    move-wide v4, v6

    goto :goto_2

    .line 372
    :cond_2
    :goto_1
    const/16 p1, 0x1a0

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/G;->a(I)Z

    move-result p1

    return p1

    .line 364
    :cond_3
    move-object v1, p1

    move-wide v4, v3

    move-wide v2, v4

    move-wide v4, v6

    .line 379
    :goto_2
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->l()Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/cyberplayer/utils/M;->a(Lcom/baidu/cyberplayer/utils/I;JJZ)Z

    move-result p1

    return p1
.end method

.method public b()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/baidu/cyberplayer/utils/G;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 240
    iput p1, p0, Lcom/baidu/cyberplayer/utils/G;->a:I

    .line 241
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/G;->b:Ljava/lang/String;

    .line 162
    if-nez p2, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/G;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/D;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/G;->b:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->i()Ljava/lang/String;

    move-result-object v0

    .line 118
    if-nez v0, :cond_0

    .line 119
    const/4 p1, 0x0

    return p1

    .line 120
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 2

    .line 523
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/G;->a:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/cyberplayer/utils/G;->b(Ljava/lang/String;Z)V

    .line 171
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/G;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/G;->a:Ljava/lang/String;

    return-object v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/G;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/G;->c:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/G;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/G;->b:Ljava/lang/String;

    return-object v0

    .line 177
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/G;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 125
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/G;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/G;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 130
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/G;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->a()Lcom/baidu/cyberplayer/utils/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/M;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 135
    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/G;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .line 303
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 304
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/G;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/baidu/cyberplayer/utils/F;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 140
    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/G;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 3

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 145
    const-string v0, "UNSUBSCRIBE"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/G;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .line 319
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 321
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->c()Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 150
    const-string v0, "NOTIFY"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/G;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    .line 217
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/G;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 4

    .line 335
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->e()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 336
    return v1

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->f()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 338
    return v2

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->m()Ljava/lang/String;

    move-result-object v0

    .line 340
    const-string v3, "1.0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 341
    :goto_0
    if-ne v0, v2, :cond_3

    .line 342
    return v1

    .line 343
    :cond_3
    return v2
.end method

.method public r()Z
    .locals 1

    .line 352
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->a()Lcom/baidu/cyberplayer/utils/M;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/baidu/cyberplayer/utils/F;->b(Lcom/baidu/cyberplayer/utils/M;)Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 1

    .line 498
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/G;->a(I)Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 1

    .line 503
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/G;->a(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 512
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 514
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/G;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
