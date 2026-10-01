.class public Lcom/aliyun/player/videoview/displayView/TextureDisplayView;
.super Lcom/aliyun/player/videoview/displayView/IDisplayView;
.source "TextureDisplayView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mReuseSurface:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AliDisplayView_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    const-class v1, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->TAG:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 26
    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;-><init>(Landroid/view/ViewGroup;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 22
    iput-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 23
    iput-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mSurface:Landroid/view/Surface;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mReuseSurface:Z

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 16
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$002(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/videoview/displayView/TextureDisplayView;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .line 16
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$100(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 16
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$102(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/videoview/displayView/TextureDisplayView;
    .param p1, "x1"    # Landroid/view/Surface;

    .line 16
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$200(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 16
    iget-boolean v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mReuseSurface:Z

    return v0
.end method

.method static synthetic access$300(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 16
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private adjustPhotoRotation(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .line 130
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v6, v0

    .line 131
    .local v6, "matrix":Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getRotation()F

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 132
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getScaleX()F

    move-result v0

    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getScaleY()F

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 133
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    .end local p1    # "source":Landroid/graphics/Bitmap;
    .local v1, "source":Landroid/graphics/Bitmap;
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getRenderView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 40
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    new-instance v1, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;

    invoke-direct {v1, p0}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;-><init>(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 87
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method protected mirrorRenderView(Lcom/aliyun/player/IPlayer$MirrorMode;)Z
    .locals 3
    .param p1, "mirrorMode"    # Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 92
    sget-object v0, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_HORIZONTAL:Lcom/aliyun/player/IPlayer$MirrorMode;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setScaleX(F)V

    .line 94
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setScaleY(F)V

    goto :goto_0

    .line 95
    :cond_0
    sget-object v0, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_VERTICAL:Lcom/aliyun/player/IPlayer$MirrorMode;

    if-ne p1, v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setScaleY(F)V

    .line 97
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setScaleX(F)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setScaleY(F)V

    .line 100
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setScaleX(F)V

    .line 103
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected rotateRenderView(Lcom/aliyun/player/IPlayer$RotateMode;)Z
    .locals 2
    .param p1, "rotateMode"    # Lcom/aliyun/player/IPlayer$RotateMode;

    .line 108
    sget-object v0, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_90:Lcom/aliyun/player/IPlayer$RotateMode;

    if-ne p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setRotation(F)V

    goto :goto_0

    .line 110
    :cond_0
    sget-object v0, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_180:Lcom/aliyun/player/IPlayer$RotateMode;

    if-ne p1, v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setRotation(F)V

    goto :goto_0

    .line 112
    :cond_1
    sget-object v0, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_270:Lcom/aliyun/player/IPlayer$RotateMode;

    if-ne p1, v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setRotation(F)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setRotation(F)V

    .line 117
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setSurfaceReuse(Z)V
    .locals 0
    .param p1, "reuse"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mReuseSurface:Z

    .line 34
    return-void
.end method

.method protected snapRenderView()Landroid/graphics/Bitmap;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    .local v0, "tmpContent":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->adjustPhotoRotation(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 125
    .local v1, "content":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    return-object v1
.end method
