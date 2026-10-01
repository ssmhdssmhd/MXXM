.class Lcom/umeng/analytics/d/p$c;
.super Lcom/umeng/a/a/a/c/d;
.source "InstantMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/p;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 569
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/p$1;)V
    .locals 0

    .line 569
    invoke-direct {p0}, Lcom/umeng/analytics/d/p$c;-><init>()V

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

    .line 569
    check-cast p2, Lcom/umeng/analytics/d/p;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/p$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/p;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 573
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 574
    iget-object v0, p2, Lcom/umeng/analytics/d/p;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 575
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 576
    invoke-virtual {p2}, Lcom/umeng/analytics/d/p;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 579
    :cond_0
    invoke-virtual {p2}, Lcom/umeng/analytics/d/p;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 582
    :cond_1
    invoke-virtual {p2}, Lcom/umeng/analytics/d/p;->u()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 583
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 585
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(Ljava/util/BitSet;I)V

    .line 586
    invoke-virtual {p2}, Lcom/umeng/analytics/d/p;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 588
    iget-object v0, p2, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 589
    iget-object v0, p2, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/d/g;

    .line 591
    invoke-virtual {v1, p1}, Lcom/umeng/analytics/d/g;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 592
    goto :goto_0

    .line 595
    :cond_3
    invoke-virtual {p2}, Lcom/umeng/analytics/d/p;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 597
    iget-object v0, p2, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 598
    iget-object v0, p2, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/d/i;

    .line 600
    invoke-virtual {v1, p1}, Lcom/umeng/analytics/d/i;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 601
    goto :goto_1

    .line 604
    :cond_4
    invoke-virtual {p2}, Lcom/umeng/analytics/d/p;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 606
    iget-object v0, p2, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 607
    iget-object p2, p2, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/d/i;

    .line 609
    invoke-virtual {v0, p1}, Lcom/umeng/analytics/d/i;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 610
    goto :goto_2

    .line 613
    :cond_5
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 569
    check-cast p2, Lcom/umeng/analytics/d/p;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/p$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/p;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/p;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 617
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 618
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/p;->a:Ljava/lang/String;

    .line 619
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/p;->a(Z)V

    .line 620
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/umeng/a/a/a/b/n;->b(I)Ljava/util/BitSet;

    move-result-object v1

    .line 621
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    const/16 v4, 0xc

    if-eqz v3, :cond_1

    .line 623
    new-instance v3, Lcom/umeng/a/a/a/b/d;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/umeng/a/a/a/b/d;-><init>(BI)V

    .line 624
    new-instance v5, Ljava/util/ArrayList;

    iget v6, v3, Lcom/umeng/a/a/a/b/d;->b:I

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p2, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    .line 625
    const/4 v5, 0x0

    :goto_0
    iget v6, v3, Lcom/umeng/a/a/a/b/d;->b:I

    if-ge v5, v6, :cond_0

    .line 628
    new-instance v6, Lcom/umeng/analytics/d/g;

    invoke-direct {v6}, Lcom/umeng/analytics/d/g;-><init>()V

    .line 629
    invoke-virtual {v6, p1}, Lcom/umeng/analytics/d/g;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 630
    iget-object v7, p2, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 633
    :cond_0
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/p;->b(Z)V

    .line 635
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 637
    new-instance v3, Lcom/umeng/a/a/a/b/d;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/umeng/a/a/a/b/d;-><init>(BI)V

    .line 638
    new-instance v5, Ljava/util/ArrayList;

    iget v6, v3, Lcom/umeng/a/a/a/b/d;->b:I

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p2, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    .line 639
    const/4 v5, 0x0

    :goto_1
    iget v6, v3, Lcom/umeng/a/a/a/b/d;->b:I

    if-ge v5, v6, :cond_2

    .line 642
    new-instance v6, Lcom/umeng/analytics/d/i;

    invoke-direct {v6}, Lcom/umeng/analytics/d/i;-><init>()V

    .line 643
    invoke-virtual {v6, p1}, Lcom/umeng/analytics/d/i;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 644
    iget-object v7, p2, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 647
    :cond_2
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/p;->c(Z)V

    .line 649
    :cond_3
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 651
    new-instance v1, Lcom/umeng/a/a/a/b/d;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v3

    invoke-direct {v1, v4, v3}, Lcom/umeng/a/a/a/b/d;-><init>(BI)V

    .line 652
    new-instance v3, Ljava/util/ArrayList;

    iget v4, v1, Lcom/umeng/a/a/a/b/d;->b:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p2, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    .line 653
    nop

    :goto_2
    iget v3, v1, Lcom/umeng/a/a/a/b/d;->b:I

    if-ge v2, v3, :cond_4

    .line 656
    new-instance v3, Lcom/umeng/analytics/d/i;

    invoke-direct {v3}, Lcom/umeng/analytics/d/i;-><init>()V

    .line 657
    invoke-virtual {v3, p1}, Lcom/umeng/analytics/d/i;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 658
    iget-object v4, p2, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 661
    :cond_4
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/p;->d(Z)V

    .line 663
    :cond_5
    return-void
.end method
