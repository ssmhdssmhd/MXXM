.class Lcom/umeng/analytics/d/v$c;
.super Lcom/umeng/a/a/a/c/d;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/v;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 398
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/v$1;)V
    .locals 0

    .line 398
    invoke-direct {p0}, Lcom/umeng/analytics/d/v$c;-><init>()V

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

    .line 398
    check-cast p2, Lcom/umeng/analytics/d/v;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/v$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/v;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 402
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 403
    iget v0, p2, Lcom/umeng/analytics/d/v;->a:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 404
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 405
    invoke-virtual {p2}, Lcom/umeng/analytics/d/v;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 408
    :cond_0
    invoke-virtual {p2}, Lcom/umeng/analytics/d/v;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 411
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(Ljava/util/BitSet;I)V

    .line 412
    invoke-virtual {p2}, Lcom/umeng/analytics/d/v;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p2, Lcom/umeng/analytics/d/v;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 415
    :cond_2
    invoke-virtual {p2}, Lcom/umeng/analytics/d/v;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    iget-object p2, p2, Lcom/umeng/analytics/d/v;->c:Lcom/umeng/analytics/d/n;

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/d/n;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 418
    :cond_3
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 398
    check-cast p2, Lcom/umeng/analytics/d/v;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/v$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/v;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/v;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 422
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 423
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/d/v;->a:I

    .line 424
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/v;->a(Z)V

    .line 425
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/umeng/a/a/a/b/n;->b(I)Ljava/util/BitSet;

    move-result-object v1

    .line 426
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/umeng/analytics/d/v;->b:Ljava/lang/String;

    .line 428
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/v;->b(Z)V

    .line 430
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    new-instance v1, Lcom/umeng/analytics/d/n;

    invoke-direct {v1}, Lcom/umeng/analytics/d/n;-><init>()V

    iput-object v1, p2, Lcom/umeng/analytics/d/v;->c:Lcom/umeng/analytics/d/n;

    .line 432
    iget-object v1, p2, Lcom/umeng/analytics/d/v;->c:Lcom/umeng/analytics/d/n;

    invoke-virtual {v1, p1}, Lcom/umeng/analytics/d/n;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 433
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/v;->c(Z)V

    .line 435
    :cond_1
    return-void
.end method
