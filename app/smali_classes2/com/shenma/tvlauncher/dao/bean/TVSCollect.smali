.class public Lcom/shenma/tvlauncher/dao/bean/TVSCollect;
.super Ljava/lang/Object;
.source "TVSCollect.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "tvscollect"
.end annotation


# instance fields
.field private channelname:Ljava/lang/String;

.field private channelpic:Ljava/lang/String;

.field private id:I
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
        column = "id"
    .end annotation
.end field

.field private tvindex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelname()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/shenma/tvlauncher/dao/bean/TVSCollect;->channelname:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelpic()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/shenma/tvlauncher/dao/bean/TVSCollect;->channelpic:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/shenma/tvlauncher/dao/bean/TVSCollect;->id:I

    return v0
.end method

.method public getTvindex()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/shenma/tvlauncher/dao/bean/TVSCollect;->tvindex:I

    return v0
.end method

.method public setChannelname(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelname"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/shenma/tvlauncher/dao/bean/TVSCollect;->channelname:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setChannelpic(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelpic"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/shenma/tvlauncher/dao/bean/TVSCollect;->channelpic:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 20
    iput p1, p0, Lcom/shenma/tvlauncher/dao/bean/TVSCollect;->id:I

    .line 21
    return-void
.end method

.method public setTvindex(I)V
    .locals 0
    .param p1, "tvindex"    # I

    .line 44
    iput p1, p0, Lcom/shenma/tvlauncher/dao/bean/TVSCollect;->tvindex:I

    .line 45
    return-void
.end method
