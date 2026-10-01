.class public Lcom/cicada/player/utils/VsyncTimer;
.super Ljava/lang/Object;
.source "VsyncTimer.java"


# annotations
.annotation runtime Lcom/cicada/player/utils/NativeUsed;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static WHAT_DESTROY:I

.field private static WHAT_INIT:I

.field private static WHAT_PAUSE:I

.field private static WHAT_START:I


# instance fields
.field private final lockObj:Ljava/lang/Object;

.field private mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mNativePtr:J

.field private mTimerHandler:Landroid/os/Handler;

.field private mTimerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/cicada/player/utils/VsyncTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cicada/player/utils/VsyncTimer;->TAG:Ljava/lang/String;

    .line 15
    const/16 v0, 0x2710

    sput v0, Lcom/cicada/player/utils/VsyncTimer;->WHAT_INIT:I

    .line 16
    const/16 v0, 0x2711

    sput v0, Lcom/cicada/player/utils/VsyncTimer;->WHAT_START:I

    .line 17
    const/16 v0, 0x2712

    sput v0, Lcom/cicada/player/utils/VsyncTimer;->WHAT_PAUSE:I

    .line 18
    const/16 v0, 0x2713

    sput v0, Lcom/cicada/player/utils/VsyncTimer;->WHAT_DESTROY:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "nativePtr"    # J

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->lockObj:Ljava/lang/Object;

    .line 26
    new-instance v0, Lcom/cicada/player/utils/VsyncTimer$1;

    invoke-direct {v0, p0}, Lcom/cicada/player/utils/VsyncTimer$1;-><init>(Lcom/cicada/player/utils/VsyncTimer;)V

    iput-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 35
    iput-wide p1, p0, Lcom/cicada/player/utils/VsyncTimer;->mNativePtr:J

    .line 36
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/cicada/player/utils/VsyncTimer;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerThread:Landroid/os/HandlerThread;

    .line 37
    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 38
    new-instance v0, Lcom/cicada/player/utils/VsyncTimer$2;

    iget-object v1, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cicada/player/utils/VsyncTimer$2;-><init>(Lcom/cicada/player/utils/VsyncTimer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerHandler:Landroid/os/Handler;

    .line 61
    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerHandler:Landroid/os/Handler;

    sget v1, Lcom/cicada/player/utils/VsyncTimer;->WHAT_INIT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/cicada/player/utils/VsyncTimer;)J
    .locals 2
    .param p0, "x0"    # Lcom/cicada/player/utils/VsyncTimer;

    .line 11
    iget-wide v0, p0, Lcom/cicada/player/utils/VsyncTimer;->mNativePtr:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/cicada/player/utils/VsyncTimer;J)J
    .locals 0
    .param p0, "x0"    # Lcom/cicada/player/utils/VsyncTimer;
    .param p1, "x1"    # J

    .line 11
    iput-wide p1, p0, Lcom/cicada/player/utils/VsyncTimer;->mNativePtr:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/cicada/player/utils/VsyncTimer;JJ)I
    .locals 1
    .param p0, "x0"    # Lcom/cicada/player/utils/VsyncTimer;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cicada/player/utils/VsyncTimer;->onVsync(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/cicada/player/utils/VsyncTimer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/cicada/player/utils/VsyncTimer;

    .line 11
    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->lockObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 11
    sget v0, Lcom/cicada/player/utils/VsyncTimer;->WHAT_INIT:I

    return v0
.end method

.method static synthetic access$300(Lcom/cicada/player/utils/VsyncTimer;J)I
    .locals 1
    .param p0, "x0"    # Lcom/cicada/player/utils/VsyncTimer;
    .param p1, "x1"    # J

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/cicada/player/utils/VsyncTimer;->onInit(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 11
    sget v0, Lcom/cicada/player/utils/VsyncTimer;->WHAT_START:I

    return v0
.end method

.method static synthetic access$500(Lcom/cicada/player/utils/VsyncTimer;)Landroid/view/Choreographer$FrameCallback;
    .locals 1
    .param p0, "x0"    # Lcom/cicada/player/utils/VsyncTimer;

    .line 11
    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 11
    sget v0, Lcom/cicada/player/utils/VsyncTimer;->WHAT_PAUSE:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .line 11
    sget v0, Lcom/cicada/player/utils/VsyncTimer;->WHAT_DESTROY:I

    return v0
.end method

.method static synthetic access$800(Lcom/cicada/player/utils/VsyncTimer;J)V
    .locals 0
    .param p0, "x0"    # Lcom/cicada/player/utils/VsyncTimer;
    .param p1, "x1"    # J

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/cicada/player/utils/VsyncTimer;->onDestroy(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/cicada/player/utils/VsyncTimer;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/cicada/player/utils/VsyncTimer;

    .line 11
    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private native onDestroy(J)V
.end method

.method private native onInit(J)I
.end method

.method private native onVsync(JJ)I
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->lockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerHandler:Landroid/os/Handler;

    sget v2, Lcom/cicada/player/utils/VsyncTimer;->WHAT_DESTROY:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :try_start_1
    iget-object v1, p0, Lcom/cicada/player/utils/VsyncTimer;->lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 80
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public pause()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerHandler:Landroid/os/Handler;

    sget v1, Lcom/cicada/player/utils/VsyncTimer;->WHAT_PAUSE:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 70
    return-void
.end method

.method public start()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerHandler:Landroid/os/Handler;

    sget v1, Lcom/cicada/player/utils/VsyncTimer;->WHAT_START:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 66
    return-void
.end method
