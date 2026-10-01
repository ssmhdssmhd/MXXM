.class Lcom/umeng/analytics/d/l$a;
.super Lcom/umeng/a/a/a/c/c;
.source "IdSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/c<",
        "Lcom/umeng/analytics/d/l;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 310
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/l$1;)V
    .locals 0

    .line 310
    invoke-direct {p0}, Lcom/umeng/analytics/d/l$a;-><init>()V

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

    .line 310
    check-cast p2, Lcom/umeng/analytics/d/l;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/l$a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/l;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 314
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->j()Lcom/umeng/a/a/a/b/m;

    .line 317
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->l()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    .line 318
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-nez v1, :cond_2

    .line 319
    nop

    .line 351
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->k()V

    .line 354
    invoke-virtual {p2}, Lcom/umeng/analytics/d/l;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 357
    invoke-virtual {p2}, Lcom/umeng/analytics/d/l;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 360
    invoke-virtual {p2}, Lcom/umeng/analytics/d/l;->m()V

    .line 361
    return-void

    .line 358
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

    .line 355
    :cond_1
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

    .line 321
    :cond_2
    iget-short v1, v0, Lcom/umeng/a/a/a/b/c;->c:S

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 347
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    goto :goto_1

    .line 339
    :pswitch_0
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 340
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/d/l;->c:I

    .line 341
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/l;->c(Z)V

    goto :goto_1

    .line 343
    :cond_3
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 345
    goto :goto_1

    .line 331
    :pswitch_1
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v3, 0xa

    if-ne v1, v3, :cond_4

    .line 332
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/d/l;->b:J

    .line 333
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/l;->b(Z)V

    goto :goto_1

    .line 335
    :cond_4
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 337
    goto :goto_1

    .line 323
    :pswitch_2
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v3, 0xb

    if-ne v1, v3, :cond_5

    .line 324
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/l;->a:Ljava/lang/String;

    .line 325
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/l;->a(Z)V

    goto :goto_1

    .line 327
    :cond_5
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 329
    nop

    .line 349
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

    .line 310
    check-cast p2, Lcom/umeng/analytics/d/l;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/l$a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/l;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 364
    invoke-virtual {p2}, Lcom/umeng/analytics/d/l;->m()V

    .line 366
    invoke-static {}, Lcom/umeng/analytics/d/l;->n()Lcom/umeng/a/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/m;)V

    .line 367
    iget-object v0, p2, Lcom/umeng/analytics/d/l;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 368
    invoke-static {}, Lcom/umeng/analytics/d/l;->o()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 369
    iget-object v0, p2, Lcom/umeng/analytics/d/l;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 372
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/d/l;->p()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 373
    iget-wide v0, p2, Lcom/umeng/analytics/d/l;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/h;->a(J)V

    .line 374
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 375
    invoke-static {}, Lcom/umeng/analytics/d/l;->q()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 376
    iget p2, p2, Lcom/umeng/analytics/d/l;->c:I

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/h;->a(I)V

    .line 377
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 378
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->d()V

    .line 379
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->b()V

    .line 380
    return-void
.end method
