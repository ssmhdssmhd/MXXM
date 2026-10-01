.class public Lcom/baidu/cyberplayer/utils/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/cd;

.field private a:Lcom/baidu/cyberplayer/utils/cj;

.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 130
    new-instance v0, Lcom/baidu/cyberplayer/utils/cj;

    const-string v1, "service"

    invoke-direct {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/ac;-><init>(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 132
    new-instance v0, Lcom/baidu/cyberplayer/utils/cj;

    const-string/jumbo v1, "specVersion"

    invoke-direct {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    .line 134
    new-instance v1, Lcom/baidu/cyberplayer/utils/cj;

    const-string v2, "major"

    invoke-direct {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    .line 135
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;->j(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 138
    new-instance v1, Lcom/baidu/cyberplayer/utils/cj;

    const-string v2, "minor"

    invoke-direct {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    .line 139
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;->j(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 143
    new-instance v1, Lcom/baidu/cyberplayer/utils/cj;

    const-string v2, "scpd"

    invoke-direct {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v2, "xmlns"

    const-string/jumbo v3, "urn:schemas-upnp-org:service-1-0"

    invoke-virtual {v1, v2, v3}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 146
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/bY;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/bY;->b(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Lcom/baidu/cyberplayer/utils/cd;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/cd;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/ac;->a:Lcom/baidu/cyberplayer/utils/cd;

    .line 851
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/ac;->a:Ljava/lang/Object;

    .line 151
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/ac;->a:Lcom/baidu/cyberplayer/utils/cj;

    .line 152
    return-void
.end method

.method private a()Lcom/baidu/cyberplayer/utils/bY;
    .locals 2

    .line 557
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/cyberplayer/utils/bY;

    .line 559
    if-nez v1, :cond_0

    .line 560
    new-instance v1, Lcom/baidu/cyberplayer/utils/bY;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/bY;-><init>()V

    .line 561
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/Object;)V

    .line 562
    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/utils/bY;->a(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 564
    :cond_0
    return-object v1
.end method

.method private a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/cyberplayer/utils/cm;
        }
    .end annotation

    .line 389
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ag;->a()Lcom/baidu/cyberplayer/utils/cl;

    move-result-object v0

    .line 390
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/cl;->a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/net/URL;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/cyberplayer/utils/cm;
        }
    .end annotation

    .line 383
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ag;->a()Lcom/baidu/cyberplayer/utils/cl;

    move-result-object v0

    .line 384
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/cl;->a(Ljava/net/URL;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/baidu/cyberplayer/utils/aE;Lcom/baidu/cyberplayer/utils/af;)Z
    .locals 4

    .line 697
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/af;->a()Ljava/lang/String;

    move-result-object v0

    .line 698
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/af;->c()Ljava/lang/String;

    move-result-object p2

    .line 700
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aE;->c()Ljava/lang/String;

    move-result-object v1

    .line 701
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aE;->a()I

    move-result v2

    .line 703
    new-instance v3, Lcom/baidu/cyberplayer/utils/aB;

    invoke-direct {v3}, Lcom/baidu/cyberplayer/utils/aB;-><init>()V

    .line 704
    invoke-virtual {v3, p1, v0, p2}, Lcom/baidu/cyberplayer/utils/aB;->a(Lcom/baidu/cyberplayer/utils/aE;Ljava/lang/String;Ljava/lang/String;)Z

    .line 706
    invoke-virtual {v3, v1, v2}, Lcom/baidu/cyberplayer/utils/aB;->a(Ljava/lang/String;I)Lcom/baidu/cyberplayer/utils/I;

    move-result-object p2

    .line 707
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/I;->j()Z

    move-result p2

    if-nez p2, :cond_0

    .line 708
    const/4 p1, 0x0

    return p1

    .line 710
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aE;->a()V

    .line 712
    const/4 p1, 0x1

    return p1
.end method

.method public static a(Lcom/baidu/cyberplayer/utils/cj;)Z
    .locals 1

    .line 176
    const-string v0, "service"

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/cj;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 249
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 252
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 253
    return v2

    .line 254
    :cond_1
    invoke-static {p1, v0}, Lcom/baidu/cyberplayer/utils/D;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 256
    if-ne p1, v2, :cond_2

    .line 257
    return v2

    .line 258
    :cond_2
    return v0

    .line 250
    :cond_3
    :goto_0
    return v0
.end method

.method private b()Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 186
    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    return-object v0
.end method

.method private c()Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/baidu/cyberplayer/utils/cj;
    .locals 6

    .line 395
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/bY;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bY;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    .line 397
    if-eqz v1, :cond_0

    .line 398
    return-object v1

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v1

    .line 401
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 402
    return-object v2

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->c()Ljava/lang/String;

    move-result-object v3

    .line 406
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v1, v3}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-direct {p0, v4}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/net/URL;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v4

    .line 408
    if-eqz v4, :cond_2

    .line 409
    invoke-virtual {v0, v4}, Lcom/baidu/cyberplayer/utils/bY;->b(Lcom/baidu/cyberplayer/utils/cj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    return-object v4

    .line 413
    :catch_0
    move-exception v0

    :cond_2
    nop

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/aa;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lcom/baidu/cyberplayer/utils/D;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/cj;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 421
    goto :goto_0

    .line 419
    :catch_1
    move-exception v0

    .line 420
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 423
    :goto_0
    return-object v2
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .line 573
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 2

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/aa;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/U;
    .locals 6

    .line 465
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/V;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/V;->size()I

    move-result v1

    .line 467
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 468
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/V;->a(I)Lcom/baidu/cyberplayer/utils/U;

    move-result-object v3

    .line 469
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/U;->a()Ljava/lang/String;

    move-result-object v4

    .line 470
    if-nez v4, :cond_0

    .line 471
    goto :goto_1

    .line 472
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 473
    return-object v3

    .line 467
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 475
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lcom/baidu/cyberplayer/utils/V;
    .locals 7

    .line 445
    new-instance v0, Lcom/baidu/cyberplayer/utils/V;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/V;-><init>()V

    .line 446
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ac;->d()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    .line 447
    if-nez v1, :cond_0

    .line 448
    return-object v0

    .line 449
    :cond_0
    const-string v2, "actionList"

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    .line 450
    if-nez v1, :cond_1

    .line 451
    return-object v0

    .line 452
    :cond_1
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/cj;->f()I

    move-result v2

    .line 453
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 454
    invoke-virtual {v1, v3}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v4

    .line 455
    invoke-static {v4}, Lcom/baidu/cyberplayer/utils/U;->a(Lcom/baidu/cyberplayer/utils/cj;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 456
    goto :goto_1

    .line 457
    :cond_2
    new-instance v5, Lcom/baidu/cyberplayer/utils/U;

    iget-object v6, p0, Lcom/baidu/cyberplayer/utils/ac;->a:Lcom/baidu/cyberplayer/utils/cj;

    invoke-direct {v5, v6, v4}, Lcom/baidu/cyberplayer/utils/U;-><init>(Lcom/baidu/cyberplayer/utils/cj;Lcom/baidu/cyberplayer/utils/cj;)V

    .line 458
    invoke-virtual {v0, v5}, Lcom/baidu/cyberplayer/utils/V;->add(Ljava/lang/Object;)Z

    .line 453
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 460
    :cond_3
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/aE;
    .locals 6

    .line 680
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/aF;

    move-result-object v0

    .line 681
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aF;->size()I

    move-result v1

    .line 682
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 683
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/aF;->a(I)Lcom/baidu/cyberplayer/utils/aE;

    move-result-object v3

    .line 684
    if-nez v3, :cond_0

    .line 685
    goto :goto_1

    .line 686
    :cond_0
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/aE;->a()Ljava/lang/String;

    move-result-object v4

    .line 687
    if-nez v4, :cond_1

    .line 688
    goto :goto_1

    .line 689
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 690
    return-object v3

    .line 682
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 692
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lcom/baidu/cyberplayer/utils/aF;
    .locals 1

    .line 665
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/bY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bY;->a()Lcom/baidu/cyberplayer/utils/aF;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/aa;
    .locals 3

    .line 202
    new-instance v0, Lcom/baidu/cyberplayer/utils/aa;

    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ac;->c()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ac;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/cyberplayer/utils/aa;-><init>(Lcom/baidu/cyberplayer/utils/cj;Lcom/baidu/cyberplayer/utils/cj;)V

    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/ae;
    .locals 7

    .line 500
    new-instance v0, Lcom/baidu/cyberplayer/utils/ae;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ae;-><init>()V

    .line 501
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ac;->d()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    const-string v2, "serviceStateTable"

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    .line 502
    if-nez v1, :cond_0

    .line 503
    return-object v0

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v2

    .line 505
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/cj;->f()I

    move-result v3

    .line 506
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 507
    invoke-virtual {v1, v4}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v5

    .line 508
    invoke-static {v5}, Lcom/baidu/cyberplayer/utils/af;->a(Lcom/baidu/cyberplayer/utils/cj;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 509
    goto :goto_1

    .line 510
    :cond_1
    new-instance v6, Lcom/baidu/cyberplayer/utils/af;

    invoke-direct {v6, v2, v5}, Lcom/baidu/cyberplayer/utils/af;-><init>(Lcom/baidu/cyberplayer/utils/cj;Lcom/baidu/cyberplayer/utils/cj;)V

    .line 511
    invoke-virtual {v0, v6}, Lcom/baidu/cyberplayer/utils/ae;->add(Ljava/lang/Object;)Z

    .line 506
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 513
    :cond_2
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/af;
    .locals 6

    .line 518
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/ae;

    move-result-object v0

    .line 519
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ae;->size()I

    move-result v1

    .line 520
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 521
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/ae;->a(I)Lcom/baidu/cyberplayer/utils/af;

    move-result-object v3

    .line 522
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/af;->a()Ljava/lang/String;

    move-result-object v4

    .line 523
    if-nez v4, :cond_0

    .line 524
    goto :goto_1

    .line 525
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 526
    return-object v3

    .line 520
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/ac;->a:Lcom/baidu/cyberplayer/utils/cj;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 223
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "serviceType"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 6

    .line 753
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/ae;

    move-result-object v0

    .line 754
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ae;->size()I

    move-result v1

    .line 755
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 756
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/ae;->a(I)Lcom/baidu/cyberplayer/utils/af;

    move-result-object v3

    .line 757
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/af;->a()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 758
    invoke-virtual {p0, v3}, Lcom/baidu/cyberplayer/utils/ac;->a(Lcom/baidu/cyberplayer/utils/af;)V

    .line 755
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 760
    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 803
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/bY;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/cyberplayer/utils/bY;->a(J)V

    .line 804
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aE;)V
    .locals 1

    .line 670
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/aF;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/aF;->add(Ljava/lang/Object;)Z

    .line 671
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/af;)V
    .locals 8

    .line 717
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/aF;

    move-result-object v0

    .line 722
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aF;->size()I

    move-result v1

    .line 723
    new-array v2, v1, [Lcom/baidu/cyberplayer/utils/aE;

    .line 724
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 725
    invoke-virtual {v0, v4}, Lcom/baidu/cyberplayer/utils/aF;->a(I)Lcom/baidu/cyberplayer/utils/aE;

    move-result-object v5

    aput-object v5, v2, v4

    .line 724
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 726
    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    .line 727
    aget-object v5, v2, v4

    .line 728
    if-nez v5, :cond_1

    .line 729
    goto :goto_2

    .line 730
    :cond_1
    invoke-virtual {v5}, Lcom/baidu/cyberplayer/utils/aE;->a()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 731
    invoke-virtual {p0, v5}, Lcom/baidu/cyberplayer/utils/ac;->b(Lcom/baidu/cyberplayer/utils/aE;)V

    .line 726
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 735
    :cond_3
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aF;->size()I

    move-result v1

    .line 736
    new-array v2, v1, [Lcom/baidu/cyberplayer/utils/aE;

    .line 737
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_4

    .line 738
    invoke-virtual {v0, v4}, Lcom/baidu/cyberplayer/utils/aF;->a(I)Lcom/baidu/cyberplayer/utils/aE;

    move-result-object v5

    aput-object v5, v2, v4

    .line 737
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 739
    :cond_4
    nop

    :goto_4
    if-ge v3, v1, :cond_6

    .line 740
    aget-object v0, v2, v3

    .line 741
    if-nez v0, :cond_5

    .line 742
    goto :goto_5

    .line 743
    :cond_5
    invoke-direct {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/ac;->a(Lcom/baidu/cyberplayer/utils/aE;Lcom/baidu/cyberplayer/utils/af;)Z

    .line 739
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 749
    :cond_6
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/ai;)V
    .locals 4

    .line 812
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/V;

    move-result-object v0

    .line 813
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/V;->size()I

    move-result v1

    .line 814
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 815
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/V;->a(I)Lcom/baidu/cyberplayer/utils/U;

    move-result-object v3

    .line 816
    invoke-virtual {v3, p1}, Lcom/baidu/cyberplayer/utils/U;->a(Lcom/baidu/cyberplayer/utils/ai;)V

    .line 814
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 818
    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/an;)V
    .locals 4

    .line 651
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/ae;

    move-result-object v0

    .line 652
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ae;->size()I

    move-result v1

    .line 653
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 654
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/ae;->a(I)Lcom/baidu/cyberplayer/utils/af;

    move-result-object v3

    .line 655
    invoke-virtual {v3, p1}, Lcom/baidu/cyberplayer/utils/af;->a(Lcom/baidu/cyberplayer/utils/an;)V

    .line 653
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 657
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .line 584
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->b()Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    .line 585
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/aa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ac;->g()Ljava/lang/String;

    move-result-object v1

    .line 587
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ac;->h()Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v3

    .line 591
    new-instance v4, Lcom/baidu/cyberplayer/utils/aM;

    invoke-direct {v4}, Lcom/baidu/cyberplayer/utils/aM;-><init>()V

    .line 592
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ag;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/cyberplayer/utils/aM;->e(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/aa;->b()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/baidu/cyberplayer/utils/aM;->c(I)V

    .line 594
    invoke-virtual {v4, v0}, Lcom/baidu/cyberplayer/utils/aM;->l(Ljava/lang/String;)V

    .line 595
    const-string/jumbo v0, "ssdp:alive"

    invoke-virtual {v4, v0}, Lcom/baidu/cyberplayer/utils/aM;->k(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v4, v1}, Lcom/baidu/cyberplayer/utils/aM;->j(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v4, v2}, Lcom/baidu/cyberplayer/utils/aM;->m(Ljava/lang/String;)V

    .line 599
    new-instance v0, Lcom/baidu/cyberplayer/utils/aN;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/aN;-><init>(Ljava/lang/String;)V

    .line 600
    invoke-static {}, Lcom/baidu/cyberplayer/utils/aa;->a()V

    .line 601
    invoke-virtual {v0, v4}, Lcom/baidu/cyberplayer/utils/aN;->a(Lcom/baidu/cyberplayer/utils/aM;)Z

    .line 602
    return-void
.end method

.method public a()Z
    .locals 1

    .line 784
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ce;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aP;)Z
    .locals 6

    .line 623
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aP;->g()Ljava/lang/String;

    move-result-object v0

    .line 625
    if-nez v0, :cond_0

    .line 626
    const/4 p1, 0x0

    return p1

    .line 628
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v1

    .line 630
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ac;->g()Ljava/lang/String;

    move-result-object v2

    .line 631
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ac;->h()Ljava/lang/String;

    move-result-object v3

    .line 633
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ax;->a(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 634
    invoke-virtual {v1, p1, v2, v3}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/aP;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 636
    :cond_1
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ax;->e(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 637
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Ljava/lang/String;

    move-result-object v2

    .line 638
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v5, :cond_2

    .line 639
    invoke-virtual {v1, p1, v2, v3}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/aP;Ljava/lang/String;Ljava/lang/String;)Z

    .line 642
    :cond_2
    :goto_0
    return v5
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a()[B
    .locals 3

    .line 428
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ac;->d()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 429
    if-nez v0, :cond_0

    .line 430
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 432
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/baidu/cyberplayer/utils/aa;
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 239
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "serviceId"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 778
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/ac;->c(Ljava/lang/String;)V

    .line 779
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/ac;->a(J)V

    .line 780
    return-void
.end method

.method public b(Lcom/baidu/cyberplayer/utils/aE;)V
    .locals 1

    .line 675
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/aF;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/aF;->remove(Ljava/lang/Object;)Z

    .line 676
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 608
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ac;->g()Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ac;->h()Ljava/lang/String;

    move-result-object v1

    .line 611
    new-instance v2, Lcom/baidu/cyberplayer/utils/aM;

    invoke-direct {v2}, Lcom/baidu/cyberplayer/utils/aM;-><init>()V

    .line 612
    const-string/jumbo v3, "ssdp:byebye"

    invoke-virtual {v2, v3}, Lcom/baidu/cyberplayer/utils/aM;->k(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v2, v0}, Lcom/baidu/cyberplayer/utils/aM;->j(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v2, v1}, Lcom/baidu/cyberplayer/utils/aM;->m(Ljava/lang/String;)V

    .line 616
    new-instance v0, Lcom/baidu/cyberplayer/utils/aN;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/aN;-><init>(Ljava/lang/String;)V

    .line 617
    invoke-static {}, Lcom/baidu/cyberplayer/utils/aa;->a()V

    .line 618
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/aN;->a(Lcom/baidu/cyberplayer/utils/aM;)Z

    .line 619
    return-void
.end method

.method public b()Z
    .locals 1

    .line 789
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 300
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 274
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "SCPDURL"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 773
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/bY;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bY;->a(Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 321
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 295
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "controlURL"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/cyberplayer/utils/au;
        }
    .end annotation

    .line 331
    :try_start_0
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ag;->a()Lcom/baidu/cyberplayer/utils/cl;

    move-result-object v0

    .line 332
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/cl;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    .line 333
    if-nez p1, :cond_0

    .line 334
    const/4 p1, 0x0

    return p1

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/bY;

    move-result-object v0

    .line 336
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bY;->b(Lcom/baidu/cyberplayer/utils/cj;)V
    :try_end_0
    .catch Lcom/baidu/cyberplayer/utils/cm; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    nop

    .line 341
    const/4 p1, 0x1

    return p1

    .line 338
    :catch_0
    move-exception p1

    .line 339
    new-instance v0, Lcom/baidu/cyberplayer/utils/au;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/au;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 316
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "eventSubURL"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 0

    .line 533
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/af;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 768
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/bY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bY;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 3

    .line 542
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 543
    return v0

    .line 544
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 545
    return v2

    .line 546
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ac;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v2, :cond_2

    .line 547
    return v2

    .line 548
    :cond_2
    return v0
.end method
