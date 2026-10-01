.class Lcom/umeng/analytics/d/v$a;
.super Lcom/umeng/a/a/a/c/c;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/c<",
        "Lcom/umeng/analytics/d/v;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/v$1;)V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/umeng/analytics/d/v$a;-><init>()V

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

    .line 314
    check-cast p2, Lcom/umeng/analytics/d/v;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/v$a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/v;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/v;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 318
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->j()Lcom/umeng/a/a/a/b/m;

    .line 321
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->l()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    .line 322
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-nez v1, :cond_1

    .line 323
    nop

    .line 356
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->k()V

    .line 359
    invoke-virtual {p2}, Lcom/umeng/analytics/d/v;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {p2}, Lcom/umeng/analytics/d/v;->m()V

    .line 363
    return-void

    .line 360
    :cond_0
    new-instance p1, Lcom/umeng/a/a/a/b/i;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'resp_code\' was not found in serialized data! Struct: "

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

    .line 325
    :cond_1
    iget-short v1, v0, Lcom/umeng/a/a/a/b/c;->c:S

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 352
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    goto :goto_1

    .line 343
    :pswitch_0
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v3, 0xc

    if-ne v1, v3, :cond_2

    .line 344
    new-instance v0, Lcom/umeng/analytics/d/n;

    invoke-direct {v0}, Lcom/umeng/analytics/d/n;-><init>()V

    iput-object v0, p2, Lcom/umeng/analytics/d/v;->c:Lcom/umeng/analytics/d/n;

    .line 345
    iget-object v0, p2, Lcom/umeng/analytics/d/v;->c:Lcom/umeng/analytics/d/n;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/d/n;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 346
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/v;->c(Z)V

    goto :goto_1

    .line 348
    :cond_2
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 350
    goto :goto_1

    .line 335
    :pswitch_1
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v3, 0xb

    if-ne v1, v3, :cond_3

    .line 336
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/v;->b:Ljava/lang/String;

    .line 337
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/v;->b(Z)V

    goto :goto_1

    .line 339
    :cond_3
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 341
    goto :goto_1

    .line 327
    :pswitch_2
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4

    .line 328
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/d/v;->a:I

    .line 329
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/v;->a(Z)V

    goto :goto_1

    .line 331
    :cond_4
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 333
    nop

    .line 354
    :goto_1
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->m()V

    goto/16 :goto_0

    nop

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

    .line 314
    check-cast p2, Lcom/umeng/analytics/d/v;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/v$a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/v;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 366
    invoke-virtual {p2}, Lcom/umeng/analytics/d/v;->m()V

    .line 368
    invoke-static {}, Lcom/umeng/analytics/d/v;->n()Lcom/umeng/a/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/m;)V

    .line 369
    invoke-static {}, Lcom/umeng/analytics/d/v;->o()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 370
    iget v0, p2, Lcom/umeng/analytics/d/v;->a:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(I)V

    .line 371
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 372
    iget-object v0, p2, Lcom/umeng/analytics/d/v;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p2}, Lcom/umeng/analytics/d/v;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-static {}, Lcom/umeng/analytics/d/v;->p()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 375
    iget-object v0, p2, Lcom/umeng/analytics/d/v;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 379
    :cond_0
    iget-object v0, p2, Lcom/umeng/analytics/d/v;->c:Lcom/umeng/analytics/d/n;

    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {p2}, Lcom/umeng/analytics/d/v;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    invoke-static {}, Lcom/umeng/analytics/d/v;->q()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 382
    iget-object p2, p2, Lcom/umeng/analytics/d/v;->c:Lcom/umeng/analytics/d/n;

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/d/n;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 383
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 386
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->d()V

    .line 387
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->b()V

    .line 388
    return-void
.end method
