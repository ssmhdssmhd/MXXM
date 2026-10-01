.class public Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;
.super Ljava/lang/Object;
.source "PtoPCollection.java"


# static fields
.field public static final FAVORITE:I = 0x3

.field public static final HANGKON_TV:I = 0x1

.field public static final LOCK_CODE_TV:I = 0x2

.field public static final UNKNOW_TV:I = 0x4


# instance fields
.field private p2p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvlive/domain/PtoP;",
            ">;"
        }
    .end annotation
.end field

.field private playPosition:I

.field private tvType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 16
    const/4 v0, 0x4

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->tvType:I

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->playPosition:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 22
    return-void
.end method


# virtual methods
.method public copyTo(Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;)V
    .locals 2
    .param p1, "mPtoPCollection"    # Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;

    .line 25
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->playPosition:I

    invoke-virtual {p1, v0}, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->setPlayPosition(I)V

    .line 26
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->getP2p()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 27
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->getP2p()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->tvType:I

    invoke-virtual {p1, v0}, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->setTvType(I)V

    .line 29
    return-void
.end method

.method public getFilmPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://127.0.0.1:9906/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getFilmId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilmUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":9906/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getFilmId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getP2p()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvlive/domain/PtoP;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPlayPosition()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->playPosition:I

    return v0
.end method

.method public getServicePath(I)Ljava/lang/String;
    .locals 5
    .param p1, "position"    # I

    .line 57
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getLinkid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&userid=&flag=&monitor=&path=&file=&server="

    const-string v2, "&link="

    const-string v3, "http://127.0.0.1:9906/api?func=switch_chan&id="

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getServiceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getLinkid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getLinkid()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getServiceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/tvlive/network/LiveConstant;->PTOP_SERVER:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getFilmId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getLinkid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    return-object v0

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getLinkid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getLinkid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getLinkid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getServiceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 118
    :cond_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lisen/Encoder;->getDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/tvlive/network/LiveConstant;->PTOP_SERVER:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 120
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getFilmId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getLinkid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lisen/Encoder;->getDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lisen/Encoder;->getDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    return-object v0

    .line 103
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getServiceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/tvlive/network/LiveConstant;->PTOP_SERVER:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getFilmId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getLinkid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lisen/Encoder;->getDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    return-object v0

    .line 87
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lisen/Encoder;->getDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/tvlive/network/LiveConstant;->PTOP_SERVER:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getFilmId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getLinkid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lisen/Encoder;->getDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    return-object v0
.end method

.method public getTvType()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->tvType:I

    return v0
.end method

.method public setP2p(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvlive/domain/PtoP;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p1, "p2p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/tvlive/domain/PtoP;>;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method public setPlayPosition(I)V
    .locals 0
    .param p1, "playPosition"    # I

    .line 44
    iput p1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->playPosition:I

    .line 45
    return-void
.end method

.method public setTvType(I)V
    .locals 0
    .param p1, "tvType"    # I

    .line 36
    iput p1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->tvType:I

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PtoPCollection [p2p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoPCollection;->p2p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
