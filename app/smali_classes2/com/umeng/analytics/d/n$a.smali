.class Lcom/umeng/analytics/d/n$a;
.super Lcom/umeng/a/a/a/c/c;
.source "Imprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/c<",
        "Lcom/umeng/analytics/d/n;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 341
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/n$1;)V
    .locals 0

    .line 341
    invoke-direct {p0}, Lcom/umeng/analytics/d/n$a;-><init>()V

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

    .line 341
    check-cast p2, Lcom/umeng/analytics/d/n;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/n$a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/n;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/n;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 345
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->j()Lcom/umeng/a/a/a/b/m;

    .line 348
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->l()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    .line 349
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-nez v1, :cond_1

    .line 350
    nop

    .line 395
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->k()V

    .line 398
    invoke-virtual {p2}, Lcom/umeng/analytics/d/n;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 401
    invoke-virtual {p2}, Lcom/umeng/analytics/d/n;->n()V

    .line 402
    return-void

    .line 399
    :cond_0
    new-instance p1, Lcom/umeng/a/a/a/b/i;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'version\' was not found in serialized data! Struct: "

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

    .line 352
    :cond_1
    iget-short v1, v0, Lcom/umeng/a/a/a/b/c;->c:S

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 391
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    goto :goto_2

    .line 383
    :pswitch_0
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v3, 0xb

    if-ne v1, v3, :cond_2

    .line 384
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/n;->c:Ljava/lang/String;

    .line 385
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/n;->c(Z)V

    goto :goto_2

    .line 387
    :cond_2
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 389
    goto :goto_2

    .line 375
    :pswitch_1
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 376
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/d/n;->b:I

    .line 377
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/n;->b(Z)V

    goto :goto_2

    .line 379
    :cond_3
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 381
    goto :goto_2

    .line 354
    :pswitch_2
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v3, 0xd

    if-ne v1, v3, :cond_5

    .line 356
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->n()Lcom/umeng/a/a/a/b/e;

    move-result-object v0

    .line 357
    new-instance v1, Ljava/util/HashMap;

    iget v3, v0, Lcom/umeng/a/a/a/b/e;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    .line 358
    const/4 v1, 0x0

    :goto_1
    iget v3, v0, Lcom/umeng/a/a/a/b/e;->c:I

    if-ge v1, v3, :cond_4

    .line 362
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v3

    .line 363
    new-instance v4, Lcom/umeng/analytics/d/o;

    invoke-direct {v4}, Lcom/umeng/analytics/d/o;-><init>()V

    .line 364
    invoke-virtual {v4, p1}, Lcom/umeng/analytics/d/o;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 365
    iget-object v5, p2, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 367
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->o()V

    .line 369
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/n;->a(Z)V

    goto :goto_2

    .line 371
    :cond_5
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 373
    nop

    .line 393
    :goto_2
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

    .line 341
    check-cast p2, Lcom/umeng/analytics/d/n;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/n$a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/n;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/n;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 405
    invoke-virtual {p2}, Lcom/umeng/analytics/d/n;->n()V

    .line 407
    invoke-static {}, Lcom/umeng/analytics/d/n;->o()Lcom/umeng/a/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/m;)V

    .line 408
    iget-object v0, p2, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 409
    invoke-static {}, Lcom/umeng/analytics/d/n;->p()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 411
    new-instance v0, Lcom/umeng/a/a/a/b/e;

    iget-object v1, p2, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3, v1}, Lcom/umeng/a/a/a/b/e;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/e;)V

    .line 412
    iget-object v0, p2, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 414
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 415
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/d/o;

    invoke-virtual {v1, p1}, Lcom/umeng/analytics/d/o;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 416
    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->e()V

    .line 419
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 421
    :cond_1
    invoke-static {}, Lcom/umeng/analytics/d/n;->q()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 422
    iget v0, p2, Lcom/umeng/analytics/d/n;->b:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(I)V

    .line 423
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 424
    iget-object v0, p2, Lcom/umeng/analytics/d/n;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 425
    invoke-static {}, Lcom/umeng/analytics/d/n;->r()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 426
    iget-object p2, p2, Lcom/umeng/analytics/d/n;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 429
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->d()V

    .line 430
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->b()V

    .line 431
    return-void
.end method
