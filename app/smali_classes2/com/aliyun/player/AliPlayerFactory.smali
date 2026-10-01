.class public Lcom/aliyun/player/AliPlayerFactory;
.super Ljava/lang/Object;
.source "AliPlayerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;,
        Lcom/aliyun/player/AliPlayerFactory$BlackType;
    }
.end annotation


# static fields
.field private static sInnerBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/aliyun/player/AliPlayerFactory;->sInnerBlackList:Ljava/util/List;

    .line 24
    invoke-static {}, Lcom/aliyun/player/AliPlayerFactory;->initInnerBlackList()V

    .line 25
    sget-object v0, Lcom/aliyun/player/AliPlayerFactory$BlackType;->HW_Decode_H264:Lcom/aliyun/player/AliPlayerFactory$BlackType;

    sget-object v1, Lcom/aliyun/player/AliPlayerFactory;->sInnerBlackList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/aliyun/player/AliPlayerFactory;->addBlackList(Lcom/aliyun/player/AliPlayerFactory$BlackType;Ljava/util/List;)V

    .line 27
    new-instance v0, Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-direct {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;-><init>()V

    invoke-static {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->registerExternalPlayer(Lcom/aliyun/player/ApasaraExternalPlayer;)V

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    return-void
.end method

.method public static addBlackDevice(Lcom/aliyun/player/AliPlayerFactory$BlackType;Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;)V
    .locals 3
    .param p0, "blackType"    # Lcom/aliyun/player/AliPlayerFactory$BlackType;
    .param p1, "deviceInfo"    # Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;

    .line 213
    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 218
    .local v0, "apiLevel":I
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 220
    .local v1, "deviceModel":Ljava/lang/String;
    sget-object v2, Lcom/aliyun/player/AliPlayerFactory$BlackType;->HW_Decode_H264:Lcom/aliyun/player/AliPlayerFactory$BlackType;

    if-eq p0, v2, :cond_1

    sget-object v2, Lcom/aliyun/player/AliPlayerFactory$BlackType;->HW_Decode_HEVC:Lcom/aliyun/player/AliPlayerFactory$BlackType;

    if-ne p0, v2, :cond_2

    .line 221
    :cond_1
    nop

    .line 226
    iget-object v2, p1, Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/aliyun/player/AliPlayerFactory$BlackType;->ordinal()I

    move-result v2

    invoke-static {v2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setBlackType(I)V

    .line 228
    return-void

    .line 231
    :cond_2
    return-void

    .line 214
    .end local v0    # "apiLevel":I
    .end local v1    # "deviceModel":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method

.method public static addBlackList(Lcom/aliyun/player/AliPlayerFactory$BlackType;Ljava/util/List;)V
    .locals 2
    .param p0, "blackType"    # Lcom/aliyun/player/AliPlayerFactory$BlackType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/player/AliPlayerFactory$BlackType;",
            "Ljava/util/List<",
            "Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 244
    .local p1, "deviceInfos":Ljava/util/List;, "Ljava/util/List<Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;>;"
    if-nez p1, :cond_0

    .line 245
    return-void

    .line 248
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;

    .line 249
    .local v1, "deviceInfo":Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;
    invoke-static {p0, v1}, Lcom/aliyun/player/AliPlayerFactory;->addBlackDevice(Lcom/aliyun/player/AliPlayerFactory$BlackType;Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;)V

    .line 250
    .end local v1    # "deviceInfo":Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;
    goto :goto_0

    .line 251
    :cond_1
    return-void
.end method

.method public static createAliListPlayer(Landroid/content/Context;)Lcom/aliyun/player/AliListPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 90
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/aliyun/player/AliPlayerFactory;->createAliListPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/AliListPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static createAliListPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/AliListPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "traceId"    # Ljava/lang/String;

    .line 110
    invoke-static {p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->setContext(Landroid/content/Context;)V

    .line 112
    invoke-static {p0}, Lcom/cicada/player/utils/ContentDataSource;->setContext(Landroid/content/Context;)V

    .line 113
    new-instance v0, Lcom/aliyun/player/ApsaraVideoListPlayer;

    invoke-direct {v0, p0, p1}, Lcom/aliyun/player/ApsaraVideoListPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAliLiveShiftPlayer(Landroid/content/Context;)Lcom/aliyun/player/AliLiveShiftPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 129
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/aliyun/player/AliPlayerFactory;->createAliLiveShiftPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/AliLiveShiftPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static createAliLiveShiftPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/AliLiveShiftPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "traceId"    # Ljava/lang/String;

    .line 148
    invoke-static {p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->setContext(Landroid/content/Context;)V

    .line 150
    invoke-static {p0}, Lcom/cicada/player/utils/ContentDataSource;->setContext(Landroid/content/Context;)V

    .line 151
    new-instance v0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;

    invoke-direct {v0, p0, p1}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAliPlayer(Landroid/content/Context;)Lcom/aliyun/player/AliPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 51
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/aliyun/player/AliPlayerFactory;->createAliPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/AliPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static createAliPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/AliPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "traceId"    # Ljava/lang/String;

    .line 71
    invoke-static {p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->setContext(Landroid/content/Context;)V

    .line 73
    invoke-static {p0}, Lcom/cicada/player/utils/ContentDataSource;->setContext(Landroid/content/Context;)V

    .line 74
    new-instance v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    invoke-direct {v0, p0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDeviceUUID()Ljava/lang/String;
    .locals 1

    .line 274
    invoke-static {}, Lcom/aliyun/utils/DeviceInfoUtils;->getDeviceUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 165
    invoke-static {}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initInnerBlackList()V
    .locals 2

    .line 33
    new-instance v0, Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;

    invoke-direct {v0}, Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;-><init>()V

    .line 34
    .local v0, "deviceInfo":Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;
    const-string v1, "Lenovo K320t"

    iput-object v1, v0, Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;->model:Ljava/lang/String;

    .line 35
    sget-object v1, Lcom/aliyun/player/AliPlayerFactory;->sInnerBlackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public static setConvertURLCallback(Lcom/aliyun/player/IPlayer$ConvertURLCallback;)V
    .locals 0
    .param p0, "callback"    # Lcom/aliyun/player/IPlayer$ConvertURLCallback;

    .line 262
    invoke-static {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setConvertURLCb(Lcom/aliyun/player/IPlayer$ConvertURLCallback;)V

    .line 263
    return-void
.end method
