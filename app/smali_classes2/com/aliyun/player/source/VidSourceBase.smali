.class public Lcom/aliyun/player/source/VidSourceBase;
.super Lcom/aliyun/player/source/SourceBase;
.source "VidSourceBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/source/VidSourceBase$OutputType;,
        Lcom/aliyun/player/source/VidSourceBase$StreamType;,
        Lcom/aliyun/player/source/VidSourceBase$ResultType;
    }
.end annotation


# instance fields
.field private mAuthTimeout:J

.field private mDefinitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/Definition;",
            ">;"
        }
    .end annotation
.end field

.field private mFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mOutputType:Lcom/aliyun/player/source/VidSourceBase$OutputType;

.field private mPlayConfig:Lcom/aliyun/player/VidPlayerConfigGen;

.field private mReAuthInfo:Ljava/lang/String;

.field private mResultType:Lcom/aliyun/player/source/VidSourceBase$ResultType;

.field private mStreamTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/aliyun/player/source/VidSourceBase$StreamType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Lcom/aliyun/player/source/SourceBase;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mPlayConfig:Lcom/aliyun/player/VidPlayerConfigGen;

    .line 128
    iput-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mOutputType:Lcom/aliyun/player/source/VidSourceBase$OutputType;

    .line 129
    iput-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mStreamTypes:Ljava/util/Set;

    .line 130
    iput-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mReAuthInfo:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mResultType:Lcom/aliyun/player/source/VidSourceBase$ResultType;

    .line 132
    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mAuthTimeout:J

    return-void
.end method


# virtual methods
.method public getAuthTimeout()J
    .locals 2
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 38
    iget-wide v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mAuthTimeout:J

    return-wide v0
.end method

.method protected getDefinitionStr()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mDefinitions:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mDefinitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mDefinitions:Ljava/util/List;

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_AUTO:Lcom/aliyun/player/source/Definition;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    sget-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_AUTO:Lcom/aliyun/player/source/Definition;

    invoke-virtual {v0}, Lcom/aliyun/player/source/Definition;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 268
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "finalDefinitionBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/aliyun/player/source/VidSourceBase;->mDefinitions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aliyun/player/source/Definition;

    .line 270
    .local v2, "definition":Lcom/aliyun/player/source/Definition;
    if-eqz v2, :cond_2

    .line 271
    invoke-virtual {v2}, Lcom/aliyun/player/source/Definition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .end local v2    # "definition":Lcom/aliyun/player/source/Definition;
    :cond_2
    goto :goto_0

    .line 275
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 279
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 259
    .end local v0    # "finalDefinitionBuilder":Ljava/lang/StringBuilder;
    :cond_5
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFormatStr()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mFormats:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "finalFormatBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/aliyun/player/source/VidSourceBase;->mFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aliyun/player/source/MediaFormat;

    .line 234
    .local v2, "mediaFormat":Lcom/aliyun/player/source/MediaFormat;
    if-eqz v2, :cond_1

    .line 235
    invoke-virtual {v2}, Lcom/aliyun/player/source/MediaFormat;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .end local v2    # "mediaFormat":Lcom/aliyun/player/source/MediaFormat;
    :cond_1
    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 243
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 229
    .end local v0    # "finalFormatBuilder":Ljava/lang/StringBuilder;
    :cond_4
    :goto_1
    const/4 v0, 0x0

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

    .line 211
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mFormats:Ljava/util/List;

    return-object v0
.end method

.method public getOutputType()Lcom/aliyun/player/source/VidSourceBase$OutputType;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mOutputType:Lcom/aliyun/player/source/VidSourceBase$OutputType;

    return-object v0
.end method

