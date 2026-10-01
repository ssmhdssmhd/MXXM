.class Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;
.super Ljava/lang/Object;
.source "SceneRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;
.implements Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;


# instance fields
.field private volatile defaultStereoMode:I

.field private final frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

.field private lastProjectionData:[B

.field private lastStereoMode:I

.field private final projectionQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/TimedValueQueue<",
            "Lcom/google/android/exoplayer2/video/spherical/Projection;",
            ">;"
        }
    .end annotation
.end field

.field private final projectionRenderer:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;

.field private final resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final rotationMatrix:[F

.field private final sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/TimedValueQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final tempMatrix:[F

.field private textureId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    .line 66
    new-instance v0, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 67
    new-instance v0, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->projectionQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 68
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->rotationMatrix:[F

    .line 69
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->tempMatrix:[F

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->defaultStereoMode:I

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastStereoMode:I

    .line 72
    return-void
.end method

.method private setProjection([BIJ)V
    .locals 5
    .param p1, "projectionData"    # [B
    .param p2, "stereoMode"    # I
    .param p3, "timeNs"    # J

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastProjectionData:[B

    .line 168
    .local v0, "oldProjectionData":[B
    iget v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastStereoMode:I

    .line 169
    .local v1, "oldStereoMode":I
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastProjectionData:[B

    .line 170
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->defaultStereoMode:I

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    iput v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastStereoMode:I

    .line 171
    iget v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastStereoMode:I

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastProjectionData:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    return-void

    .line 175
    :cond_1
    const/4 v2, 0x0

    .line 176
    .local v2, "projectionFromData":Lcom/google/android/exoplayer2/video/spherical/Projection;
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastProjectionData:[B

    if-eqz v3, :cond_2

    .line 177
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastProjectionData:[B

    iget v4, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastStereoMode:I

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->decode([BI)Lcom/google/android/exoplayer2/video/spherical/Projection;

    move-result-object v2

    .line 179
    :cond_2
    if-eqz v2, :cond_3

    .line 180
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->isSupported(Lcom/google/android/exoplayer2/video/spherical/Projection;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v2

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastStereoMode:I

    .line 182
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/spherical/Projection;->createEquirectangular(I)Lcom/google/android/exoplayer2/video/spherical/Projection;

    move-result-object v3

    :goto_1
    nop

    .line 183
    .local v3, "projection":Lcom/google/android/exoplayer2/video/spherical/Projection;
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->projectionQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v4, p3, p4, v3}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 184
    return-void
.end method


# virtual methods
.method public drawFrame([FI)V
    .locals 11
    .param p1, "viewProjectionMatrix"    # [F
    .param p2, "eyeType"    # I

    .line 110
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 111
    invoke-static {}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->checkGlError()V

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 115
    invoke-static {}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->checkGlError()V

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->rotationMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    .line 120
    .local v0, "lastFrameTimestampNs":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->poll(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 121
    .local v2, "sampleTimestampUs":Ljava/lang/Long;
    if-eqz v2, :cond_1

    .line 122
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->rotationMatrix:[F

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->pollRotationMatrix([FJ)Z

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->projectionQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/video/spherical/Projection;

    .line 125
    .local v3, "projection":Lcom/google/android/exoplayer2/video/spherical/Projection;
    if-eqz v3, :cond_2

    .line 126
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->setProjection(Lcom/google/android/exoplayer2/video/spherical/Projection;)V

    .line 129
    .end local v0    # "lastFrameTimestampNs":J
    .end local v2    # "sampleTimestampUs":Ljava/lang/Long;
    .end local v3    # "projection":Lcom/google/android/exoplayer2/video/spherical/Projection;
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->tempMatrix:[F

    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->rotationMatrix:[F

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, p1

    .end local p1    # "viewProjectionMatrix":[F
    .local v7, "viewProjectionMatrix":[F
    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 130
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;

    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->textureId:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->tempMatrix:[F

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->draw(I[FI)V

    .line 131
    return-void
.end method

.method public init()Landroid/graphics/SurfaceTexture;
    .locals 2

    .line 89
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 90
    invoke-static {}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->checkGlError()V

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->init()V

    .line 93
    invoke-static {}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->checkGlError()V

    .line 95
    invoke-static {}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->createExternalTexture()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->textureId:I

    .line 96
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->textureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method synthetic lambda$init$0$com-google-android-exoplayer2-ui-spherical-SceneRenderer(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onCameraMotion(J[F)V
    .locals 1
    .param p1, "timeUs"    # J
    .param p3, "rotation"    # [F

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->setRotation(J[F)V

    .line 149
    return-void
.end method

.method public onCameraMotionReset()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->clear()V

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->reset()V

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    return-void
.end method

.method public onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;)V
    .locals 2
    .param p1, "presentationTimeUs"    # J
    .param p3, "releaseTimeNs"    # J
    .param p5, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p3, p4, v1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 141
    iget-object v0, p5, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    iget v1, p5, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->setProjection([BIJ)V

    .line 142
    return-void
.end method

.method public setDefaultStereoMode(I)V
    .locals 0
    .param p1, "stereoMode"    # I

    .line 81
    iput p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->defaultStereoMode:I

    .line 82
    return-void
.end method
