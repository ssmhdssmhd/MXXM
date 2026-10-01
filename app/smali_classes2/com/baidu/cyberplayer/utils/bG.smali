.class public Lcom/baidu/cyberplayer/utils/bG;
.super Lcom/baidu/cyberplayer/utils/bF;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/bF;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/bF;-><init>(Ljava/io/File;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/bt;
    .locals 1

    .line 53
    new-instance v0, Lcom/baidu/cyberplayer/utils/bG;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/bG;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "image/jpeg"

    return-object v0
.end method

.method public a(Ljava/io/File;)Z
    .locals 4

    .line 43
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/baidu/cyberplayer/utils/bE;->a(Ljava/io/File;I)[B

    move-result-object p1

    .line 44
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/16 v2, 0xff

    and-int/2addr v1, v2

    .line 45
    const/4 v3, 0x1

    aget-byte p1, p1, v3

    and-int/2addr p1, v2

    .line 46
    if-ne v1, v2, :cond_0

    const/16 v1, 0xd8

    if-ne p1, v1, :cond_0

    .line 47
    return v3

    .line 48
    :cond_0
    return v0
.end method
