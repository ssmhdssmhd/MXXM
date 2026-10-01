.class public Lcom/aliyun/player/nativeclass/DisplayViewHelper;
.super Ljava/lang/Object;
.source "DisplayViewHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

.field private mBackgroundColor:I

.field private mClearScreenView:Landroid/view/View;

.field private mDirectRender:Z

.field private mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

.field private mListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

.field private mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

.field private mOldDisplayViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/player/videoview/displayView/IDisplayView;",
            ">;"
        }
    .end annotation
.end field

.field private mReuseSurface:Z

.field private mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

.field private mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

.field private mVideoHeight:I

.field private mVideoRotate:I

.field private mVideoWidth:I

.field private oldHeight:I

.field private oldWith:I

.field private surfaceValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AliDisplayView_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/aliyun/player/videoview/AliDisplayView;)V
    .locals 3
    .param p1, "displayView"    # Lcom/aliyun/player/videoview/AliDisplayView;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 32
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    .line 66
    const/4 v1, -0x1

    iput v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->oldWith:I

    .line 67
    iput v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->oldHeight:I

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->surfaceValid:Z

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mOldDisplayViews:Ljava/util/List;

    .line 167
    const/high16 v2, -0x1000000

    iput v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mBackgroundColor:I

    .line 180
    iput v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoWidth:I

    .line 181
    iput v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoHeight:I

    .line 182
    iput v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoRotate:I

    .line 199
    sget-object v2, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    iput-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 211
    sget-object v2, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_NONE:Lcom/aliyun/player/IPlayer$MirrorMode;

    iput-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 223
    sget-object v2, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_0:Lcom/aliyun/player/IPlayer$RotateMode;

    iput-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 235
    iput-boolean v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDirectRender:Z

    .line 333
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mReuseSurface:Z

    .line 35
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 37
    invoke-direct {p0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->init()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/AliDisplayView;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 24
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 24
    iget v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->oldWith:I

    return v0
.end method

.method static synthetic access$102(Lcom/aliyun/player/nativeclass/DisplayViewHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/DisplayViewHelper;
    .param p1, "x1"    # I

    .line 24
    iput p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->oldWith:I

    return p1
.end method

.method static synthetic access$200(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 24
    iget v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->oldHeight:I

    return v0
.end method

.method static synthetic access$202(Lcom/aliyun/player/nativeclass/DisplayViewHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/DisplayViewHelper;
    .param p1, "x1"    # I

    .line 24
    iput p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->oldHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 24
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Lcom/aliyun/player/videoview/displayView/IDisplayView;)Lcom/aliyun/player/videoview/displayView/IDisplayView;
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/DisplayViewHelper;
    .param p1, "x1"    # Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 24
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    return-object p1
.end method

.method static synthetic access$402(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/DisplayViewHelper;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->surfaceValid:Z

    return p1
.end method

.method static synthetic access$500(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 24
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 24
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 24
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mOldDisplayViews:Ljava/util/List;

    return-object v0
.end method

.method private init()V
    .locals 4

    .line 41
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-virtual {v1}, Lcom/aliyun/player/videoview/AliDisplayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    .line 42
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 45
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/aliyun/player/videoview/AliDisplayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    const-string v1, "#FF000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 48
    .local v1, "color":I
    invoke-virtual {p0, v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setBackgroundColor(I)V

    .line 50
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-virtual {v2}, Lcom/aliyun/player/videoview/AliDisplayView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;

    invoke-direct {v3, p0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;-><init>(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 64
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 340
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 341
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 345
    :goto_0
    return-void
.end method


# virtual methods
.method clearScreen()V
    .locals 2

    .line 249
    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    const-string v1, "clearScreen "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;

    invoke-direct {v0, p0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;-><init>(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)V

    invoke-direct {p0, v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method

.method declared-synchronized createDisplayView(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;Z)V
    .locals 8
    .param p1, "type"    # Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;
    .param p2, "mDirectRender"    # Z

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-virtual {v0}, Lcom/aliyun/player/videoview/AliDisplayView;->getPreferDisplayViewType()Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    move-result-object v0

    .line 82
    .local v0, "displayViewType":Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;
    if-eqz p1, :cond_0

    sget-object v1, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->Either:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    if-eq p1, v1, :cond_0

    .line 83
    move-object v0, p1

    .line 86
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/DisplayViewHelper;
    :cond_0
    move-object v1, v0

    .line 88
    .local v1, "finalDisplayViewType":Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 90
    .local v2, "oldDisplayView":Lcom/aliyun/player/videoview/displayView/IDisplayView;
    sget-object v3, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->TextureView:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    if-ne v1, v3, :cond_1

    .line 91
    new-instance v3, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    iget-object v4, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-direct {v3, v4}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;-><init>(Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 92
    iget-object v3, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-virtual {v3}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->initView()V

    goto :goto_0

    .line 94
    :cond_1
    new-instance v3, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;

    iget-object v4, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-direct {v3, v4}, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;-><init>(Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 95
    iget-object v3, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-virtual {v3}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->initView()V

    .line 98
    :goto_0
    iget-object v3, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    if-eqz v3, :cond_2

    .line 99
    iget-object v3, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    invoke-interface {v3, v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onViewCreated(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)V

    .line 102
    :cond_2
    iget-object v3, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-virtual {v3}, Lcom/aliyun/player/videoview/AliDisplayView;->getOnViewStatusListener()Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    move-result-object v3

    .line 103
    .local v3, "mOutOnViewStatusListener":Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;
    if-eqz v3, :cond_3

    .line 104
    invoke-interface {v3, v1}, Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;->onViewCreated(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)V

    .line 107
    :cond_3
    iget-object v4, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    if-eqz v4, :cond_4

    .line 108
    iget-object v4, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    new-instance v5, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;

    invoke-direct {v5, p0, v3}, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;-><init>(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;)V

    invoke-virtual {v4, v5}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setOnViewStatusListener(Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;)V

    .line 151
    iget-object v4, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    iget-boolean v5, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mReuseSurface:Z

    invoke-virtual {v4, v5}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setSurfaceReuse(Z)V

    .line 152
    invoke-virtual {p0, p2}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setRenderFlagChanged(Z)V

    .line 153
    iget-object v4, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    iget v5, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoWidth:I

    iget v6, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoHeight:I

    iget v7, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoRotate:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setVideoSize(III)V

    .line 154
    iget-object v4, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    iget-object v5, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

    invoke-virtual {v4, v5}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    .line 155
    iget-object v4, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    iget-object v5, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    invoke-virtual {v4, v5}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V

    .line 156
    iget-object v4, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    iget-object v5, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    invoke-virtual {v4, v5}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    .line 157
    iget-object v4, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-virtual {v4}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->attachView()V

    .line 159
    if-eqz v2, :cond_4

    .line 160
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setOnViewStatusListener(Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;)V

    .line 161
    iget-object v4, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mOldDisplayViews:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_4
    monitor-exit p0

    return-void

    .line 80
    .end local v0    # "displayViewType":Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;
    .end local v1    # "finalDisplayViewType":Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;
    .end local v2    # "oldDisplayView":Lcom/aliyun/player/videoview/displayView/IDisplayView;
    .end local v3    # "mOutOnViewStatusListener":Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;
    .end local p1    # "type":Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;
    .end local p2    # "mDirectRender":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method firstFrameRender(Z)V
    .locals 3
    .param p1, "hasVideo"    # Z

    .line 272
    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstFrameRender , hasVideo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;

    invoke-direct {v0, p0, p1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;-><init>(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Z)V

    invoke-direct {p0, v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method

.method needUpdateView(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)Z
    .locals 1
    .param p1, "type"    # Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method setBackgroundColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 170
    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackgroundColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iput p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mBackgroundColor:I

    .line 173
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/videoview/AliDisplayView;->setBackgroundColor(I)V

    .line 178
    return-void
.end method

.method setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 3
    .param p1, "mirrorMode"    # Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 214
    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMirrorMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 217
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    .line 221
    :cond_0
    return-void
.end method

.method setOnViewStatusListener(Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 336
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 337
    return-void
.end method

.method setRenderFlagChanged(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .line 238
    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRenderFlagChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iput-boolean p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDirectRender:Z

    .line 241
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setRenderFlag(Z)V

    .line 245
    :cond_0
    return-void
.end method

.method setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 3
    .param p1, "rotateMode"    # Lcom/aliyun/player/IPlayer$RotateMode;

    .line 226
    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRotateMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 229
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V

    .line 233
    :cond_0
    return-void
.end method

.method setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 3
    .param p1, "scaleMode"    # Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 202
    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScaleMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 205
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    .line 209
    :cond_0
    return-void
.end method

.method public setSurfaceReuse(Z)V
    .locals 1
    .param p1, "reuse"    # Z

    .line 350
    iput-boolean p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mReuseSurface:Z

    .line 351
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setSurfaceReuse(Z)V

    .line 354
    :cond_0
    return-void
.end method

.method setVideoSize(III)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotate"    # I

    .line 186
    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iput p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoWidth:I

    .line 189
    iput p2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoHeight:I

    .line 190
    iput p3, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoRotate:I

    .line 193
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setVideoSize(III)V

    .line 197
    :cond_0
    return-void
.end method

.method snapshot()Landroid/graphics/Bitmap;
    .locals 9

    .line 291
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 292
    return-object v1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-virtual {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->snapShot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 296
    .local v0, "childContent":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 297
    return-object v1

    .line 300
    :cond_1
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-virtual {v2}, Lcom/aliyun/player/videoview/AliDisplayView;->buildDrawingCache()V

    .line 301
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-virtual {v2}, Lcom/aliyun/player/videoview/AliDisplayView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 302
    .local v2, "layout":Landroid/graphics/Bitmap;
    if-nez v2, :cond_2

    .line 303
    return-object v1

    .line 306
    :cond_2
    nop

    .line 307
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 306
    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 309
    .local v1, "screenshot":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 310
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 311
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 313
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    .line 314
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v6

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 313
    invoke-virtual {v3, v0, v4, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 316
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 318
    iget-object v4, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 319
    iget-object v4, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->buildDrawingCache()V

    .line 320
    iget-object v4, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 321
    .local v4, "clearScreenShot":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_3

    .line 322
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, v4, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 323
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 327
    .end local v4    # "clearScreenShot":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 328
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 330
    return-object v1
.end method
