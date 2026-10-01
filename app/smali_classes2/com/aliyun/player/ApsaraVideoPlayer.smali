.class Lcom/aliyun/player/ApsaraVideoPlayer;
.super Lcom/aliyun/player/AVPBase;
.source "ApsaraVideoPlayer.java"

# interfaces
.implements Lcom/aliyun/player/AliPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;
    }
.end annotation


# instance fields
.field private mInnerOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

.field private mOutOnVerifyCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "traceID"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mOutOnVerifyCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 133
    new-instance v0, Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;

    invoke-direct {v0, p0}, Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;-><init>(Lcom/aliyun/player/ApsaraVideoPlayer;)V

    iput-object v0, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mInnerOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/ApsaraVideoPlayer;Lcom/aliyun/player/source/StsInfo;)Lcom/aliyun/player/AliPlayer$Status;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/ApsaraVideoPlayer;
    .param p1, "x1"    # Lcom/aliyun/player/source/StsInfo;

    .line 20
    invoke-direct {p0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;->onVerifySts(Lcom/aliyun/player/source/StsInfo;)Lcom/aliyun/player/AliPlayer$Status;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/aliyun/player/ApsaraVideoPlayer;Lcom/aliyun/player/source/VidAuth;)Lcom/aliyun/player/AliPlayer$Status;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/ApsaraVideoPlayer;
    .param p1, "x1"    # Lcom/aliyun/player/source/VidAuth;

    .line 20
    invoke-direct {p0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;->onVerifyAuth(Lcom/aliyun/player/source/VidAuth;)Lcom/aliyun/player/AliPlayer$Status;

    move-result-object v0

    return-object v0
.end method

.method private onVerifyAuth(Lcom/aliyun/player/source/VidAuth;)Lcom/aliyun/player/AliPlayer$Status;
    .locals 1
    .param p1, "info"    # Lcom/aliyun/player/source/VidAuth;

    .line 169
    iget-object v0, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mOutOnVerifyCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mOutOnVerifyCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    invoke-interface {v0, p1}, Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;->onVerifyAuth(Lcom/aliyun/player/source/VidAuth;)Lcom/aliyun/player/AliPlayer$Status;

    move-result-object v0

    return-object v0

    .line 172
    :cond_0
    sget-object v0, Lcom/aliyun/player/AliPlayer$Status;->Invalid:Lcom/aliyun/player/AliPlayer$Status;

    return-object v0
.end method

.method private onVerifySts(Lcom/aliyun/player/source/StsInfo;)Lcom/aliyun/player/AliPlayer$Status;
    .locals 1
    .param p1, "info"    # Lcom/aliyun/player/source/StsInfo;

    .line 162
    iget-object v0, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mOutOnVerifyCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mOutOnVerifyCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    invoke-interface {v0, p1}, Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;->onVerifySts(Lcom/aliyun/player/source/StsInfo;)Lcom/aliyun/player/AliPlayer$Status;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    sget-object v0, Lcom/aliyun/player/AliPlayer$Status;->Invalid:Lcom/aliyun/player/AliPlayer$Status;

    return-object v0
.end method


# virtual methods
.method protected createAlivcMediaPlayer(Landroid/content/Context;)Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-direct {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, "jniSaasPlayer":Lcom/aliyun/player/nativeclass/JniSaasPlayer;
    iget-object v1, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mInnerOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;

    invoke-direct {v1, p0}, Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;-><init>(Lcom/aliyun/player/ApsaraVideoPlayer;)V

    iput-object v1, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mInnerOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mInnerOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->setOnVerifyTimeExpireCallback(Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;)V

    .line 35
    return-object v0
.end method

.method public invokeComponent(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 115
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    .line 116
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v1, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->invokeComponent(Ljava/lang/String;)I

    .line 118
    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/BitStreamSource;)V
    .locals 2
    .param p1, "bitStreamSource"    # Lcom/aliyun/player/source/BitStreamSource;

    .line 89
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 90
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    .line 91
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v1, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->setDataSource(Lcom/aliyun/player/source/BitStreamSource;)V

    .line 93
    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/LiveSts;)V
    .locals 2
    .param p1, "liveSts"    # Lcom/aliyun/player/source/LiveSts;

    .line 81
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 82
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    .line 83
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v1, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->setDataSource(Lcom/aliyun/player/source/LiveSts;)V

    .line 85
    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/UrlSource;)V
    .locals 2
    .param p1, "urlSource"    # Lcom/aliyun/player/source/UrlSource;

    .line 126
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 127
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    .line 128
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v1, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->setDataSource(Lcom/aliyun/player/source/UrlSource;)V

    .line 130
    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/VidAuth;)V
    .locals 2
    .param p1, "auth"    # Lcom/aliyun/player/source/VidAuth;

    .line 45
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 46
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v1, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->setDataSource(Lcom/aliyun/player/source/VidAuth;)V

    .line 49
    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/VidMps;)V
    .locals 2
    .param p1, "mps"    # Lcom/aliyun/player/source/VidMps;

    .line 73
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 74
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    .line 75
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v1, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->setDataSource(Lcom/aliyun/player/source/VidMps;)V

    .line 77
    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/VidSts;)V
    .locals 2
    .param p1, "sts"    # Lcom/aliyun/player/source/VidSts;

    .line 59
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 60
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    .line 61
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v1, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->setDataSource(Lcom/aliyun/player/source/VidSts;)V

    .line 63
    :cond_0
    return-void
.end method

.method public setOnVerifyTimeExpireCallback(Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 177
    iput-object p1, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mOutOnVerifyCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 178
    return-void
.end method

.method public updateStsInfo(Lcom/aliyun/player/source/StsInfo;)V
    .locals 2
    .param p1, "stsInfo"    # Lcom/aliyun/player/source/StsInfo;

    .line 97
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 98
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    .line 99
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v1, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->updateStsInfo(Lcom/aliyun/player/source/StsInfo;)V

    .line 101
    :cond_0
    return-void
.end method

.method public updateVidAuth(Lcom/aliyun/player/source/VidAuth;)V
    .locals 2
    .param p1, "vidAuth"    # Lcom/aliyun/player/source/VidAuth;

    .line 105
    invoke-virtual {p0}, Lcom/aliyun/player/ApsaraVideoPlayer;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 106
    .local v0, "corePlayer":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    .line 107
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v1, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->updateVidAuth(Lcom/aliyun/player/source/VidAuth;)V

    .line 109
    :cond_0
    return-void
.end method
