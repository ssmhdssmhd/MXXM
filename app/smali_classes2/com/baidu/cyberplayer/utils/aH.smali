.class public Lcom/baidu/cyberplayer/utils/aH;
.super Lcom/baidu/cyberplayer/utils/G;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/G;-><init>()V

    .line 47
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/aH;->a(J)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/baidu/cyberplayer/utils/G;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aH;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aH;->a(Lcom/baidu/cyberplayer/utils/G;)V

    .line 53
    return-void
.end method

.method private b(Lcom/baidu/cyberplayer/utils/ac;)V
    .locals 3

    .line 61
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ac;->e()Ljava/lang/String;

    move-result-object v0

    .line 64
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/aH;->b(Ljava/lang/String;Z)V

    .line 66
    nop

    .line 67
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ac;->a()Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/aa;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 68
    :cond_0
    const-string v1, ""

    .line 71
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 72
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ac;->b()Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/aa;->c()Ljava/lang/String;

    move-result-object v1

    .line 78
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    .line 79
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ac;->b()Lcom/baidu/cyberplayer/utils/aa;

    move-result-object p1

    .line 80
    if-eqz p1, :cond_4

    .line 81
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->b()Ljava/lang/String;

    move-result-object v1

    .line 85
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_6

    .line 86
    :cond_5
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/D;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 87
    goto :goto_1

    .line 90
    :cond_6
    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/D;->a(Ljava/lang/String;)I

    move-result v0

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/baidu/cyberplayer/utils/aH;->b(Ljava/lang/String;I)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aH;->i(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aH;->b(I)V

    .line 96
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/cyberplayer/utils/aI;
    .locals 2

    .line 218
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aH;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aH;->b()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/aH;->a(Ljava/lang/String;I)Lcom/baidu/cyberplayer/utils/I;

    move-result-object v0

    .line 219
    new-instance v1, Lcom/baidu/cyberplayer/utils/aI;

    invoke-direct {v1, v0}, Lcom/baidu/cyberplayer/utils/aI;-><init>(Lcom/baidu/cyberplayer/utils/I;)V

    return-object v1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aI;)V
    .locals 0

    .line 209
    invoke-super {p0, p1}, Lcom/baidu/cyberplayer/utils/G;->a(Lcom/baidu/cyberplayer/utils/I;)Z

    .line 210
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/ac;)V
    .locals 1

    .line 117
    const-string v0, "UNSUBSCRIBE"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aH;->g(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/aH;->b(Lcom/baidu/cyberplayer/utils/ac;)V

    .line 119
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ac;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aH;->l(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/ac;Ljava/lang/String;J)V
    .locals 1

    .line 100
    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aH;->g(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/aH;->b(Lcom/baidu/cyberplayer/utils/ac;)V

    .line 102
    invoke-virtual {p0, p2}, Lcom/baidu/cyberplayer/utils/aH;->k(Ljava/lang/String;)V

    .line 103
    const-string/jumbo p1, "upnp:event"

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aH;->j(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p3, p4}, Lcom/baidu/cyberplayer/utils/aH;->b(J)V

    .line 105
    return-void
.end method

.method public final b(J)V
    .locals 1

    .line 195
    const-string v0, "TIMEOUT"

    invoke-static {p1, p2}, Lcom/baidu/cyberplayer/utils/aG;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aH;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public b(Lcom/baidu/cyberplayer/utils/ac;Ljava/lang/String;J)V
    .locals 1

    .line 109
    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aH;->g(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/aH;->b(Lcom/baidu/cyberplayer/utils/ac;)V

    .line 111
    invoke-virtual {p0, p2}, Lcom/baidu/cyberplayer/utils/aH;->l(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p3, p4}, Lcom/baidu/cyberplayer/utils/aH;->b(J)V

    .line 113
    return-void
.end method

.method public d()J
    .locals 2

    .line 200
    const-string v0, "TIMEOUT"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aH;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/aG;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 128
    const-string v0, "NT"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aH;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 3

    .line 151
    const-string v0, "<"

    const-string v1, ">"

    const-string v2, "CALLBACK"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/baidu/cyberplayer/utils/aH;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    .line 171
    const-string v0, "SID"

    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/aG;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aH;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 3

    .line 156
    const-string v0, "<"

    const-string v1, ">"

    const-string v2, "CALLBACK"

    invoke-virtual {p0, v2, v0, v1}, Lcom/baidu/cyberplayer/utils/aH;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 177
    const-string v0, "SID"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aH;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/aG;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    if-nez v0, :cond_0

    .line 179
    const-string v0, ""

    return-object v0

    .line 180
    :cond_0
    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aH;->p()Ljava/lang/String;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Z
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aH;->q()Ljava/lang/String;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
