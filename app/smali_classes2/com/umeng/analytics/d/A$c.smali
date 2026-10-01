.class Lcom/umeng/analytics/d/A$c;
.super Lcom/umeng/a/a/a/c/d;
.source "UserInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/A;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 462
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/A$1;)V
    .locals 0

    .line 462
    invoke-direct {p0}, Lcom/umeng/analytics/d/A$c;-><init>()V

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

    .line 462
    check-cast p2, Lcom/umeng/analytics/d/A;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/A$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/A;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/A;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 466
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 467
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 468
    invoke-virtual {p2}, Lcom/umeng/analytics/d/A;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 471
    :cond_0
    invoke-virtual {p2}, Lcom/umeng/analytics/d/A;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 474
    :cond_1
    invoke-virtual {p2}, Lcom/umeng/analytics/d/A;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 475
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 477
    :cond_2
    invoke-virtual {p2}, Lcom/umeng/analytics/d/A;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 478
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 480
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(Ljava/util/BitSet;I)V

    .line 481
    invoke-virtual {p2}, Lcom/umeng/analytics/d/A;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 482
    iget-object v0, p2, Lcom/umeng/analytics/d/A;->a:Lcom/umeng/analytics/d/j;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/j;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 484
    :cond_4
    invoke-virtual {p2}, Lcom/umeng/analytics/d/A;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 485
    iget v0, p2, Lcom/umeng/analytics/d/A;->b:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 487
    :cond_5
    invoke-virtual {p2}, Lcom/umeng/analytics/d/A;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 488
    iget-object v0, p2, Lcom/umeng/analytics/d/A;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 490
    :cond_6
    invoke-virtual {p2}, Lcom/umeng/analytics/d/A;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 491
    iget-object p2, p2, Lcom/umeng/analytics/d/A;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 493
    :cond_7
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 462
    check-cast p2, Lcom/umeng/analytics/d/A;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/A$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/A;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/A;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 497
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 498
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 499
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v1

    invoke-static {v1}, Lcom/umeng/analytics/d/j;->a(I)Lcom/umeng/analytics/d/j;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/A;->a:Lcom/umeng/analytics/d/j;

    .line 501
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/A;->a(Z)V

    .line 503
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/analytics/d/A;->b:I

    .line 505
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/A;->b(Z)V

    .line 507
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 508
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/A;->c:Ljava/lang/String;

    .line 509
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/A;->c(Z)V

    .line 511
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 512
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/analytics/d/A;->d:Ljava/lang/String;

    .line 513
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/A;->d(Z)V

    .line 515
    :cond_3
    return-void
.end method
