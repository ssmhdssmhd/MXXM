.class Lcom/umeng/analytics/d/q$a;
.super Lcom/umeng/a/a/a/c/c;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/c<",
        "Lcom/umeng/analytics/d/q;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 304
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/q$1;)V
    .locals 0

    .line 304
    invoke-direct {p0}, Lcom/umeng/analytics/d/q$a;-><init>()V

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

    .line 304
    check-cast p2, Lcom/umeng/analytics/d/q;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/q$a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/q;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/q;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 308
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->j()Lcom/umeng/a/a/a/b/m;

    .line 311
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->l()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    .line 312
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-nez v1, :cond_3

    .line 313
    nop

    .line 345
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->k()V

    .line 348
    invoke-virtual {p2}, Lcom/umeng/analytics/d/q;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 351
    invoke-virtual {p2}, Lcom/umeng/analytics/d/q;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 354
    invoke-virtual {p2}, Lcom/umeng/analytics/d/q;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 357
    invoke-virtual {p2}, Lcom/umeng/analytics/d/q;->m()V

    .line 358
    return-void

    .line 355
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

    .line 352
    :cond_1
    new-instance p1, Lcom/umeng/a/a/a/b/i;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'lng\' was not found in serialized data! Struct: "

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

    .line 349
    :cond_2
    new-instance p1, Lcom/umeng/a/a/a/b/i;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'lat\' was not found in serialized data! Struct: "

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

    .line 315
    :cond_3
    iget-short v1, v0, Lcom/umeng/a/a/a/b/c;->c:S

    const/4 v2, 0x4

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 341
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    goto :goto_1

    .line 333
    :pswitch_0
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 334
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/d/q;->c:J

    .line 335
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/q;->c(Z)V

    goto :goto_1

    .line 337
    :cond_4
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 339
    goto :goto_1

    .line 325
    :pswitch_1
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v2, :cond_5

    .line 326
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->y()D

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/d/q;->b:D

    .line 327
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/q;->b(Z)V

    goto :goto_1

    .line 329
    :cond_5
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 331
    goto :goto_1

    .line 317
    :pswitch_2
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v2, :cond_6

    .line 318
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->y()D

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/d/q;->a:D

    .line 319
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/q;->a(Z)V

    goto :goto_1

    .line 321
    :cond_6
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 323
    nop

    .line 343
    :goto_1
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

    .line 304
    check-cast p2, Lcom/umeng/analytics/d/q;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/q$a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/q;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 361
    invoke-virtual {p2}, Lcom/umeng/analytics/d/q;->m()V

    .line 363
    invoke-static {}, Lcom/umeng/analytics/d/q;->n()Lcom/umeng/a/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/m;)V

    .line 364
    invoke-static {}, Lcom/umeng/analytics/d/q;->o()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 365
    iget-wide v0, p2, Lcom/umeng/analytics/d/q;->a:D

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/h;->a(D)V

    .line 366
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 367
    invoke-static {}, Lcom/umeng/analytics/d/q;->p()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 368
    iget-wide v0, p2, Lcom/umeng/analytics/d/q;->b:D

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/h;->a(D)V

    .line 369
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 370
    invoke-static {}, Lcom/umeng/analytics/d/q;->q()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 371
    iget-wide v0, p2, Lcom/umeng/analytics/d/q;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/h;->a(J)V

    .line 372
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 373
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->d()V

    .line 374
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->b()V

    .line 375
    return-void
.end method
