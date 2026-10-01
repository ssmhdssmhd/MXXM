.class public Lcom/aliyun/player/source/VidAuth;
.super Lcom/aliyun/player/source/VidSourceBase;
.source "VidAuth.java"


# instance fields
.field private mPlayAuth:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;

.field private mVid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/aliyun/player/source/VidSourceBase;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public getPlayAuth()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/aliyun/player/source/VidAuth;->mPlayAuth:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/aliyun/player/source/VidAuth;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/aliyun/player/source/VidAuth;->mVid:Ljava/lang/String;

    return-object v0
.end method

.method public setPlayAuth(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPlayAuth"    # Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/aliyun/player/source/VidAuth;->mPlayAuth:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setQuality(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "quality"    # Ljava/lang/String;
    .param p2, "forceQuality"    # Z

    .line 33
    iput-object p1, p0, Lcom/aliyun/player/source/VidAuth;->mQuality:Ljava/lang/String;

    .line 34
    iput-boolean p2, p0, Lcom/aliyun/player/source/VidAuth;->mForceQuality:Z

    .line 35
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRegion"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/aliyun/player/source/VidAuth;->mRegion:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0
    .param p1, "mVid"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/aliyun/player/source/VidAuth;->mVid:Ljava/lang/String;

    .line 63
    return-void
.end method
