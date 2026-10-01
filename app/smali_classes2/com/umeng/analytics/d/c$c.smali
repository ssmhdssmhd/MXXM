.class Lcom/umeng/analytics/d/c$c;
.super Lcom/umeng/a/a/a/c/d;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/c;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 824
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/c$1;)V
    .locals 0

    .line 824
    invoke-direct {p0}, Lcom/umeng/analytics/d/c$c;-><init>()V

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

    .line 824
    check-cast p2, Lcom/umeng/analytics/d/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/c$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/c;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 828
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 829
    iget-object v0, p2, Lcom/umeng/analytics/d/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 830
    iget-object v0, p2, Lcom/umeng/analytics/d/c;->e:Lcom/umeng/analytics/d/w;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/w;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 831
    iget-object v0, p2, Lcom/umeng/analytics/d/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 832
    iget-object v0, p2, Lcom/umeng/analytics/d/c;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 833
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 834
    invoke-virtual {p2}, Lcom/umeng/analytics/d/c;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 835
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 837
    :cond_0
    invoke-virtual {p2}, Lcom/umeng/analytics/d/c;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 838
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 840
    :cond_1
    invoke-virtual {p2}, Lcom/umeng/analytics/d/c;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 841
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 843
    :cond_2
    invoke-virtual {p2}, Lcom/umeng/analytics/d/c;->A()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 844
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 846
    :cond_3
    invoke-virtual {p2}, Lcom/umeng/analytics/d/c;->D()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 847
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 849
    :cond_4
    invoke-virtual {p2}, Lcom/umeng/analytics/d/c;->G()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 850
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 852
    :cond_5
    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(Ljava/util/BitSet;I)V

    .line 853
    invoke-virtual {p2}, Lcom/umeng/analytics/d/c;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 854
    iget-object v0, p2, Lcom/umeng/analytics/d/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 856
    :cond_6
    invoke-virtual {p2}, Lcom/umeng/analytics/d/c;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 857
    iget v0, p2, Lcom/umeng/analytics/d/c;->c:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 859
    :cond_7
    invoke-virtual {p2}, Lcom/umeng/analytics/d/c;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 860
    iget-object v0, p2, Lcom/umeng/analytics/d/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 862
    :cond_8
    invoke-virtual {p2}, Lcom/umeng/analytics/d/c;->A()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 863
    iget-object v0, p2, Lcom/umeng/analytics/d/c;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 865
    :cond_9
    invoke-virtual {p2}, Lcom/umeng/analytics/d/c;->D()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 866
    iget-object v0, p2, Lcom/umeng/analytics/d/c;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 868
    :cond_a
    invoke-virtual {p2}, Lcom/umeng/analytics/d/c;->G()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 869
    iget p2, p2, Lcom/umeng/analytics/d/c;->j:I

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 871
    :cond_b
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 824
    check-cast p2, Lcom/umeng/analytics/d/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/c$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/c;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 875
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 876
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/c;->a:Ljava/lang/String;

    .line 877
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/c;->a(Z)V

    .line 878
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v1

    invoke-static {v1}, Lcom/umeng/analytics/d/w;->a(I)Lcom/umeng/analytics/d/w;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/c;->e:Lcom/umeng/analytics/d/w;

    .line 879
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/c;->e(Z)V

    .line 880
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/c;->f:Ljava/lang/String;

    .line 881
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/c;->f(Z)V

    .line 882
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/c;->g:Ljava/lang/String;

    .line 883
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/c;->g(Z)V

    .line 884
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lcom/umeng/a/a/a/b/n;->b(I)Ljava/util/BitSet;

    move-result-object v1

    .line 885
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 886
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/umeng/analytics/d/c;->b:Ljava/lang/String;

    .line 887
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/c;->b(Z)V

    .line 889
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 890
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v2

    iput v2, p2, Lcom/umeng/analytics/d/c;->c:I

    .line 891
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/c;->c(Z)V

    .line 893
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 894
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/umeng/analytics/d/c;->d:Ljava/lang/String;

    .line 895
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/c;->d(Z)V

    .line 897
    :cond_2
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 898
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/umeng/analytics/d/c;->h:Ljava/lang/String;

    .line 899
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/c;->h(Z)V

    .line 901
    :cond_3
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 902
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/umeng/analytics/d/c;->i:Ljava/lang/String;

    .line 903
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/c;->i(Z)V

    .line 905
    :cond_4
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 906
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result p1

    iput p1, p2, Lcom/umeng/analytics/d/c;->j:I

    .line 907
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/c;->j(Z)V

    .line 909
    :cond_5
    return-void
.end method
