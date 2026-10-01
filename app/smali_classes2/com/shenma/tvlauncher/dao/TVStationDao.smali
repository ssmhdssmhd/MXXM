.class public Lcom/shenma/tvlauncher/dao/TVStationDao;
.super Ljava/lang/Object;
.source "TVStationDao.java"


# static fields
.field private static dao:Lcom/shenma/tvlauncher/dao/TVStationDao;


# instance fields
.field private db:Lnet/tsz/afinal/FinalDb;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "Nshenma.db"

    invoke-static {p1, v0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Ljava/lang/String;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/dao/TVStationDao;->db:Lnet/tsz/afinal/FinalDb;

    .line 17
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/shenma/tvlauncher/dao/TVStationDao;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 20
    sget-object v0, Lcom/shenma/tvlauncher/dao/TVStationDao;->dao:Lcom/shenma/tvlauncher/dao/TVStationDao;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/shenma/tvlauncher/dao/TVStationDao;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/dao/TVStationDao;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/shenma/tvlauncher/dao/TVStationDao;->dao:Lcom/shenma/tvlauncher/dao/TVStationDao;

    .line 23
    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/dao/TVStationDao;->dao:Lcom/shenma/tvlauncher/dao/TVStationDao;

    return-object v0
.end method


# virtual methods
.method public addTvsi(Lcom/shenma/tvlauncher/dao/bean/TVSCollect;)V
    .locals 1
    .param p1, "tvsi"    # Lcom/shenma/tvlauncher/dao/bean/TVSCollect;

    .line 32
    iget-object v0, p0, Lcom/shenma/tvlauncher/dao/TVStationDao;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public deleteTvsi(Lcom/shenma/tvlauncher/dao/bean/TVSCollect;)V
    .locals 1
    .param p1, "tvsi"    # Lcom/shenma/tvlauncher/dao/bean/TVSCollect;

    .line 60
    iget-object v0, p0, Lcom/shenma/tvlauncher/dao/TVStationDao;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb;->delete(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public queryAllTvsi()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/dao/bean/TVSCollect;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/shenma/tvlauncher/dao/TVStationDao;->db:Lnet/tsz/afinal/FinalDb;

    const-class v1, Lcom/shenma/tvlauncher/dao/bean/TVSCollect;

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public updateTvsi(ILcom/shenma/tvlauncher/dao/bean/TVSCollect;)V
    .locals 3
    .param p1, "tvindex"    # I
    .param p2, "tvsi"    # Lcom/shenma/tvlauncher/dao/bean/TVSCollect;

    .line 51
    iget-object v0, p0, Lcom/shenma/tvlauncher/dao/TVStationDao;->db:Lnet/tsz/afinal/FinalDb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tvindex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    return-void
.end method
