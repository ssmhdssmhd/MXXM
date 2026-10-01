.class Lcom/umeng/analytics/d/d$c;
.super Lcom/umeng/a/a/a/c/d;
.source "ClientStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 387
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/d$1;)V
    .locals 0

    .line 387
    invoke-direct {p0}, Lcom/umeng/analytics/d/d$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 387
    check-cast p2, Lcom/umeng/analytics/d/d;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/d$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/d;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 391
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 392
    iget v0, p2, Lcom/umeng/analytics/d/d;->a:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 393
    iget v0, p2, Lcom/umeng/analytics/d/d;->b:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 394
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 395
    invoke-virtual {p2}, Lcom/umeng/analytics/d/d;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 398
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(Ljava/util/BitSet;I)V

    .line 399
    invoke-virtual {p2}, Lcom/umeng/analytics/d/d;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    iget p2, p2, Lcom/umeng/analytics/d/d;->c:I

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 402
    :cond_1
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 387
    check-cast p2, Lcom/umeng/analytics/d/d;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/d$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/d;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 406
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 407
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/d/d;->a:I

    .line 408
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/d;->a(Z)V

    .line 409
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/analytics/d/d;->b:I

    .line 410
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/d;->b(Z)V

    .line 411
    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->b(I)Ljava/util/BitSet;

    move-result-object v1

    .line 412
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result p1

    iput p1, p2, Lcom/umeng/analytics/d/d;->c:I

    .line 414
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/d;->c(Z)V

    .line 416
    :cond_0
    return-void
.end method
