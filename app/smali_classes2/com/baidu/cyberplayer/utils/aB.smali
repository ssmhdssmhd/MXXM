.class public Lcom/baidu/cyberplayer/utils/aB;
.super Lcom/baidu/cyberplayer/utils/S;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/S;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/baidu/cyberplayer/utils/G;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/S;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aB;->a(Lcom/baidu/cyberplayer/utils/G;)V

    .line 64
    return-void
.end method

.method private a(Lcom/baidu/cyberplayer/utils/cj;)Lcom/baidu/cyberplayer/utils/aC;
    .locals 4

    .line 174
    new-instance v0, Lcom/baidu/cyberplayer/utils/aC;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/aC;-><init>()V

    .line 175
    if-nez p1, :cond_0

    .line 176
    return-object v0

    .line 178
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/cj;->k()Ljava/lang/String;

    move-result-object v1

    .line 179
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 180
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 181
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    :cond_1
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/aC;->a(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/cj;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/aC;->b(Ljava/lang/String;)V

    .line 184
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 3

    .line 142
    new-instance v0, Lcom/baidu/cyberplayer/utils/cj;

    const-string v1, "propertyset"

    invoke-direct {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    .line 144
    const-string v1, "e"

    const-string/jumbo v2, "urn:schemas-upnp-org:event-1-0"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/cyberplayer/utils/cj;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v1, Lcom/baidu/cyberplayer/utils/cj;

    const-string v2, "property"

    invoke-direct {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 151
    new-instance v2, Lcom/baidu/cyberplayer/utils/cj;

    invoke-direct {v2, p1}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2, p2}, Lcom/baidu/cyberplayer/utils/cj;->j(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 155
    return-object v0
.end method


# virtual methods
.method public a()Lcom/baidu/cyberplayer/utils/aD;
    .locals 5

    .line 189
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aB;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 190
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 191
    :cond_0
    new-instance v1, Lcom/baidu/cyberplayer/utils/aD;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/aD;-><init>()V

    .line 192
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->f()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 193
    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v4

    .line 194
    if-nez v4, :cond_1

    .line 195
    goto :goto_1

    .line 196
    :cond_1
    invoke-virtual {v4, v2}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/baidu/cyberplayer/utils/aB;->a(Lcom/baidu/cyberplayer/utils/cj;)Lcom/baidu/cyberplayer/utils/aC;

    move-result-object v4

    .line 197
    invoke-virtual {v1, v4}, Lcom/baidu/cyberplayer/utils/aD;->add(Ljava/lang/Object;)Z

    .line 192
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    :cond_2
    return-object v1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aE;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 118
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aE;->b()Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aE;->a()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aE;->c()J

    move-result-wide v1

    .line 121
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aE;->c()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aE;->d()Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aE;->a()I

    move-result p1

    .line 125
    const-string v5, "NOTIFY"

    invoke-virtual {p0, v5}, Lcom/baidu/cyberplayer/utils/aB;->g(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v4}, Lcom/baidu/cyberplayer/utils/aB;->h(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v3, p1}, Lcom/baidu/cyberplayer/utils/aB;->b(Ljava/lang/String;I)V

    .line 128
    const-string/jumbo p1, "upnp:event"

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aB;->k(Ljava/lang/String;)V

    .line 129
    const-string/jumbo p1, "upnp:propchange"

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aB;->l(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aB;->m(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, v1, v2}, Lcom/baidu/cyberplayer/utils/aB;->b(J)V

    .line 133
    const-string/jumbo p1, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aB;->c(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p2, p3}, Lcom/baidu/cyberplayer/utils/aB;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aB;->b(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 137
    const/4 p1, 0x1

    return p1
.end method

.method public b(J)V
    .locals 1

    .line 104
    const-string v0, "SEQ"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aB;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public d()J
    .locals 2

    .line 109
    const-string v0, "SEQ"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aB;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    .line 72
    const-string v0, "NT"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aB;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    .line 81
    const-string v0, "NTS"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aB;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .line 90
    const-string v0, "SID"

    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/aG;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aB;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, "SID"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aB;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/aG;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
