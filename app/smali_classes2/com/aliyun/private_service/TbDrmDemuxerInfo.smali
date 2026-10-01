.class public Lcom/aliyun/private_service/TbDrmDemuxerInfo;
.super Ljava/lang/Object;
.source "TbDrmDemuxerInfo.java"


# instance fields
.field private contextAddr:J

.field private createAddr:J

.field private releaseAddr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method private setContextAddr(J)V
    .locals 0
    .param p1, "contextAddr"    # J

    .line 37
    iput-wide p1, p0, Lcom/aliyun/private_service/TbDrmDemuxerInfo;->contextAddr:J

    .line 38
    return-void
.end method

.method private setCreateAddr(J)V
    .locals 0
    .param p1, "createAddr"    # J

    .line 29
    iput-wide p1, p0, Lcom/aliyun/private_service/TbDrmDemuxerInfo;->createAddr:J

    .line 30
    return-void
.end method

.method private setReleaseAddr(J)V
    .locals 0
    .param p1, "releaseAddr"    # J

    .line 33
    iput-wide p1, p0, Lcom/aliyun/private_service/TbDrmDemuxerInfo;->releaseAddr:J

    .line 34
    return-void
.end method


# virtual methods
.method public getContextAddr()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/aliyun/private_service/TbDrmDemuxerInfo;->contextAddr:J

    return-wide v0
.end method

.method public getCreateAddr()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/aliyun/private_service/TbDrmDemuxerInfo;->createAddr:J

    return-wide v0
.end method

.method public getReleaseAddr()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/aliyun/private_service/TbDrmDemuxerInfo;->releaseAddr:J

    return-wide v0
.end method
