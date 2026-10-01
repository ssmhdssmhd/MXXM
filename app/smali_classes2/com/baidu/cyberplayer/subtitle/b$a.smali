.class Lcom/baidu/cyberplayer/subtitle/b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/subtitle/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private volatile a:I

.field private a:J

.field private a:Landroid/os/Handler;

.field final synthetic a:Lcom/baidu/cyberplayer/subtitle/b;

.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/cyberplayer/utils/v;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private volatile b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/subtitle/b;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 2

    .line 324
    iput-object p1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Lcom/baidu/cyberplayer/subtitle/b;

    .line 325
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 310
    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:I

    .line 312
    iput p1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->b:I

    .line 314
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:J

    .line 316
    iput p1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->c:I

    .line 318
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Z

    .line 326
    iput-object p3, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Landroid/os/Handler;

    .line 327
    return-void
.end method

.method private a(I)V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/cyberplayer/utils/v;

    .line 525
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/v;->b()I

    move-result v1

    if-le p1, v1, :cond_0

    .line 526
    iget v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->c:I

    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/cyberplayer/subtitle/b$a;->a(III)V

    goto :goto_0

    .line 527
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/v;->b()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 528
    iget v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->c:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/cyberplayer/subtitle/b$a;->a(III)V

    .line 530
    :cond_1
    :goto_0
    return-void
.end method

.method private a(III)V
    .locals 3

    .line 539
    add-int v0, p2, p3

    div-int/lit8 v0, v0, 0x2

    .line 540
    if-eq p2, p3, :cond_3

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne v0, p2, :cond_0

    goto :goto_1

    .line 545
    :cond_0
    iget-object p2, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/baidu/cyberplayer/utils/v;

    .line 546
    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/cyberplayer/utils/v;

    .line 547
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/v;->b()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 548
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/v;->b()I

    move-result p2

    if-gt p1, p2, :cond_1

    .line 549
    iput v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->c:I

    .line 550
    return-void

    .line 552
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0, p3}, Lcom/baidu/cyberplayer/subtitle/b$a;->a(III)V

    goto :goto_0

    .line 555
    :cond_2
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/cyberplayer/subtitle/b$a;->a(III)V

    .line 557
    :goto_0
    return-void

    .line 541
    :cond_3
    :goto_1
    iput v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->c:I

    .line 542
    return-void
.end method

.method private a()Z
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v0}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Lcom/baidu/cyberplayer/utils/w;

    move-result-object v0

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {}, Lcom/baidu/cyberplayer/utils/x;->a()Lcom/baidu/cyberplayer/utils/x;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v2}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/x;->a(I)Lcom/baidu/cyberplayer/utils/w;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;Lcom/baidu/cyberplayer/utils/w;)Lcom/baidu/cyberplayer/utils/w;

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v0}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Lcom/baidu/cyberplayer/utils/w;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v1}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/w;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Ljava/util/ArrayList;

    .line 434
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 437
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 435
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private b()V
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 417
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Z

    .line 418
    iput v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->b:I

    .line 419
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:J

    .line 420
    iput v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->c:I

    .line 421
    iput v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:I

    .line 422
    return-void
.end method

.method private c()V
    .locals 5

    .line 463
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v0}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Lcom/baidu/cyberplayer/core/BVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->getCurrentPositionInMsec()J

    move-result-wide v0

    iget v2, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:J

    .line 464
    iget-wide v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 465
    iput-wide v2, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:J

    .line 467
    :cond_0
    return-void
.end method

.method private d()V
    .locals 6

    .line 473
    invoke-direct {p0}, Lcom/baidu/cyberplayer/subtitle/b$a;->e()V

    .line 475
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/cyberplayer/utils/v;

    .line 477
    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v1}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/v;->a()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 478
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v0}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Lcom/baidu/cyberplayer/utils/u$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v0}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Lcom/baidu/cyberplayer/utils/u$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/cyberplayer/utils/u$a;->a(Lcom/baidu/cyberplayer/utils/v;)V

    goto :goto_0

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v1}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/v;->a()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/v;->b()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 483
    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v1}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Lcom/baidu/cyberplayer/utils/u$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 484
    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v1}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Lcom/baidu/cyberplayer/utils/u$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/baidu/cyberplayer/utils/u$a;->a(Lcom/baidu/cyberplayer/utils/v;)V

    .line 487
    :cond_1
    :goto_0
    return-void
.end method

.method private e()V
    .locals 6

    .line 493
    nop

    .line 494
    iget v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->c:I

    :goto_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/cyberplayer/utils/v;

    .line 496
    iget-wide v2, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:J

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/v;->b()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 497
    iput v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->c:I

    .line 498
    goto :goto_1

    .line 494
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_1
    :goto_1
    return-void
.end method

