.class Lcom/umeng/analytics/d/n$c;
.super Lcom/umeng/a/a/a/c/d;
.source "Imprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/n;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 441
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/n$1;)V
    .locals 0

    .line 441
    invoke-direct {p0}, Lcom/umeng/analytics/d/n$c;-><init>()V

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

    .line 441
    check-cast p2, Lcom/umeng/analytics/d/n;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/n$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/n;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 445
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 447
    iget-object v0, p2, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 448
    iget-object v0, p2, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 450
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 451
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/d/o;

    invoke-virtual {v1, p1}, Lcom/umeng/analytics/d/o;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 452
    goto :goto_0

    .line 454
    :cond_0
    iget v0, p2, Lcom/umeng/analytics/d/n;->b:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(I)V

    .line 455
    iget-object p2, p2, Lcom/umeng/analytics/d/n;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 441
    check-cast p2, Lcom/umeng/analytics/d/n;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/n$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/n;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/n;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 460
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 462
    new-instance v0, Lcom/umeng/a/a/a/b/e;

    const/16 v1, 0xc

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v2

    const/16 v3, 0xb

    invoke-direct {v0, v3, v1, v2}, Lcom/umeng/a/a/a/b/e;-><init>(BBI)V

    .line 463
    new-instance v1, Ljava/util/HashMap;

    iget v2, v0, Lcom/umeng/a/a/a/b/e;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    .line 464
    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/umeng/a/a/a/b/e;->c:I

    if-ge v1, v2, :cond_0

    .line 468
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v2

    .line 469
    new-instance v3, Lcom/umeng/analytics/d/o;

    invoke-direct {v3}, Lcom/umeng/analytics/d/o;-><init>()V

    .line 470
    invoke-virtual {v3, p1}, Lcom/umeng/analytics/d/o;->a(Lcom/umeng/a/a/a/b/h;)V

    .line 471
    iget-object v4, p2, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/n;->a(Z)V

    .line 475
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/analytics/d/n;->b:I

    .line 476
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/n;->b(Z)V

    .line 477
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/analytics/d/n;->c:Ljava/lang/String;

    .line 478
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/n;->c(Z)V

    .line 479
    return-void
.end method
