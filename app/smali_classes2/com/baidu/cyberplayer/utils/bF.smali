.class public abstract Lcom/baidu/cyberplayer/utils/bF;
.super Lcom/baidu/cyberplayer/utils/bE;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/utils/br;
.implements Lcom/baidu/cyberplayer/utils/bt;


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/bE;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bF;->a:Ljava/io/File;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/bE;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bF;->a:Ljava/io/File;

    .line 63
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/cyberplayer/utils/ci;
    .locals 1

    .line 80
    new-instance v0, Lcom/baidu/cyberplayer/utils/ci;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ci;-><init>()V

    .line 104
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, "object.item.imageItem.photo"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bF;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 111
    if-gez v1, :cond_0

    .line 112
    const-string v0, ""

    return-object v0

    .line 113
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 114
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 119
    const-string v0, ""

    return-object v0
.end method
