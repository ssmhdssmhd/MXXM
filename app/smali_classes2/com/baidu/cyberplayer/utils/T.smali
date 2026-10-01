.class public Lcom/baidu/cyberplayer/utils/T;
.super Lcom/baidu/cyberplayer/utils/I;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/cj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/I;-><init>()V

    .line 36
    invoke-static {}, Lcom/baidu/cyberplayer/utils/R;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/T;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 37
    const-string/jumbo v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/T;->c(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/baidu/cyberplayer/utils/I;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/I;-><init>(Lcom/baidu/cyberplayer/utils/I;)V

    .line 43
    invoke-static {}, Lcom/baidu/cyberplayer/utils/R;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/T;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 44
    const-string/jumbo p1, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/T;->c(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/baidu/cyberplayer/utils/T;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/I;-><init>(Lcom/baidu/cyberplayer/utils/I;)V

    .line 50
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/T;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/T;->a(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 51
    const-string/jumbo p1, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/T;->c(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private c(Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/T;->a:Lcom/baidu/cyberplayer/utils/cj;

    .line 63
    return-void
.end method

.method private e()Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/T;->a:Lcom/baidu/cyberplayer/utils/cj;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/T;->e()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/T;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 77
    return-void
.end method

.method public b()Lcom/baidu/cyberplayer/utils/cj;
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/T;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_0
    const-string v1, "Body"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 2

    .line 172
    nop

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/cj;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/T;->b(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public c()Lcom/baidu/cyberplayer/utils/cj;
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/T;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 104
    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    const-string v1, "Fault"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 185
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/T;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/T;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 187
    return-void

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/T;->e()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 189
    if-nez v0, :cond_1

    .line 190
    return-void

    .line 191
    :cond_1
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public d()Lcom/baidu/cyberplayer/utils/cj;
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/T;->c()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 136
    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_0
    const-string v1, "detail"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    return-object v0
.end method
