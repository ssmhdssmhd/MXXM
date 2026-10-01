.class public Lcom/baidu/cyberplayer/utils/bJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/utils/br;
.implements Lcom/baidu/cyberplayer/utils/bt;


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bJ;->a:Ljava/io/File;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/bt;
    .locals 1

    .line 62
    new-instance v0, Lcom/baidu/cyberplayer/utils/bJ;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/bJ;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/ci;
    .locals 5

    .line 77
    new-instance v0, Lcom/baidu/cyberplayer/utils/ci;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ci;-><init>()V

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/bJ;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 82
    new-instance v3, Lcom/baidu/cyberplayer/utils/ch;

    const-string/jumbo v4, "size"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/baidu/cyberplayer/utils/ch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/utils/ci;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    invoke-static {v1}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 89
    :goto_0
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 67
    const-string v0, "application/octet-stream"

    return-object v0
.end method

.method public a(Ljava/io/File;)Z
    .locals 2

    .line 52
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/bE;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 53
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 54
    return v0

    .line 55
    :cond_0
    const-string v1, "rmvb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    const/4 p1, 0x1

    return p1

    .line 57
    :cond_1
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "object.item.videoItem.movie"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bJ;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 96
    if-gez v1, :cond_0

    .line 97
    const-string v0, ""

    return-object v0

    .line 98
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 99
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 104
    const-string v0, ""

    return-object v0
.end method
