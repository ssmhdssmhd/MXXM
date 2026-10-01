.class Lcom/umeng/a/a/a/n$a;
.super Lcom/umeng/a/a/a/c/c;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/a/a/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/c<",
        "Lcom/umeng/a/a/a/n;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/a/a/a/n$1;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/umeng/a/a/a/n$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 215
    check-cast p2, Lcom/umeng/a/a/a/n;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/a/a/a/n$a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/n;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 219
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/umeng/a/a/a/n;->c:Lcom/umeng/a/a/a/k;

    .line 220
    iput-object v0, p2, Lcom/umeng/a/a/a/n;->b:Ljava/lang/Object;

    .line 222
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->j()Lcom/umeng/a/a/a/b/m;

    .line 224
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->l()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    .line 226
    invoke-virtual {p2, p1, v0}, Lcom/umeng/a/a/a/n;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/b/c;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/a/a/a/n;->b:Ljava/lang/Object;

    .line 227
    iget-object v1, p2, Lcom/umeng/a/a/a/n;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 228
    iget-short v0, v0, Lcom/umeng/a/a/a/b/c;->c:S

    invoke-virtual {p2, v0}, Lcom/umeng/a/a/a/n;->b(S)Lcom/umeng/a/a/a/k;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/a/a/a/n;->c:Lcom/umeng/a/a/a/k;

    .line 231
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->m()V

    .line 235
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->l()Lcom/umeng/a/a/a/b/c;

    .line 236
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->k()V

    .line 237
    return-void
.end method

.method public synthetic b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 215
    check-cast p2, Lcom/umeng/a/a/a/n;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/a/a/a/n$a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/n;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 241
    invoke-virtual {p2}, Lcom/umeng/a/a/a/n;->i()Lcom/umeng/a/a/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/umeng/a/a/a/n;->j()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p2}, Lcom/umeng/a/a/a/n;->c()Lcom/umeng/a/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/m;)V

    .line 245
    iget-object v0, p2, Lcom/umeng/a/a/a/n;->c:Lcom/umeng/a/a/a/k;

    invoke-virtual {p2, v0}, Lcom/umeng/a/a/a/n;->a(Lcom/umeng/a/a/a/k;)Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 246
    invoke-virtual {p2, p1}, Lcom/umeng/a/a/a/n;->c(Lcom/umeng/a/a/a/b/h;)V

    .line 247
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 248
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->d()V

    .line 249
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->b()V

    .line 250
    return-void

    .line 242
    :cond_0
    new-instance p1, Lcom/umeng/a/a/a/b/i;

    const-string p2, "Cannot write a TUnion with no set value!"

    invoke-direct {p1, p2}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw p1
.end method
