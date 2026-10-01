.class Lcom/umeng/analytics/d/A$a;
.super Lcom/umeng/a/a/a/c/c;
.source "UserInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/c<",
        "Lcom/umeng/analytics/d/A;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 365
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/A$1;)V
    .locals 0

    .line 365
    invoke-direct {p0}, Lcom/umeng/analytics/d/A$a;-><init>()V

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

    .line 365
    check-cast p2, Lcom/umeng/analytics/d/A;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/A$a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/A;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/A;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 369
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->j()Lcom/umeng/a/a/a/b/m;

    .line 372
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->l()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    .line 373
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-nez v1, :cond_0

    .line 374
    nop

    .line 414
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->k()V

    .line 417
    invoke-virtual {p2}, Lcom/umeng/analytics/d/A;->p()V

    .line 418
    return-void

    .line 376
    :cond_0
    iget-short v1, v0, Lcom/umeng/a/a/a/b/c;->c:S

    const/16 v2, 0xb

    const/16 v3, 0x8

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 410
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    goto :goto_1

    .line 402
    :pswitch_0
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v2, :cond_1

    .line 403
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/A;->d:Ljava/lang/String;

    .line 404
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/d/A;->d(Z)V

    goto :goto_1

    .line 406
    :cond_1
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 408
    goto :goto_1

    .line 394
    :pswitch_1
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v2, :cond_2

    .line 395
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/A;->c:Ljava/lang/String;

    .line 396
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/d/A;->c(Z)V

    goto :goto_1

    .line 398
    :cond_2
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 400
    goto :goto_1

    .line 386
    :pswitch_2
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v3, :cond_3

    .line 387
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/d/A;->b:I

    .line 388
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/d/A;->b(Z)V

    goto :goto_1

    .line 390
    :cond_3
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 392
    goto :goto_1

    .line 378
    :pswitch_3
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v3, :cond_4

    .line 379
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->w()I

    move-result v0

    invoke-static {v0}, Lcom/umeng/analytics/d/j;->a(I)Lcom/umeng/analytics/d/j;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/A;->a:Lcom/umeng/analytics/d/j;

    .line 380
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/d/A;->a(Z)V

    goto :goto_1

    .line 382
    :cond_4
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 384
    nop

    .line 412
    :goto_1
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->m()V

    goto :goto_0

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

    .line 365
    check-cast p2, Lcom/umeng/analytics/d/A;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/A$a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/A;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/A;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 421
    invoke-virtual {p2}, Lcom/umeng/analytics/d/A;->p()V

    .line 423
    invoke-static {}, Lcom/umeng/analytics/d/A;->q()Lcom/umeng/a/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/m;)V

    .line 424
    iget-object v0, p2, Lcom/umeng/analytics/d/A;->a:Lcom/umeng/analytics/d/j;

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p2}, Lcom/umeng/analytics/d/A;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-static {}, Lcom/umeng/analytics/d/A;->r()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 427
    iget-object v0, p2, Lcom/umeng/analytics/d/A;->a:Lcom/umeng/analytics/d/j;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/j;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(I)V

    .line 428
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 431
    :cond_0
    invoke-virtual {p2}, Lcom/umeng/analytics/d/A;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    invoke-static {}, Lcom/umeng/analytics/d/A;->s()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 433
    iget v0, p2, Lcom/umeng/analytics/d/A;->b:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(I)V

    .line 434
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 436
    :cond_1
    iget-object v0, p2, Lcom/umeng/analytics/d/A;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 437
    invoke-virtual {p2}, Lcom/umeng/analytics/d/A;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    invoke-static {}, Lcom/umeng/analytics/d/A;->t()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 439
    iget-object v0, p2, Lcom/umeng/analytics/d/A;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 443
    :cond_2
    iget-object v0, p2, Lcom/umeng/analytics/d/A;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 444
    invoke-virtual {p2}, Lcom/umeng/analytics/d/A;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 445
    invoke-static {}, Lcom/umeng/analytics/d/A;->u()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 446
    iget-object p2, p2, Lcom/umeng/analytics/d/A;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 450
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->d()V

    .line 451
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->b()V

    .line 452
    return-void
.end method
