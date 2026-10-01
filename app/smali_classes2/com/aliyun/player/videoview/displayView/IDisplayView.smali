.class public abstract Lcom/aliyun/player/videoview/displayView/IDisplayView;
.super Ljava/lang/Object;
.source "IDisplayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChildView:Landroid/view/View;

.field private mDirectRender:Z

.field private mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

.field protected mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

.field private final mParent:Landroid/view/ViewGroup;

.field private mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

.field private mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

.field private mVideoHeight:I

.field private mVideoRotate:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AliDisplayView_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    .line 31
    iput v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    .line 32
    iput v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoRotate:I

    .line 33
    sget-object v2, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    iput-object v2, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 34
    sget-object v2, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_NONE:Lcom/aliyun/player/IPlayer$MirrorMode;

    iput-object v2, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 35
    sget-object v2, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_0:Lcom/aliyun/player/IPlayer$RotateMode;

    iput-object v2, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 36
    iput-boolean v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mDirectRender:Z

    .line 37
    iput-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    .line 40
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    .line 41
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new IDisplayView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 25
    invoke-direct {p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->updateViewParams()V

    return-void
.end method

.method static synthetic access$100(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 25
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 25
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Lcom/aliyun/player/IPlayer$MirrorMode;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 25
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

    return-object v0
.end method

.method static synthetic access$400(Lcom/aliyun/player/videoview/displayView/IDisplayView;Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/videoview/displayView/IDisplayView;
    .param p1, "x1"    # Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 25
    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setMirrorModeInner(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    return-void
.end method

.method static synthetic access$500(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Lcom/aliyun/player/IPlayer$ScaleMode;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 25
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    return-object v0
.end method

.method static synthetic access$600(Lcom/aliyun/player/videoview/displayView/IDisplayView;Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/videoview/displayView/IDisplayView;
    .param p1, "x1"    # Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 25
    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setScaleModeInner(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    return-void
.end method

.method static synthetic access$700(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Lcom/aliyun/player/IPlayer$RotateMode;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 25
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    return-object v0
.end method

.method static synthetic access$800(Lcom/aliyun/player/videoview/displayView/IDisplayView;Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/videoview/displayView/IDisplayView;
    .param p1, "x1"    # Lcom/aliyun/player/IPlayer$RotateMode;

    .line 25
    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setRotateModeInner(Lcom/aliyun/player/IPlayer$RotateMode;)V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 257
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 258
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 262
    :goto_0
    return-void
.end method

.method private saveToSdcard(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .line 209
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "imgFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 213
    .local v1, "fout":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 214
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 215
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 216
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 218
    sget-object v2, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 219
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 220
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 223
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 224
    :goto_1
    return-void
.end method

.method private setMirrorModeInner(Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 0
    .param p1, "mirrorMode"    # Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 186
    if-eqz p1, :cond_0

    .line 187
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 189
    :cond_0
    return-void
.end method

.method private setRotateModeInner(Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 0
    .param p1, "rotateMode"    # Lcom/aliyun/player/IPlayer$RotateMode;

    .line 198
    if-eqz p1, :cond_0

    .line 199
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 201
    :cond_0
    return-void
.end method

.method private setScaleModeInner(Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 0
    .param p1, "scaleMode"    # Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 96
    if-eqz p1, :cond_0

    .line 97
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 99
    :cond_0
    return-void
.end method

.method private updateViewParams()V
    .locals 8

    .line 103
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateViewParams  "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-boolean v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mDirectRender:Z

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_0

    .line 109
    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    :cond_0
    return-void

    .line 114
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    .line 120
    .local v0, "measuredWith":I
    iget-object v2, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    .line 122
    .local v2, "measuredHeight":I
    if-eqz v0, :cond_c

    if-nez v2, :cond_3

    goto/16 :goto_1

    .line 127
    :cond_3
    iget-object v3, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    invoke-virtual {p0, v3}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->rotateRenderView(Lcom/aliyun/player/IPlayer$RotateMode;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 128
    iget-object v3, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    invoke-virtual {v3}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    move-result v3

    int-to-float v3, v3

    .line 129
    .local v3, "viewRotation":F
    iget v4, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoRotate:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    float-to-int v4, v4

    .line 130
    .local v4, "rotation":I
    const/16 v5, 0x5a

    if-eq v4, v5, :cond_4

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_5

    .line 131
    :cond_4
    iget-object v5, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 132
    iget-object v5, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 139
    .end local v3    # "viewRotation":F
    .end local v4    # "rotation":I
    :cond_5
    iget-object v3, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    sget-object v4, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    if-ne v3, v4, :cond_6

    .line 140
    move v3, v0

    .line 141
    .local v3, "width":I
    move v4, v2

    .local v4, "height":I
    goto/16 :goto_0

    .line 142
    .end local v3    # "width":I
    .end local v4    # "height":I
    :cond_6
    iget-object v3, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    sget-object v4, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v3, v4, :cond_8

    .line 144
    move v3, v0

    .line 145
    .restart local v3    # "width":I
    move v4, v2

    .line 147
    .restart local v4    # "height":I
    iget v6, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    mul-int v6, v6, v4

    iget v7, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    mul-int v7, v7, v3

    if-le v6, v7, :cond_7

    .line 148
    int-to-float v6, v4

    mul-float v6, v6, v5

    iget v5, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    int-to-float v5, v5

    mul-float v6, v6, v5

    iget v5, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    int-to-float v5, v5

    div-float/2addr v6, v5

    float-to-int v3, v6

    goto :goto_0

    .line 149
    :cond_7
    iget v6, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    mul-int v6, v6, v4

    iget v7, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    mul-int v7, v7, v3

    if-ge v6, v7, :cond_a

    .line 150
    int-to-float v6, v3

    mul-float v6, v6, v5

    iget v5, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    int-to-float v5, v5

    mul-float v6, v6, v5

    iget v5, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    int-to-float v5, v5

    div-float/2addr v6, v5

    float-to-int v4, v6

    goto :goto_0

    .line 153
    .end local v3    # "width":I
    .end local v4    # "height":I
    :cond_8
    move v3, v0

    .line 154
    .restart local v3    # "width":I
    move v4, v2

    .line 156
    .restart local v4    # "height":I
    iget v6, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    mul-int v6, v6, v4

    iget v7, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    mul-int v7, v7, v3

    if-ge v6, v7, :cond_9

    .line 157
    int-to-float v6, v4

    mul-float v6, v6, v5

    iget v5, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    int-to-float v5, v5

    mul-float v6, v6, v5

    iget v5, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    int-to-float v5, v5

    div-float/2addr v6, v5

    float-to-int v3, v6

    goto :goto_0

    .line 158
    :cond_9
    iget v6, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    mul-int v6, v6, v4

    iget v7, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    mul-int v7, v7, v3

    if-le v6, v7, :cond_a

    .line 159
    int-to-float v6, v3

    mul-float v6, v6, v5

    iget v5, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    int-to-float v5, v5

    mul-float v6, v6, v5

    iget v5, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    int-to-float v5, v5

    div-float/2addr v6, v5

    float-to-int v4, v6

    .line 163
    :cond_a
    :goto_0
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 164
    .local v5, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 165
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 166
    const/16 v1, 0x11

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 168
    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v6, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    if-ne v1, v6, :cond_b

    .line 169
    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    :cond_b
    return-void

    .line 123
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_c
    :goto_1
    sget-object v1, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateViewParams \uff0cunknow parent height and width "

    invoke-static {v1, v3}, Lcom/cicada/player/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void

    .line 115
    .end local v0    # "measuredWith":I
    .end local v2    # "measuredHeight":I
    :cond_d
    :goto_2
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateViewParams \uff0cunknow videoheight and width "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method


# virtual methods
.method public attachView()V
    .locals 2

    .line 239
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    const-string v1, " attachView"

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v0, Lcom/aliyun/player/videoview/displayView/IDisplayView$7;

    invoke-direct {v0, p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$7;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    invoke-direct {p0, v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public detachView()V
    .locals 2

    .line 227
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    const-string v1, " detachView"

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v0, Lcom/aliyun/player/videoview/displayView/IDisplayView$6;

    invoke-direct {v0, p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$6;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    invoke-direct {p0, v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method protected abstract getRenderView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public initView()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->getRenderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    .line 46
    return-void
.end method

.method protected abstract mirrorRenderView(Lcom/aliyun/player/IPlayer$MirrorMode;)Z
.end method

.method public parentSizeChanged()V
    .locals 2

    .line 49
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    const-string v1, "parentSizeChanged  "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/aliyun/player/videoview/displayView/IDisplayView$1;

    invoke-direct {v0, p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$1;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    invoke-direct {p0, v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method protected abstract rotateRenderView(Lcom/aliyun/player/IPlayer$RotateMode;)Z
.end method

.method public setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 3
    .param p1, "mirrorMode"    # Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 174
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMirrorMode  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setMirrorModeInner(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    .line 177
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    new-instance v1, Lcom/aliyun/player/videoview/displayView/IDisplayView$5;

    invoke-direct {v1, p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView$5;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;Lcom/aliyun/player/IPlayer$MirrorMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 183
    return-void
.end method

.method public setOnViewStatusListener(Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;)V
    .locals 3
    .param p1, "onViewStatusListener"    # Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 285
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setOnViewStatusListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 287
    return-void
.end method

.method public setRenderFlag(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .line 59
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRenderFlag  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput-boolean p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mDirectRender:Z

    .line 61
    new-instance v0, Lcom/aliyun/player/videoview/displayView/IDisplayView$2;

    invoke-direct {v0, p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$2;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    invoke-direct {p0, v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method public setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 3
    .param p1, "rotateMode"    # Lcom/aliyun/player/IPlayer$RotateMode;

    .line 192
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRotateMode  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setRotateModeInner(Lcom/aliyun/player/IPlayer$RotateMode;)V

    .line 194
    invoke-direct {p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->updateViewParams()V

    .line 195
    return-void
.end method

.method public setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 3
    .param p1, "scaleMode"    # Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 85
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScaleMode  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setScaleModeInner(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    .line 87
    new-instance v0, Lcom/aliyun/player/videoview/displayView/IDisplayView$4;

    invoke-direct {v0, p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$4;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    invoke-direct {p0, v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method public abstract setSurfaceReuse(Z)V
.end method

.method public setVideoSize(III)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotate"    # I

    .line 71
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoSize  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \uff0c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    .line 73
    iput p2, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    .line 74
    iput p3, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoRotate:I

    .line 76
    new-instance v0, Lcom/aliyun/player/videoview/displayView/IDisplayView$3;

    invoke-direct {v0, p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$3;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    invoke-direct {p0, v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method protected abstract snapRenderView()Landroid/graphics/Bitmap;
.end method

.method public snapShot()Landroid/graphics/Bitmap;
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->snapRenderView()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
