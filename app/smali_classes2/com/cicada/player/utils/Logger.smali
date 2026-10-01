.class public Lcom/cicada/player/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cicada/player/utils/Logger$OnLogCallback;,
        Lcom/cicada/player/utils/Logger$LogLevel;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sAppContext:Landroid/content/Context;

.field private static volatile sInstance:Lcom/cicada/player/utils/Logger;


# instance fields
.field private final logCallbackLock:Ljava/lang/Object;

.field private mCurrentLogLevel:Lcom/cicada/player/utils/Logger$LogLevel;

.field private mEnableConsoleLog:Z

.field private mLogCallback:Lcom/cicada/player/utils/Logger$OnLogCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-string v0, "Logger"

    sput-object v0, Lcom/cicada/player/utils/Logger;->TAG:Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/cicada/player/utils/Logger;->sInstance:Lcom/cicada/player/utils/Logger;

    .line 118
    sput-object v0, Lcom/cicada/player/utils/Logger;->sAppContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cicada/player/utils/Logger;->logCallbackLock:Ljava/lang/Object;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/Logger;->mLogCallback:Lcom/cicada/player/utils/Logger$OnLogCallback;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cicada/player/utils/Logger;->mEnableConsoleLog:Z

    .line 180
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_INFO:Lcom/cicada/player/utils/Logger$LogLevel;

    iput-object v0, p0, Lcom/cicada/player/utils/Logger;->mCurrentLogLevel:Lcom/cicada/player/utils/Logger$LogLevel;

    .line 125
    return-void
.end method

