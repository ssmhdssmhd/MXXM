.class Lcom/umeng/analytics/d/g$a;
.super Lcom/umeng/a/a/a/c/c;
.source "Error.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/c<",
        "Lcom/umeng/analytics/d/g;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 330
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/g$1;)V
    .locals 0

    .line 330
    invoke-direct {p0}, Lcom/umeng/analytics/d/g$a;-><init>()V

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

    .line 330
    check-cast p2, Lcom/umeng/analytics/d/g;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/g$a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/g;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 334
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->j()Lcom/umeng/a/a/a/b/m;

    .line 337
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->l()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    .line 338
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-nez v1, :cond_1

    .line 339
    nop

    .line 371
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->k()V

    .line 374
    invoke-virtual {p2}, Lcom/umeng/analytics/d/g;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 377
    invoke-virtual {p2}, Lcom/umeng/analytics/d/g;->m()V

    .line 378
    return-void

    .line 375
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

    .line 341
    :cond_1
    iget-short v1, v0, Lcom/umeng/a/a/a/b/c;->c:S

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 367
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    goto :goto_1

    .line 359
    :pswitch_0
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 360
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->w()I

    move-result v0

    invoke-static {v0}, Lcom/umeng/analytics/d/h;->a(I)Lcom/umeng/analytics/d/h;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/g;->c:Lcom/umeng/analytics/d/h;

    .line 361
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/g;->d(Z)V

    goto :goto_1

    .line 363
    :cond_2
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 365
    goto :goto_1

    .line 351
    :pswitch_1
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v3, 0xb

    if-ne v1, v3, :cond_3

    .line 352
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/g;->b:Ljava/lang/String;

    .line 353
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/g;->c(Z)V

    goto :goto_1

    .line 355
    :cond_3
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 357
    goto :goto_1

    .line 343
    :pswitch_2
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v3, 0xa

    if-ne v1, v3, :cond_4

    .line 344
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/d/g;->a:J

    .line 345
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/g;->b(Z)V

    goto :goto_1

    .line 347
    :cond_4
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 349
    nop

    .line 369
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

    .line 330
    check-cast p2, Lcom/umeng/analytics/d/g;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/g$a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/g;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 381
    invoke-virtual {p2}, Lcom/umeng/analytics/d/g;->m()V

    .line 383
    invoke-static {}, Lcom/umeng/analytics/d/g;->n()Lcom/umeng/a/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/m;)V

    .line 384
    invoke-static {}, Lcom/umeng/analytics/d/g;->o()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 385
    iget-wide v0, p2, Lcom/umeng/analytics/d/g;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/h;->a(J)V

    .line 386
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 387
    iget-object v0, p2, Lcom/umeng/analytics/d/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 388
    invoke-static {}, Lcom/umeng/analytics/d/g;->p()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 389
    iget-object v0, p2, Lcom/umeng/analytics/d/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 392
    :cond_0
    iget-object v0, p2, Lcom/umeng/analytics/d/g;->c:Lcom/umeng/analytics/d/h;

    if-eqz v0, :cond_1

    .line 393
    invoke-virtual {p2}, Lcom/umeng/analytics/d/g;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    invoke-static {}, Lcom/umeng/analytics/d/g;->q()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 395
    iget-object p2, p2, Lcom/umeng/analytics/d/g;->c:Lcom/umeng/analytics/d/h;

    invoke-virtual {p2}, Lcom/umeng/analytics/d/h;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/h;->a(I)V

    .line 396
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 399
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->d()V

    .line 400
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->b()V

    .line 401
    return-void
.end method
