.class public Lcom/shenma/tvlauncher/tvlive/network/ThreadPoolManager;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# static fields
.field private static manager:Lcom/shenma/tvlauncher/tvlive/network/ThreadPoolManager;


# instance fields
.field private service:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 17
    .local v0, "num":I
    mul-int/lit8 v1, v0, 0x4

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvlive/network/ThreadPoolManager;->service:Ljava/util/concurrent/ExecutorService;

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/shenma/tvlauncher/tvlive/network/ThreadPoolManager;
    .locals 1

    .line 21
    sget-object v0, Lcom/shenma/tvlauncher/tvlive/network/ThreadPoolManager;->manager:Lcom/shenma/tvlauncher/tvlive/network/ThreadPoolManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/network/ThreadPoolManager;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/tvlive/network/ThreadPoolManager;-><init>()V

    sput-object v0, Lcom/shenma/tvlauncher/tvlive/network/ThreadPoolManager;->manager:Lcom/shenma/tvlauncher/tvlive/network/ThreadPoolManager;

    .line 24
    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/tvlive/network/ThreadPoolManager;->manager:Lcom/shenma/tvlauncher/tvlive/network/ThreadPoolManager;

    return-object v0
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 28
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ThreadPoolManager;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 29
    return-void
.end method

.method public removeTask()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/ThreadPoolManager;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 33
    return-void
.end method
