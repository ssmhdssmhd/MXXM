.class public Lcom/baidu/cyberplayer/utils/aY;
.super Lcom/baidu/cyberplayer/utils/Z;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/Z;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    .line 60
    return-void
.end method

.method private a(Lcom/baidu/cyberplayer/utils/bB;Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;ZI)I
    .locals 13

    .line 487
    const/4 v7, 0x0

    if-eqz p3, :cond_a

    const/4 v8, 0x1

    add-int/lit8 v9, p5, 0x1

    const/4 v0, 0x5

    if-ne v9, v0, :cond_0

    goto/16 :goto_5

    .line 490
    :cond_0
    const/4 v5, 0x0

    const-string v6, ""

    const-string v3, "*"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/cyberplayer/utils/aY;->b(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v3

    .line 491
    move-object v6, v2

    if-nez v3, :cond_1

    .line 492
    return v7

    .line 494
    :cond_1
    new-instance v10, Lcom/baidu/cyberplayer/utils/ba;

    invoke-direct {v10, v3}, Lcom/baidu/cyberplayer/utils/ba;-><init>(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 495
    nop

    .line 496
    invoke-virtual {v10}, Lcom/baidu/cyberplayer/utils/ba;->a()I

    move-result v11

    .line 497
    const/4 v0, 0x0

    :goto_0
    if-ge v7, v11, :cond_9

    .line 498
    invoke-virtual {v10, v7}, Lcom/baidu/cyberplayer/utils/ba;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    .line 499
    nop

    .line 500
    invoke-static {v1}, Lcom/baidu/cyberplayer/utils/bB;->a(Lcom/baidu/cyberplayer/utils/cj;)Z

    move-result v2

    if-ne v2, v8, :cond_2

    .line 501
    new-instance v2, Lcom/baidu/cyberplayer/utils/bB;

    invoke-direct {v2}, Lcom/baidu/cyberplayer/utils/bB;-><init>()V

    goto :goto_1

    .line 503
    :cond_2
    invoke-static {v1}, Lcom/baidu/cyberplayer/utils/bK;->a(Lcom/baidu/cyberplayer/utils/cj;)Z

    move-result v2

    if-ne v2, v8, :cond_3

    .line 504
    new-instance v2, Lcom/baidu/cyberplayer/utils/bK;

    invoke-direct {v2}, Lcom/baidu/cyberplayer/utils/bK;-><init>()V

    goto :goto_1

    .line 503
    :cond_3
    const/4 v2, 0x0

    .line 505
    :goto_1
    if-nez v2, :cond_4

    .line 506
    move v5, v9

    goto :goto_4

    .line 507
    :cond_4
    invoke-virtual {v2, v1}, Lcom/baidu/cyberplayer/utils/bl;->a(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 508
    invoke-virtual {p1, v2}, Lcom/baidu/cyberplayer/utils/bB;->a(Lcom/baidu/cyberplayer/utils/bl;)V

    .line 509
    invoke-virtual {v2, v6}, Lcom/baidu/cyberplayer/utils/bl;->c(Ljava/lang/String;)V

    .line 510
    add-int/lit8 v12, v0, 0x1

    .line 512
    if-eqz p4, :cond_8

    .line 513
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/bl;->b()Z

    move-result v0

    if-ne v0, v8, :cond_7

    .line 514
    move-object v1, v2

    check-cast v1, Lcom/baidu/cyberplayer/utils/bB;

    .line 515
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/bB;->c()I

    move-result v0

    .line 517
    if-gtz v0, :cond_6

    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/aa;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XBMC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v5, v9

    goto :goto_3

    .line 518
    :cond_6
    :goto_2
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/bB;->b()Ljava/lang/String;

    move-result-object v3

    .line 519
    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p2

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/bB;Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;ZI)I

    goto :goto_3

    .line 513
    :cond_7
    move v5, v9

    goto :goto_3

    .line 512
    :cond_8
    move v5, v9

    .line 497
    :goto_3
    move v0, v12

    :goto_4
    add-int/lit8 v7, v7, 0x1

    move v9, v5

    goto :goto_0

    .line 525
    :cond_9
    return v0

    .line 488
    :cond_a
    :goto_5
    return v7
.end method

.method private a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ab;
    .locals 6

    .line 68
    new-instance v0, Lcom/baidu/cyberplayer/utils/ab;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ab;-><init>()V

    .line 70
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aY;->a()Lcom/baidu/cyberplayer/utils/ab;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ab;->size()I

    move-result v2

    .line 72
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 73
    invoke-virtual {v1, v3}, Lcom/baidu/cyberplayer/utils/ab;->a(I)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v4

    .line 74
    invoke-virtual {v4, p1}, Lcom/baidu/cyberplayer/utils/aa;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    invoke-virtual {v0, v4}, Lcom/baidu/cyberplayer/utils/ab;->add(Ljava/lang/Object;)Z

    .line 72
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/cyberplayer/utils/aa;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 936
    const-string v0, "Get Volume Failed!"

    if-eqz p1, :cond_3

    .line 939
    const-string/jumbo v1, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object p1

    .line 940
    if-eqz p1, :cond_2

    .line 943
    const-string v1, "GetVolume"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/U;

    move-result-object v1

    .line 944
    if-eqz v1, :cond_1

    .line 947
    const-string v0, "InstanceID"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const-string v0, "Channel"

    const-string v2, "Master"

    invoke-virtual {v1, v0, v2}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/U;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    const-string v0, "Volume"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/af;

    move-result-object p1

    .line 957
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/af;->a()Lcom/baidu/cyberplayer/utils/W;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/W;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 958
    const-string v0, "CurrentVolume"

    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)I

    move-result v0

    .line 959
    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, p1

    .line 960
    return v0

    .line 951
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/ah;

    move-result-object p1

    .line 952
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLNA MediaController:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/U;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;->OnError(ILjava/lang/String;)V

    .line 954
    new-instance p1, Lcom/baidu/cyberplayer/dlna/DLNAException;

    const-string v0, "Action Failed"

    invoke-direct {p1, v0}, Lcom/baidu/cyberplayer/dlna/DLNAException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 945
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 941
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 937
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/bB;Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)I
    .locals 14

    .line 439
    const/4 v7, 0x0

    if-nez p3, :cond_0

    .line 440
    return v7

    .line 442
    :cond_0
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/cyberplayer/utils/aY;->b(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v3

    .line 443
    if-nez v3, :cond_1

    .line 444
    return v7

    .line 446
    :cond_1
    new-instance v0, Lcom/baidu/cyberplayer/utils/ba;

    invoke-direct {v0, v3}, Lcom/baidu/cyberplayer/utils/ba;-><init>(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 447
    nop

    .line 448
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ba;->a()I

    move-result v1

    .line 449
    const/4 v3, 0x0

    :goto_0
    if-ge v7, v1, :cond_6

    .line 450
    invoke-virtual {v0, v7}, Lcom/baidu/cyberplayer/utils/ba;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v4

    .line 451
    nop

    .line 452
    invoke-static {v4}, Lcom/baidu/cyberplayer/utils/bB;->a(Lcom/baidu/cyberplayer/utils/cj;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 453
    new-instance v5, Lcom/baidu/cyberplayer/utils/bB;

    invoke-direct {v5}, Lcom/baidu/cyberplayer/utils/bB;-><init>()V

    goto :goto_1

    .line 455
    :cond_2
    invoke-static {v4}, Lcom/baidu/cyberplayer/utils/bK;->a(Lcom/baidu/cyberplayer/utils/cj;)Z

    move-result v5

    if-ne v5, v6, :cond_3

    .line 456
    new-instance v5, Lcom/baidu/cyberplayer/utils/bK;

    invoke-direct {v5}, Lcom/baidu/cyberplayer/utils/bK;-><init>()V

    goto :goto_1

    .line 455
    :cond_3
    const/4 v5, 0x0

    .line 457
    :goto_1
    if-nez v5, :cond_4

    .line 458
    goto :goto_2

    .line 459
    :cond_4
    invoke-virtual {v5, v4}, Lcom/baidu/cyberplayer/utils/bl;->a(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 460
    invoke-virtual {p1, v5}, Lcom/baidu/cyberplayer/utils/bB;->a(Lcom/baidu/cyberplayer/utils/bl;)V

    .line 461
    invoke-virtual {v5, v2}, Lcom/baidu/cyberplayer/utils/bl;->c(Ljava/lang/String;)V

    .line 462
    add-int/lit8 v3, v3, 0x1

    .line 464
    if-eqz p8, :cond_5

    .line 465
    invoke-virtual {v5}, Lcom/baidu/cyberplayer/utils/bl;->b()Z

    move-result v4

    if-ne v4, v6, :cond_5

    .line 466
    move-object v9, v5

    check-cast v9, Lcom/baidu/cyberplayer/utils/bB;

    .line 467
    invoke-virtual {v9}, Lcom/baidu/cyberplayer/utils/bB;->c()I

    move-result v4

    .line 468
    if-lez v4, :cond_5

    .line 469
    invoke-virtual {v9}, Lcom/baidu/cyberplayer/utils/bB;->b()Ljava/lang/String;

    move-result-object v11

    .line 470
    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v8, p0

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/bB;Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;ZI)I

    .line 449
    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 476
    :cond_6
    return v3
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZZ)Lcom/baidu/cyberplayer/utils/bB;
    .locals 9

    .line 425
    new-instance v1, Lcom/baidu/cyberplayer/utils/bC;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/bC;-><init>()V

    .line 427
    if-eqz p8, :cond_0

    .line 428
    invoke-virtual/range {p0 .. p6}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/utils/bB;->a(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 433
    :cond_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/bB;Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)I

    .line 435
    return-object v1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Z)Lcom/baidu/cyberplayer/utils/bB;
    .locals 1

    .line 481
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;ZZ)Lcom/baidu/cyberplayer/utils/bB;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;ZZ)Lcom/baidu/cyberplayer/utils/bB;
    .locals 9

    .line 411
    new-instance v1, Lcom/baidu/cyberplayer/utils/bC;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/bC;-><init>()V

    .line 413
    if-eqz p4, :cond_0

    .line 414
    const/4 v7, 0x0

    const-string v8, ""

    const-string v5, "*"

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    .line 415
    move-object v2, v3

    move-object v3, v4

    if-eqz p1, :cond_1

    .line 416
    invoke-virtual {v1, p1}, Lcom/baidu/cyberplayer/utils/bB;->a(Lcom/baidu/cyberplayer/utils/cj;)V

    goto :goto_0

    .line 413
    :cond_0
    move-object v2, p1

    move-object v3, p2

    .line 419
    :cond_1
    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/bB;Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;ZI)I

    .line 421
    return-object v1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 8

    .line 367
    const-string v3, "BrowseMetadata"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 3

    .line 124
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "browse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 127
    return-object v0

    .line 129
    :cond_0
    const-string/jumbo v1, "urn:schemas-upnp-org:service:ContentDirectory:1"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object p1

    .line 130
    if-nez p1, :cond_1

    .line 131
    return-object v0

    .line 132
    :cond_1
    const-string v1, "Browse"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/U;

    move-result-object p1

    .line 133
    if-nez p1, :cond_2

    .line 134
    return-object v0

    .line 136
    :cond_2
    new-instance v1, Lcom/baidu/cyberplayer/utils/aZ;

    invoke-direct {v1, p1}, Lcom/baidu/cyberplayer/utils/aZ;-><init>(Lcom/baidu/cyberplayer/utils/U;)V

    .line 137
    invoke-virtual {v1, p2}, Lcom/baidu/cyberplayer/utils/aZ;->b(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1, p3}, Lcom/baidu/cyberplayer/utils/aZ;->a(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, p5}, Lcom/baidu/cyberplayer/utils/aZ;->a(I)V

    .line 140
    invoke-virtual {v1, p6}, Lcom/baidu/cyberplayer/utils/aZ;->b(I)V

    .line 141
    invoke-virtual {v1, p4}, Lcom/baidu/cyberplayer/utils/aZ;->c(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, p7}, Lcom/baidu/cyberplayer/utils/aZ;->d(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/aZ;->a()Z

    move-result p1

    if-nez p1, :cond_3

    .line 144
    return-object v0

    .line 154
    :cond_3
    if-nez p6, :cond_5

    .line 155
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/aZ;->a()I

    move-result p1

    .line 156
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/aZ;->b()I

    move-result p2

    .line 157
    if-nez p1, :cond_5

    .line 158
    if-lez p2, :cond_4

    .line 159
    invoke-virtual {v1, p2}, Lcom/baidu/cyberplayer/utils/aZ;->b(I)V

    .line 160
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/aZ;->a()Z

    move-result p1

    if-nez p1, :cond_5

    .line 161
    return-object v0

    .line 164
    :cond_4
    const/16 p1, 0x270f

    invoke-virtual {v1, p1}, Lcom/baidu/cyberplayer/utils/aZ;->b(I)V

    .line 165
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/aZ;->a()Z

    move-result p1

    if-nez p1, :cond_5

    .line 166
    return-object v0

    .line 171
    :cond_5
    const-string p1, "Result"

    invoke-virtual {v1, p1}, Lcom/baidu/cyberplayer/utils/aZ;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object p1

    .line 172
    if-nez p1, :cond_6

    .line 173
    return-object v0

    .line 175
    :cond_6
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/X;->c()Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/cn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 177
    if-nez p1, :cond_7

    .line 178
    return-object v0

    .line 180
    :cond_7
    nop

    .line 182
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ag;->a()Lcom/baidu/cyberplayer/utils/cl;

    move-result-object p2

    .line 185
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/baidu/cyberplayer/utils/cl;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1
    :try_end_0
    .catch Lcom/baidu/cyberplayer/utils/cm; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    nop

    .line 192
    return-object p1

    .line 187
    :catch_0
    move-exception p1

    .line 188
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 189
    return-object v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aa;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1107
    const-string v0, "Get Media Position Failed!"

    if-eqz p1, :cond_7

    .line 1110
    const-string/jumbo v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v1

    .line 1111
    if-eqz v1, :cond_6

    .line 1114
    const-string v2, "GetPositionInfo"

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/U;

    move-result-object v1

    .line 1115
    if-eqz v1, :cond_5

    .line 1118
    const-string v2, "InstanceID"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/U;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1123
    const-string v0, "RelTime"

    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aY;->c:Ljava/lang/String;

    .line 1124
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aY;->c:Ljava/lang/String;

    const-string v2, "NOT_IMPLEMENTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    const-string v0, "AbsTime"

    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aY;->c:Ljava/lang/String;

    .line 1127
    :cond_0
    const-string v0, "TrackDuration"

    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aY;->d:Ljava/lang/String;

    .line 1128
    const-string v0, "TrackURI"

    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aY;->b:Ljava/lang/String;

    .line 1129
    const-string v0, "TrackMetaData"

    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1130
    const-string v1, ""

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1131
    nop

    .line 1132
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ag;->a()Lcom/baidu/cyberplayer/utils/cl;

    move-result-object v2

    .line 1133
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->g()Ljava/lang/String;

    move-result-object p1

    const-string v3, "DaPingMu"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1134
    const-string p1, "&"

    const-string v3, "&amp;"

    invoke-virtual {v0, p1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    :cond_1
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/baidu/cyberplayer/utils/cl;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    .line 1138
    const-string v0, "item"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    .line 1139
    if-eqz p1, :cond_2

    .line 1140
    new-instance v0, Lcom/baidu/cyberplayer/utils/bK;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bK;-><init>()V

    .line 1141
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bK;->a(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 1142
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bK;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aY;->e:Ljava/lang/String;
    :try_end_0
    .catch Lcom/baidu/cyberplayer/utils/cm; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    :cond_2
    goto :goto_0

    .line 1145
    :catch_0
    move-exception p1

    .line 1146
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 1147
    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/aY;->e:Ljava/lang/String;

    .line 1149
    :goto_0
    goto :goto_1

    .line 1150
    :cond_3
    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/aY;->e:Ljava/lang/String;

    .line 1153
    :goto_1
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/aY;->c:Ljava/lang/String;

    return-object p1

    .line 1121
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1116
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1112
    :cond_6
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1108
    :cond_7
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 223
    const/4 v5, 0x0

    const-string v6, ""

    const-string v3, "*"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/cyberplayer/utils/aY;->b(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    .line 224
    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 225
    return-object p2

    .line 227
    :cond_0
    new-instance v0, Lcom/baidu/cyberplayer/utils/ba;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/ba;-><init>(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 228
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ba;->a()I

    move-result p1

    .line 229
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_4

    .line 230
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/ba;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v3

    .line 231
    nop

    .line 232
    invoke-static {v3}, Lcom/baidu/cyberplayer/utils/bB;->a(Lcom/baidu/cyberplayer/utils/cj;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    new-instance v4, Lcom/baidu/cyberplayer/utils/bB;

    invoke-direct {v4}, Lcom/baidu/cyberplayer/utils/bB;-><init>()V

    .line 234
    invoke-virtual {v4, v3}, Lcom/baidu/cyberplayer/utils/bl;->a(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 235
    invoke-virtual {v4, v2}, Lcom/baidu/cyberplayer/utils/bl;->c(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/bl;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 237
    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/bl;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 232
    :cond_1
    move-object v4, p2

    .line 239
    :cond_2
    if-nez v4, :cond_3

    .line 240
    nop

    .line 229
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_4
    return-object p2
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    .line 196
    add-int/lit8 v0, p4, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt p4, v1, :cond_0

    return-object v2

    .line 197
    :cond_0
    const/4 v8, 0x0

    const-string v9, ""

    const-string v6, "*"

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/baidu/cyberplayer/utils/aY;->b(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    .line 198
    if-nez p1, :cond_1

    .line 199
    return-object v2

    .line 201
    :cond_1
    new-instance p2, Lcom/baidu/cyberplayer/utils/ba;

    invoke-direct {p2, p1}, Lcom/baidu/cyberplayer/utils/ba;-><init>(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 202
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/ba;->a()I

    move-result p1

    .line 203
    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_6

    .line 204
    invoke-virtual {p2, p4}, Lcom/baidu/cyberplayer/utils/ba;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    .line 205
    nop

    .line 206
    invoke-static {v1}, Lcom/baidu/cyberplayer/utils/bB;->a(Lcom/baidu/cyberplayer/utils/cj;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 207
    new-instance v6, Lcom/baidu/cyberplayer/utils/bB;

    invoke-direct {v6}, Lcom/baidu/cyberplayer/utils/bB;-><init>()V

    .line 208
    invoke-virtual {v6, v1}, Lcom/baidu/cyberplayer/utils/bl;->a(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 209
    invoke-virtual {v6, v5}, Lcom/baidu/cyberplayer/utils/bl;->c(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v6}, Lcom/baidu/cyberplayer/utils/bl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    invoke-virtual {v6}, Lcom/baidu/cyberplayer/utils/bl;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 212
    :cond_2
    invoke-virtual {v6}, Lcom/baidu/cyberplayer/utils/bl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1, p3, v0}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 213
    if-eqz v1, :cond_4

    return-object v1

    .line 206
    :cond_3
    move-object v6, v2

    .line 215
    :cond_4
    if-nez v6, :cond_5

    .line 216
    nop

    .line 203
    :cond_5
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 219
    :cond_6
    return-object v2
.end method

.method public a(Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    .line 601
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aa;)Z
    .locals 5

    .line 824
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 825
    return v0

    .line 827
    :cond_0
    const-string/jumbo v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object p1

    .line 828
    if-nez p1, :cond_1

    .line 829
    return v0

    .line 831
    :cond_1
    const-string v1, "Play"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/U;

    move-result-object p1

    .line 832
    if-nez p1, :cond_2

    .line 833
    return v0

    .line 835
    :cond_2
    const-string v0, "InstanceID"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v0, "Speed"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Z

    move-result v0

    .line 839
    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 841
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/ah;

    move-result-object v1

    .line 842
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLNA MediaController:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 843
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v2

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;->OnError(ILjava/lang/String;)V

    .line 846
    :cond_3
    return v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aa;I)Z
    .locals 4

    .line 994
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 995
    return v0

    .line 997
    :cond_0
    const-string/jumbo v1, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object p1

    .line 998
    if-nez p1, :cond_1

    .line 999
    return v0

    .line 1001
    :cond_1
    const-string v1, "SetVolume"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/U;

    move-result-object v1

    .line 1002
    if-nez v1, :cond_2

    .line 1003
    return v0

    .line 1005
    :cond_2
    const-string v0, "InstanceID"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const-string v0, "Channel"

    const-string v2, "Master"

    invoke-virtual {v1, v0, v2}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const-string v0, "Volume"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/af;

    move-result-object p1

    .line 1009
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/af;->a()Lcom/baidu/cyberplayer/utils/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/W;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1010
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/af;->a()Lcom/baidu/cyberplayer/utils/W;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/W;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1011
    mul-int p1, p1, p2

    div-int/lit8 p1, p1, 0x64

    add-int/2addr v0, p1

    .line 1013
    const-string p1, "DesiredVolume"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/U;->a()Z

    move-result p1

    .line 1016
    iget-object p2, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    .line 1018
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/ah;

    move-result-object p2

    .line 1019
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLNA MediaController:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/U;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1020
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v1

    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;->OnError(ILjava/lang/String;)V

    .line 1023
    :cond_3
    return p1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aa;Lcom/baidu/cyberplayer/dlna/AVMetaData;)Z
    .locals 13

    .line 737
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 738
    return v0

    .line 740
    :cond_0
    if-nez p2, :cond_1

    .line 741
    return v0

    .line 743
    :cond_1
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/dlna/AVMetaData;->getVideoURL()Ljava/lang/String;

    move-result-object v1

    .line 744
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/dlna/AVMetaData;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 745
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/dlna/AVMetaData;->getScriptURL()Ljava/lang/String;

    move-result-object v3

    .line 747
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    goto/16 :goto_4

    .line 750
    :cond_2
    const-string/jumbo v4, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v4}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v4

    .line 751
    if-nez v4, :cond_3

    .line 752
    return v0

    .line 754
    :cond_3
    const-string v5, "SetAVTransportURI"

    invoke-virtual {v4, v5}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/U;

    move-result-object v4

    .line 755
    if-nez v4, :cond_4

    .line 756
    return v0

    .line 758
    :cond_4
    const-string v0, "InstanceID"

    const-string v5, "0"

    invoke-virtual {v4, v0, v5}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v0, "CurrentURI"

    invoke-virtual {v4, v0, v1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    new-instance v0, Lcom/baidu/cyberplayer/utils/bK;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bK;-><init>()V

    .line 764
    nop

    .line 765
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->g()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DaPingMu"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v7, "&amp;"

    const-string v8, "&"

    if-nez v5, :cond_5

    .line 766
    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 769
    :cond_5
    const-string v5, ":*"

    const-string v9, "http-get:*:"

    const-string v10, "object.item.videoItem.movie"

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_8

    .line 770
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 771
    const-string v12, "image"

    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 772
    const-string v2, "object.item.imageItem.photo"

    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/bK;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 773
    :cond_6
    const-string v12, "audio"

    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 774
    const-string v2, "object.item.audioItem.musicTrack"

    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/bK;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 776
    :cond_7
    invoke-virtual {v0, v10}, Lcom/baidu/cyberplayer/utils/bK;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 779
    :cond_8
    nop

    .line 780
    invoke-virtual {v0, v10}, Lcom/baidu/cyberplayer/utils/bK;->e(Ljava/lang/String;)V

    const-string v11, "http-get:*:video/*:*"

    .line 782
    :goto_0
    invoke-virtual {v0, v1, v11}, Lcom/baidu/cyberplayer/utils/bK;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/dlna/AVMetaData;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 784
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 785
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/dlna/AVMetaData;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bK;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 787
    :cond_9
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/dlna/AVMetaData;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bK;->d(Ljava/lang/String;)V

    .line 790
    :cond_a
    :goto_1
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/dlna/AVMetaData;->getScriptOpened()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "on"

    goto :goto_2

    :cond_b
    const-string p1, "off"

    :goto_2
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bK;->h(Ljava/lang/String;)V

    .line 792
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_d

    .line 793
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 794
    new-instance v1, Lcom/baidu/cyberplayer/utils/bn;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/bn;-><init>()V

    .line 795
    const-string v2, "res"

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/bn;->a(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v1, p1}, Lcom/baidu/cyberplayer/utils/bn;->b(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/dlna/AVMetaData;->getScriptMimeType()Ljava/lang/String;

    move-result-object p1

    .line 798
    const-string v2, "protocolInfo"

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_c

    .line 799
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/baidu/cyberplayer/dlna/AVMetaData;->getScriptMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/baidu/cyberplayer/utils/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 801
    :cond_c
    const-string p1, "http-get:*:text/plain:*"

    invoke-virtual {v1, v2, p1}, Lcom/baidu/cyberplayer/utils/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :goto_3
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/bK;->a(Lcom/baidu/cyberplayer/utils/bn;)V

    .line 805
    :cond_d
    new-instance p1, Lcom/baidu/cyberplayer/utils/bp;

    invoke-direct {p1}, Lcom/baidu/cyberplayer/utils/bp;-><init>()V

    .line 806
    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/bp;->a(Lcom/baidu/cyberplayer/utils/bl;)V

    .line 807
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bp;->toString()Ljava/lang/String;

    move-result-object p1

    .line 808
    const-string p2, "CurrentURIMetaData"

    invoke-virtual {v4, p2, p1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/U;->a()Z

    move-result p1

    .line 812
    iget-object p2, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    if-eqz p2, :cond_e

    if-nez p1, :cond_e

    .line 814
    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/ah;

    move-result-object p2

    .line 815
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLNA MediaController:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/U;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v1

    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;->OnError(ILjava/lang/String;)V

    .line 819
    :cond_e
    return p1

    .line 748
    :cond_f
    :goto_4
    return v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;)Z
    .locals 6

    .line 649
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 650
    return v0

    .line 652
    :cond_0
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto/16 :goto_5

    .line 655
    :cond_1
    const-string/jumbo v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v1

    .line 656
    if-nez v1, :cond_2

    .line 657
    return v0

    .line 659
    :cond_2
    const-string v2, "SetAVTransportURI"

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/U;

    move-result-object v1

    .line 660
    if-nez v1, :cond_3

    .line 661
    return v0

    .line 666
    :cond_3
    const-string v0, "InstanceID"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v0, "CurrentURI"

    invoke-virtual {v1, v0, p2}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v0, "CurrentURIMetaData"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->f()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Sony"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 673
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/U;->a()Z

    move-result p1

    goto/16 :goto_4

    .line 676
    :cond_4
    new-instance p1, Lcom/baidu/cyberplayer/utils/bK;

    invoke-direct {p1}, Lcom/baidu/cyberplayer/utils/bK;-><init>()V

    .line 677
    nop

    .line 679
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 682
    const/16 v5, 0x7d0

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 683
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 684
    const-string v5, "HEAD"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 685
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 686
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 687
    if-eqz v3, :cond_5

    .line 688
    const-string v5, "\""

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 689
    :cond_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 693
    :catch_0
    move-exception v4

    .line 695
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 690
    :catch_1
    move-exception v4

    .line 692
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 696
    :goto_0
    nop

    .line 698
    :goto_1
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    .line 702
    :cond_6
    nop

    .line 703
    const-string v4, "&"

    const-string v5, "&amp;"

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 704
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http-get:*:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 705
    const-string v5, "image"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 706
    const-string v3, "object.item.imageItem.photo"

    invoke-virtual {p1, v3}, Lcom/baidu/cyberplayer/utils/bK;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 707
    :cond_7
    const-string v5, "audio"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 708
    const-string v3, "object.item.audioItem.musicTrack"

    invoke-virtual {p1, v3}, Lcom/baidu/cyberplayer/utils/bK;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 710
    :cond_8
    const-string v3, "object.item.videoItem.movie"

    invoke-virtual {p1, v3}, Lcom/baidu/cyberplayer/utils/bK;->e(Ljava/lang/String;)V

    .line 712
    :goto_2
    invoke-virtual {p1, p2, v4}, Lcom/baidu/cyberplayer/utils/bK;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    new-instance p2, Lcom/baidu/cyberplayer/utils/bp;

    invoke-direct {p2}, Lcom/baidu/cyberplayer/utils/bp;-><init>()V

    .line 714
    invoke-virtual {p2, p1}, Lcom/baidu/cyberplayer/utils/bp;->a(Lcom/baidu/cyberplayer/utils/bl;)V

    .line 715
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/bp;->toString()Ljava/lang/String;

    move-result-object p1

    .line 716
    invoke-virtual {v1, v0, p1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/U;->a()Z

    move-result p1

    goto :goto_4

    .line 699
    :cond_9
    :goto_3
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/U;->a()Z

    move-result p1

    .line 722
    :goto_4
    iget-object p2, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    if-eqz p2, :cond_a

    if-nez p1, :cond_a

    .line 724
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/ah;

    move-result-object p2

    .line 725
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLNA MediaController:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/U;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v1

    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;->OnError(ILjava/lang/String;)V

    .line 729
    :cond_a
    return p1

    .line 653
    :cond_b
    :goto_5
    return v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aa;Z)Z
    .locals 4

    .line 967
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 968
    return v0

    .line 970
    :cond_0
    const-string/jumbo v1, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object p1

    .line 971
    if-nez p1, :cond_1

    .line 972
    return v0

    .line 974
    :cond_1
    const-string v1, "SubSwitch"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/U;

    move-result-object p1

    .line 975
    if-nez p1, :cond_2

    .line 976
    return v0

    .line 978
    :cond_2
    const-string v0, "InstanceID"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    if-eqz p2, :cond_3

    const-string p2, "on"

    goto :goto_0

    :cond_3
    const-string p2, "off"

    :goto_0
    const-string/jumbo v0, "switch"

    invoke-virtual {p1, v0, p2}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Z

    move-result p2

    .line 982
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    .line 984
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/ah;

    move-result-object v0

    .line 985
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLNA MediaController:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 986
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;->OnError(ILjava/lang/String;)V

    .line 989
    :cond_4
    return p2
.end method

.method public b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/aa;
    .locals 1

    .line 97
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aY;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object p1

    .line 98
    if-eqz p1, :cond_0

    const-string/jumbo v0, "urn:schemas-upnp-org:device:MediaServer:1"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/aa;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    return-object p1

    .line 100
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Lcom/baidu/cyberplayer/utils/ab;
    .locals 1

    .line 83
    const-string/jumbo v0, "urn:schemas-upnp-org:device:MediaServer:1"

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/aY;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ab;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 8

    .line 385
    const-string v3, "BrowseDirectChildren"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1179
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aY;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/baidu/cyberplayer/utils/aa;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1158
    const-string v0, "Get Render State Failed!"

    if-eqz p1, :cond_3

    .line 1161
    const-string/jumbo v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object p1

    .line 1162
    if-eqz p1, :cond_2

    .line 1165
    const-string v1, "GetTransportInfo"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/U;

    move-result-object p1

    .line 1166
    if-eqz p1, :cond_1

    .line 1169
    const-string v1, "InstanceID"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1174
    const-string v0, "CurrentTransportState"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1172
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1167
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1163
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1159
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/baidu/cyberplayer/utils/aa;)Z
    .locals 5

    .line 851
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 852
    return v0

    .line 854
    :cond_0
    const-string/jumbo v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object p1

    .line 855
    if-nez p1, :cond_1

    .line 856
    return v0

    .line 858
    :cond_1
    const-string v1, "Pause"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/U;

    move-result-object p1

    .line 859
    if-nez p1, :cond_2

    .line 860
    return v0

    .line 862
    :cond_2
    const-string v0, "InstanceID"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Z

    move-result v0

    .line 865
    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 867
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/ah;

    move-result-object v1

    .line 868
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLNA MediaController:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 869
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v2

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;->OnError(ILjava/lang/String;)V

    .line 872
    :cond_3
    return v0
.end method

.method public b(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;)Z
    .locals 4

    .line 903
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 904
    return v0

    .line 906
    :cond_0
    const-string/jumbo v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object p1

    .line 907
    if-nez p1, :cond_1

    .line 908
    return v0

    .line 910
    :cond_1
    const-string v1, "Seek"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/U;

    move-result-object p1

    .line 911
    if-nez p1, :cond_2

    .line 912
    return v0

    .line 914
    :cond_2
    const-string v0, "InstanceID"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v0, "REL_TIME"

    const-string v1, "Unit"

    invoke-virtual {p1, v1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string v0, "Target"

    invoke-virtual {p1, v0, p2}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Z

    move-result p2

    .line 919
    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ah;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 921
    const-string p2, "ABS_TIME"

    invoke-virtual {p1, v1, p2}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Z

    move-result p2

    .line 924
    :cond_3
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    .line 926
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/ah;

    move-result-object v0

    .line 927
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLNA MediaController:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 928
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;->OnError(ILjava/lang/String;)V

    .line 931
    :cond_4
    return p2
.end method

.method public b(Lcom/baidu/cyberplayer/utils/aa;Z)Z
    .locals 4

    .line 1055
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1056
    return v0

    .line 1058
    :cond_0
    const-string/jumbo v1, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object p1

    .line 1059
    if-nez p1, :cond_1

    .line 1060
    return v0

    .line 1062
    :cond_1
    const-string v1, "SetMute"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/U;

    move-result-object p1

    .line 1063
    if-nez p1, :cond_2

    .line 1064
    return v0

    .line 1066
    :cond_2
    const-string v0, "InstanceID"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-string v0, "Channel"

    const-string v2, "Master"

    invoke-virtual {p1, v0, v2}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    if-eqz p2, :cond_3

    const-string v1, "1"

    .line 1069
    :cond_3
    const-string p2, "DesiredMute"

    invoke-virtual {p1, p2, v1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Z

    move-result p2

    .line 1072
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    .line 1074
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/ah;

    move-result-object v0

    .line 1075
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLNA MediaController:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1076
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;->OnError(ILjava/lang/String;)V

    .line 1079
    :cond_4
    return p2
.end method

.method public c(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/aa;
    .locals 1

    .line 105
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aY;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object p1

    .line 106
    if-eqz p1, :cond_0

    const-string/jumbo v0, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/aa;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    return-object p1

    .line 108
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Lcom/baidu/cyberplayer/utils/ab;
    .locals 1

    .line 88
    const-string/jumbo v0, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/aY;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ab;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aY;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lcom/baidu/cyberplayer/utils/aa;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1196
    const-string v0, "Get Protocol Supported Failed!"

    if-eqz p1, :cond_3

    .line 1199
    const-string/jumbo v1, "urn:schemas-upnp-org:service:ConnectionManager:1"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object p1

    .line 1200
    if-eqz p1, :cond_2

    .line 1203
    const-string v1, "GetProtocolInfo"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/U;

    move-result-object p1

    .line 1204
    if-eqz p1, :cond_1

    .line 1207
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    const-string v0, "Sink"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Ljava/lang/String;

    .line 1214
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Ljava/lang/String;

    return-object p1

    .line 1208
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/ah;

    move-result-object v0

    .line 1209
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLNA MediaController:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1210
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;->OnError(ILjava/lang/String;)V

    .line 1211
    new-instance p1, Lcom/baidu/cyberplayer/dlna/DLNAException;

    const-string v0, "Action Failed"

    invoke-direct {p1, v0}, Lcom/baidu/cyberplayer/dlna/DLNAException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1205
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1201
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1197
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/baidu/cyberplayer/utils/aa;)Z
    .locals 5

    .line 877
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 878
    return v0

    .line 880
    :cond_0
    const-string/jumbo v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object p1

    .line 881
    if-nez p1, :cond_1

    .line 882
    return v0

    .line 884
    :cond_1
    const-string v1, "Stop"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/U;

    move-result-object p1

    .line 885
    if-nez p1, :cond_2

    .line 886
    return v0

    .line 888
    :cond_2
    const-string v0, "InstanceID"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Z

    move-result v0

    .line 891
    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 893
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/ah;

    move-result-object v1

    .line 894
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLNA MediaController:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 895
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v2

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;->OnError(ILjava/lang/String;)V

    .line 898
    :cond_3
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1191
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aY;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Lcom/baidu/cyberplayer/utils/aa;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1281
    const-string v0, "Get System Update Id Failed!"

    if-eqz p1, :cond_3

    .line 1284
    const-string/jumbo v1, "urn:schemas-upnp-org:service:ContentDirectory:1"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object p1

    .line 1285
    if-eqz p1, :cond_2

    .line 1288
    const-string v1, "GetSystemUpdateID"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/U;

    move-result-object p1

    .line 1289
    if-eqz p1, :cond_1

    .line 1292
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1295
    const-string v0, "Id"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1297
    return-object p1

    .line 1293
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1290
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1286
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1282
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lcom/baidu/cyberplayer/utils/aa;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1028
    const-string v0, "Get Mute Failed!"

    if-eqz p1, :cond_3

    .line 1031
    const-string/jumbo v1, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object p1

    .line 1032
    if-eqz p1, :cond_2

    .line 1035
    const-string v1, "GetMute"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/U;

    move-result-object p1

    .line 1036
    if-eqz p1, :cond_1

    .line 1039
    const-string v0, "InstanceID"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const-string v0, "Channel"

    const-string v1, "Master"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    const-string v0, "CurrentMute"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1049
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1043
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/ah;

    move-result-object v0

    .line 1044
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLNA MediaController:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1045
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/aY;->a:Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;->OnError(ILjava/lang/String;)V

    .line 1046
    new-instance p1, Lcom/baidu/cyberplayer/dlna/DLNAException;

    const-string v0, "Action Failed"

    invoke-direct {p1, v0}, Lcom/baidu/cyberplayer/dlna/DLNAException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1037
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1033
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1029
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lcom/baidu/cyberplayer/utils/aa;)Z
    .locals 3

    .line 1251
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1252
    return v0

    .line 1255
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1256
    const-string/jumbo v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object p1

    .line 1257
    if-nez p1, :cond_1

    .line 1258
    return v0

    .line 1259
    :cond_1
    invoke-super {p0, p1}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/ac;)Z

    move-result p1

    return p1

    .line 1260
    :cond_2
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "urn:schemas-upnp-org:device:MediaServer:1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1261
    const-string/jumbo v1, "urn:schemas-upnp-org:service:ContentDirectory:1"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object p1

    .line 1262
    if-nez p1, :cond_3

    .line 1263
    return v0

    .line 1264
    :cond_3
    invoke-super {p0, p1}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/ac;)Z

    move-result p1

    return p1

    .line 1267
    :cond_4
    return v0
.end method
