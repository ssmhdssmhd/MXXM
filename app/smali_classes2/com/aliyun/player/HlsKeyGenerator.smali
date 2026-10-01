.class public Lcom/aliyun/player/HlsKeyGenerator;
.super Ljava/lang/Object;
.source "HlsKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/aliyun/player/HlsKeyGenerator;


# instance fields
.field private mOnKeyGenerateListener:Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/aliyun/player/HlsKeyGenerator;->instance:Lcom/aliyun/player/HlsKeyGenerator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/HlsKeyGenerator;->mOnKeyGenerateListener:Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;

    .line 33
    return-void
.end method

.method private static getHlsKey(Ljava/lang/String;)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/aliyun/player/HlsKeyGenerator;->getInstance()Lcom/aliyun/player/HlsKeyGenerator;

    move-result-object v0

    .line 66
    .local v0, "avpKey":Lcom/aliyun/player/HlsKeyGenerator;
    iget-object v1, v0, Lcom/aliyun/player/HlsKeyGenerator;->mOnKeyGenerateListener:Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, v0, Lcom/aliyun/player/HlsKeyGenerator;->mOnKeyGenerateListener:Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;

    invoke-interface {v1, p0}, Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;->getHlsKey(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 69
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance()Lcom/aliyun/player/HlsKeyGenerator;
    .locals 2

    .line 19
    sget-object v0, Lcom/aliyun/player/HlsKeyGenerator;->instance:Lcom/aliyun/player/HlsKeyGenerator;

    if-nez v0, :cond_1

    .line 20
    const-class v0, Lcom/aliyun/player/HlsKeyGenerator;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/aliyun/player/HlsKeyGenerator;->instance:Lcom/aliyun/player/HlsKeyGenerator;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/aliyun/player/HlsKeyGenerator;

    invoke-direct {v1}, Lcom/aliyun/player/HlsKeyGenerator;-><init>()V

    sput-object v1, Lcom/aliyun/player/HlsKeyGenerator;->instance:Lcom/aliyun/player/HlsKeyGenerator;

    .line 24
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcom/aliyun/player/HlsKeyGenerator;->instance:Lcom/aliyun/player/HlsKeyGenerator;

    return-object v0
.end method

.method private static onHlsKeyInfoInit(Ljava/lang/String;I)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "time"    # I

    .line 53
    invoke-static {}, Lcom/aliyun/player/HlsKeyGenerator;->getInstance()Lcom/aliyun/player/HlsKeyGenerator;

    move-result-object v0

    .line 54
    .local v0, "avpKey":Lcom/aliyun/player/HlsKeyGenerator;
    iget-object v1, v0, Lcom/aliyun/player/HlsKeyGenerator;->mOnKeyGenerateListener:Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, v0, Lcom/aliyun/player/HlsKeyGenerator;->mOnKeyGenerateListener:Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;

    invoke-interface {v1, p0, p1}, Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;->onHlsKeyInfoInit(Ljava/lang/String;I)V

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public setOnKeyGenerateListener(Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;

    .line 42
    iput-object p1, p0, Lcom/aliyun/player/HlsKeyGenerator;->mOnKeyGenerateListener:Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;

    .line 43
    return-void
.end method
