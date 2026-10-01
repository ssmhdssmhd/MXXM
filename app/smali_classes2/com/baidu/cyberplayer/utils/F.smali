.class public Lcom/baidu/cyberplayer/utils/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/InputStream;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/Vector;

.field private a:[B

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/F;->b:Ljava/lang/String;

    .line 366
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/F;->a:Ljava/util/Vector;

    .line 526
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/F;->a:[B

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/F;->a:Ljava/io/InputStream;

    .line 100
    const-string v1, "1.1"

    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/io/InputStream;)V

    .line 102
    return-void
.end method

.method private a(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 5

    .line 152
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 153
    const/4 v1, 0x1

    new-array v1, v1, [B

    .line 156
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    .line 157
    :goto_0
    if-lez v2, :cond_2

    .line 158
    const/4 v2, 0x0

    aget-byte v3, v1, v2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 159
    goto :goto_1

    .line 160
    :cond_0
    aget-byte v3, v1, v2

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    .line 161
    aget-byte v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 162
    :cond_1
    invoke-virtual {p1, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception p1

    .line 170
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    goto :goto_2

    .line 165
    :catch_1
    move-exception p1

    .line 171
    :cond_2
    :goto_1
    nop

    .line 173
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private g(Ljava/lang/String;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/F;->b:Ljava/lang/String;

    .line 338
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/F;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public a()J
    .locals 2

    .line 646
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;)J
    .locals 2

    .line 499
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/E;

    move-result-object p1

    .line 500
    if-nez p1, :cond_0

    .line 501
    const-wide/16 v0, 0x0

    return-wide v0

    .line 502
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/E;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/ce;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(I)Lcom/baidu/cyberplayer/utils/E;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/F;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/cyberplayer/utils/E;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/E;
    .locals 5

    .line 391
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/F;->a()I

    move-result v0

    .line 392
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 393
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/F;->a(I)Lcom/baidu/cyberplayer/utils/E;

    move-result-object v2

    .line 394
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/E;->a()Ljava/lang/String;

    move-result-object v3

    .line 395
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 396
    return-object v2

    .line 392
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/io/InputStream;
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/F;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/F;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(I)Ljava/lang/String;
    .locals 4

    .line 347
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/F;->b:Ljava/lang/String;

    const-string v2, " "

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    nop

    .line 349
    const-string v1, ""

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-gt v2, p1, :cond_1

    .line 350
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_0

    .line 351
    return-object v1

    .line 352
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    :cond_1
    return-object v3
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 439
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/E;

    move-result-object p1

    .line 440
    if-nez p1, :cond_0

    .line 441
    const-string p1, ""

    return-object p1

    .line 442
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/E;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 466
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 467
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 468
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 469
    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-ne p2, v0, :cond_1

    .line 470
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 471
    :cond_1
    return-object p1
.end method

.method public a()V
    .locals 2

    .line 124
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/F;->g(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/F;->b()V

    .line 126
    const/4 v0, 0x0

    new-array v1, v0, [B

    invoke-virtual {p0, v1, v0}, Lcom/baidu/cyberplayer/utils/F;->a([BZ)V

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/io/InputStream;)V

    .line 128
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 813
    const-string v0, "max-age"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;I)V

    .line 814
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 641
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;J)V

    .line 642
    return-void
.end method

.method public a(JJJ)V
    .locals 2

    .line 699
    nop

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 702
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 703
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-wide/16 p2, 0x0

    cmp-long p4, p2, p5

    if-gez p4, :cond_0

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "*"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 704
    const-string p2, "Content-Range"

    invoke-virtual {p0, p2, p1}, Lcom/baidu/cyberplayer/utils/F;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/E;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/F;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 376
    return-void
.end method

.method protected a(Lcom/baidu/cyberplayer/utils/F;)V
    .locals 3

    .line 308
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/F;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/F;->g(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/F;->b()V

    .line 311
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/F;->a()I

    move-result v0

    .line 312
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 313
    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/F;->a(I)Lcom/baidu/cyberplayer/utils/E;

    move-result-object v2

    .line 314
    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/utils/F;->a(Lcom/baidu/cyberplayer/utils/E;)V

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/F;->a()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/F;->a([B)V

    .line 317
    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/F;->a:Ljava/io/InputStream;

    .line 583
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/F;->a:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 808
    const-string p2, "Cache-Control"

    invoke-virtual {p0, p2, p1}, Lcom/baidu/cyberplayer/utils/F;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 0

    .line 486
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/baidu/cyberplayer/utils/F;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 380
    new-instance v0, Lcom/baidu/cyberplayer/utils/E;

    invoke-direct {v0, p1, p2}, Lcom/baidu/cyberplayer/utils/E;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/F;->a:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 382
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 451
    nop

    .line 452
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 454
    :cond_0
    invoke-virtual {p2, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 455
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 456
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/baidu/cyberplayer/utils/F;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .line 542
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/cyberplayer/utils/F;->a([BZ)V

    .line 543
    return-void
.end method

.method public a(Ljava/util/Calendar;)V
    .locals 1

    .line 867
    new-instance v0, Lcom/baidu/cyberplayer/utils/C;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/C;-><init>(Ljava/util/Calendar;)V

    .line 868
    const-string p1, "Date"

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/C;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/cyberplayer/utils/F;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    return-void
.end method

.method public a([B)V
    .locals 1

    .line 537
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/baidu/cyberplayer/utils/F;->a([BZ)V

    .line 538
    return-void
.end method

.method public a([BZ)V
    .locals 1

    .line 530
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/F;->a:[B

    .line 531
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 532
    array-length p1, p1

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/cyberplayer/utils/F;->a(J)V

    .line 533
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/F;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected a(Lcom/baidu/cyberplayer/utils/M;)Z
    .locals 0

    .line 303
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/M;->a()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method protected a(Ljava/io/InputStream;)Z
    .locals 1

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/io/InputStream;Z)Z

    move-result p1

    return p1
.end method

.method protected a(Ljava/io/InputStream;Z)Z
    .locals 19

    .line 179
    move-object/from16 v1, p0

    const-string v2, "\r\n"

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 181
    invoke-direct {v1, v4}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_0

    goto/16 :goto_b

    .line 184
    :cond_0
    invoke-direct {v1, v0}, Lcom/baidu/cyberplayer/utils/F;->g(Ljava/lang/String;)V

    .line 187
    new-instance v5, Lcom/baidu/cyberplayer/utils/N;

    invoke-direct {v5, v0}, Lcom/baidu/cyberplayer/utils/N;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v5}, Lcom/baidu/cyberplayer/utils/N;->a()I

    move-result v0

    .line 189
    const/16 v5, 0x64

    const/4 v6, 0x1

    if-ne v0, v5, :cond_4

    .line 195
    invoke-direct {v1, v4}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 197
    new-instance v5, Lcom/baidu/cyberplayer/utils/E;

    invoke-direct {v5, v0}, Lcom/baidu/cyberplayer/utils/E;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v5}, Lcom/baidu/cyberplayer/utils/E;->a()Z

    move-result v0

    if-ne v0, v6, :cond_1

    .line 199
    invoke-virtual {v1, v5}, Lcom/baidu/cyberplayer/utils/F;->b(Lcom/baidu/cyberplayer/utils/E;)V

    .line 200
    :cond_1
    invoke-direct {v1, v4}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 201
    goto :goto_0

    .line 203
    :cond_2
    invoke-direct {v1, v4}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 206
    invoke-direct {v1, v0}, Lcom/baidu/cyberplayer/utils/F;->g(Ljava/lang/String;)V

    goto :goto_1

    .line 208
    :cond_3
    return v6

    .line 212
    :cond_4
    :goto_1
    invoke-direct {v1, v4}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 214
    new-instance v5, Lcom/baidu/cyberplayer/utils/E;

    invoke-direct {v5, v0}, Lcom/baidu/cyberplayer/utils/E;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v5}, Lcom/baidu/cyberplayer/utils/E;->a()Z

    move-result v0

    if-ne v0, v6, :cond_5

    .line 216
    invoke-virtual {v1, v5}, Lcom/baidu/cyberplayer/utils/F;->b(Lcom/baidu/cyberplayer/utils/E;)V

    .line 217
    :cond_5
    invoke-direct {v1, v4}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 218
    goto :goto_2

    .line 220
    :cond_6
    move/from16 v0, p2

    if-ne v0, v6, :cond_7

    .line 221
    const-string v0, ""

    invoke-virtual {v1, v0, v3}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;Z)V

    .line 222
    return v6

    .line 225
    :cond_7
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/F;->i()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 227
    nop

    .line 228
    const/16 v7, 0x10

    const-wide/16 v8, 0x0

    if-ne v5, v6, :cond_8

    .line 230
    :try_start_1
    invoke-direct {v1, v4}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-direct {v10, v11, v3, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v10, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    goto :goto_3

    :catch_0
    move-exception v0

    move-wide v10, v8

    goto :goto_3

    .line 237
    :cond_8
    :try_start_2
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/F;->a()J

    move-result-wide v10

    .line 239
    :goto_3
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 241
    :goto_4
    cmp-long v0, v8, v10

    if-gez v0, :cond_f

    .line 242
    invoke-static {}, Lcom/baidu/cyberplayer/utils/D;->a()I

    move-result v0

    .line 243
    new-array v13, v0, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 244
    move-wide v14, v8

    .line 245
    :goto_5
    cmp-long v16, v14, v10

    if-gez v16, :cond_b

    .line 248
    sub-long v16, v10, v14

    .line 249
    move-wide/from16 p1, v8

    int-to-long v8, v0

    cmp-long v18, v8, v16

    if-gez v18, :cond_9

    .line 250
    goto :goto_6

    .line 249
    :cond_9
    move-wide/from16 v8, v16

    .line 251
    :goto_6
    long-to-int v9, v8

    :try_start_3
    invoke-virtual {v4, v13, v3, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    .line 252
    if-gez v8, :cond_a

    .line 253
    goto :goto_7

    .line 254
    :cond_a
    invoke-virtual {v12, v13, v3, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 255
    int-to-long v8, v8

    add-long/2addr v14, v8

    .line 261
    move-wide/from16 v8, p1

    goto :goto_5

    .line 257
    :catch_1
    move-exception v0

    .line 259
    :try_start_4
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 260
    goto :goto_7

    .line 245
    :cond_b
    move-wide/from16 p1, v8

    .line 263
    :goto_7
    if-ne v5, v6, :cond_e

    .line 265
    move-wide/from16 v8, p1

    .line 267
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v10, v0

    sub-long/2addr v10, v8

    invoke-virtual {v4, v10, v11}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide v10

    .line 268
    cmp-long v0, v10, p1

    if-gez v0, :cond_d

    .line 269
    goto :goto_8

    .line 270
    :cond_d
    add-long/2addr v8, v10

    .line 271
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    int-to-long v10, v0

    cmp-long v0, v8, v10

    if-ltz v0, :cond_c

    .line 274
    :goto_8
    :try_start_5
    invoke-direct {v1, v4}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-direct {v8, v9, v3, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v8, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 280
    goto :goto_9

    .line 278
    :catch_2
    move-exception v0

    .line 279
    move-wide/from16 v8, p1

    .line 281
    :goto_9
    move-wide v10, v8

    goto :goto_a

    .line 283
    :cond_e
    move-wide/from16 v10, p1

    .line 284
    :goto_a
    move-wide/from16 v8, p1

    goto :goto_4

    .line 286
    :cond_f
    :try_start_6
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/baidu/cyberplayer/utils/F;->a([BZ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 291
    nop

    .line 293
    return v6

    .line 183
    :cond_10
    :goto_b
    return v3

    .line 288
    :catch_3
    move-exception v0

    .line 289
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 290
    return v3
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 409
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/E;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a()[B
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/F;->a:[B

    return-object v0
.end method

.method public a()[J
    .locals 9

    .line 709
    const/4 v0, 0x3

    new-array v0, v0, [J

    .line 710
    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v4, 0x1

    aput-wide v2, v0, v4

    const/4 v5, 0x0

    aput-wide v2, v0, v5

    .line 711
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/F;->g()Z

    move-result v2

    if-nez v2, :cond_0

    .line 712
    return-object v0

    .line 713
    :cond_0
    const-string v2, "Content-Range"

    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 715
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v6, "/"

    if-gtz v3, :cond_6

    .line 716
    const-string v2, "Range"

    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 717
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 718
    return-object v0

    .line 719
    :cond_1
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v7, "=-/"

    invoke-direct {v3, v2, v7, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 721
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_2

    .line 722
    return-object v0

    .line 723
    :cond_2
    const-string v2, "="

    invoke-virtual {v3, v2}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    .line 724
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_3

    .line 725
    return-object v0

    .line 726
    :cond_3
    const-string v2, "-"

    invoke-virtual {v3, v2}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 728
    :try_start_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v0, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 730
    :catch_0
    move-exception v2

    :goto_0
    nop

    .line 731
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_4

    .line 732
    return-object v0

    .line 733
    :cond_4
    invoke-virtual {v3, v6}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 735
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v0, v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 737
    :catch_1
    move-exception v2

    :goto_1
    nop

    .line 738
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_5

    .line 739
    return-object v0

    .line 740
    :cond_5
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 742
    :try_start_2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 744
    :catch_2
    move-exception v1

    :goto_2
    nop

    .line 745
    return-object v0

    .line 748
    :cond_6
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v7, " ="

    invoke-direct {v3, v2, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_7

    .line 751
    return-object v0

    .line 752
    :cond_7
    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    .line 754
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_8

    .line 755
    return-object v0

    .line 756
    :cond_8
    const-string v2, " -"

    invoke-virtual {v3, v2}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 758
    :try_start_3
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v0, v5
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 760
    :catch_3
    move-exception v2

    :goto_3
    nop

    .line 761
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_9

    .line 762
    return-object v0

    .line 763
    :cond_9
    const-string v2, "-/"

    invoke-virtual {v3, v2}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 765
    :try_start_4
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v0, v4
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    .line 767
    :catch_4
    move-exception v2

    :goto_4
    nop

    .line 768
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_a

    .line 769
    return-object v0

    .line 770
    :cond_a
    invoke-virtual {v3, v6}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 772
    :try_start_5
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    .line 774
    :catch_5
    move-exception v1

    :goto_5
    nop

    .line 775
    return-object v0
.end method

.method public b()J
    .locals 3

    .line 780
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/F;->a()[J

    move-result-object v0

    .line 781
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/F;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 476
    const-string v0, "\""

    invoke-virtual {p0, p1, v0, v0}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/F;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 404
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/F;->a:Ljava/util/Vector;

    .line 405
    return-void
.end method

.method public b(Lcom/baidu/cyberplayer/utils/E;)V
    .locals 1

    .line 434
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/E;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/E;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/F;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 547
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;Z)V

    .line 548
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 2

    .line 841
    nop

    .line 842
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 844
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HOST"

    invoke-virtual {p0, p2, p1}, Lcom/baidu/cyberplayer/utils/F;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 414
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/E;

    move-result-object v0

    .line 415
    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0, p2}, Lcom/baidu/cyberplayer/utils/E;->b(Ljava/lang/String;)V

    .line 417
    return-void

    .line 419
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public b()Z
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/F;->a:[B

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Lcom/baidu/cyberplayer/utils/M;)Z
    .locals 0

    .line 325
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/F;->a()V

    .line 326
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/F;->a(Lcom/baidu/cyberplayer/utils/M;)Z

    move-result p1

    return p1
.end method

.method public c()J
    .locals 3

    .line 786
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/F;->a()[J

    move-result-object v0

    .line 787
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public c()Ljava/lang/String;
    .locals 6

    .line 511
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 513
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/F;->a()I

    move-result v1

    .line 514
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 515
    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/utils/F;->a(I)Lcom/baidu/cyberplayer/utils/E;

    move-result-object v3

    .line 516
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/E;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/E;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 519
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 601
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/F;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 461
    const-string v0, "\""

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public c()Z
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/F;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 557
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/F;->f()Ljava/lang/String;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/F;->a:[B

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 563
    :catch_0
    move-exception v0

    .line 564
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 566
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/F;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 559
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/F;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 660
    const-string v0, "Connection"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/F;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public d()Z
    .locals 1

    .line 655
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 606
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 827
    const-string v0, "Server"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/F;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    return-void
.end method

.method public e()Z
    .locals 2

    .line 670
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/F;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 671
    return v1

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/F;->g()Ljava/lang/String;

    move-result-object v0

    .line 673
    if-nez v0, :cond_1

    .line 674
    return v1

    .line 675
    :cond_1
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 6

    .line 615
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/F;->e()Ljava/lang/String;

    move-result-object v0

    .line 616
    const-string v1, ""

    if-nez v0, :cond_0

    .line 617
    return-object v1

    .line 618
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 619
    const-string v2, "charset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 620
    if-gez v3, :cond_1

    .line 621
    return-object v1

    .line 622
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    const/4 v2, 0x1

    add-int/2addr v3, v2

    .line 623
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-direct {v4, v5, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 624
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-gez v0, :cond_2

    .line 625
    return-object v1

    .line 626
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_3

    .line 627
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 628
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-gez v3, :cond_4

    .line 629
    return-object v1

    .line 630
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_5

    .line 631
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 632
    :cond_5
    return-object v4
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 849
    nop

    .line 850
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 852
    :cond_0
    const-string v0, "HOST"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/F;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method public f()Z
    .locals 2

    .line 680
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/F;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 681
    return v1

    .line 682
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/F;->g()Ljava/lang/String;

    move-result-object v0

    .line 683
    if-nez v0, :cond_1

    .line 684
    return v1

    .line 685
    :cond_1
    const-string v1, "Keep-Alive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 665
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 694
    const-string v0, "Content-Range"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Range"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 892
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 882
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/F;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    .line 897
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/F;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 898
    return v1

    .line 899
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/F;->h()Ljava/lang/String;

    move-result-object v0

    .line 900
    if-nez v0, :cond_1

    .line 901
    return v1

    .line 902
    :cond_1
    const-string v1, "Chunked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
