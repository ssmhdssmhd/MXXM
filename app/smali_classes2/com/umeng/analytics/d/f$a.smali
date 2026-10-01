.class Lcom/umeng/analytics/d/f$a;
.super Lcom/umeng/a/a/a/c/c;
.source "Ekv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/c<",
        "Lcom/umeng/analytics/d/f;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 424
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/f$1;)V
    .locals 0

    .line 424
    invoke-direct {p0}, Lcom/umeng/analytics/d/f$a;-><init>()V

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

    .line 424
    check-cast p2, Lcom/umeng/analytics/d/f;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/f$a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/f;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 428
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->j()Lcom/umeng/a/a/a/b/m;

    .line 431
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->l()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    .line 432
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-nez v1, :cond_1

    .line 433
    nop

    .line 493
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->k()V

    .line 496
    invoke-virtual {p2}, Lcom/umeng/analytics/d/f;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 499
    invoke-virtual {p2}, Lcom/umeng/analytics/d/f;->t()V

    .line 500
    return-void

    .line 497
    :cond_0
    new-instance p1, Lcom/umeng/a/a/a/b/i;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw p1

    .line 435
    :cond_1
    iget-short v1, v0, Lcom/umeng/a/a/a/b/c;->c:S

    const/16 v2, 0xa

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 489
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    goto/16 :goto_2

    .line 481
    :pswitch_0
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 482
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/d/f;->e:I

    .line 483
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/f;->e(Z)V

    goto/16 :goto_2

    .line 485
    :cond_2
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 487
    goto/16 :goto_2

    .line 473
    :pswitch_1
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v2, :cond_3

    .line 474
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/d/f;->d:J

    .line 475
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/f;->d(Z)V

    goto :goto_2

    .line 477
    :cond_3
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 479
    goto :goto_2

    .line 453
    :pswitch_2
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_5

    .line 455
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->n()Lcom/umeng/a/a/a/b/e;

    move-result-object v0

    .line 456
    new-instance v1, Ljava/util/HashMap;

    iget v2, v0, Lcom/umeng/a/a/a/b/e;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    .line 457
    const/4 v1, 0x0

    :goto_1
    iget v2, v0, Lcom/umeng/a/a/a/b/e;->c:I

    if-ge v1, v2, :cond_4

    .line 461
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v2

    .line 462
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v4

    .line 463
    iget-object v5, p2, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 465
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->o()V

    .line 467
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/f;->c(Z)V

    goto :goto_2

    .line 469
    :cond_5
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 471
    goto :goto_2

    .line 445
    :pswitch_3
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_6

    .line 446
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/f;->b:Ljava/lang/String;

    .line 447
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/f;->b(Z)V

    goto :goto_2

    .line 449
    :cond_6
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 451
    goto :goto_2

    .line 437
    :pswitch_4
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v2, :cond_7

    .line 438
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/d/f;->a:J

    .line 439
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/f;->a(Z)V

    goto :goto_2

    .line 441
    :cond_7
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 443
    nop

    .line 491
    :goto_2
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->m()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
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

    .line 424
    check-cast p2, Lcom/umeng/analytics/d/f;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/f$a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/f;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 503
    invoke-virtual {p2}, Lcom/umeng/analytics/d/f;->t()V

    .line 505
    invoke-static {}, Lcom/umeng/analytics/d/f;->u()Lcom/umeng/a/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/m;)V

    .line 506
    invoke-static {}, Lcom/umeng/analytics/d/f;->v()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 507
    iget-wide v0, p2, Lcom/umeng/analytics/d/f;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/h;->a(J)V

    .line 508
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 509
    iget-object v0, p2, Lcom/umeng/analytics/d/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 510
    invoke-static {}, Lcom/umeng/analytics/d/f;->w()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 511
    iget-object v0, p2, Lcom/umeng/analytics/d/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 514
    :cond_0
    iget-object v0, p2, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 515
    invoke-static {}, Lcom/umeng/analytics/d/f;->x()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 517
    new-instance v0, Lcom/umeng/a/a/a/b/e;

    iget-object v1, p2, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0xb

    invoke-direct {v0, v2, v2, v1}, Lcom/umeng/a/a/a/b/e;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/e;)V

    .line 518
    iget-object v0, p2, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 520
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 521
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 522
    goto :goto_0

    .line 523
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->e()V

    .line 525
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 527
    :cond_2
    invoke-virtual {p2}, Lcom/umeng/analytics/d/f;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    invoke-static {}, Lcom/umeng/analytics/d/f;->y()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 529
    iget-wide v0, p2, Lcom/umeng/analytics/d/f;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/h;->a(J)V

    .line 530
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 532
    :cond_3
    invoke-virtual {p2}, Lcom/umeng/analytics/d/f;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 533
    invoke-static {}, Lcom/umeng/analytics/d/f;->z()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 534
    iget p2, p2, Lcom/umeng/analytics/d/f;->e:I

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/h;->a(I)V

    .line 535
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 537
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->d()V

    .line 538
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->b()V

    .line 539
    return-void
.end method
