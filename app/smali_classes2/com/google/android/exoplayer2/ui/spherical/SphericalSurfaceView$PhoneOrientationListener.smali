.class Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;
.super Ljava/lang/Object;
.source "SphericalSurfaceView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneOrientationListener"
.end annotation


# instance fields
.field private final angles:[F

.field private final display:Landroid/view/Display;

.field private final phoneInWorldSpaceMatrix:[F

.field private final remappedPhoneMatrix:[F

.field private final renderer:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;

.field private final touchTracker:Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;


# direct methods
.method public constructor <init>(Landroid/view/Display;Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "touchTracker"    # Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;
    .param p3, "renderer"    # Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->phoneInWorldSpaceMatrix:[F

    .line 235
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->remappedPhoneMatrix:[F

    .line 236
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->angles:[F

    .line 242
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->display:Landroid/view/Display;

    .line 243
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->touchTracker:Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;

    .line 244
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->renderer:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;

    .line 245
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 299
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->remappedPhoneMatrix:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 271
    const/4 v0, 0x1

    .line 272
    .local v0, "xAxis":I
    const/4 v1, 0x2

    .local v1, "yAxis":I
    goto :goto_0

    .line 258
    .end local v0    # "xAxis":I
    .end local v1    # "yAxis":I
    :pswitch_0
    const/16 v0, 0x82

    .line 259
    .restart local v0    # "xAxis":I
    const/4 v1, 0x1

    .line 260
    .restart local v1    # "yAxis":I
    goto :goto_0

    .line 262
    .end local v0    # "xAxis":I
    .end local v1    # "yAxis":I
    :pswitch_1
    const/16 v0, 0x81

    .line 263
    .restart local v0    # "xAxis":I
    const/16 v1, 0x82

    .line 264
    .restart local v1    # "yAxis":I
    goto :goto_0

    .line 266
    .end local v0    # "xAxis":I
    .end local v1    # "yAxis":I
    :pswitch_2
    const/4 v0, 0x2

    .line 267
    .restart local v0    # "xAxis":I
    const/16 v1, 0x81

    .line 268
    .restart local v1    # "yAxis":I
    nop

    .line 275
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->remappedPhoneMatrix:[F

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->phoneInWorldSpaceMatrix:[F

    invoke-static {v2, v0, v1, v3}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 282
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->phoneInWorldSpaceMatrix:[F

    const/16 v3, 0x83

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->remappedPhoneMatrix:[F

    const/4 v5, 0x1

    invoke-static {v2, v5, v3, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 287
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->remappedPhoneMatrix:[F

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->angles:[F

    invoke-static {v2, v3}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 288
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->angles:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 289
    .local v2, "roll":F
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->touchTracker:Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->setRoll(F)V

    .line 294
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->phoneInWorldSpaceMatrix:[F

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 295
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->renderer:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->phoneInWorldSpaceMatrix:[F

    invoke-virtual {v3, v4, v2}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->setDeviceOrientation([FF)V

    .line 296
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