.method protected getOutputTypeStr()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mOutputType:Lcom/aliyun/player/source/VidSourceBase$OutputType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mOutputType:Lcom/aliyun/player/source/VidSourceBase$OutputType;

    invoke-virtual {v0}, Lcom/aliyun/player/source/VidSourceBase$OutputType;->getOutputType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPlayConfig()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mPlayConfig:Lcom/aliyun/player/VidPlayerConfigGen;

    if-nez v0, :cond_0

    .line 182
    const-string v0, ""

    return-object v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mPlayConfig:Lcom/aliyun/player/VidPlayerConfigGen;

    invoke-virtual {v0}, Lcom/aliyun/player/VidPlayerConfigGen;->genConfig()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReAuthInfo()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mReAuthInfo:Ljava/lang/String;

    return-object v0
.end method

.method protected getReAuthInfoStr()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mReAuthInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getResultType()Lcom/aliyun/player/source/VidSourceBase$ResultType;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mResultType:Lcom/aliyun/player/source/VidSourceBase$ResultType;

    return-object v0
.end method

.method protected getResultTypeStr()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mResultType:Lcom/aliyun/player/source/VidSourceBase$ResultType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mResultType:Lcom/aliyun/player/source/VidSourceBase$ResultType;

    invoke-virtual {v0}, Lcom/aliyun/player/source/VidSourceBase$ResultType;->getResultType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getStreamType()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/aliyun/player/source/VidSourceBase$StreamType;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mStreamTypes:Ljava/util/Set;

    return-object v0
.end method

.method protected getStreamTypeStr()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mStreamTypes:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "finalFormatBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/aliyun/player/source/VidSourceBase;->mStreamTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aliyun/player/source/VidSourceBase$StreamType;

    .line 157
    .local v2, "item":Lcom/aliyun/player/source/VidSourceBase$StreamType;
    if-eqz v2, :cond_1

    .line 158
    invoke-virtual {v2}, Lcom/aliyun/player/source/VidSourceBase$StreamType;->getStreamType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .end local v2    # "item":Lcom/aliyun/player/source/VidSourceBase$StreamType;
    :cond_1
    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 166
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setAuthTimeout(J)V
    .locals 0
    .param p1, "authTimeout"    # J

    .line 42
    iput-wide p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mAuthTimeout:J

    .line 43
    return-void
.end method

.method public setDefinition(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/Definition;",
            ">;)V"
        }
    .end annotation

    .line 253
    .local p1, "definitions":Ljava/util/List;, "Ljava/util/List<Lcom/aliyun/player/source/Definition;>;"
    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mDefinitions:Ljava/util/List;

    .line 254
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

    .line 223
    .local p1, "formats":Ljava/util/List;, "Ljava/util/List<Lcom/aliyun/player/source/MediaFormat;>;"
    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mFormats:Ljava/util/List;

    .line 224
    return-void
.end method

.method public setOutputType(Lcom/aliyun/player/source/VidSourceBase$OutputType;)V
    .locals 0
    .param p1, "outputType"    # Lcom/aliyun/player/source/VidSourceBase$OutputType;

    .line 287
    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mOutputType:Lcom/aliyun/player/source/VidSourceBase$OutputType;

    .line 288
    return-void
.end method

.method public setPlayConfig(Lcom/aliyun/player/VidPlayerConfigGen;)V
    .locals 0
    .param p1, "playConfig"    # Lcom/aliyun/player/VidPlayerConfigGen;

    .line 199
    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mPlayConfig:Lcom/aliyun/player/VidPlayerConfigGen;

    .line 200
    return-void
.end method

.method public setReAuthInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "reAuthInfo"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mReAuthInfo:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setResultType(Lcom/aliyun/player/source/VidSourceBase$ResultType;)V
    .locals 0
    .param p1, "resultType"    # Lcom/aliyun/player/source/VidSourceBase$ResultType;

    .line 33
    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mResultType:Lcom/aliyun/player/source/VidSourceBase$ResultType;

    .line 34
    return-void
.end method

.method public setStreamType(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/aliyun/player/source/VidSourceBase$StreamType;",
            ">;)V"
        }
    .end annotation

    .line 17
    .local p1, "streamTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/aliyun/player/source/VidSourceBase$StreamType;>;"
    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mStreamTypes:Ljava/util/Set;

    .line 18
    return-void
.end method
