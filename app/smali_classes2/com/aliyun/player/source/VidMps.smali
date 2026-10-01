.class public Lcom/aliyun/player/source/VidMps;
.super Lcom/aliyun/player/source/VidSourceBase;
.source "VidMps.java"


# instance fields
.field private mAccessKeyId:Ljava/lang/String;

.field private mAccessKeySecret:Ljava/lang/String;

.field private mAuthInfo:Ljava/lang/String;

.field private mHlsUriToken:Ljava/lang/String;

.field private mMediaId:Ljava/lang/String;

.field private mPlayDomain:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;

.field private mSecurityToken:Ljava/lang/String;


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

    .line 79
    iget-object v0, p0, Lcom/aliyun/player/source/VidMps;->mAccessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessKeySecret()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/aliyun/player/source/VidMps;->mAccessKeySecret:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/aliyun/player/source/VidMps;->mAuthInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getHlsUriToken()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/aliyun/player/source/VidMps;->mHlsUriToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/aliyun/player/source/VidMps;->mMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayDomain()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/aliyun/player/source/VidMps;->mPlayDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/aliyun/player/source/VidMps;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityToken()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/aliyun/player/source/VidMps;->mSecurityToken:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessKeyId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAccessKeyId"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/aliyun/player/source/VidMps;->mAccessKeyId:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setAccessKeySecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAccessKeySecret"    # Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/aliyun/player/source/VidMps;->mAccessKeySecret:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAuthInfo"    # Ljava/lang/String;

    .line 233
    iput-object p1, p0, Lcom/aliyun/player/source/VidMps;->mAuthInfo:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setHlsUriToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHlsUriToken"    # Ljava/lang/String;

    .line 261
    iput-object p1, p0, Lcom/aliyun/player/source/VidMps;->mHlsUriToken:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMediaId"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/aliyun/player/source/VidMps;->mMediaId:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setPlayDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPlayDomain"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/aliyun/player/source/VidMps;->mPlayDomain:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setQuality(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "quality"    # Ljava/lang/String;
    .param p2, "forceQuality"    # Z

    .line 35
    iput-object p1, p0, Lcom/aliyun/player/source/VidMps;->mQuality:Ljava/lang/String;

    .line 36
    iput-boolean p2, p0, Lcom/aliyun/player/source/VidMps;->mForceQuality:Z

    .line 37
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRegion"    # Ljava/lang/String;

    .line 177
    iput-object p1, p0, Lcom/aliyun/player/source/VidMps;->mRegion:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setSecurityToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSecurityToken"    # Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lcom/aliyun/player/source/VidMps;->mSecurityToken:Ljava/lang/String;

    .line 150
    return-void
.end method
