.class public Lcom/cicada/player/utils/DecoderSurfaceTexture;
.super Ljava/lang/Object;
.source "DecoderSurfaceTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation runtime Lcom/cicada/player/utils/NativeUsed;
.end annotation


# static fields
.field private static final CREATE_SURFACE_MSG:I = 0x3039


# instance fields
.field private mCountDown:Ljava/util/concurrent/CountDownLatch;

.field private mDecoderHandler:J

.field private mHandleThread:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mTextureId:I

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mDecoderHandler:J

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 19
    iput-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurface:Landroid/view/Surface;

    .line 20
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DecoderSurfaceTexture"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandleThread:Landroid/os/HandlerThread;

    .line 21
    iput-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandler:Landroid/os/Handler;

    .line 22
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 25
    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/cicada/player/utils/DecoderSurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/cicada/player/utils/DecoderSurfaceTexture;

    .line 12
    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$002(Lcom/cicada/player/utils/DecoderSurfaceTexture;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/cicada/player/utils/DecoderSurfaceTexture;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .line 12
    iput-object p1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cicada/player/utils/DecoderSurfaceTexture;)I
    .locals 1
    .param p0, "x0"    # Lcom/cicada/player/utils/DecoderSurfaceTexture;

    .line 12
    iget v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mTextureId:I

    return v0
.end method

.method static synthetic access$202(Lcom/cicada/player/utils/DecoderSurfaceTexture;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .param p0, "x0"    # Lcom/cicada/player/utils/DecoderSurfaceTexture;
    .param p1, "x1"    # Landroid/view/Surface;

    .line 12
    iput-object p1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$300(Lcom/cicada/player/utils/DecoderSurfaceTexture;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/cicada/player/utils/DecoderSurfaceTexture;

    .line 12
    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private native onFrameAvailable(J)V
.end method


# virtual methods
.method public createSurface(IJ)Landroid/view/Surface;
    .locals 2
    .param p1, "id"    # I
    .param p2, "handler"    # J
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 29
    if-gtz p1, :cond_0

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    iput p1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mTextureId:I

    .line 33
    iput-wide p2, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mDecoderHandler:J

    .line 36
    :try_start_0
    new-instance v0, Lcom/cicada/player/utils/DecoderSurfaceTexture$1;

    iget-object v1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cicada/player/utils/DecoderSurfaceTexture$1;-><init>(Lcom/cicada/player/utils/DecoderSurfaceTexture;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 55
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3039

    iput v1, v0, Landroid/os/Message;->what:I

    .line 56
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 60
    :try_start_1
    iget-object v1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    goto :goto_1

    .line 61
    :catch_1
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurface:Landroid/view/Surface;

    return-object v1
.end method

.method public dispose()V
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 82
    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 83
    return-void
.end method

.method public getTransformMatrix([F)V
    .locals 1
    .param p1, "matrix"    # [F
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 73
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 87
    iget-wide v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mDecoderHandler:J

    invoke-direct {p0, v0, v1}, Lcom/cicada/player/utils/DecoderSurfaceTexture;->onFrameAvailable(J)V

    .line 88
    return-void
.end method

.method public updateTexImage()V
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 77
    return-void
.end method
