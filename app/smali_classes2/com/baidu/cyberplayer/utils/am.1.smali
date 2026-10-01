.class public Lcom/baidu/cyberplayer/utils/am;
.super Lcom/baidu/cyberplayer/utils/T;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/ah;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/T;-><init>()V

    .line 114
    new-instance v0, Lcom/baidu/cyberplayer/utils/ah;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ah;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/am;->a:Lcom/baidu/cyberplayer/utils/ah;

    .line 35
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/am;->e(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/baidu/cyberplayer/utils/T;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/T;-><init>(Lcom/baidu/cyberplayer/utils/T;)V

    .line 114
    new-instance p1, Lcom/baidu/cyberplayer/utils/ah;

    invoke-direct {p1}, Lcom/baidu/cyberplayer/utils/ah;-><init>()V

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/am;->a:Lcom/baidu/cyberplayer/utils/ah;

    .line 41
    return-void
.end method

.method private a(ILjava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 5

    .line 71
    new-instance v0, Lcom/baidu/cyberplayer/utils/cj;

    const-string v1, "s:Fault"

    invoke-direct {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/baidu/cyberplayer/utils/cj;

    const-string v2, "faultcode"

    invoke-direct {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    .line 75
    const-string v2, "s:Client"

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;->j(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 79
    new-instance v1, Lcom/baidu/cyberplayer/utils/cj;

    const-string v2, "faultstring"

    invoke-direct {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    .line 80
    const-string v2, "UPnPError"

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;->j(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 84
    new-instance v1, Lcom/baidu/cyberplayer/utils/cj;

    const-string v3, "detail"

    invoke-direct {v1, v3}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 88
    new-instance v3, Lcom/baidu/cyberplayer/utils/cj;

    invoke-direct {v3, v2}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v2, "xmlns"

    const-string/jumbo v4, "urn:schemas-upnp-org:control-1-0"

    invoke-virtual {v3, v2, v4}, Lcom/baidu/cyberplayer/utils/cj;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, v3}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 93
    new-instance v1, Lcom/baidu/cyberplayer/utils/cj;

    const-string v2, "errorCode"

    invoke-direct {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, p1}, Lcom/baidu/cyberplayer/utils/cj;->f(I)V

    .line 95
    invoke-virtual {v3, v1}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 98
    new-instance p1, Lcom/baidu/cyberplayer/utils/cj;

    const-string v1, "errorDescription"

    invoke-direct {p1, v1}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, p2}, Lcom/baidu/cyberplayer/utils/cj;->j(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v3, p1}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 102
    return-object v0
.end method

.method private e()Lcom/baidu/cyberplayer/utils/cj;
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/am;->d()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 119
    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_0
    const-string v1, "UPnPError"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    return-object v0
.end method

.method private f()Lcom/baidu/cyberplayer/utils/cj;
    .locals 2

    .line 126
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/am;->e()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 127
    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_0
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/baidu/cyberplayer/utils/cj;
    .locals 2

    .line 134
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/am;->e()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 135
    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_0
    const-string v1, "errorDescription"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 49
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/am;->b(I)V

    .line 51
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/am;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/baidu/cyberplayer/utils/am;->a(ILjava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 55
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/am;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/am;->b(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 57
    return-void
.end method

.method public c()I
    .locals 2

    .line 142
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/am;->f()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 143
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 144
    return v1

    .line 145
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->l()Ljava/lang/String;

    move-result-object v0

    .line 147
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    return v1
.end method

.method public c(I)V
    .locals 1

    .line 61
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/ah;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/cyberplayer/utils/am;->a(ILjava/lang/String;)V

    .line 62
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 156
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/am;->g()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 157
    if-nez v0, :cond_0

    .line 158
    const-string v0, ""

    return-object v0

    .line 159
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
