.class public Lcom/aliyun/player/nativeclass/JniSaasPlayer;
.super Lcom/aliyun/player/nativeclass/NativePlayerBase;
.source "JniSaasPlayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JniSaasPlayer"


# instance fields
.field private mReadCallback:Lcom/aliyun/player/source/BitStreamSource$ReadCallback;

.field private mSeekCallback:Lcom/aliyun/player/source/BitStreamSource$SeekCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->mReadCallback:Lcom/aliyun/player/source/BitStreamSource$ReadCallback;

    .line 21
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->mSeekCallback:Lcom/aliyun/player/source/BitStreamSource$SeekCallback;

    .line 25
    return-void
.end method

.method private nRead([B)I
    .locals 1
    .param p1, "dst"    # [B
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->mReadCallback:Lcom/aliyun/player/source/BitStreamSource$ReadCallback;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->mReadCallback:Lcom/aliyun/player/source/BitStreamSource$ReadCallback;

    invoke-interface {v0, p1}, Lcom/aliyun/player/source/BitStreamSource$ReadCallback;->read([B)I

    move-result v0

    return v0

    .line 76
    :cond_0
    const/16 v0, -0x16

    return v0
.end method

.method private nSeek(JI)J
    .locals 2
    .param p1, "offset"    # J
    .param p3, "whence"    # I
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->mSeekCallback:Lcom/aliyun/player/source/BitStreamSource$SeekCallback;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->mSeekCallback:Lcom/aliyun/player/source/BitStreamSource$SeekCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/aliyun/player/source/BitStreamSource$SeekCallback;->seek(JI)J

    move-result-wide v0

    return-wide v0

    .line 85
    :cond_0
    const-wide/16 v0, -0x16

    return-wide v0
.end method

.method private native nSetDataSource(Lcom/aliyun/player/source/BitStreamSource;)V
.end method

.method private native nSetDataSource(Lcom/aliyun/player/source/LiveSts;)V
.end method

.method private native nSetDataSource(Lcom/aliyun/player/source/UrlSource;)V
.end method

.method private native nSetDataSource(Lcom/aliyun/player/source/VidAuth;)V
.end method

.method private native nSetDataSource(Lcom/aliyun/player/source/VidMps;)V
.end method

.method private native nSetDataSource(Lcom/aliyun/player/source/VidSts;)V
.end method

.method private native nUpdateStsInfo(Lcom/aliyun/player/source/StsInfo;)V
.end method

.method private native nUpdateVidAuth(Lcom/aliyun/player/source/VidAuth;)V
.end method


# virtual methods
.method public setDataSource(Lcom/aliyun/player/source/BitStreamSource;)V
    .locals 1
    .param p1, "bitStreamSource"    # Lcom/aliyun/player/source/BitStreamSource;

    .line 50
    invoke-virtual {p1}, Lcom/aliyun/player/source/BitStreamSource;->getReadCallback()Lcom/aliyun/player/source/BitStreamSource$ReadCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->mReadCallback:Lcom/aliyun/player/source/BitStreamSource$ReadCallback;

    .line 51
    invoke-virtual {p1}, Lcom/aliyun/player/source/BitStreamSource;->getSeekCallback()Lcom/aliyun/player/source/BitStreamSource$SeekCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->mSeekCallback:Lcom/aliyun/player/source/BitStreamSource$SeekCallback;

    .line 52
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->nSetDataSource(Lcom/aliyun/player/source/BitStreamSource;)V

    .line 53
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/LiveSts;)V
    .locals 0
    .param p1, "liveSts"    # Lcom/aliyun/player/source/LiveSts;

    .line 31
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->nSetDataSource(Lcom/aliyun/player/source/LiveSts;)V

    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/UrlSource;)V
    .locals 0
    .param p1, "url"    # Lcom/aliyun/player/source/UrlSource;

    .line 28
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->nSetDataSource(Lcom/aliyun/player/source/UrlSource;)V

    .line 29
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/VidAuth;)V
    .locals 0
    .param p1, "vidAuth"    # Lcom/aliyun/player/source/VidAuth;

    .line 42
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->nSetDataSource(Lcom/aliyun/player/source/VidAuth;)V

    .line 43
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/VidMps;)V
    .locals 0
    .param p1, "vidMps"    # Lcom/aliyun/player/source/VidMps;

    .line 46
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->nSetDataSource(Lcom/aliyun/player/source/VidMps;)V

    .line 47
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/VidSts;)V
    .locals 0
    .param p1, "vidSts"    # Lcom/aliyun/player/source/VidSts;

    .line 38
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->nSetDataSource(Lcom/aliyun/player/source/VidSts;)V

    .line 39
    return-void
.end method

.method public updateStsInfo(Lcom/aliyun/player/source/StsInfo;)V
    .locals 0
    .param p1, "stsInfo"    # Lcom/aliyun/player/source/StsInfo;

    .line 33
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->nUpdateStsInfo(Lcom/aliyun/player/source/StsInfo;)V

    return-void
.end method

.method public updateVidAuth(Lcom/aliyun/player/source/VidAuth;)V
    .locals 0
    .param p1, "vidAuth"    # Lcom/aliyun/player/source/VidAuth;

    .line 35
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->nUpdateVidAuth(Lcom/aliyun/player/source/VidAuth;)V

    return-void
.end method
