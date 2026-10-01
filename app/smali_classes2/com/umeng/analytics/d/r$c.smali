.class Lcom/umeng/analytics/d/r$c;
.super Lcom/umeng/a/a/a/c/d;
.source "MiscInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/r;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 865
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/r$1;)V
    .locals 0

    .line 865
    invoke-direct {p0}, Lcom/umeng/analytics/d/r$c;-><init>()V

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

    .line 865
    check-cast p2, Lcom/umeng/analytics/d/r;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/r$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/r;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 869
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 870
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 871
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 872
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 874
    :cond_0
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 875
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 877
    :cond_1
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 878
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 880
    :cond_2
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 881
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 883
    :cond_3
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->r()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 884
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 886
    :cond_4
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->u()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 887
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 889
    :cond_5
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->x()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 890
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 892
    :cond_6
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->A()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 893
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 895
    :cond_7
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->D()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 896
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 898
    :cond_8
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->G()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 899
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 901
    :cond_9
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->J()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 902
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 904
    :cond_a
    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(Ljava/util/BitSet;I)V

    .line 905
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 906
    iget v0, p2, Lcom/umeng/analytics/d/r;->a:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 908
    :cond_b
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->i()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 909
    iget-object v0, p2, Lcom/umeng/analytics/d/r;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 911
    :cond_c
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->l()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 912
    iget-object v0, p2, Lcom/umeng/analytics/d/r;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 914
    :cond_d
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 915
    iget-wide v0, p2, Lcom/umeng/analytics/d/r;->d:D

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(D)V

    .line 917
    :cond_e
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->r()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 918
    iget-wide v0, p2, Lcom/umeng/analytics/d/r;->e:D

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(D)V

    .line 920
    :cond_f
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->u()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 921
    iget-object v0, p2, Lcom/umeng/analytics/d/r;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 923
    :cond_10
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->x()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 924
    iget v0, p2, Lcom/umeng/analytics/d/r;->g:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 926
    :cond_11
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->A()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 927
    iget-object v0, p2, Lcom/umeng/analytics/d/r;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 929
    :cond_12
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->D()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 930
    iget-object v0, p2, Lcom/umeng/analytics/d/r;->i:Lcom/umeng/analytics/d/a;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/a;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 932
    :cond_13
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->G()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 933
    iget-object v0, p2, Lcom/umeng/analytics/d/r;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 935
    :cond_14
    invoke-virtual {p2}, Lcom/umeng/analytics/d/r;->J()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 936
    iget-object p2, p2, Lcom/umeng/analytics/d/r;->k:Lcom/umeng/analytics/d/A;

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/d/A;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 938
    :cond_15
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 865
    check-cast p2, Lcom/umeng/analytics/d/r;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/r$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/r;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/r;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 942
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 943
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 944
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 945
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/analytics/d/r;->a:I

    .line 946
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/r;->a(Z)V

    .line 948
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 949
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/r;->b:Ljava/lang/String;

    .line 950
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/r;->b(Z)V

    .line 952
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 953
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/r;->c:Ljava/lang/String;

    .line 954
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/r;->c(Z)V

    .line 956
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 957
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->y()D

    move-result-wide v3

    iput-wide v3, p2, Lcom/umeng/analytics/d/r;->d:D

    .line 958
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/r;->d(Z)V

    .line 960
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 961
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->y()D

    move-result-wide v3

    iput-wide v3, p2, Lcom/umeng/analytics/d/r;->e:D

    .line 962
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/r;->e(Z)V

    .line 964
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 965
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/r;->f:Ljava/lang/String;

    .line 966
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/r;->f(Z)V

    .line 968
    :cond_5
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 969
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/analytics/d/r;->g:I

    .line 970
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/r;->g(Z)V

    .line 972
    :cond_6
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 973
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/r;->h:Ljava/lang/String;

    .line 974
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/r;->h(Z)V

    .line 976
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 977
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v1

    invoke-static {v1}, Lcom/umeng/analytics/d/a;->a(I)Lcom/umeng/analytics/d/a;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/r;->i:Lcom/umeng/analytics/d/a;

    .line 978
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/r;->i(Z)V

    .line 980
    :cond_8
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 981
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/r;->j:Ljava/lang/String;

    .line 982
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/r;->j(Z)V

    .line 984
    :cond_9
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 985
    new-instance v0, Lcom/umeng/analytics/d/A;

    invoke-direct {v0}, Lcom/umeng/analytics/d/A;-><init>()V

    iput-object v0, p2, Lcom/umeng/analytics/d/r;->k:Lcom/umeng/analytics/d/A;

    .line 986
    iget-object v0, p2, Lcom/umeng/analytics/d/r;->k:Lcom/umeng/analytics/d/A;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/d/A;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 987
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/d/r;->k(Z)V

    .line 989
    :cond_a
    return-void
.end method
