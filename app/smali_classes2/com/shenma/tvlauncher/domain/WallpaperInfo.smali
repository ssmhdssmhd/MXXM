.class public Lcom/shenma/tvlauncher/domain/WallpaperInfo;
.super Ljava/lang/Object;
.source "WallpaperInfo.java"


# instance fields
.field private id:Ljava/lang/String;

.field private skinname:Ljava/lang/String;

.field private skinpath:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSkinname()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->skinname:Ljava/lang/String;

    return-object v0
.end method

.method public getSkinpath()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->skinpath:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->id:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setSkinname(Ljava/lang/String;)V
    .locals 0
    .param p1, "skinname"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->skinname:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setSkinpath(Ljava/lang/String;)V
    .locals 0
    .param p1, "skinpath"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->skinpath:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->status:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WallpaperInfo [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skinname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->skinname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "skinpath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->skinpath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
