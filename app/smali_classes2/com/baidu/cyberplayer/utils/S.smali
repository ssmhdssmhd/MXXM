.class public Lcom/baidu/cyberplayer/utils/S;
.super Lcom/baidu/cyberplayer/utils/G;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/cj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/G;-><init>()V

    .line 44
    const-string/jumbo v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/S;->c(Ljava/lang/String;)V

    .line 45
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/S;->g(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private declared-synchronized c()Lcom/baidu/cyberplayer/utils/cj;
    .locals 2

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/S;->a:Lcom/baidu/cyberplayer/utils/cj;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/S;->a:Lcom/baidu/cyberplayer/utils/cj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 130
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/S;->a()[B

    move-result-object v0

    .line 131
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 132
    invoke-static {}, Lcom/baidu/cyberplayer/utils/R;->a()Lcom/baidu/cyberplayer/utils/cl;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cl;->a(Ljava/io/InputStream;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/S;->a:Lcom/baidu/cyberplayer/utils/cj;
    :try_end_1
    .catch Lcom/baidu/cyberplayer/utils/cm; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    :try_start_2
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/S;->a:Lcom/baidu/cyberplayer/utils/cj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private c(Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/S;->a:Lcom/baidu/cyberplayer/utils/cj;

    .line 122
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/baidu/cyberplayer/utils/T;
    .locals 1

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/baidu/cyberplayer/utils/S;->a(Ljava/lang/String;I)Lcom/baidu/cyberplayer/utils/I;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/I;->d()Ljava/lang/String;

    move-result-object p2

    .line 92
    invoke-virtual {p1, p2}, Lcom/baidu/cyberplayer/utils/I;->b(Ljava/lang/String;)V

    .line 94
    new-instance p2, Lcom/baidu/cyberplayer/utils/T;

    invoke-direct {p2, p1}, Lcom/baidu/cyberplayer/utils/T;-><init>(Lcom/baidu/cyberplayer/utils/I;)V

    .line 96
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/T;->a()[B

    move-result-object p1

    .line 97
    array-length v0, p1

    if-gtz v0, :cond_0

    .line 98
    return-object p2

    .line 101
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 102
    invoke-static {}, Lcom/baidu/cyberplayer/utils/R;->a()Lcom/baidu/cyberplayer/utils/cl;

    move-result-object p1

    .line 103
    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/cl;->a(Ljava/io/InputStream;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    .line 104
    invoke-virtual {p2, p1}, Lcom/baidu/cyberplayer/utils/T;->a(Lcom/baidu/cyberplayer/utils/cj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception p1

    .line 107
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 110
    :goto_0
    return-object p2
.end method

.method public a()Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 153
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/S;->c()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/S;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 149
    return-void
.end method

.method public b()Lcom/baidu/cyberplayer/utils/cj;
    .locals 3

    .line 158
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/S;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 159
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 160
    return-object v1

    .line 161
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    return-object v1

    .line 163
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 2

    .line 173
    nop

    .line 174
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

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
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

    .line 177
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/S;->b(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public c()V
    .locals 2

    .line 186
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/S;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/S;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 188
    return-void

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/S;->c()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 190
    if-nez v0, :cond_1

    .line 191
    return-void

    .line 192
    :cond_1
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 3

    .line 69
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/S;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 71
    return v1

    .line 72
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 73
    return v2

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/S;->p()Ljava/lang/String;

    move-result-object v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    return v1

    .line 77
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 59
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/S;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/S;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
