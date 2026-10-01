.class public Lcom/shenma/tvlauncher/domain/MovieInfo;
.super Ljava/lang/Object;
.source "MovieInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ztname:Ljava/lang/String;

.field private ztpicurl:Ljava/lang/String;

.field private zttype:Ljava/lang/String;

.field private zturl:Ljava/lang/String;

.field private ztwei:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getZtname()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/MovieInfo;->ztname:Ljava/lang/String;

    return-object v0
.end method

.method public getZtpicurl()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/MovieInfo;->ztpicurl:Ljava/lang/String;

    return-object v0
.end method

.method public getZttype()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/MovieInfo;->zttype:Ljava/lang/String;

    return-object v0
.end method

.method public getZturl()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/MovieInfo;->zturl:Ljava/lang/String;

    return-object v0
.end method

.method public getZtwei()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/MovieInfo;->ztwei:Ljava/lang/String;

    return-object v0
.end method

.method public setZtname(Ljava/lang/String;)V
    .locals 0
    .param p1, "ztname"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/MovieInfo;->ztname:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setZtpicurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "ztpicurl"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/MovieInfo;->ztpicurl:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setZttype(Ljava/lang/String;)V
    .locals 0
    .param p1, "zttype"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/MovieInfo;->zttype:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setZturl(Ljava/lang/String;)V
    .locals 0
    .param p1, "zturl"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/MovieInfo;->zturl:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setZtwei(Ljava/lang/String;)V
    .locals 0
    .param p1, "ztwei"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/MovieInfo;->ztwei:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MovieInfo [ztname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/MovieInfo;->ztname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zttype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/MovieInfo;->zttype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ztwei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/MovieInfo;->ztwei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ztpicurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/MovieInfo;->ztpicurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zturl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/MovieInfo;->zturl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
