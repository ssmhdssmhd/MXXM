.class public Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;
.super Lcom/aliyun/player/videoview/displayView/IDisplayView;
.source "SurfaceDisplayView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private surfaceView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AliDisplayView_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 20
    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;-><init>(Landroid/view/ViewGroup;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->surfaceView:Landroid/view/SurfaceView;

    .line 21
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getRenderView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->surfaceView:Landroid/view/SurfaceView;

    .line 31
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView$1;

    invoke-direct {v1, p0}, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView$1;-><init>(Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 62
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->surfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method protected mirrorRenderView(Lcom/aliyun/player/IPlayer$MirrorMode;)Z
    .locals 1
    .param p1, "mirrorMode"    # Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method protected rotateRenderView(Lcom/aliyun/player/IPlayer$RotateMode;)Z
    .locals 1
    .param p1, "rotateMode"    # Lcom/aliyun/player/IPlayer$RotateMode;

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public setSurfaceReuse(Z)V
    .locals 0
    .param p1, "reuse"    # Z

    .line 26
    return-void
.end method

.method protected snapRenderView()Landroid/graphics/Bitmap;
    .locals 1

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method
