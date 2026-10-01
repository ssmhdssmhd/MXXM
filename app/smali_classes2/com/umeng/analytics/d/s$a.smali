.class Lcom/umeng/analytics/d/s$a;
.super Lcom/umeng/a/a/a/c/c;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/c<",
        "Lcom/umeng/analytics/d/s;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 268
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/s$1;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lcom/umeng/analytics/d/s$a;-><init>()V

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

    .line 268
    check-cast p2, Lcom/umeng/analytics/d/s;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/s$a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/s;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/s;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 272
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->j()Lcom/umeng/a/a/a/b/m;

    .line 275
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->l()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    .line 276
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-nez v1, :cond_1

    .line 277
    nop

    .line 301
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->k()V

    .line 304
    invoke-virtual {p2}, Lcom/umeng/analytics/d/s;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p2}, Lcom/umeng/analytics/d/s;->j()V

    .line 308
    return-void

    .line 305
    :cond_0
    new-instance p1, Lcom/umeng/a/a/a/b/i;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'duration\' was not found in serialized data! Struct: "

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

    .line 279
    :cond_1
    iget-short v1, v0, Lcom/umeng/a/a/a/b/c;->c:S

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 297
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    goto :goto_1

    .line 289
    :pswitch_0
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    .line 290
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/d/s;->b:J

    .line 291
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/s;->b(Z)V

    goto :goto_1

    .line 293
    :cond_2
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 295
    goto :goto_1

    .line 281
    :pswitch_1
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    const/16 v3, 0xb

    if-ne v1, v3, :cond_3

    .line 282
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/s;->a:Ljava/lang/String;

    .line 283
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/s;->a(Z)V

    goto :goto_1

    .line 285
    :cond_3
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 287
    nop

    .line 299
    :goto_1
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->m()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 268
    check-cast p2, Lcom/umeng/analytics/d/s;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/s$a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/s;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 311
    invoke-virtual {p2}, Lcom/umeng/analytics/d/s;->j()V

    .line 313
    invoke-static {}, Lcom/umeng/analytics/d/s;->k()Lcom/umeng/a/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/m;)V

    .line 314
    iget-object v0, p2, Lcom/umeng/analytics/d/s;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 315
    invoke-static {}, Lcom/umeng/analytics/d/s;->l()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 316
    iget-object v0, p2, Lcom/umeng/analytics/d/s;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 319
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/d/s;->m()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 320
    iget-wide v0, p2, Lcom/umeng/analytics/d/s;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/h;->a(J)V

    .line 321
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 322
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->d()V

    .line 323
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->b()V

    .line 324
    return-void
.end method
