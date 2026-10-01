.class Lcom/umeng/analytics/d/b$c;
.super Lcom/umeng/a/a/a/c/d;
.source "ActivateMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/d<",
        "Lcom/umeng/analytics/d/b;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/b$1;)V
    .locals 0

    .line 273
    invoke-direct {p0}, Lcom/umeng/analytics/d/b$c;-><init>()V

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

    .line 273
    check-cast p2, Lcom/umeng/analytics/d/b;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/b$c;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/b;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 277
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 278
    iget-wide v0, p2, Lcom/umeng/analytics/d/b;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/n;->a(J)V

    .line 279
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 273
    check-cast p2, Lcom/umeng/analytics/d/b;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/b$c;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/b;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 283
    check-cast p1, Lcom/umeng/a/a/a/b/n;

    .line 284
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/n;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/d/b;->a:J

    .line 285
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/d/b;->a(Z)V

    .line 286
    return-void
.end method
