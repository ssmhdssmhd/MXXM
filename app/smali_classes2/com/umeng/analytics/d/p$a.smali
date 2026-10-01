.class Lcom/umeng/analytics/d/p$a;
.super Lcom/umeng/a/a/a/c/c;
.source "InstantMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/c<",
        "Lcom/umeng/analytics/d/p;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 418
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/p$1;)V
    .locals 0

    .line 418
    invoke-direct {p0}, Lcom/umeng/analytics/d/p$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 418
    check-cast p2, Lcom/umeng/analytics/d/p;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/p$a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/p;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/p;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 422
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->j()Lcom/umeng/a/a/a/b/m;

    .line 425
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->l()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    .line 426
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-nez v1, :cond_0

    .line 427
    nop

    .line 500
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->k()V

    .line 503
    invoke-virtual {p2}, Lcom/umeng/analytics/d/p;->v()V

    .line 504
    return-void

    .line 429
    :cond_0
    iget-short v1, v0, Lcom/umeng/a/a/a/b/c;->c:S

    const/4 v2, 0x0

    const/16 v3, 0xf

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 496
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    goto/16 :goto_4

    .line 477
    :pswitch_0
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v3, :cond_2

    .line 479
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->p()Lcom/umeng/a/a/a/b/d;

    move-result-object v0

    .line 480
    new-instance v1, Ljava/util/ArrayList;

    iget v3, v0, Lcom/umeng/a/a/a/b/d;->b:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    .line 481
    nop

    :goto_1
    iget v1, v0, Lcom/umeng/a/a/a/b/d;->b:I

    if-ge v2, v1, :cond_1

    .line 484
    new-instance v1, Lcom/umeng/analytics/d/i;

    invoke-direct {v1}, Lcom/umeng/analytics/d/i;-><init>()V

    .line 485
    invoke-virtual {v1, p1}, Lcom/umeng/analytics/d/i;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 486
    iget-object v3, p2, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 488
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->q()V

    .line 490
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/d/p;->d(Z)V

    goto/16 :goto_4

    .line 492
    :cond_2
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 494
    goto/16 :goto_4

    .line 458
    :pswitch_1
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v3, :cond_4

    .line 460
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->p()Lcom/umeng/a/a/a/b/d;

    move-result-object v0

    .line 461
    new-instance v1, Ljava/util/ArrayList;

    iget v3, v0, Lcom/umeng/a/a/a/b/d;->b:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    .line 462
    nop

    :goto_2
    iget v1, v0, Lcom/umeng/a/a/a/b/d;->b:I

    if-ge v2, v1, :cond_3

    .line 465
    new-instance v1, Lcom/umeng/analytics/d/i;

    invoke-direct {v1}, Lcom/umeng/analytics/d/i;-><init>()V

    .line 466
    invoke-virtual {v1, p1}, Lcom/umeng/analytics/d/i;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 467
    iget-object v3, p2, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 469
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->q()V

    .line 471
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/d/p;->c(Z)V

    goto :goto_4

    .line 473
    :cond_4
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 475
    goto :goto_4

    .line 439
    :pswitch_2
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v3, :cond_6

    .line 441
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->p()Lcom/umeng/a/a/a/b/d;

    move-result-object v0

    .line 442
    new-instance v1, Ljava/util/ArrayList;

    iget v3, v0, Lcom/umeng/a/a/a/b/d;->b:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    .line 443
    nop

    :goto_3
    iget v1, v0, Lcom/umeng/a/a/a/b/d;->b:I

    if-ge v2, v1, :cond_5

    .line 446
    new-instance v1, Lcom/umeng/analytics/d/g;

    invoke-direct {v1}, Lcom/umeng/analytics/d/g;-><init>()V

    .line 447
    invoke-virtual {v1, p1}, Lcom/umeng/analytics/d/g;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 448
    iget-object v3, p2, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 450
    :cond_5
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->q()V

    .line 452
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/d/p;->b(Z)V

    goto :goto_4

    .line 454
    :cond_6
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 456
    goto :goto_4

    .line 431
    :pswitch_3
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_7

    .line 432
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/p;->a:Ljava/lang/String;

    .line 433
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/d/p;->a(Z)V

    goto :goto_4

    .line 435
    :cond_7
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 437
    nop

    .line 498
    :goto_4
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->m()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 418
    check-cast p2, Lcom/umeng/analytics/d/p;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/p$a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/p;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 507
    invoke-virtual {p2}, Lcom/umeng/analytics/d/p;->v()V

    .line 509
    invoke-static {}, Lcom/umeng/analytics/d/p;->w()Lcom/umeng/a/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/m;)V

    .line 510
    iget-object v0, p2, Lcom/umeng/analytics/d/p;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 511
    invoke-static {}, Lcom/umeng/analytics/d/p;->x()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 512
    iget-object v0, p2, Lcom/umeng/analytics/d/p;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 515
    :cond_0
    iget-object v0, p2, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    const/16 v1, 0xc

    if-eqz v0, :cond_2

    .line 516
    invoke-virtual {p2}, Lcom/umeng/analytics/d/p;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 517
    invoke-static {}, Lcom/umeng/analytics/d/p;->y()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 519
    new-instance v0, Lcom/umeng/a/a/a/b/d;

    iget-object v2, p2, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/a/a/a/b/d;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/d;)V

    .line 520
    iget-object v0, p2, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/analytics/d/g;

    .line 522
    invoke-virtual {v2, p1}, Lcom/umeng/analytics/d/g;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 523
    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->f()V

    .line 526
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 529
    :cond_2
    iget-object v0, p2, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 530
    invoke-virtual {p2}, Lcom/umeng/analytics/d/p;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 531
    invoke-static {}, Lcom/umeng/analytics/d/p;->z()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 533
    new-instance v0, Lcom/umeng/a/a/a/b/d;

    iget-object v2, p2, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/a/a/a/b/d;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/d;)V

    .line 534
    iget-object v0, p2, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/analytics/d/i;

    .line 536
    invoke-virtual {v2, p1}, Lcom/umeng/analytics/d/i;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 537
    goto :goto_1

    .line 538
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->f()V

    .line 540
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 543
    :cond_4
    iget-object v0, p2, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 544
    invoke-virtual {p2}, Lcom/umeng/analytics/d/p;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 545
    invoke-static {}, Lcom/umeng/analytics/d/p;->A()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 547
    new-instance v0, Lcom/umeng/a/a/a/b/d;

    iget-object v2, p2, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/a/a/a/b/d;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/d;)V

    .line 548
    iget-object p2, p2, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/d/i;

    .line 550
    invoke-virtual {v0, p1}, Lcom/umeng/analytics/d/i;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 551
    goto :goto_2

    .line 552
    :cond_5
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->f()V

    .line 554
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 557
    :cond_6
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->d()V

    .line 558
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->b()V

    .line 559
    return-void
.end method
