.class public Lcom/aliyun/player/source/VidSts;
.super Lcom/aliyun/player/source/VidSourceBase;
.source "VidSts.java"


# instance fields
.field private mAccessKeyId:Ljava/lang/String;

.field private mAccessKeySecret:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;

.field private mSecurityToken:Ljava/lang/String;

.field private mVid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/aliyun/player/source/VidSourceBase;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getAccessKeyId()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/aliyun/player/source/VidSts;->mAccessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessKeySecret()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/aliyun/player/source/VidSts;->mAccessKeySecret:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/aliyun/player/source/VidSts;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityToken()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/aliyun/player/source/VidSts;->mSecurityToken:Ljava/lang/String;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/aliyun/player/source/VidSts;->mVid:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessKeyId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAccessKeyId"    # Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/aliyun/player/source/VidSts;->mAccessKeyId:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setAccessKeySecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAccessKeySecret"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/aliyun/player/source/VidSts;->mAccessKeySecret:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setQuality(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "quality"    # Ljava/lang/String;
    .param p2, "forceQuality"    # Z

    .line 35
    iput-object p1, p0, Lcom/aliyun/player/source/VidSts;->mQuality:Ljava/lang/String;

    .line 36
    iput-boolean p2, p0, Lcom/aliyun/player/source/VidSts;->mForceQuality:Z

    .line 37
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRegion"    # Ljava/lang/String;

    .line 176
    iput-object p1, p0, Lcom/aliyun/player/source/VidSts;->mRegion:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setSecurityToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSecurityToken"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/aliyun/player/source/VidSts;->mSecurityToken:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0
    .param p1, "mVid"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/aliyun/player/source/VidSts;->mVid:Ljava/lang/String;

    .line 65
    return-void
.end method
