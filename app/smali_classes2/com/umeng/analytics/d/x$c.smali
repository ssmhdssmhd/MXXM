.class Lcom/umeng/analytics/d/x$c;
.super Lcom/umeng/a/a/a/c/d;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/x;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 707
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/x$1;)V
    .locals 0

    .line 707
    invoke-direct {p0}, Lcom/umeng/analytics/d/x$c;-><init>()V

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

    .line 707
    check-cast p2, Lcom/umeng/analytics/d/x;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/x$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/x;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/x;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 711
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 712
    iget-object v0, p2, Lcom/umeng/analytics/d/x;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 713
    iget-wide v0, p2, Lcom/umeng/analytics/d/x;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(J)V

    .line 714
    iget-wide v0, p2, Lcom/umeng/analytics/d/x;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(J)V

    .line 715
    iget-wide v0, p2, Lcom/umeng/analytics/d/x;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(J)V

    .line 716
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 717
    invoke-virtual {p2}, Lcom/umeng/analytics/d/x;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 720
    :cond_0
    invoke-virtual {p2}, Lcom/umeng/analytics/d/x;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 721
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 723
    :cond_1
    invoke-virtual {p2}, Lcom/umeng/analytics/d/x;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 724
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 726
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(Ljava/util/BitSet;I)V

    .line 727
    invoke-virtual {p2}, Lcom/umeng/analytics/d/x;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 729
    iget-object v0, p2, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 730
    iget-object v0, p2, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/d/s;

    .line 732
    invoke-virtual {v1, p1}, Lcom/umeng/analytics/d/s;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 733
    goto :goto_0

    .line 736
    :cond_3
    invoke-virtual {p2}, Lcom/umeng/analytics/d/x;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 738
    iget-object v0, p2, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 739
    iget-object v0, p2, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/d/q;

    .line 741
    invoke-virtual {v1, p1}, Lcom/umeng/analytics/d/q;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 742
    goto :goto_1

    .line 745
    :cond_4
    invoke-virtual {p2}, Lcom/umeng/analytics/d/x;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 746
    iget-object p2, p2, Lcom/umeng/analytics/d/x;->g:Lcom/umeng/analytics/d/y;

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/d/y;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 748
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

    .line 707
    check-cast p2, Lcom/umeng/analytics/d/x;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/x$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/x;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/x;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 752
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 753
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/x;->a:Ljava/lang/String;

    .line 754
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/x;->a(Z)V

    .line 755
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/umeng/analytics/d/x;->b:J

    .line 756
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/x;->b(Z)V

    .line 757
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/umeng/analytics/d/x;->c:J

    .line 758
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/x;->c(Z)V

    .line 759
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/umeng/analytics/d/x;->d:J

    .line 760
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/x;->d(Z)V

    .line 761
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/umeng/a/a/a/b/n;->b(I)Ljava/util/BitSet;

    move-result-object v1

    .line 762
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    const/16 v4, 0xc

    if-eqz v3, :cond_1

    .line 764
    new-instance v3, Lcom/umeng/a/a/a/b/d;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/umeng/a/a/a/b/d;-><init>(BI)V

    .line 765
    new-instance v5, Ljava/util/ArrayList;

    iget v6, v3, Lcom/umeng/a/a/a/b/d;->b:I

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p2, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    .line 766
    const/4 v5, 0x0

    :goto_0
    iget v6, v3, Lcom/umeng/a/a/a/b/d;->b:I

    if-ge v5, v6, :cond_0

    .line 769
    new-instance v6, Lcom/umeng/analytics/d/s;

    invoke-direct {v6}, Lcom/umeng/analytics/d/s;-><init>()V

    .line 770
    invoke-virtual {v6, p1}, Lcom/umeng/analytics/d/s;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 771
    iget-object v7, p2, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 774
    :cond_0
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/x;->e(Z)V

    .line 776
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 778
    new-instance v3, Lcom/umeng/a/a/a/b/d;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/umeng/a/a/a/b/d;-><init>(BI)V

    .line 779
    new-instance v4, Ljava/util/ArrayList;

    iget v5, v3, Lcom/umeng/a/a/a/b/d;->b:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p2, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    .line 780
    nop

    :goto_1
    iget v4, v3, Lcom/umeng/a/a/a/b/d;->b:I

    if-ge v2, v4, :cond_2

    .line 783
    new-instance v4, Lcom/umeng/analytics/d/q;

    invoke-direct {v4}, Lcom/umeng/analytics/d/q;-><init>()V

    .line 784
    invoke-virtual {v4, p1}, Lcom/umeng/analytics/d/q;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 785
    iget-object v5, p2, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 788
    :cond_2
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/x;->f(Z)V

    .line 790
    :cond_3
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 791
    new-instance v1, Lcom/umeng/analytics/d/y;

    invoke-direct {v1}, Lcom/umeng/analytics/d/y;-><init>()V

    iput-object v1, p2, Lcom/umeng/analytics/d/x;->g:Lcom/umeng/analytics/d/y;

    .line 792
    iget-object v1, p2, Lcom/umeng/analytics/d/x;->g:Lcom/umeng/analytics/d/y;

    invoke-virtual {v1, p1}, Lcom/umeng/analytics/d/y;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 793
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/x;->g(Z)V

    .line 795
    :cond_4
    return-void
.end method
