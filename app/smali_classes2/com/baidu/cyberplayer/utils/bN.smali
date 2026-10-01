.class public Lcom/baidu/cyberplayer/utils/bN;
.super Lcom/baidu/cyberplayer/utils/bK;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/bK;-><init>()V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bN;->a(Ljava/io/File;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bN;->a:Ljava/io/File;

    return-object v0
.end method

.method public a()Ljava/io/InputStream;
    .locals 2

    .line 95
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/bN;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bN;->a:Ljava/io/File;

    .line 45
    return-void
.end method

.method public a(Ljava/io/File;)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bN;->a:Ljava/io/File;

    if-nez v0, :cond_0

    .line 69
    const/4 p1, 0x0

    return p1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bN;->a:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c()J
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bN;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 54
    nop

    .line 55
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bN;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bN;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 63
    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bN;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bN;->a()Ljava/io/File;

    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/be;->a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/br;

    move-result-object v0

    .line 108
    if-nez v0, :cond_0

    .line 109
    const-string v0, "*/*"

    return-object v0

    .line 111
    :cond_0
    invoke-interface {v0}, Lcom/baidu/cyberplayer/utils/br;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
