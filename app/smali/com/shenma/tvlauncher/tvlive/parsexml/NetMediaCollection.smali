.class public Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;
.super Ljava/lang/Object;
.source "NetMediaCollection.java"


# instance fields
.field private netMediaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->netMediaList:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->netMediaList:Ljava/util/ArrayList;

    .line 11
    return-void
.end method


# virtual methods
.method public getNetMediaList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->netMediaList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setNetMediaList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;",
            ">;)V"
        }
    .end annotation

    .line 18
    .local p1, "netMediaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;>;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->netMediaList:Ljava/util/ArrayList;

    .line 19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 23
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    .local v0, "sbBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->netMediaList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 25
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->netMediaList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
