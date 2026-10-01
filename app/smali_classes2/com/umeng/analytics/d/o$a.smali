.class Lcom/umeng/analytics/d/o$a;
.super Lcom/umeng/a/a/a/c/c;
.source "ImprintValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/c<",
        "Lcom/umeng/analytics/d/o;",
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

.method synthetic constructor <init>(Lcom/umeng/analytics/d/o$1;)V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/umeng/analytics/d/o$a;-><init>()V

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
    check-cast p2, Lcom/umeng/analytics/d/o;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/o$a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/o;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/o;)V
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

    .line 355
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->k()V

    .line 358
    invoke-virtual {p2}, Lcom/umeng/analytics/d/o;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 361
    invoke-virtual {p2}, Lcom/umeng/analytics/d/o;->m()V

    .line 362
    return-void

    .line 359
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

    .line 325
    :cond_1
    iget-short v1, v0, Lcom/umeng/a/a/a/b/c;->c:S

    const/16 v2, 0xb

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 351
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    goto :goto_1

    .line 343
    :pswitch_0
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v2, :cond_2

    .line 344
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/o;->c:Ljava/lang/String;

    .line 345
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/o;->c(Z)V

    goto :goto_1

    .line 347
    :cond_2
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 349
    goto :goto_1

    .line 335
    :pswitch_1
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 336
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/d/o;->b:J

    .line 337
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/o;->b(Z)V

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

    if-ne v1, v2, :cond_4

    .line 328
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/o;->a:Ljava/lang/String;

    .line 329
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/o;->a(Z)V

    goto :goto_1

    .line 331
    :cond_4
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 333
    nop

    .line 353
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
    check-cast p2, Lcom/umeng/analytics/d/o;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/o$a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/o;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 365
    invoke-virtual {p2}, Lcom/umeng/analytics/d/o;->m()V

    .line 367
    invoke-static {}, Lcom/umeng/analytics/d/o;->n()Lcom/umeng/a/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/m;)V

    .line 368
    iget-object v0, p2, Lcom/umeng/analytics/d/o;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p2}, Lcom/umeng/analytics/d/o;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-static {}, Lcom/umeng/analytics/d/o;->o()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 371
    iget-object v0, p2, Lcom/umeng/analytics/d/o;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 375
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/d/o;->p()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 376
    iget-wide v0, p2, Lcom/umeng/analytics/d/o;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/h;->a(J)V

    .line 377
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 378
    iget-object v0, p2, Lcom/umeng/analytics/d/o;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 379
    invoke-static {}, Lcom/umeng/analytics/d/o;->q()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 380
    iget-object p2, p2, Lcom/umeng/analytics/d/o;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 383
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->d()V

    .line 384
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->b()V

    .line 385
    return-void
.end method
