.class Lcom/umeng/analytics/d/g$c;
.super Lcom/umeng/a/a/a/c/d;
.source "Error.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/g;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 411
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/g$1;)V
    .locals 0

    .line 411
    invoke-direct {p0}, Lcom/umeng/analytics/d/g$c;-><init>()V

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

    .line 411
    check-cast p2, Lcom/umeng/analytics/d/g;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/g$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/g;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 415
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 416
    iget-wide v0, p2, Lcom/umeng/analytics/d/g;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(J)V

    .line 417
    iget-object v0, p2, Lcom/umeng/analytics/d/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 418
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 419
    invoke-virtual {p2}, Lcom/umeng/analytics/d/g;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 422
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(Ljava/util/BitSet;I)V

    .line 423
    invoke-virtual {p2}, Lcom/umeng/analytics/d/g;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    iget-object p2, p2, Lcom/umeng/analytics/d/g;->c:Lcom/umeng/analytics/d/h;

    invoke-virtual {p2}, Lcom/umeng/analytics/d/h;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 426
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

    .line 411
    check-cast p2, Lcom/umeng/analytics/d/g;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/g$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/g;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 430
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 431
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/d/g;->a:J

    .line 432
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/g;->b(Z)V

    .line 433
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/g;->b:Ljava/lang/String;

    .line 434
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/g;->c(Z)V

    .line 435
    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->b(I)Ljava/util/BitSet;

    move-result-object v1

    .line 436
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result p1

    invoke-static {p1}, Lcom/umeng/analytics/d/h;->a(I)Lcom/umeng/analytics/d/h;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/analytics/d/g;->c:Lcom/umeng/analytics/d/h;

    .line 438
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/g;->d(Z)V

    .line 440
    :cond_0
    return-void
.end method
