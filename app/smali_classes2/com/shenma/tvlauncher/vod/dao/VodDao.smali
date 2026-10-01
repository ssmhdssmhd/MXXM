.class public Lcom/shenma/tvlauncher/vod/dao/VodDao;
.super Ljava/lang/Object;
.source "VodDao.java"


# instance fields
.field private db:Lnet/tsz/afinal/FinalDb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "Nshenma.db"

    invoke-static {p1, v0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Ljava/lang/String;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/dao/VodDao;->db:Lnet/tsz/afinal/FinalDb;

    .line 16
    return-void
.end method


# virtual methods
.method public addAlbums(Lcom/shenma/tvlauncher/vod/db/Album;)V
    .locals 3
    .param p1, "album"    # Lcom/shenma/tvlauncher/vod/db/Album;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "albumType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and albumId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and typeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/db/Album;->getTypeId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "where":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/dao/VodDao;->db:Lnet/tsz/afinal/FinalDb;

    const-class v2, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v1, v2, v0}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/dao/VodDao;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v1, p1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 29
    return-void

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/dao/VodDao;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v1, p1, v0}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public deleteAllByWhere(I)V
    .locals 3
    .param p1, "typeId"    # I

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "typeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "where":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/dao/VodDao;->db:Lnet/tsz/afinal/FinalDb;

    const-class v2, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v1, v2, v0}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public deleteApps(Lcom/shenma/tvlauncher/vod/db/Album;)V
    .locals 1
    .param p1, "app"    # Lcom/shenma/tvlauncher/vod/db/Album;

    .line 96
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/dao/VodDao;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb;->delete(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public deleteByWhere(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "albumId"    # Ljava/lang/String;
    .param p2, "albumType"    # Ljava/lang/String;
    .param p3, "typeId"    # I

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "albumId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and albumType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and typeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "where":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/dao/VodDao;->db:Lnet/tsz/afinal/FinalDb;

    const-class v2, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v1, v2, v0}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public queryAlbumById(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "albumId"    # Ljava/lang/String;
    .param p2, "typeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/db/Album;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "albumId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and typeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "where":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/dao/VodDao;->db:Lnet/tsz/afinal/FinalDb;

    const-class v2, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v1, v2, v0}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryAllAppsByType(I)Ljava/util/List;
    .locals 3
    .param p1, "typeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/db/Album;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "typeid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " order by time desc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "where":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/dao/VodDao;->db:Lnet/tsz/afinal/FinalDb;

    const-class v2, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v1, v2, v0}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryZJById(Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 4
    .param p1, "albumId"    # Ljava/lang/String;
    .param p2, "typeId"    # I

    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 55
    .local v0, "res":Ljava/lang/Boolean;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "albumId=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and typeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "where":Ljava/lang/String;
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/dao/VodDao;->db:Lnet/tsz/afinal/FinalDb;

    const-class v3, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v2, v3, v1}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 58
    .local v2, "albums":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/db/Album;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 59
    :cond_1
    :goto_0
    return-object v0
.end method
