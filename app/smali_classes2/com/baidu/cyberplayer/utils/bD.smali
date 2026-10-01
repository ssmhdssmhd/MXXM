.class public Lcom/baidu/cyberplayer/utils/bD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/utils/br;
.implements Lcom/baidu/cyberplayer/utils/bt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/bt;
    .locals 0

    .line 44
    new-instance p1, Lcom/baidu/cyberplayer/utils/bD;

    invoke-direct {p1}, Lcom/baidu/cyberplayer/utils/bD;-><init>()V

    return-object p1
.end method

.method public a()Lcom/baidu/cyberplayer/utils/ci;
    .locals 1

    .line 59
    new-instance v0, Lcom/baidu/cyberplayer/utils/ci;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ci;-><init>()V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "*/*"

    return-object v0
.end method

.method public a(Ljava/io/File;)Z
    .locals 0

    .line 39
    const/4 p1, 0x1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "object.item"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, ""

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 69
    const-string v0, ""

    return-object v0
.end method