.method private callback(Lcom/cicada/player/utils/Logger$LogLevel;Ljava/lang/String;)V
    .locals 2
    .param p1, "logLevel"    # Lcom/cicada/player/utils/Logger$LogLevel;
    .param p2, "msgStr"    # Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/cicada/player/utils/Logger;->logCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/cicada/player/utils/Logger;->mLogCallback:Lcom/cicada/player/utils/Logger$OnLogCallback;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/cicada/player/utils/Logger;->mLogCallback:Lcom/cicada/player/utils/Logger$OnLogCallback;

    invoke-interface {v1, p1, p2}, Lcom/cicada/player/utils/Logger$OnLogCallback;->onLog(Lcom/cicada/player/utils/Logger$LogLevel;Ljava/lang/String;)V

    .line 243
    :cond_0
    monitor-exit v0

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 268
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_DEBUG:Lcom/cicada/player/utils/Logger$LogLevel;

    invoke-static {v0, p0, p1}, Lcom/cicada/player/utils/Logger;->log(Lcom/cicada/player/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 284
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_ERROR:Lcom/cicada/player/utils/Logger$LogLevel;

    invoke-static {v0, p0, p1}, Lcom/cicada/player/utils/Logger;->log(Lcom/cicada/player/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cicada/player/utils/Logger;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 138
    sget-object v0, Lcom/cicada/player/utils/Logger;->sInstance:Lcom/cicada/player/utils/Logger;

    if-nez v0, :cond_1

    .line 139
    const-class v0, Lcom/cicada/player/utils/Logger;

    monitor-enter v0

    .line 140
    :try_start_0
    sget-object v1, Lcom/cicada/player/utils/Logger;->sInstance:Lcom/cicada/player/utils/Logger;

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Lcom/cicada/player/utils/Logger;

    invoke-direct {v1}, Lcom/cicada/player/utils/Logger;-><init>()V

    sput-object v1, Lcom/cicada/player/utils/Logger;->sInstance:Lcom/cicada/player/utils/Logger;

    .line 142
    sget-object v1, Lcom/cicada/player/utils/Logger;->sInstance:Lcom/cicada/player/utils/Logger;

    sget-object v2, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_INFO:Lcom/cicada/player/utils/Logger$LogLevel;

    invoke-virtual {v1, v2}, Lcom/cicada/player/utils/Logger;->setLogLevel(Lcom/cicada/player/utils/Logger$LogLevel;)V

    .line 143
    if-eqz p0, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/cicada/player/utils/Logger;->sAppContext:Landroid/content/Context;

    .line 147
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 149
    :cond_1
    :goto_0
    sget-object v0, Lcom/cicada/player/utils/Logger;->sInstance:Lcom/cicada/player/utils/Logger;

    return-object v0
.end method

.method private static getLevel(I)Lcom/cicada/player/utils/Logger$LogLevel;
    .locals 1
    .param p0, "level"    # I

    .line 247
    sparse-switch p0, :sswitch_data_0

    .line 263
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_DEBUG:Lcom/cicada/player/utils/Logger$LogLevel;

    return-object v0

    .line 261
    :sswitch_0
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_TRACE:Lcom/cicada/player/utils/Logger$LogLevel;

    return-object v0

    .line 259
    :sswitch_1
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_DEBUG:Lcom/cicada/player/utils/Logger$LogLevel;

    return-object v0

    .line 257
    :sswitch_2
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_INFO:Lcom/cicada/player/utils/Logger$LogLevel;

    return-object v0

    .line 255
    :sswitch_3
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_WARNING:Lcom/cicada/player/utils/Logger$LogLevel;

    return-object v0

    .line 253
    :sswitch_4
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_ERROR:Lcom/cicada/player/utils/Logger$LogLevel;

    return-object v0

    .line 251
    :sswitch_5
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_FATAL:Lcom/cicada/player/utils/Logger$LogLevel;

    return-object v0

    .line 249
    :sswitch_6
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_NONE:Lcom/cicada/player/utils/Logger$LogLevel;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x8 -> :sswitch_5
        0x10 -> :sswitch_4
        0x18 -> :sswitch_3
        0x20 -> :sswitch_2
        0x30 -> :sswitch_1
        0x38 -> :sswitch_0
    .end sparse-switch
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 272
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_INFO:Lcom/cicada/player/utils/Logger$LogLevel;

    invoke-static {v0, p0, p1}, Lcom/cicada/player/utils/Logger;->log(Lcom/cicada/player/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method private static log(Lcom/cicada/player/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "logLevel"    # Lcom/cicada/player/utils/Logger$LogLevel;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 288
    sget-object v0, Lcom/cicada/player/utils/Logger;->sAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cicada/player/utils/Logger;->getInstance(Landroid/content/Context;)Lcom/cicada/player/utils/Logger;

    move-result-object v0

    iget-object v0, v0, Lcom/cicada/player/utils/Logger;->mCurrentLogLevel:Lcom/cicada/player/utils/Logger$LogLevel;

    .line 289
    .local v0, "setLogLevel":Lcom/cicada/player/utils/Logger$LogLevel;
    sget-object v1, Lcom/cicada/player/utils/Logger;->sAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cicada/player/utils/Logger;->getInstance(Landroid/content/Context;)Lcom/cicada/player/utils/Logger;

    move-result-object v1

    iget-boolean v1, v1, Lcom/cicada/player/utils/Logger;->mEnableConsoleLog:Z

    .line 290
    .local v1, "enableConsole":Z
    sget-object v2, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_NONE:Lcom/cicada/player/utils/Logger$LogLevel;

    if-eq v0, v2, :cond_6

    invoke-virtual {v0}, Lcom/cicada/player/utils/Logger$LogLevel;->getValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/cicada/player/utils/Logger$LogLevel;->getValue()I

    move-result v3

    if-lt v2, v3, :cond_6

    if-nez v1, :cond_0

    goto :goto_1

    .line 294
    :cond_0
    sget-object v2, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_TRACE:Lcom/cicada/player/utils/Logger$LogLevel;

    if-ne p0, v2, :cond_1

    .line 295
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :cond_1
    sget-object v2, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_DEBUG:Lcom/cicada/player/utils/Logger$LogLevel;

    if-ne p0, v2, :cond_2

    .line 297
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :cond_2
    sget-object v2, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_INFO:Lcom/cicada/player/utils/Logger$LogLevel;

    if-ne p0, v2, :cond_3

    .line 299
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :cond_3
    sget-object v2, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_WARNING:Lcom/cicada/player/utils/Logger$LogLevel;

    if-ne p0, v2, :cond_4

    .line 301
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    :cond_4
    sget-object v2, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_ERROR:Lcom/cicada/player/utils/Logger$LogLevel;

    if-ne p0, v2, :cond_5

    .line 303
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_5
    :goto_0
    return-void

    .line 291
    :cond_6
    :goto_1
    return-void
.end method

.method private static native nEnableConsoleLog(Z)V
.end method

.method private static native nGetLogLevel()I
.end method

.method private static nOnLogCallback(I[B)V
    .locals 3
    .param p0, "level"    # I
    .param p1, "msg"    # [B

    .line 229
    invoke-static {p0}, Lcom/cicada/player/utils/Logger;->getLevel(I)Lcom/cicada/player/utils/Logger$LogLevel;

    move-result-object v0

    .line 230
    .local v0, "logLevel":Lcom/cicada/player/utils/Logger$LogLevel;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "msgStr":Ljava/lang/String;
    sget-object v2, Lcom/cicada/player/utils/Logger;->sAppContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 233
    sget-object v2, Lcom/cicada/player/utils/Logger;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cicada/player/utils/Logger;->getInstance(Landroid/content/Context;)Lcom/cicada/player/utils/Logger;

    move-result-object v2

    .line 234
    .local v2, "logger":Lcom/cicada/player/utils/Logger;
    invoke-direct {v2, v0, v1}, Lcom/cicada/player/utils/Logger;->callback(Lcom/cicada/player/utils/Logger$LogLevel;Ljava/lang/String;)V

    .line 236
    .end local v2    # "logger":Lcom/cicada/player/utils/Logger;
    :cond_0
    return-void
.end method

.method private static native nSetLogLevel(I)V
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 276
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_TRACE:Lcom/cicada/player/utils/Logger$LogLevel;

    invoke-static {v0, p0, p1}, Lcom/cicada/player/utils/Logger;->log(Lcom/cicada/player/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 280
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_WARNING:Lcom/cicada/player/utils/Logger$LogLevel;

    invoke-static {v0, p0, p1}, Lcom/cicada/player/utils/Logger;->log(Lcom/cicada/player/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method


# virtual methods
.method public enableConsoleLog(Z)V
    .locals 0
    .param p1, "bEnabled"    # Z

    .line 218
    iput-boolean p1, p0, Lcom/cicada/player/utils/Logger;->mEnableConsoleLog:Z

    .line 219
    invoke-static {p1}, Lcom/cicada/player/utils/Logger;->nEnableConsoleLog(Z)V

    .line 220
    return-void
.end method

.method public getLogCallback()Lcom/cicada/player/utils/Logger$OnLogCallback;
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/cicada/player/utils/Logger;->logCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/cicada/player/utils/Logger;->mLogCallback:Lcom/cicada/player/utils/Logger$OnLogCallback;

    monitor-exit v0

    return-object v1

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLogLevel()Lcom/cicada/player/utils/Logger$LogLevel;
    .locals 2

    .line 204
    invoke-static {}, Lcom/cicada/player/utils/Logger;->nGetLogLevel()I

    move-result v0

    .line 205
    .local v0, "logLevel":I
    invoke-static {v0}, Lcom/cicada/player/utils/Logger$LogLevel;->convert(I)Lcom/cicada/player/utils/Logger$LogLevel;

    move-result-object v1

    return-object v1
.end method

.method public setLogCallback(Lcom/cicada/player/utils/Logger$OnLogCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/cicada/player/utils/Logger$OnLogCallback;

    .line 161
    iget-object v0, p0, Lcom/cicada/player/utils/Logger;->logCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    iput-object p1, p0, Lcom/cicada/player/utils/Logger;->mLogCallback:Lcom/cicada/player/utils/Logger$OnLogCallback;

    .line 163
    monitor-exit v0

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLogLevel(Lcom/cicada/player/utils/Logger$LogLevel;)V
    .locals 1
    .param p1, "logLevel"    # Lcom/cicada/player/utils/Logger$LogLevel;

    .line 191
    iput-object p1, p0, Lcom/cicada/player/utils/Logger;->mCurrentLogLevel:Lcom/cicada/player/utils/Logger$LogLevel;

    .line 192
    invoke-virtual {p1}, Lcom/cicada/player/utils/Logger$LogLevel;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/cicada/player/utils/Logger;->nSetLogLevel(I)V

    .line 193
    return-void
.end method
