.class public Lcom/shenma/tvlauncher/vod/domain/DanmakuResponse;
.super Ljava/lang/Object;
.source "DanmakuResponse.java"


# instance fields
.field private code:I

.field private danmuku:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private danum:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuResponse;->code:I

    return v0
.end method

.method public getDanmuku()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuResponse;->danmuku:Ljava/util/List;

    return-object v0
.end method

.method public getDanum()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuResponse;->danum:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .line 13
    iput p1, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuResponse;->code:I

    return-void
.end method

.method public setDanmuku(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 22
    .local p1, "danmuku":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    iget v0, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuResponse;->danum:I

    iput v0, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuResponse;->danum:I

    return-void
.end method

.method public setDanum(I)V
    .locals 0
    .param p1, "danum"    # I

    .line 19
    iput p1, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuResponse;->danum:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuResponse;->name:Ljava/lang/String;

    return-void
.end method
