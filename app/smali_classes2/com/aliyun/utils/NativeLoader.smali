.class public Lcom/aliyun/utils/NativeLoader;
.super Ljava/lang/Object;
.source "NativeLoader.java"


# static fields
.field private static downloaderLoaded:Z

.field private static playerLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/aliyun/utils/NativeLoader;->playerLoaded:Z

    .line 6
    sput-boolean v0, Lcom/aliyun/utils/NativeLoader;->downloaderLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized loadDownloader()V
    .locals 2

    const-class v0, Lcom/aliyun/utils/NativeLoader;

    monitor-enter v0

    .line 23
    :try_start_0
    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    .line 25
    sget-boolean v1, Lcom/aliyun/utils/NativeLoader;->downloaderLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 26
    monitor-exit v0

    return-void

    .line 30
    :cond_0
    :try_start_1
    const-string v1, "saasDownloader"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    const/4 v1, 0x1

    sput-boolean v1, Lcom/aliyun/utils/NativeLoader;->downloaderLoaded:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    return-void

    .line 22
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static declared-synchronized loadPlayer()V
    .locals 2

    const-class v0, Lcom/aliyun/utils/NativeLoader;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-boolean v1, Lcom/aliyun/utils/NativeLoader;->playerLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 10
    monitor-exit v0

    return-void

    .line 14
    :cond_0
    :try_start_1
    const-string v1, "alivcffmpeg"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 15
    const-string v1, "saasCorePlayer"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    const/4 v1, 0x1

    sput-boolean v1, Lcom/aliyun/utils/NativeLoader;->playerLoaded:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    goto :goto_0

    .line 17
    :catch_0
    move-exception v1

    .line 18
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    return-void

    .line 8
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
