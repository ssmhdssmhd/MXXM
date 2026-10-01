.class Lcom/umeng/analytics/d/k$c;
.super Lcom/umeng/a/a/a/c/d;
.source "IdJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/k;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 456
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/k$1;)V
    .locals 0

    .line 456
    invoke-direct {p0}, Lcom/umeng/analytics/d/k$c;-><init>()V

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

    .line 456
    check-cast p2, Lcom/umeng/analytics/d/k;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/k$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/k;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 460
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 461
    iget-object v0, p2, Lcom/umeng/analytics/d/k;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 462
    iget-object v0, p2, Lcom/umeng/analytics/d/k;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 463
    iget-wide v0, p2, Lcom/umeng/analytics/d/k;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(J)V

    .line 464
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 465
    invoke-virtual {p2}, Lcom/umeng/analytics/d/k;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 468
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(Ljava/util/BitSet;I)V

    .line 469
    invoke-virtual {p2}, Lcom/umeng/analytics/d/k;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    iget-object p2, p2, Lcom/umeng/analytics/d/k;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 472
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

    .line 456
    check-cast p2, Lcom/umeng/analytics/d/k;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/k$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/k;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 476
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 477
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/k;->a:Ljava/lang/String;

    .line 478
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/k;->a(Z)V

    .line 479
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/k;->c:Ljava/lang/String;

    .line 480
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/k;->c(Z)V

    .line 481
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/umeng/analytics/d/k;->d:J

    .line 482
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/k;->d(Z)V

    .line 483
    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->b(I)Ljava/util/BitSet;

    move-result-object v1

    .line 484
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/analytics/d/k;->b:Ljava/lang/String;

    .line 486
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/k;->b(Z)V

    .line 488
    :cond_0
    return-void
.end method
