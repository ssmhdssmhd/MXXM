.class public Lcom/aliyun/player/AliPlayerGlobalSettings;
.super Ljava/lang/Object;
.source "AliPlayerGlobalSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/AliPlayerGlobalSettings$OnGetUrlHashCallback;,
        Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;
    }
.end annotation


# static fields
.field private static sOnGetUrlHashCallback:Lcom/aliyun/player/AliPlayerGlobalSettings$OnGetUrlHashCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    .line 109
    const/4 v0, 0x0

    sput-object v0, Lcom/aliyun/player/AliPlayerGlobalSettings;->sOnGetUrlHashCallback:Lcom/aliyun/player/AliPlayerGlobalSettings$OnGetUrlHashCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method public static enableLocalCache(ZILjava/lang/String;)V
    .locals 0
    .param p0, "enable"    # Z
    .param p1, "maxBufferMemoryKB"    # I
    .param p2, "localCacheDir"    # Ljava/lang/String;

    .line 82
    invoke-static {p0, p1, p2}, Lcom/aliyun/player/AliPlayerGlobalSettings;->nEnableLocalCache(ZILjava/lang/String;)V

    .line 83
    return-void
.end method

.method public static forceAudioRendingFormat(ZLjava/lang/String;II)V
    .locals 0
    .param p0, "force"    # Z
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "channels"    # I
    .param p3, "sample_rate"    # I

    .line 66
    invoke-static {p0, p1, p2, p3}, Lcom/aliyun/player/AliPlayerGlobalSettings;->nForceAudioRendingFormat(ZLjava/lang/String;II)V

    .line 67
    return-void
.end method

.method private static native nEnableLocalCache(ZILjava/lang/String;)V
.end method

.method private static native nForceAudioRendingFormat(ZLjava/lang/String;II)V
.end method

.method private static declared-synchronized nOnGetUrlHashCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    const-class v0, Lcom/aliyun/player/AliPlayerGlobalSettings;

    monitor-enter v0

    .line 138
    :try_start_0
    sget-object v1, Lcom/aliyun/player/AliPlayerGlobalSettings;->sOnGetUrlHashCallback:Lcom/aliyun/player/AliPlayerGlobalSettings$OnGetUrlHashCallback;

    if-eqz v1, :cond_0

    .line 139
    sget-object v1, Lcom/aliyun/player/AliPlayerGlobalSettings;->sOnGetUrlHashCallback:Lcom/aliyun/player/AliPlayerGlobalSettings$OnGetUrlHashCallback;

    invoke-interface {v1, p0}, Lcom/aliyun/player/AliPlayerGlobalSettings$OnGetUrlHashCallback;->getUrlHashCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 141
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 137
    .end local p0    # "url":Ljava/lang/String;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static native nSetAudioStreamType(I)V
.end method

.method private static native nSetCacheFileClearConfig(JJJ)V
.end method

.method private static native nSetCacheUrlHashCallback(Z)V
.end method

.method private static native nSetDNSResolve(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nSetIPResolveType(I)V
.end method

.method private static native nSetUseHttp2(Z)V
.end method

.method public static setAudioStreamType(Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;)V
    .locals 1
    .param p0, "streamType"    # Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    .line 48
    invoke-virtual {p0}, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/aliyun/player/AliPlayerGlobalSettings;->nSetAudioStreamType(I)V

    .line 49
    return-void
.end method

.method public static setCacheFileClearConfig(JJJ)V
    .locals 0
    .param p0, "expireMin"    # J
    .param p2, "maxCapacityMB"    # J
    .param p4, "freeStorageMB"    # J

    .line 93
    invoke-static/range {p0 .. p5}, Lcom/aliyun/player/AliPlayerGlobalSettings;->nSetCacheFileClearConfig(JJJ)V

    .line 94
    return-void
.end method

.method public static declared-synchronized setCacheUrlHashCallback(Lcom/aliyun/player/AliPlayerGlobalSettings$OnGetUrlHashCallback;)V
    .locals 2
    .param p0, "cb"    # Lcom/aliyun/player/AliPlayerGlobalSettings$OnGetUrlHashCallback;

    const-class v0, Lcom/aliyun/player/AliPlayerGlobalSettings;

    monitor-enter v0

    .line 116
    :try_start_0
    sput-object p0, Lcom/aliyun/player/AliPlayerGlobalSettings;->sOnGetUrlHashCallback:Lcom/aliyun/player/AliPlayerGlobalSettings$OnGetUrlHashCallback;

    .line 117
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/aliyun/player/AliPlayerGlobalSettings;->nSetCacheUrlHashCallback(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit v0

    return-void

    .line 115
    .end local p0    # "cb":Lcom/aliyun/player/AliPlayerGlobalSettings$OnGetUrlHashCallback;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setDNSResolve(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "ip"    # Ljava/lang/String;

    .line 24
    invoke-static {p0, p1}, Lcom/aliyun/player/AliPlayerGlobalSettings;->nSetDNSResolve(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static setIPResolveType(Lcom/aliyun/player/IPlayer$IPResolveType;)V
    .locals 1
    .param p0, "type"    # Lcom/aliyun/player/IPlayer$IPResolveType;

    .line 41
    invoke-virtual {p0}, Lcom/aliyun/player/IPlayer$IPResolveType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/aliyun/player/AliPlayerGlobalSettings;->nSetIPResolveType(I)V

    .line 42
    return-void
.end method

.method public static setUseHttp2(Z)V
    .locals 0
    .param p0, "use"    # Z

    .line 29
    invoke-static {p0}, Lcom/aliyun/player/AliPlayerGlobalSettings;->nSetUseHttp2(Z)V

    .line 30
    return-void
.end method
