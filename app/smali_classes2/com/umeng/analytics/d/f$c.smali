.class Lcom/umeng/analytics/d/f$c;
.super Lcom/umeng/a/a/a/c/d;
.source "Ekv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/f;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 549
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/f$1;)V
    .locals 0

    .line 549
    invoke-direct {p0}, Lcom/umeng/analytics/d/f$c;-><init>()V

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

    .line 549
    check-cast p2, Lcom/umeng/analytics/d/f;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/f$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/f;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 553
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 554
    iget-wide v0, p2, Lcom/umeng/analytics/d/f;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(J)V

    .line 555
    iget-object v0, p2, Lcom/umeng/analytics/d/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 557
    iget-object v0, p2, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 558
    iget-object v0, p2, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 560
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 561
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 562
    goto :goto_0

    .line 564
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 565
    invoke-virtual {p2}, Lcom/umeng/analytics/d/f;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 568
    :cond_1
    invoke-virtual {p2}, Lcom/umeng/analytics/d/f;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 569
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 571
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(Ljava/util/BitSet;I)V

    .line 572
    invoke-virtual {p2}, Lcom/umeng/analytics/d/f;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    iget-wide v0, p2, Lcom/umeng/analytics/d/f;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(J)V

    .line 575
    :cond_3
    invoke-virtual {p2}, Lcom/umeng/analytics/d/f;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 576
    iget p2, p2, Lcom/umeng/analytics/d/f;->e:I

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 578
    :cond_4
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 549
    check-cast p2, Lcom/umeng/analytics/d/f;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/f$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/f;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/f;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 582
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 583
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/d/f;->a:J

    .line 584
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/f;->a(Z)V

    .line 585
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/f;->b:Ljava/lang/String;

    .line 586
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/f;->b(Z)V

    .line 588
    new-instance v1, Lcom/umeng/a/a/a/b/e;

    const/16 v2, 0xb

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v3

    invoke-direct {v1, v2, v2, v3}, Lcom/umeng/a/a/a/b/e;-><init>(BBI)V

    .line 589
    new-instance v2, Ljava/util/HashMap;

    iget v3, v1, Lcom/umeng/a/a/a/b/e;->c:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p2, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    .line 590
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v5, v1, Lcom/umeng/a/a/a/b/e;->c:I

    if-ge v3, v5, :cond_0

    .line 594
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v5

    .line 595
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v6

    .line 596
    iget-object v7, p2, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 599
    :cond_0
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/f;->c(Z)V

    .line 600
    invoke-virtual {p1, v4}, Lcom/umeng/a/a/a/b/n;->b(I)Ljava/util/BitSet;

    move-result-object v1

    .line 601
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 602
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->x()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/umeng/analytics/d/f;->d:J

    .line 603
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/f;->d(Z)V

    .line 605
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 606
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result p1

    iput p1, p2, Lcom/umeng/analytics/d/f;->e:I

    .line 607
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/f;->e(Z)V

    .line 609
    :cond_2
    return-void
.end method
