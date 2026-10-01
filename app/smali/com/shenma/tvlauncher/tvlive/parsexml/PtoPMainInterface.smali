.class public Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;
.super Ljava/lang/Object;
.source "PtoPMainInterface.java"


# instance fields
.field private mainItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->mainItems:Ljava/util/ArrayList;

    .line 11
    return-void
.end method


# virtual methods
.method public getMainItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->mainItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setMainItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p1, "mainItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;>;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->mainItems:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PtoPMainInterface [mainItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->mainItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
