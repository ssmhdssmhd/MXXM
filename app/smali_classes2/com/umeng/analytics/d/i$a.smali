.class Lcom/umeng/analytics/d/i$a;
.super Lcom/umeng/a/a/a/c/c;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/c<",
        "Lcom/umeng/analytics/d/i;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 422
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/i$1;)V
    .locals 0

    .line 422
    invoke-direct {p0}, Lcom/umeng/analytics/d/i$a;-><init>()V

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

    .line 422
    check-cast p2, Lcom/umeng/analytics/d/i;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/i$a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/i;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/i;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 426
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->j()Lcom/umeng/a/a/a/b/m;

    .line 429
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->l()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    .line 430
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-nez v1, :cond_1

    .line 431
    nop

    .line 492
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->k()V

    .line 495
    invoke-virtual {p2}, Lcom/umeng/analytics/d/i;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 498
    invoke-virtual {p2}, Lcom/umeng/analytics/d/i;->u()V

    .line 499
    return-void

    .line 496
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

    .line 433
    :cond_1
    iget-short v1, v0, Lcom/umeng/a/a/a/b/c;->c:S

    const/16 v2, 0xa

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 488
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    goto/16 :goto_2

    .line 480
    :pswitch_0
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v2, :cond_2

    .line 481
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/d/i;->g:J

    .line 482
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/i;->e(Z)V

    goto/16 :goto_2

    .line 484
    :cond_2
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 486
    goto/16 :goto_2

    .line 472
    :pswitch_1
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 473
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/d/i;->f:I

    .line 474
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/i;->d(Z)V

    goto/16 :goto_2

    .line 476
    :cond_3
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 478
    goto :goto_2

    .line 464
    :pswitch_2
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v2, :cond_4

    .line 465
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/d/i;->e:J

    .line 466
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/i;->c(Z)V

    goto :goto_2

    .line 468
    :cond_4
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 470
    goto :goto_2

    .line 443
    :pswitch_3
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_6

    .line 445
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->n()Lcom/umeng/a/a/a/b/e;

    move-result-object v0

    .line 446
    new-instance v1, Ljava/util/HashMap;

    iget v2, v0, Lcom/umeng/a/a/a/b/e;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    .line 447
    const/4 v1, 0x0

    :goto_1
    iget v2, v0, Lcom/umeng/a/a/a/b/e;->c:I

    if-ge v1, v2, :cond_5

    .line 451
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v2

    .line 452
    new-instance v4, Lcom/umeng/analytics/d/t;

    invoke-direct {v4}, Lcom/umeng/analytics/d/t;-><init>()V

    .line 453
    invoke-virtual {v4, p1}, Lcom/umeng/analytics/d/t;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 454
    iget-object v5, p2, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 456
    :cond_5
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->o()V

    .line 458
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/i;->b(Z)V

    goto :goto_2

    .line 460
    :cond_6
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 462
    goto :goto_2

    .line 435
    :pswitch_4
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_7

    .line 436
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/i;->c:Ljava/lang/String;

    .line 437
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/i;->a(Z)V

    goto :goto_2

    .line 439
    :cond_7
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 441
    nop

    .line 490
    :goto_2
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->m()V

    goto/16 :goto_0

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

    .line 422
    check-cast p2, Lcom/umeng/analytics/d/i;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/i$a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/i;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 502
    invoke-virtual {p2}, Lcom/umeng/analytics/d/i;->u()V

    .line 504
    invoke-static {}, Lcom/umeng/analytics/d/i;->v()Lcom/umeng/a/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/m;)V

    .line 505
    iget-object v0, p2, Lcom/umeng/analytics/d/i;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 506
    invoke-static {}, Lcom/umeng/analytics/d/i;->w()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 507
    iget-object v0, p2, Lcom/umeng/analytics/d/i;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 510
    :cond_0
    iget-object v0, p2, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 511
    invoke-static {}, Lcom/umeng/analytics/d/i;->x()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 513
    new-instance v0, Lcom/umeng/a/a/a/b/e;

    iget-object v1, p2, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3, v1}, Lcom/umeng/a/a/a/b/e;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/e;)V

    .line 514
    iget-object v0, p2, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

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

    .line 516
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 517
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/d/t;

    invoke-virtual {v1, p1}, Lcom/umeng/analytics/d/t;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 518
    goto :goto_0

    .line 519
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->e()V

    .line 521
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 523
    :cond_2
    invoke-virtual {p2}, Lcom/umeng/analytics/d/i;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 524
    invoke-static {}, Lcom/umeng/analytics/d/i;->y()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 525
    iget-wide v0, p2, Lcom/umeng/analytics/d/i;->e:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/h;->a(J)V

    .line 526
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 528
    :cond_3
    invoke-virtual {p2}, Lcom/umeng/analytics/d/i;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 529
    invoke-static {}, Lcom/umeng/analytics/d/i;->z()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 530
    iget v0, p2, Lcom/umeng/analytics/d/i;->f:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(I)V

    .line 531
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 533
    :cond_4
    invoke-static {}, Lcom/umeng/analytics/d/i;->A()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 534
    iget-wide v0, p2, Lcom/umeng/analytics/d/i;->g:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/h;->a(J)V

    .line 535
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 536
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->d()V

    .line 537
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->b()V

    .line 538
    return-void
.end method
