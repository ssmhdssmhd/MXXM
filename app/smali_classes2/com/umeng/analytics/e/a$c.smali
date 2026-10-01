.class Lcom/umeng/analytics/e/a$c;
.super Lcom/umeng/a/a/a/c/d;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/e/a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 764
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/e/a$1;)V
    .locals 0

    .line 764
    invoke-direct {p0}, Lcom/umeng/analytics/e/a$c;-><init>()V

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

    .line 764
    check-cast p2, Lcom/umeng/analytics/e/a;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/e/a$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/e/a;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/e/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 768
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 769
    iget-object v0, p2, Lcom/umeng/analytics/e/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 770
    iget-object v0, p2, Lcom/umeng/analytics/e/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 771
    iget-object v0, p2, Lcom/umeng/analytics/e/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 772
    iget v0, p2, Lcom/umeng/analytics/e/a;->d:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 773
    iget v0, p2, Lcom/umeng/analytics/e/a;->e:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 774
    iget v0, p2, Lcom/umeng/analytics/e/a;->f:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 775
    iget-object v0, p2, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/nio/ByteBuffer;)V

    .line 776
    iget-object v0, p2, Lcom/umeng/analytics/e/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 777
    iget-object p2, p2, Lcom/umeng/analytics/e/a;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 764
    check-cast p2, Lcom/umeng/analytics/e/a;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/e/a$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/e/a;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/e/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 782
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 783
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/e/a;->a:Ljava/lang/String;

    .line 784
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/e/a;->a(Z)V

    .line 785
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/e/a;->b:Ljava/lang/String;

    .line 786
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/e/a;->b(Z)V

    .line 787
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/e/a;->c:Ljava/lang/String;

    .line 788
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/e/a;->c(Z)V

    .line 789
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/analytics/e/a;->d:I

    .line 790
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/e/a;->d(Z)V

    .line 791
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/analytics/e/a;->e:I

    .line 792
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/e/a;->e(Z)V

    .line 793
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/analytics/e/a;->f:I

    .line 794
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/e/a;->f(Z)V

    .line 795
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->A()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    .line 796
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/e/a;->g(Z)V

    .line 797
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/e/a;->h:Ljava/lang/String;

    .line 798
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/e/a;->h(Z)V

    .line 799
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/analytics/e/a;->i:Ljava/lang/String;

    .line 800
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/e/a;->i(Z)V

    .line 801
    return-void
.end method
