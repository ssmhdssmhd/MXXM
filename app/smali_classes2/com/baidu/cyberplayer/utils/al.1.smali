.class public Lcom/baidu/cyberplayer/utils/al;
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


# virtual methods
.method protected a(Lcom/baidu/cyberplayer/utils/ac;)V
    .locals 5

    .line 86
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ac;->d()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ac;->b()Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/aa;->c()Ljava/lang/String;

    move-result-object v1

    .line 90
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 92
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 95
    if-lez v3, :cond_1

    .line 96
    if-lt v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    .line 97
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 104
    :cond_2
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/baidu/cyberplayer/utils/al;->b(Ljava/lang/String;Z)V

    .line 108
    nop

    .line 109
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/D;->a(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_3

    .line 110
    goto :goto_2

    .line 109
    :cond_3
    const-string v0, ""

    .line 112
    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    .line 113
    :cond_4
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ac;->b()Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aa;->c()Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_7

    .line 118
    :cond_6
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ac;->b()Lcom/baidu/cyberplayer/utils/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->b()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_7
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/D;->a(Ljava/lang/String;)I

    move-result v0

    .line 123
    invoke-virtual {p0, p1, v0}, Lcom/baidu/cyberplayer/utils/al;->b(Ljava/lang/String;I)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/al;->i(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/al;->b(I)V

    .line 126
    return-void
.end method

.method public u()Z
    .locals 1

    .line 72
    const-string/jumbo v0, "urn:schemas-upnp-org:control-1-0#QueryStateVariable"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/al;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
