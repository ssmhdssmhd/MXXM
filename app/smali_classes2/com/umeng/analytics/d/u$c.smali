.class Lcom/umeng/analytics/d/u$c;
.super Lcom/umeng/a/a/a/c/d;
.source "Resolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/u;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 329
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/u$1;)V
    .locals 0

    .line 329
    invoke-direct {p0}, Lcom/umeng/analytics/d/u$c;-><init>()V

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

    .line 329
    check-cast p2, Lcom/umeng/analytics/d/u;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/u$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/u;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 333
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 334
    iget v0, p2, Lcom/umeng/analytics/d/u;->a:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 335
    iget p2, p2, Lcom/umeng/analytics/d/u;->b:I

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 336
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 329
    check-cast p2, Lcom/umeng/analytics/d/u;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/u$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/u;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 340
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 341
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/d/u;->a:I

    .line 342
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/u;->a(Z)V

    .line 343
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result p1

    iput p1, p2, Lcom/umeng/analytics/d/u;->b:I

    .line 344
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/u;->b(Z)V

    .line 345
    return-void
.end method
