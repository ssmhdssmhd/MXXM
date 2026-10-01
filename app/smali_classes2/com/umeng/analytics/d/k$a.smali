.class Lcom/umeng/analytics/d/k$a;
.super Lcom/umeng/a/a/a/c/c;
.source "IdJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/c<",
        "Lcom/umeng/analytics/d/k;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 362
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/k$1;)V
    .locals 0

    .line 362
    invoke-direct {p0}, Lcom/umeng/analytics/d/k$a;-><init>()V

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

    .line 362
    check-cast p2, Lcom/umeng/analytics/d/k;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/k$a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/k;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 366
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->j()Lcom/umeng/a/a/a/b/m;

    .line 369
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->l()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    .line 370
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-nez v1, :cond_1

    .line 371
    nop

    .line 411
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->k()V

    .line 414
    invoke-virtual {p2}, Lcom/umeng/analytics/d/k;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 417
    invoke-virtual {p2}, Lcom/umeng/analytics/d/k;->p()V

    .line 418
    return-void

    .line 415
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

    .line 373
    :cond_1
    iget-short v1, v0, Lcom/umeng/a/a/a/b/c;->c:S

    const/16 v2, 0xb

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 407
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    goto :goto_1

    .line 399
    :pswitch_0
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 400
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/d/k;->d:J

    .line 401
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/k;->d(Z)V

    goto :goto_1

    .line 403
    :cond_2
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 405
    goto :goto_1

    .line 391
    :pswitch_1
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v2, :cond_3

    .line 392
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/k;->c:Ljava/lang/String;

    .line 393
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/k;->c(Z)V

    goto :goto_1

    .line 395
    :cond_3
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 397
    goto :goto_1

    .line 383
    :pswitch_2
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v2, :cond_4

    .line 384
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/k;->b:Ljava/lang/String;

    .line 385
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/k;->b(Z)V

    goto :goto_1

    .line 387
    :cond_4
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 389
    goto :goto_1

    .line 375
    :pswitch_3
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v2, :cond_5

    .line 376
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/k;->a:Ljava/lang/String;

    .line 377
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/k;->a(Z)V

    goto :goto_1

    .line 379
    :cond_5
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 381
    nop

    .line 409
    :goto_1
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

    .line 362
    check-cast p2, Lcom/umeng/analytics/d/k;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/k$a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/k;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 421
    invoke-virtual {p2}, Lcom/umeng/analytics/d/k;->p()V

    .line 423
    invoke-static {}, Lcom/umeng/analytics/d/k;->q()Lcom/umeng/a/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/m;)V

    .line 424
    iget-object v0, p2, Lcom/umeng/analytics/d/k;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 425
    invoke-static {}, Lcom/umeng/analytics/d/k;->r()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 426
    iget-object v0, p2, Lcom/umeng/analytics/d/k;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 429
    :cond_0
    iget-object v0, p2, Lcom/umeng/analytics/d/k;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {p2}, Lcom/umeng/analytics/d/k;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    invoke-static {}, Lcom/umeng/analytics/d/k;->s()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 432
    iget-object v0, p2, Lcom/umeng/analytics/d/k;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 436
    :cond_1
    iget-object v0, p2, Lcom/umeng/analytics/d/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 437
    invoke-static {}, Lcom/umeng/analytics/d/k;->t()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 438
    iget-object v0, p2, Lcom/umeng/analytics/d/k;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 441
    :cond_2
    invoke-static {}, Lcom/umeng/analytics/d/k;->u()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 442
    iget-wide v0, p2, Lcom/umeng/analytics/d/k;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/h;->a(J)V

    .line 443
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 444
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->d()V

    .line 445
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->b()V

    .line 446
    return-void
.end method
