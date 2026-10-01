.class Lcom/umeng/analytics/d/m$c;
.super Lcom/umeng/a/a/a/c/d;
.source "IdTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/m;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 479
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/m$1;)V
    .locals 0

    .line 479
    invoke-direct {p0}, Lcom/umeng/analytics/d/m$c;-><init>()V

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

    .line 479
    check-cast p2, Lcom/umeng/analytics/d/m;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/m$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/m;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 483
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 485
    iget-object v0, p2, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 486
    iget-object v0, p2, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

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

    .line 488
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 489
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/d/l;

    invoke-virtual {v1, p1}, Lcom/umeng/analytics/d/l;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 490
    goto :goto_0

    .line 492
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 493
    invoke-virtual {p2}, Lcom/umeng/analytics/d/m;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 496
    :cond_1
    invoke-virtual {p2}, Lcom/umeng/analytics/d/m;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 497
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 499
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(Ljava/util/BitSet;I)V

    .line 500
    invoke-virtual {p2}, Lcom/umeng/analytics/d/m;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 502
    iget-object v0, p2, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 503
    iget-object v0, p2, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/d/k;

    .line 505
    invoke-virtual {v1, p1}, Lcom/umeng/analytics/d/k;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 506
    goto :goto_1

    .line 509
    :cond_3
    invoke-virtual {p2}, Lcom/umeng/analytics/d/m;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 510
    iget-object p2, p2, Lcom/umeng/analytics/d/m;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 512
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

    .line 479
    check-cast p2, Lcom/umeng/analytics/d/m;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/m$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/m;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/m;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 516
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 518
    new-instance v0, Lcom/umeng/a/a/a/b/e;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3, v1}, Lcom/umeng/a/a/a/b/e;-><init>(BBI)V

    .line 519
    new-instance v1, Ljava/util/HashMap;

    iget v2, v0, Lcom/umeng/a/a/a/b/e;->c:I

    const/4 v4, 0x2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    .line 520
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v5, v0, Lcom/umeng/a/a/a/b/e;->c:I

    if-ge v2, v5, :cond_0

    .line 524
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v5

    .line 525
    new-instance v6, Lcom/umeng/analytics/d/l;

    invoke-direct {v6}, Lcom/umeng/analytics/d/l;-><init>()V

    .line 526
    invoke-virtual {v6, p1}, Lcom/umeng/analytics/d/l;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 527
    iget-object v7, p2, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/m;->a(Z)V

    .line 531
    invoke-virtual {p1, v4}, Lcom/umeng/a/a/a/b/n;->b(I)Ljava/util/BitSet;

    move-result-object v2

    .line 532
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 534
    new-instance v4, Lcom/umeng/a/a/a/b/d;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/umeng/a/a/a/b/d;-><init>(BI)V

    .line 535
    new-instance v3, Ljava/util/ArrayList;

    iget v5, v4, Lcom/umeng/a/a/a/b/d;->b:I

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p2, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    .line 536
    nop

    :goto_1
    iget v3, v4, Lcom/umeng/a/a/a/b/d;->b:I

    if-ge v1, v3, :cond_1

    .line 539
    new-instance v3, Lcom/umeng/analytics/d/k;

    invoke-direct {v3}, Lcom/umeng/analytics/d/k;-><init>()V

    .line 540
    invoke-virtual {v3, p1}, Lcom/umeng/analytics/d/k;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 541
    iget-object v5, p2, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 544
    :cond_1
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/m;->b(Z)V

    .line 546
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 547
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/analytics/d/m;->c:Ljava/lang/String;

    .line 548
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/m;->c(Z)V

    .line 550
    :cond_3
    return-void
.end method
