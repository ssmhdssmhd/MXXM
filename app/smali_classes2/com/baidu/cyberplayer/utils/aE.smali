.class public Lcom/baidu/cyberplayer/utils/aE;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:J

.field private a:Ljava/lang/String;

.field private b:J

.field private b:Ljava/lang/String;

.field private c:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aE;->a:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aE;->b:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aE;->c:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aE;->d:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aE;->e:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/cyberplayer/utils/aE;->a:I

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/cyberplayer/utils/aE;->a:J

    .line 138
    iput-wide v0, p0, Lcom/baidu/cyberplayer/utils/aE;->b:J

    .line 152
    iput-wide v0, p0, Lcom/baidu/cyberplayer/utils/aE;->c:J

    .line 33
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aE;->b()V

    .line 34
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/baidu/cyberplayer/utils/aE;->a:I

    return v0
.end method

.method public a()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/baidu/cyberplayer/utils/aE;->a:J

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aE;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .locals 7

    .line 163
    iget-wide v0, p0, Lcom/baidu/cyberplayer/utils/aE;->c:J

    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    .line 164
    iput-wide v4, p0, Lcom/baidu/cyberplayer/utils/aE;->c:J

    .line 165
    return-void

    .line 167
    :cond_0
    iget-wide v0, p0, Lcom/baidu/cyberplayer/utils/aE;->c:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/baidu/cyberplayer/utils/aE;->c:J

    .line 168
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 159
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/baidu/cyberplayer/utils/aE;->c:J

    .line 160
    return-void
.end method

.method public a(J)V
    .locals 0

    .line 115
    iput-wide p1, p0, Lcom/baidu/cyberplayer/utils/aE;->a:J

    .line 116
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aE;->a:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public a()Z
    .locals 9

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 123
    iget-wide v2, p0, Lcom/baidu/cyberplayer/utils/aE;->a:J

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    .line 124
    return v6

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aE;->b()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aE;->a()J

    move-result-wide v4

    const-wide/16 v7, 0x3e8

    mul-long v4, v4, v7

    add-long/2addr v2, v4

    .line 128
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 129
    const/4 v0, 0x1

    return v0

    .line 131
    :cond_1
    return v6
.end method

.method public b()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/baidu/cyberplayer/utils/aE;->b:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aE;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/aE;->b(J)V

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aE;->a(I)V

    .line 178
    return-void
.end method

.method public b(J)V
    .locals 0

    .line 145
    iput-wide p1, p0, Lcom/baidu/cyberplayer/utils/aE;->b:J

    .line 146
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 77
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aE;->c:Ljava/lang/String;

    .line 79
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aE;->d:Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aE;->e:Ljava/lang/String;

    .line 82
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result p1

    iput p1, p0, Lcom/baidu/cyberplayer/utils/aE;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception p1

    :goto_0
    nop

    .line 85
    return-void
.end method

.method public c()J
    .locals 2

    .line 155
    iget-wide v0, p0, Lcom/baidu/cyberplayer/utils/aE;->c:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aE;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aE;->e:Ljava/lang/String;

    return-object v0
.end method
