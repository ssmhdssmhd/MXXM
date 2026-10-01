.class public Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;
.super Ljava/lang/Object;
.source "NetMedia.java"


# instance fields
.field private channleClass:Ljava/lang/String;

.field private channlename:Ljava/lang/String;

.field private channlesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;",
            ">;"
        }
    .end annotation
.end field

.field private epg:Ljava/lang/String;

.field public level:I

.field private link:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private totlePosition:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->channleClass:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->channlename:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->link:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->source:Ljava/lang/String;

    .line 12
    const/4 v1, 0x0

    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->totlePosition:I

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->channlesList:Ljava/util/ArrayList;

    .line 15
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->epg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChannleClass()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->channleClass:Ljava/lang/String;

    return-object v0
.end method

.method public getChannlename()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->channlename:Ljava/lang/String;

    return-object v0
.end method

.method public getChannlesArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->channlesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEpg()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->epg:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTotlePosition()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->totlePosition:I

    return v0
.end method

.method public setChannleClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "channleClass"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->channleClass:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setChannlename(Ljava/lang/String;)V
    .locals 0
    .param p1, "channlename"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->channlename:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setChannlesArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p1, "channlesArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;>;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->channlesList:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method public setEpg(Ljava/lang/String;)V
    .locals 0
    .param p1, "epg"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->epg:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->link:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->source:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setTotlePosition(I)V
    .locals 0
    .param p1, "totlePosition"    # I

    .line 54
    iput p1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->totlePosition:I

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetMedia [channleClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->channleClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channlename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->channlename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
