.class public Lcom/baidu/cyberplayer/utils/bw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bw;->a(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bw;->b(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bw;->c(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bw;->d(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/baidu/cyberplayer/utils/bw;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bw;->a(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bw;->b(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bw;->c(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bw;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bw;->d(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bw;->i()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bw;->a(Z)V

    .line 70
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bw;->a:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/utils/bw;->a:Z

    .line 215
    return-void
.end method

.method public a()Z
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bw;->b:Ljava/lang/String;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bw;->b:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public b()Z
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bw;->b:Ljava/lang/String;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bw;->c:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public c()Z
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bw;->b:Ljava/lang/String;

    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bw;->d:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public d()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bw;->b:Ljava/lang/String;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bw;->b:Ljava/lang/String;

    const-string v1, ">="

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bw;->b:Ljava/lang/String;

    const-string v1, "contains"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bw;->b:Ljava/lang/String;

    const-string v1, "doesNotContain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bw;->d:Ljava/lang/String;

    const-string v1, "and"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/utils/bw;->a:Z

    return v0
.end method
