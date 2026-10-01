.class public Lcom/baidu/cyberplayer/utils/aW;
.super Lcom/baidu/cyberplayer/utils/aJ;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/cc;

.field private a:Ljava/lang/Thread;

.field private a:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aJ;-><init>()V

    .line 119
    new-instance p2, Lcom/baidu/cyberplayer/utils/cc;

    invoke-direct {p2}, Lcom/baidu/cyberplayer/utils/cc;-><init>()V

    iput-object p2, p0, Lcom/baidu/cyberplayer/utils/aW;->a:Lcom/baidu/cyberplayer/utils/cc;

    .line 144
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/baidu/cyberplayer/utils/aW;->a:Ljava/lang/Thread;

    .line 58
    invoke-virtual {p0, p1, p3}, Lcom/baidu/cyberplayer/utils/aW;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 173
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cyber.SSDPSearchSocket/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aW;->a()Ljava/lang/String;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aW;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aW;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aW;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 180
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aW;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 182
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/aW;->a:Ljava/lang/Thread;

    .line 183
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aW;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 184
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aP;)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aW;->a:Lcom/baidu/cyberplayer/utils/cc;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cc;->size()I

    move-result v0

    .line 134
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 135
    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/aW;->a:Lcom/baidu/cyberplayer/utils/cc;

    invoke-virtual {v2, v1}, Lcom/baidu/cyberplayer/utils/cc;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/cyberplayer/utils/ay;

    .line 136
    invoke-interface {v2, p1}, Lcom/baidu/cyberplayer/utils/ay;->c(Lcom/baidu/cyberplayer/utils/aP;)V

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/ay;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aW;->a:Lcom/baidu/cyberplayer/utils/cc;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/cc;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 88
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/utils/aW;->a:Z

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/Q;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/baidu/cyberplayer/utils/Q;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/utils/aW;->a:Z

    .line 95
    :goto_0
    const/16 v0, 0x76c

    invoke-virtual {p0, p2, v0, p1}, Lcom/baidu/cyberplayer/utils/aW;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    return p1

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot open a UDP Socket for IPv6 address on IPv4 interface or viceversa"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aW;->b()Z

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aW;->a:Ljava/lang/Thread;

    .line 192
    return-void
.end method

.method public run()V
    .locals 4

    .line 148
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/aW;->a:Ljava/lang/Thread;

    if-ne v1, v0, :cond_2

    .line 151
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 154
    nop

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aW;->a()Lcom/baidu/cyberplayer/utils/aP;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    nop

    .line 163
    if-nez v1, :cond_0

    .line 164
    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/aP;->c()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 168
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/aW;->a(Lcom/baidu/cyberplayer/utils/aP;)V

    .line 169
    :cond_1
    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    nop

    .line 170
    :cond_2
    return-void
.end method
