.class Lcom/umeng/analytics/d/q$c;
.super Lcom/umeng/a/a/a/c/d;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/q;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 385
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/q$1;)V
    .locals 0

    .line 385
    invoke-direct {p0}, Lcom/umeng/analytics/d/q$c;-><init>()V

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

    .line 385
    check-cast p2, Lcom/umeng/analytics/d/q;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/q$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/q;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 389
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 390
    iget-wide v0, p2, Lcom/umeng/analytics/d/q;->a:D

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(D)V

    .line 391
    iget-wide v0, p2, Lcom/umeng/analytics/d/q;->b:D

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(D)V

    .line 392
    iget-wide v0, p2, Lcom/umeng/analytics/d/q;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(J)V

    .line 393
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 385
    check-cast p2, Lcom/umeng/analytics/d/q;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/q$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/q;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 397
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 398
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->y()D

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/d/q;->a:D

    .line 399
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/q;->a(Z)V

    .line 400
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->y()D

    move-result-wide v1

    iput-wide v1, p2, Lcom/umeng/analytics/d/q;->b:D

    .line 401
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/q;->b(Z)V

    .line 402
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/umeng/analytics/d/q;->c:J

    .line 403
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/q;->c(Z)V

    .line 404
    return-void
.end method
