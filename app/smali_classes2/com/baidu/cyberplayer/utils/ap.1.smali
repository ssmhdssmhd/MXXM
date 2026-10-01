.class public Lcom/baidu/cyberplayer/utils/ap;
.super Lcom/baidu/cyberplayer/utils/am;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/am;-><init>()V

    .line 31
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 3

    .line 86
    new-instance v0, Lcom/baidu/cyberplayer/utils/cj;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/cj;-><init>()V

    .line 87
    const-string v1, "QueryStateVariableResponse"

    const-string/jumbo v2, "u"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/cyberplayer/utils/cj;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v1, "urn:schemas-upnp-org:control-1-0"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/cyberplayer/utils/cj;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v1, Lcom/baidu/cyberplayer/utils/cj;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/cj;-><init>()V

    .line 91
    const-string v2, "return"

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;->i(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, p1}, Lcom/baidu/cyberplayer/utils/cj;->j(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 95
    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/cyberplayer/utils/af;)V
    .locals 1

    .line 71
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/af;->c()Ljava/lang/String;

    move-result-object p1

    .line 73
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/ap;->b(I)V

    .line 75
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ap;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 76
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/ap;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    .line 77
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 79
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ap;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    .line 80
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/ap;->b(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 82
    return-void
.end method
