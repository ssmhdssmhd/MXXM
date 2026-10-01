.class Lcom/umeng/analytics/d/s$c;
.super Lcom/umeng/a/a/a/c/d;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/s;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/s$1;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/umeng/analytics/d/s$c;-><init>()V

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

    .line 334
    check-cast p2, Lcom/umeng/analytics/d/s;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/s$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/s;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 338
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 339
    iget-object v0, p2, Lcom/umeng/analytics/d/s;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/n;->a(Ljava/lang/String;)V

    .line 340
    iget-wide v0, p2, Lcom/umeng/analytics/d/s;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(J)V

    .line 341
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 334
    check-cast p2, Lcom/umeng/analytics/d/s;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/s$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/s;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/s;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 345
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 346
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/d/s;->a:Ljava/lang/String;

    .line 347
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/s;->a(Z)V

    .line 348
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/umeng/analytics/d/s;->b:J

    .line 349
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/d/s;->b(Z)V

    .line 350
    return-void
.end method
