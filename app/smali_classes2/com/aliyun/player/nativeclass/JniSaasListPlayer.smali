.class public Lcom/aliyun/player/nativeclass/JniSaasListPlayer;
.super Lcom/aliyun/player/nativeclass/JniSaasPlayer;
.source "JniSaasListPlayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JniSaasListPlayer"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method public addUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nAddUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public addVid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nAddVid(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public clear()V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nClear()V

    .line 41
    return-void
.end method

.method public getCurrentUid()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nGetCurrentUid()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "currentUid":Ljava/lang/String;
    return-object v0
.end method

.method public getMaxPreloadMemorySizeMB()I
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nGetMaxPreloadMemorySizeMB()I

    move-result v0

    .line 92
    .local v0, "size":I
    return v0
.end method

.method public moveTo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .line 60
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nMoveTo(Ljava/lang/String;)Z

    move-result v0

    .line 61
    .local v0, "ret":Z
    return v0
.end method

.method public moveTo(Ljava/lang/String;Lcom/aliyun/player/source/StsInfo;)Z
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/aliyun/player/source/StsInfo;

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nMoveToWithSts(Ljava/lang/String;Lcom/aliyun/player/source/StsInfo;)Z

    move-result v0

    .line 78
    .local v0, "ret":Z
    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nMoveToNext()Z

    move-result v0

    .line 50
    .local v0, "ret":Z
    return v0
.end method

.method public moveToNext(Lcom/aliyun/player/source/StsInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/aliyun/player/source/StsInfo;

    .line 66
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nMoveToNextWithSts(Lcom/aliyun/player/source/StsInfo;)Z

    move-result v0

    .line 67
    .local v0, "ret":Z
    return v0
.end method

.method public moveToPrev()Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nMoveToPrev()Z

    move-result v0

    .line 56
    .local v0, "ret":Z
    return v0
.end method

.method public moveToPrev(Lcom/aliyun/player/source/StsInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/aliyun/player/source/StsInfo;

    .line 71
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nMoveToPrevWithSts(Lcom/aliyun/player/source/StsInfo;)Z

    move-result v0

    .line 72
    .local v0, "ret":Z
    return v0
.end method

.method native nAddUrl(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method native nAddVid(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method native nClear()V
.end method

.method native nGetCurrentUid()Ljava/lang/String;
.end method

.method native nGetMaxPreloadMemorySizeMB()I
.end method

.method native nMoveTo(Ljava/lang/String;)Z
.end method

.method native nMoveToNext()Z
.end method

.method native nMoveToNextWithSts(Lcom/aliyun/player/source/StsInfo;)Z
.end method

.method native nMoveToPrev()Z
.end method

.method native nMoveToPrevWithSts(Lcom/aliyun/player/source/StsInfo;)Z
.end method

.method native nMoveToWithSts(Ljava/lang/String;Lcom/aliyun/player/source/StsInfo;)Z
.end method

.method native nRemoveSource(Ljava/lang/String;)V
.end method

.method native nSetDefinition(Ljava/lang/String;)V
.end method

.method native nSetMaxPreloadMemorySizeMB(I)V
.end method

.method native nSetPreloadCount(I)V
.end method

.method public removeSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .line 35
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nRemoveSource(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public setDefinition(Ljava/lang/String;)V
    .locals 0
    .param p1, "definition"    # Ljava/lang/String;

    .line 83
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nSetDefinition(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setMaxPreloadMemorySizeMB(I)V
    .locals 0
    .param p1, "size"    # I

    .line 87
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nSetMaxPreloadMemorySizeMB(I)V

    .line 88
    return-void
.end method

.method public setPreloadCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 20
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nSetPreloadCount(I)V

    .line 21
    return-void
.end method
