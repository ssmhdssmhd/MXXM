.class Lcom/umeng/analytics/d/l$c;
.super Lcom/umeng/a/a/a/c/d;
.source "IdSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/l;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 390
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/l$1;)V
    .locals 0

    .line 390
    invoke-direct {p0}, Lcom/umeng/analytics/d/l$c;-><init>()V

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

    .line 390
    check-cast p2, Lcom/umeng/analytics/d/l;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/l$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/l;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 394
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 395
    iget-object v0, p2, Lcom/umeng/analytics/d/l;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 396
    iget-wide v0, p2, Lcom/umeng/analytics/d/l;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(J)V

    .line 397
    iget p2, p2, Lcom/umeng/analytics/d/l;->c:I

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 398
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 390
    check-cast p2, Lcom/umeng/analytics/d/l;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/l$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/l;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 402
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 403
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/l;->a:Ljava/lang/String;

    .line 404
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/l;->a(Z)V

    .line 405
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/umeng/analytics/d/l;->b:J

    .line 406
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/l;->b(Z)V

    .line 407
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result p1

    iput p1, p2, Lcom/umeng/analytics/d/l;->c:I

    .line 408
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/l;->c(Z)V

    .line 409
    return-void
.end method
