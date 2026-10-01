.class Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;
.super Ljava/lang/Object;
.source "SphericalSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/google/android/exoplayer2/ui/spherical/TouchTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Renderer"
.end annotation


# instance fields
.field private final deviceOrientationMatrix:[F

.field private deviceRoll:F

.field private final projectionMatrix:[F

.field private final scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

.field private final tempMatrix:[F

.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

.field private touchPitch:F

.field private final touchPitchMatrix:[F

.field private final touchYawMatrix:[F

.field private final viewMatrix:[F

.field private final viewProjectionMatrix:[F


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;
    .param p2, "scene"    # Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    .line 329
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->this$0:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->projectionMatrix:[F

    .line 312
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->viewProjectionMatrix:[F

    .line 316
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->deviceOrientationMatrix:[F

    .line 320
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchPitchMatrix:[F

    .line 321
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchYawMatrix:[F

    .line 326
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->viewMatrix:[F

    .line 327
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->tempMatrix:[F

    .line 330
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->deviceOrientationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 332
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchPitchMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 333
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchYawMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 334
    const v0, 0x40490fdb    # (float)Math.PI

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->deviceRoll:F

    .line 335
    return-void
.end method

.method private calculateFieldOfViewInYDirection(F)F
    .locals 9
    .param p1, "aspect"    # F

    .line 399
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 400
    .local v0, "landscapeMode":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 401
    const-wide v1, 0x4046800000000000L    # 45.0

    .line 402
    .local v1, "halfFovX":D
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    .line 403
    .local v3, "tanY":D
    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    .line 404
    .local v5, "halfFovY":D
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v7, v7, v5

    double-to-float v7, v7

    return v7

    .line 406
    .end local v1    # "halfFovX":D
    .end local v3    # "tanY":D
    .end local v5    # "halfFovY":D
    :cond_1
    const/high16 v1, 0x42b40000    # 90.0f

    return v1
.end method

.method private updatePitchMatrix()V
    .locals 6

    .line 381
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchPitchMatrix:[F

    iget v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchPitch:F

    neg-float v2, v1

    iget v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->deviceRoll:F

    float-to-double v3, v1

    .line 385
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->deviceRoll:F

    float-to-double v4, v1

    .line 386
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 381
    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 388
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 355
    monitor-enter p0

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->tempMatrix:[F

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->deviceOrientationMatrix:[F

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchYawMatrix:[F

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 357
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->viewMatrix:[F

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchPitchMatrix:[F

    iget-object v10, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->tempMatrix:[F

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 358
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->viewProjectionMatrix:[F

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->projectionMatrix:[F

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->viewMatrix:[F

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->viewProjectionMatrix:[F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->drawFrame([FI)V

    .line 362
    return-void

    .line 358
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized onScrollChange(Landroid/graphics/PointF;)V
    .locals 7
    .param p1, "scrollOffsetDegrees"    # Landroid/graphics/PointF;

    monitor-enter p0

    .line 393
    :try_start_0
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchPitch:F

    .line 394
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->updatePitchMatrix()V

    .line 395
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchYawMatrix:[F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    neg-float v3, v0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    monitor-exit p0

    return-void

    .line 392
    .end local p0    # "this":Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;
    .end local p1    # "scrollOffsetDegrees":Landroid/graphics/PointF;
    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 344
    const/4 v0, 0x0

    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 345
    int-to-float v0, p2

    int-to-float v1, p3

    div-float v5, v0, v1

    .line 346
    .local v5, "aspect":F
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->calculateFieldOfViewInYDirection(F)F

    move-result v4

    .line 347
    .local v4, "fovY":F
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->projectionMatrix:[F

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    .line 348
    return-void
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    monitor-enter p0

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->this$0:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->init()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->access$000(Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    .line 338
    .end local p0    # "this":Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;
    .end local p1    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local p2    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setDeviceOrientation([FF)V
    .locals 3
    .param p1, "matrix"    # [F
    .param p2, "deviceRoll"    # F

    monitor-enter p0

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->deviceOrientationMatrix:[F

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->deviceOrientationMatrix:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    neg-float v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->deviceRoll:F

    .line 369
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->updatePitchMatrix()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    monitor-exit p0

    return-void

    .line 366
    .end local p0    # "this":Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;
    .end local p1    # "matrix":[F
    .end local p2    # "deviceRoll":F
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
