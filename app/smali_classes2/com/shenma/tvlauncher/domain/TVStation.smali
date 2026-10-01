.class public Lcom/shenma/tvlauncher/domain/TVStation;
.super Ljava/lang/Object;
.source "TVStation.java"


# instance fields
.field private code:Ljava/lang/String;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/TVStationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/TVStation;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/TVStationInfo;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/TVStation;->data:Ljava/util/List;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/TVStation;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/TVStation;->code:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/TVStationInfo;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/domain/TVStationInfo;>;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/TVStation;->data:Ljava/util/List;

    .line 32
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/TVStation;->msg:Ljava/lang/String;

    .line 24
    return-void
.end method
