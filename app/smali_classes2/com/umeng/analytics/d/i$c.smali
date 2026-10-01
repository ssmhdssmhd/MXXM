.class Lcom/umeng/analytics/d/i$c;
.super Lcom/umeng/a/a/a/c/d;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/i;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 548
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/i$1;)V
    .locals 0

    .line 548
    invoke-direct {p0}, Lcom/umeng/analytics/d/i$c;-><init>()V

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

    .line 548
    check-cast p2, Lcom/umeng/analytics/d/i;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/i$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/i;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 552
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 553
    iget-object v0, p2, Lcom/umeng/analytics/d/i;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 555
    iget-object v0, p2, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 556
    iget-object v0, p2, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

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

    .line 558
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 559
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/d/t;

    invoke-virtual {v1, p1}, Lcom/umeng/analytics/d/t;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 560
    goto :goto_0

    .line 562
    :cond_0
    iget-wide v0, p2, Lcom/umeng/analytics/d/i;->g:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(J)V

    .line 563
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 564
    invoke-virtual {p2}, Lcom/umeng/analytics/d/i;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 565
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 567
    :cond_1
    invoke-virtual {p2}, Lcom/umeng/analytics/d/i;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 568
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 570
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(Ljava/util/BitSet;I)V

    .line 571
    invoke-virtual {p2}, Lcom/umeng/analytics/d/i;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    iget-wide v0, p2, Lcom/umeng/analytics/d/i;->e:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(J)V

    .line 574
    :cond_3
    invoke-virtual {p2}, Lcom/umeng/analytics/d/i;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 575
    iget p2, p2, Lcom/umeng/analytics/d/i;->f:I

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 577
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

    .line 548
    check-cast p2, Lcom/umeng/analytics/d/i;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/i$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/i;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/i;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 581
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 582
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/i;->c:Ljava/lang/String;

    .line 583
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/i;->a(Z)V

    .line 585
    new-instance v1, Lcom/umeng/a/a/a/b/e;

    const/16 v2, 0xc

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v3

    const/16 v4, 0xb

    invoke-direct {v1, v4, v2, v3}, Lcom/umeng/a/a/a/b/e;-><init>(BBI)V

    .line 586
    new-instance v2, Ljava/util/HashMap;

    iget v3, v1, Lcom/umeng/a/a/a/b/e;->c:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p2, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    .line 587
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v5, v1, Lcom/umeng/a/a/a/b/e;->c:I

    if-ge v3, v5, :cond_0

    .line 591
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v5

    .line 592
    new-instance v6, Lcom/umeng/analytics/d/t;

    invoke-direct {v6}, Lcom/umeng/analytics/d/t;-><init>()V

    .line 593
    invoke-virtual {v6, p1}, Lcom/umeng/analytics/d/t;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 594
    iget-object v7, p2, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 597
    :cond_0
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/i;->b(Z)V

    .line 598
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->x()J

    move-result-wide v5

    iput-wide v5, p2, Lcom/umeng/analytics/d/i;->g:J

    .line 599
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/i;->e(Z)V

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

    iput-wide v2, p2, Lcom/umeng/analytics/d/i;->e:J

    .line 603
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/i;->c(Z)V

    .line 605
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 606
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result p1

    iput p1, p2, Lcom/umeng/analytics/d/i;->f:I

    .line 607
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/i;->d(Z)V

    .line 609
    :cond_2
    return-void
.end method
