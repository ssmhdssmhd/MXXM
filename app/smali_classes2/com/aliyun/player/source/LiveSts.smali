.class public Lcom/aliyun/player/source/LiveSts;
.super Lcom/aliyun/player/source/SourceBase;
.source "LiveSts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;
    }
.end annotation


# instance fields
.field private mAccessKeyId:Ljava/lang/String;

.field private mAccessKeySecret:Ljava/lang/String;

.field private mApp:Ljava/lang/String;

.field private mDomain:Ljava/lang/String;

.field private mEncryptionType:Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

.field private mRegion:Ljava/lang/String;

.field private mSecurityToken:Ljava/lang/String;

.field private mStream:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/aliyun/player/source/SourceBase;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public getAccessKeyId()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/aliyun/player/source/LiveSts;->mAccessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessKeySecret()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/aliyun/player/source/LiveSts;->mAccessKeySecret:Ljava/lang/String;

    return-object v0
.end method

.method public getApp()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/aliyun/player/source/LiveSts;->mApp:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/aliyun/player/source/LiveSts;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionTypeValue()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/aliyun/player/source/LiveSts;->mEncryptionType:Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;->NoEncryption:Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    invoke-virtual {v0}, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;->ordinal()I

    move-result v0

    return v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/source/LiveSts;->mEncryptionType:Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    invoke-virtual {v0}, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/aliyun/player/source/LiveSts;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityToken()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/aliyun/player/source/LiveSts;->mSecurityToken:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/aliyun/player/source/LiveSts;->mStream:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/aliyun/player/source/LiveSts;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessKeyId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAccessKeyId"    # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/aliyun/player/source/LiveSts;->mAccessKeyId:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setAccessKeySecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAccessKeySecret"    # Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lcom/aliyun/player/source/LiveSts;->mAccessKeySecret:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setApp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mApp"    # Ljava/lang/String;

    .line 207
    iput-object p1, p0, Lcom/aliyun/player/source/LiveSts;->mApp:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDomain"    # Ljava/lang/String;

    .line 199
    iput-object p1, p0, Lcom/aliyun/player/source/LiveSts;->mDomain:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setEncryptionType(Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;)V
    .locals 0
    .param p1, "encryptionType"    # Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    .line 55
    iput-object p1, p0, Lcom/aliyun/player/source/LiveSts;->mEncryptionType:Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    .line 56
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRegion"    # Ljava/lang/String;

    .line 167
    iput-object p1, p0, Lcom/aliyun/player/source/LiveSts;->mRegion:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setSecurityToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSecurityToken"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/aliyun/player/source/LiveSts;->mSecurityToken:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setStream(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStream"    # Ljava/lang/String;

    .line 215
    iput-object p1, p0, Lcom/aliyun/player/source/LiveSts;->mStream:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUrl"    # Ljava/lang/String;

    .line 191
    iput-object p1, p0, Lcom/aliyun/player/source/LiveSts;->mUrl:Ljava/lang/String;

    .line 192
    return-void
.end method
