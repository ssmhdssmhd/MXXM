.class public Lcom/aliyun/player/source/StsInfo;
.super Ljava/lang/Object;
.source "StsInfo.java"


# instance fields
.field private mAccessKeyId:Ljava/lang/String;

.field private mAccessKeySecret:Ljava/lang/String;

.field private mFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mRegion:Ljava/lang/String;

.field private mSecurityToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFormatStr()Ljava/lang/String;
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/aliyun/player/source/StsInfo;->mFormats:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aliyun/player/source/StsInfo;->mFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "finalFormatBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/aliyun/player/source/StsInfo;->mFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aliyun/player/source/MediaFormat;

    .line 159
    .local v2, "mediaFormat":Lcom/aliyun/player/source/MediaFormat;
    if-eqz v2, :cond_1

    .line 160
    invoke-virtual {v2}, Lcom/aliyun/player/source/MediaFormat;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .end local v2    # "mediaFormat":Lcom/aliyun/player/source/MediaFormat;
    :cond_1
    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 168
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 154
    .end local v0    # "finalFormatBuilder":Ljava/lang/StringBuilder;
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getAccessKeyId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/aliyun/player/source/StsInfo;->mAccessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessKeySecret()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/aliyun/player/source/StsInfo;->mAccessKeySecret:Ljava/lang/String;

    return-object v0
.end method

.method public getFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/MediaFormat;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/aliyun/player/source/StsInfo;->mFormats:Ljava/util/List;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/aliyun/player/source/StsInfo;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityToken()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/aliyun/player/source/StsInfo;->mSecurityToken:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessKeyId(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessKeyId"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/aliyun/player/source/StsInfo;->mAccessKeyId:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setAccessKeySecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessKeySecret"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/aliyun/player/source/StsInfo;->mAccessKeySecret:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setFormats(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/MediaFormat;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p1, "formats":Ljava/util/List;, "Ljava/util/List<Lcom/aliyun/player/source/MediaFormat;>;"
    iput-object p1, p0, Lcom/aliyun/player/source/StsInfo;->mFormats:Ljava/util/List;

    .line 150
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/aliyun/player/source/StsInfo;->mRegion:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setSecurityToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "securityToken"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/aliyun/player/source/StsInfo;->mSecurityToken:Ljava/lang/String;

    .line 56
    return-void
.end method