.method private f()V
    .locals 6

    .line 507
    nop

    .line 508
    iget v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->c:I

    :goto_0
    if-ltz v0, :cond_1

    .line 509
    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/cyberplayer/utils/v;

    .line 510
    iget-wide v2, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:J

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/v;->b()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 511
    iput v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->c:I

    .line 512
    goto :goto_1

    .line 508
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 516
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->c:I

    .line 517
    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    .line 442
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v0}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Lcom/baidu/cyberplayer/core/BVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    return-void

    .line 447
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/cyberplayer/subtitle/b$a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    nop

    .line 456
    invoke-direct {p0}, Lcom/baidu/cyberplayer/subtitle/b$a;->d()V

    .line 457
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 449
    const-string v1, "Subtitle"

    const-string v2, "BVideoView getCurrent position err "

    invoke-static {v1, v2, v0}, Lcom/baidu/cyberplayer/utils/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 450
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Lcom/baidu/cyberplayer/subtitle/b;

    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Landroid/os/Handler;

    const/16 v3, 0x7d2

    const/16 v4, 0xbbc

    invoke-static {v0, v1, v3, v4, v2}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;Landroid/os/Handler;IILjava/lang/String;)V

    .line 453
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 331
    iget v0, p1, Landroid/os/Message;->what:I

    .line 333
    const-wide/16 v1, 0x28

    const-string v3, "Subtitle"

    const/16 v4, 0x3ea

    packed-switch v0, :pswitch_data_0

    .line 406
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 349
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:I

    .line 350
    goto/16 :goto_0

    .line 382
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->b:I

    .line 383
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Z

    if-nez v0, :cond_0

    .line 384
    invoke-virtual {p0, v4, v1, v2}, Lcom/baidu/cyberplayer/subtitle/b$a;->sendEmptyMessageDelayed(IJ)Z

    .line 385
    return-void

    .line 389
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/cyberplayer/subtitle/b$a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    nop

    .line 398
    invoke-direct {p0}, Lcom/baidu/cyberplayer/subtitle/b$a;->f()V

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "subtitle slow down, mAdjustDelta: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNextItemPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0, v4}, Lcom/baidu/cyberplayer/subtitle/b$a;->sendEmptyMessage(I)Z

    .line 403
    goto/16 :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    const-string v1, "BVideoView getCurrent position err "

    invoke-static {v3, v1, v0}, Lcom/baidu/cyberplayer/utils/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Lcom/baidu/cyberplayer/subtitle/b;

    iget-object v2, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Landroid/os/Handler;

    const/16 v3, 0x7d2

    const/16 v4, 0xbbc

    invoke-static {v0, v2, v3, v4, v1}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;Landroid/os/Handler;IILjava/lang/String;)V

    .line 395
    return-void

    .line 376
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->b:I

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "subtitle speed up, mAdjustDelta: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0, v4}, Lcom/baidu/cyberplayer/subtitle/b$a;->sendEmptyMessage(I)Z

    .line 379
    goto :goto_0

    .line 360
    :pswitch_3
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Z

    if-eqz v0, :cond_2

    .line 361
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->b:I

    add-int/2addr v0, v1

    .line 362
    if-gez v0, :cond_1

    .line 363
    const/4 v0, 0x0

    .line 365
    :cond_1
    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/subtitle/b$a;->a(I)V

    .line 366
    invoke-virtual {p0, v4}, Lcom/baidu/cyberplayer/subtitle/b$a;->sendEmptyMessage(I)Z

    .line 367
    goto :goto_0

    .line 368
    :cond_2
    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/subtitle/b$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 369
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 370
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/subtitle/b$a;->sendMessage(Landroid/os/Message;)Z

    .line 373
    goto :goto_0

    .line 353
    :pswitch_4
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Z

    if-eqz v0, :cond_3

    .line 354
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/subtitle/b$a;->a()V

    .line 356
    :cond_3
    invoke-virtual {p0, v4, v1, v2}, Lcom/baidu/cyberplayer/subtitle/b$a;->sendEmptyMessageDelayed(IJ)Z

    .line 357
    goto :goto_0

    .line 335
    :pswitch_5
    invoke-direct {p0}, Lcom/baidu/cyberplayer/subtitle/b$a;->b()V

    .line 336
    invoke-direct {p0}, Lcom/baidu/cyberplayer/subtitle/b$a;->a()Z

    move-result v0

    .line 337
    if-eqz v0, :cond_4

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Z

    .line 339
    const-string/jumbo v0, "subtitle success"

    invoke-static {v3, v0}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0, v4}, Lcom/baidu/cyberplayer/subtitle/b$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 342
    :cond_4
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Lcom/baidu/cyberplayer/subtitle/b;

    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/b$a;->a:Landroid/os/Handler;

    const/16 v2, 0xbbb

    const-string v4, "parse subtitle failed"

    const/16 v5, 0x7d1

    invoke-static {v0, v1, v5, v2, v4}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;Landroid/os/Handler;IILjava/lang/String;)V

    .line 344
    const-string/jumbo v0, "subtitle fail"

    invoke-static {v3, v0}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    nop

    .line 408
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
