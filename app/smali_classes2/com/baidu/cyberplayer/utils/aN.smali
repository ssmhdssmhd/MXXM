.class public Lcom/baidu/cyberplayer/utils/aN;
.super Lcom/baidu/cyberplayer/utils/aJ;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/Z;

.field private a:Ljava/lang/Thread;

.field private a:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aJ;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aN;->a:Lcom/baidu/cyberplayer/utils/Z;

    .line 105
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aN;->a:Ljava/lang/Thread;

    .line 59
    nop

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/cyberplayer/utils/aN;->a:Z

    .line 61
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 62
    invoke-static {}, Lcom/baidu/cyberplayer/utils/aL;->a()Ljava/lang/String;

    move-result-object v1

    .line 63
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/utils/aN;->a:Z

    goto :goto_0

    .line 61
    :cond_0
    const-string v1, "239.255.255.250"

    .line 65
    :goto_0
    const/16 v2, 0x76c

    invoke-virtual {p0, v1, v2, p1}, Lcom/baidu/cyberplayer/utils/aN;->a(Ljava/lang/String;ILjava/lang/String;)Z

    .line 66
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aN;->a(Lcom/baidu/cyberplayer/utils/Z;)V

    .line 67
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/cyberplayer/utils/Z;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aN;->a:Lcom/baidu/cyberplayer/utils/Z;

    return-object v0
.end method

.method public a()V
    .locals 4

    .line 144
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cyber.SSDPNotifySocket/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aN;->a()Ljava/lang/String;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aN;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aN;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aN;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 151
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aN;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 153
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/aN;->a:Ljava/lang/Thread;

    .line 154
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aN;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 155
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/Z;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aN;->a:Lcom/baidu/cyberplayer/utils/Z;

    .line 78
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aM;)Z
    .locals 2

    .line 94
    nop

    .line 95
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/utils/aN;->a:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 96
    invoke-static {}, Lcom/baidu/cyberplayer/utils/aL;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_0
    const-string v0, "239.255.255.250"

    .line 97
    :goto_0
    const/16 v1, 0x76c

    invoke-virtual {p1, v0, v1}, Lcom/baidu/cyberplayer/utils/aM;->b(Ljava/lang/String;I)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aN;->a(Lcom/baidu/cyberplayer/utils/G;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aN;->a:Ljava/lang/Thread;

    .line 161
    return-void
.end method

.method public run()V
    .locals 6

    .line 109
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aN;->a()Lcom/baidu/cyberplayer/utils/Z;

    move-result-object v1

    .line 113
    :goto_0
    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/aN;->a:Ljava/lang/Thread;

    if-ne v2, v0, :cond_3

    .line 114
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 117
    nop

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aN;->a()Lcom/baidu/cyberplayer/utils/aP;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    nop

    .line 127
    if-nez v2, :cond_0

    .line 128
    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aN;->a()Ljava/net/InetAddress;

    move-result-object v3

    .line 132
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/aP;->a()Ljava/net/InetAddress;

    move-result-object v4

    .line 133
    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalidate Multicast Recieved from IP "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/cyberplayer/utils/ca;->b(Ljava/lang/String;)V

    .line 135
    goto :goto_0

    .line 138
    :cond_1
    if-eqz v1, :cond_2

    .line 139
    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/aP;)V

    .line 140
    :cond_2
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 123
    nop

    .line 141
    :cond_3
    return-void
.end method
