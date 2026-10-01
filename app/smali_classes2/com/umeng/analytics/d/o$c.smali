.class Lcom/umeng/analytics/d/o$c;
.super Lcom/umeng/a/a/a/c/d;
.source "ImprintValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/o;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 395
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/o$1;)V
    .locals 0

    .line 395
    invoke-direct {p0}, Lcom/umeng/analytics/d/o$c;-><init>()V

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

    .line 395
    check-cast p2, Lcom/umeng/analytics/d/o;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/o$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/o;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 399
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 400
    iget-wide v0, p2, Lcom/umeng/analytics/d/o;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(J)V

    .line 401
    iget-object v0, p2, Lcom/umeng/analytics/d/o;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 402
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 403
    invoke-virtual {p2}, Lcom/umeng/analytics/d/o;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 406
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(Ljava/util/BitSet;I)V

    .line 407
    invoke-virtual {p2}, Lcom/umeng/analytics/d/o;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    iget-object p2, p2, Lcom/umeng/analytics/d/o;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 410
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

    .line 395
    check-cast p2, Lcom/umeng/analytics/d/o;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/o$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/o;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 414
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 415
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/d/o;->b:J

    .line 416
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/o;->b(Z)V

    .line 417
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/d/o;->c:Ljava/lang/String;

    .line 418
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/o;->c(Z)V

    .line 419
    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->b(I)Ljava/util/BitSet;

    move-result-object v1

    .line 420
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/analytics/d/o;->a:Ljava/lang/String;

    .line 422
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/o;->a(Z)V

    .line 424
    :cond_0
    return-void
.end method
