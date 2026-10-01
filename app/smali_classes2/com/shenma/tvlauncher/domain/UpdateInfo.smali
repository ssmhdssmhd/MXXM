.class public Lcom/shenma/tvlauncher/domain/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private apkurl:Ljava/lang/String;

.field private devicetype:Ljava/lang/String;

.field private fromplat:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private nowversion:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private updateversion:Ljava/lang/String;

.field private versionremark:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkurl()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->apkurl:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicetype()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->devicetype:Ljava/lang/String;

    return-object v0
.end method

.method public getFromplat()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->fromplat:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNowversion()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->nowversion:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateversion()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->updateversion:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionremark()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->versionremark:Ljava/lang/String;

    return-object v0
.end method

.method public setApkurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "apkurl"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->apkurl:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setDevicetype(Ljava/lang/String;)V
    .locals 0
    .param p1, "devicetype"    # Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->devicetype:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setFromplat(Ljava/lang/String;)V
    .locals 0
    .param p1, "fromplat"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->fromplat:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->id:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setNowversion(Ljava/lang/String;)V
    .locals 0
    .param p1, "nowversion"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->nowversion:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->type:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setUpdateversion(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateversion"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->updateversion:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setVersionremark(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionremark"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->versionremark:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateInfo [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nowversion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->nowversion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateversion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->updateversion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionremark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->versionremark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apkurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->apkurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromplat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->fromplat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", devicetype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/UpdateInfo;->devicetype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
