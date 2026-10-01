.class public Lcom/baidu/cyberplayer/utils/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:I

.field private a:Lcom/baidu/cyberplayer/utils/cc;

.field private a:Ljava/lang/Thread;

.field private a:Ljava/net/InetAddress;

.field private a:Ljava/net/ServerSocket;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/net/ServerSocket;

    .line 81
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/net/InetAddress;

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/cyberplayer/utils/J;->b:I

    .line 87
    const/16 v1, 0x1388

    iput v1, p0, Lcom/baidu/cyberplayer/utils/J;->a:I

    .line 195
    new-instance v1, Lcom/baidu/cyberplayer/utils/cc;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/cc;-><init>()V

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/J;->a:Lcom/baidu/cyberplayer/utils/cc;

    .line 220
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/lang/Thread;

    .line 72
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/net/ServerSocket;

    .line 74
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .line 61
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "os.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CyberHTTP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 1

    monitor-enter p0

    .line 117
    :try_start_0
    iget v0, p0, Lcom/baidu/cyberplayer/utils/J;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 117
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a()Ljava/net/Socket;
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/net/ServerSocket;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 175
    return-object v1

    .line 177
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/J;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    return-object v1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/G;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/J;->a:Lcom/baidu/cyberplayer/utils/cc;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cc;->size()I

    move-result v0

    .line 210
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 211
    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/J;->a:Lcom/baidu/cyberplayer/utils/cc;

    invoke-virtual {v2, v1}, Lcom/baidu/cyberplayer/utils/cc;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/cyberplayer/utils/H;

    .line 212
    invoke-interface {v2, p1}, Lcom/baidu/cyberplayer/utils/H;->a(Lcom/baidu/cyberplayer/utils/G;)V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/H;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/J;->a:Lcom/baidu/cyberplayer/utils/cc;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/cc;->add(Ljava/lang/Object;)Z

    .line 200
    return-void
.end method

.method public a()Z
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 158
    return v1

    .line 160
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    .line 161
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/net/ServerSocket;

    .line 162
    iput-object v2, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/net/InetAddress;

    .line 163
    iput v0, p0, Lcom/baidu/cyberplayer/utils/J;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    nop

    .line 169
    return v1

    .line 165
    :catch_0
    move-exception v1

    .line 166
    invoke-static {v1}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 167
    return v0
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 143
    return v1

    .line 145
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/net/InetAddress;

    .line 146
    iput p2, p0, Lcom/baidu/cyberplayer/utils/J;->b:I

    .line 147
    new-instance p1, Ljava/net/ServerSocket;

    iget p2, p0, Lcom/baidu/cyberplayer/utils/J;->b:I

    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/net/InetAddress;

    invoke-direct {p1, p2, v0, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    nop

    .line 152
    return v1

    .line 149
    :catch_0
    move-exception p1

    .line 150
    return v0
.end method

.method public b()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cyber.HTTPServer/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 251
    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/lang/Thread;

    .line 252
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/lang/Thread;

    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 4

    .line 224
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/J;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    return-void

    .line 227
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 229
    :goto_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/J;->a:Ljava/lang/Thread;

    if-ne v1, v0, :cond_2

    .line 230
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 233
    :try_start_0
    const-string v1, "accept ..."

    invoke-static {v1}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/J;->a()Ljava/net/Socket;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_1

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sock = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_1
    nop

    .line 242
    new-instance v2, Lcom/baidu/cyberplayer/utils/L;

    invoke-direct {v2, p0, v1}, Lcom/baidu/cyberplayer/utils/L;-><init>(Lcom/baidu/cyberplayer/utils/J;Ljava/net/Socket;)V

    .line 243
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/L;->start()V

    .line 244
    const-string v1, "httpServThread ..."

    invoke-static {v1}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/String;)V

    .line 245
    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 240
    nop

    .line 246
    :cond_2
    return-void
.end method
