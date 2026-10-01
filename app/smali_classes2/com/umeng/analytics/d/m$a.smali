.class Lcom/umeng/analytics/d/m$a;
.super Lcom/umeng/a/a/a/c/c;
.source "IdTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/c<",
        "Lcom/umeng/analytics/d/m;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 358
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/m$1;)V
    .locals 0

    .line 358
    invoke-direct {p0}, Lcom/umeng/analytics/d/m$a;-><init>()V

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

    .line 358
    check-cast p2, Lcom/umeng/analytics/d/m;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/m$a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/m;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 362
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->j()Lcom/umeng/a/a/a/b/m;

    .line 365
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->l()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    .line 366
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-nez v1, :cond_0

    .line 367
    nop

    .line 423
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->k()V

    .line 426
    invoke-virtual {p2}, Lcom/umeng/analytics/d/m;->p()V

    .line 427
    return-void

    .line 369
    :cond_0
    iget-short v1, v0, Lcom/umeng/a/a/a/b/c;->c:S

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 419
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    goto/16 :goto_3

    .line 411
    :pswitch_0
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 412
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/m;->c:Ljava/lang/String;

    .line 413
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/m;->c(Z)V

    goto/16 :goto_3

    .line 415
    :cond_1
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 417
    goto/16 :goto_3

    .line 392
    :pswitch_1
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v4, 0xf

    if-ne v1, v4, :cond_3

    .line 394
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->p()Lcom/umeng/a/a/a/b/d;

    move-result-object v0

    .line 395
    new-instance v1, Ljava/util/ArrayList;

    iget v4, v0, Lcom/umeng/a/a/a/b/d;->b:I

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    .line 396
    nop

    :goto_1
    iget v1, v0, Lcom/umeng/a/a/a/b/d;->b:I

    if-ge v2, v1, :cond_2

    .line 399
    new-instance v1, Lcom/umeng/analytics/d/k;

    invoke-direct {v1}, Lcom/umeng/analytics/d/k;-><init>()V

    .line 400
    invoke-virtual {v1, p1}, Lcom/umeng/analytics/d/k;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 401
    iget-object v4, p2, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 403
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->q()V

    .line 405
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/m;->b(Z)V

    goto :goto_3

    .line 407
    :cond_3
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 409
    goto :goto_3

    .line 371
    :pswitch_2
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v4, 0xd

    if-ne v1, v4, :cond_5

    .line 373
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->n()Lcom/umeng/a/a/a/b/e;

    move-result-object v0

    .line 374
    new-instance v1, Ljava/util/HashMap;

    iget v4, v0, Lcom/umeng/a/a/a/b/e;->c:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    .line 375
    nop

    :goto_2
    iget v1, v0, Lcom/umeng/a/a/a/b/e;->c:I

    if-ge v2, v1, :cond_4

    .line 379
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v1

    .line 380
    new-instance v4, Lcom/umeng/analytics/d/l;

    invoke-direct {v4}, Lcom/umeng/analytics/d/l;-><init>()V

    .line 381
    invoke-virtual {v4, p1}, Lcom/umeng/analytics/d/l;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 382
    iget-object v5, p2, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 384
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->o()V

    .line 386
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/m;->a(Z)V

    goto :goto_3

    .line 388
    :cond_5
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 390
    nop

    .line 421
    :goto_3
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->m()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 358
    check-cast p2, Lcom/umeng/analytics/d/m;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/m$a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/m;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 430
    invoke-virtual {p2}, Lcom/umeng/analytics/d/m;->p()V

    .line 432
    invoke-static {}, Lcom/umeng/analytics/d/m;->q()Lcom/umeng/a/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/m;)V

    .line 433
    iget-object v0, p2, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    const/16 v1, 0xc

    if-eqz v0, :cond_1

    .line 434
    invoke-static {}, Lcom/umeng/analytics/d/m;->r()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 436
    new-instance v0, Lcom/umeng/a/a/a/b/e;

    iget-object v2, p2, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/16 v3, 0xb

    invoke-direct {v0, v3, v1, v2}, Lcom/umeng/a/a/a/b/e;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/e;)V

    .line 437
    iget-object v0, p2, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 439
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 440
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/analytics/d/l;

    invoke-virtual {v2, p1}, Lcom/umeng/analytics/d/l;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 441
    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->e()V

    .line 444
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 446
    :cond_1
    iget-object v0, p2, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 447
    invoke-virtual {p2}, Lcom/umeng/analytics/d/m;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    invoke-static {}, Lcom/umeng/analytics/d/m;->s()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 450
    new-instance v0, Lcom/umeng/a/a/a/b/d;

    iget-object v2, p2, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/a/a/a/b/d;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/d;)V

    .line 451
    iget-object v0, p2, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/d/k;

    .line 453
    invoke-virtual {v1, p1}, Lcom/umeng/analytics/d/k;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 454
    goto :goto_1

    .line 455
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->f()V

    .line 457
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 460
    :cond_3
    iget-object v0, p2, Lcom/umeng/analytics/d/m;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 461
    invoke-virtual {p2}, Lcom/umeng/analytics/d/m;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 462
    invoke-static {}, Lcom/umeng/analytics/d/m;->t()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 463
    iget-object p2, p2, Lcom/umeng/analytics/d/m;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 467
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->d()V

    .line 468
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->b()V

    .line 469
    return-void
.end method
