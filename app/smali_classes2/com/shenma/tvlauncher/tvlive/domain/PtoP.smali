.class public Lcom/shenma/tvlauncher/tvlive/domain/PtoP;
.super Ljava/lang/Object;
.source "PtoP.java"


# instance fields
.field private domain:Ljava/lang/String;

.field private filmId:Ljava/lang/String;

.field private filmname:Ljava/lang/String;

.field private linkid:Ljava/lang/String;

.field private serviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->filmId:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->serviceId:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->filmname:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->linkid:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->domain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getFilmId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->filmId:Ljava/lang/String;

    return-object v0
.end method

.method public getFilmname()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->filmname:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkid()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->linkid:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->serviceId:Ljava/lang/String;

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->domain:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setFilmId(Ljava/lang/String;)V
    .locals 0
    .param p1, "filmId"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->filmId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setFilmname(Ljava/lang/String;)V
    .locals 0
    .param p1, "filmname"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->filmname:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setLinkid(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkid"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->linkid:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setServiceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->serviceId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PtoP [filmId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->filmId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filmname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->filmname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", linkid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->linkid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/domain/PtoP;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
