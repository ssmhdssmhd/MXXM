.class Lcom/aliyun/player/ApsaraVideoListPlayer;
.super Lcom/aliyun/player/ApsaraVideoPlayer;
.source "ApsaraVideoListPlayer.java"

# interfaces
.implements Lcom/aliyun/player/AliListPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "NativePlayerBase_ApsaraVideListPlayer"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "traceID"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/ApsaraVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public addUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoListPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 56
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativePlayerBase_ApsaraVideListPlayer"

    invoke-static {v2, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v1, p1, p2}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->addUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method public addVid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoListPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 47
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addVid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativePlayerBase_ApsaraVideListPlayer"

    invoke-static {v2, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v1, p1, p2}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->addVid(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoListPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 74
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "NativePlayerBase_ApsaraVideListPlayer"

    const-string v2, "removeSource  clear"

    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->clear()V

    .line 78
    :cond_0
    return-void
.end method

.method protected createAlivcMediaPlayer(Landroid/content/Context;)Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    new-instance v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-direct {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getCurrentUid()Ljava/lang/String;
    .locals 4

    .line 83
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoListPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 84
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    .line 85
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "currentUid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentUid   = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NativePlayerBase_ApsaraVideListPlayer"

    invoke-static {v3, v2}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-object v1

    .line 91
    .end local v1    # "currentUid":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMaxPreloadMemorySizeMB()I
    .locals 4

    .line 167
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoListPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 168
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    .line 169
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->getMaxPreloadMemorySizeMB()I

    move-result v1

    .line 170
    .local v1, "preloadMemorySizeMB":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxPreloadMemorySizeMB   = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NativePlayerBase_ApsaraVideListPlayer"

    invoke-static {v3, v2}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return v1

    .line 174
    .end local v1    # "preloadMemorySizeMB":I
    :cond_0
    const/16 v1, 0x64

    return v1
.end method

.method public moveTo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoListPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 119
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTo uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativePlayerBase_ApsaraVideListPlayer"

    invoke-static {v2, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v1, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->moveTo(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 123
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public moveTo(Ljava/lang/String;Lcom/aliyun/player/source/StsInfo;)Z
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/aliyun/player/source/StsInfo;

    .line 148
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoListPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 149
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTo sts uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativePlayerBase_ApsaraVideListPlayer"

    invoke-static {v2, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v1, p1, p2}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->moveTo(Ljava/lang/String;Lcom/aliyun/player/source/StsInfo;)Z

    move-result v1

    return v1

    .line 153
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public moveToNext()Z
    .locals 3

    .line 96
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoListPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 97
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "NativePlayerBase_ApsaraVideListPlayer"

    const-string v2, "moveToNext  "

    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->moveToNext()Z

    move-result v1

    return v1

    .line 102
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public moveToNext(Lcom/aliyun/player/source/StsInfo;)Z
    .locals 3
    .param p1, "info"    # Lcom/aliyun/player/source/StsInfo;

    .line 128
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoListPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 129
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    .line 130
    const-string v1, "NativePlayerBase_ApsaraVideListPlayer"

    const-string v2, "moveToNext sts "

    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v1, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->moveToNext(Lcom/aliyun/player/source/StsInfo;)Z

    move-result v1

    return v1

    .line 133
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public moveToPrev()Z
    .locals 3

    .line 107
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoListPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 108
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "NativePlayerBase_ApsaraVideListPlayer"

    const-string v2, "moveToPrev  "

    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->moveToPrev()Z

    move-result v1

    return v1

    .line 113
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public moveToPrev(Lcom/aliyun/player/source/StsInfo;)Z
    .locals 3
    .param p1, "info"    # Lcom/aliyun/player/source/StsInfo;

    .line 138
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoListPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 139
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "NativePlayerBase_ApsaraVideListPlayer"

    const-string v2, "moveToPrev sts "

    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v1, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->moveToPrev(Lcom/aliyun/player/source/StsInfo;)Z

    move-result v1

    return v1

    .line 143
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public removeSource(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoListPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 65
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSource  uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativePlayerBase_ApsaraVideListPlayer"

    invoke-static {v2, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v1, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->removeSource(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method public setDefinition(Ljava/lang/String;)V
    .locals 3
    .param p1, "definition"    # Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoListPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 29
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefinition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativePlayerBase_ApsaraVideListPlayer"

    invoke-static {v2, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v1, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->setDefinition(Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method

.method public setMaxPreloadMemorySizeMB(I)V
    .locals 3
    .param p1, "size"    # I

    .line 158
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoListPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 159
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    .line 160
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v1, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->setMaxPreloadMemorySizeMB(I)V

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxPreloadMemorySizeMB   = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativePlayerBase_ApsaraVideListPlayer"

    invoke-static {v2, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method public setPreloadCount(I)V
    .locals 3
    .param p1, "count"    # I

    .line 37
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoListPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 38
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    if-eqz v1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreloadCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativePlayerBase_ApsaraVideListPlayer"

    invoke-static {v2, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;

    invoke-virtual {v1, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->setPreloadCount(I)V

    .line 42
    :cond_0
    return-void
.end method
