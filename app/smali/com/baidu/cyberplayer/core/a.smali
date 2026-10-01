.class Lcom/baidu/cyberplayer/core/a;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/core/a$j;,
        Lcom/baidu/cyberplayer/core/a$l;,
        Lcom/baidu/cyberplayer/core/a$i;,
        Lcom/baidu/cyberplayer/core/a$h;,
        Lcom/baidu/cyberplayer/core/a$n;,
        Lcom/baidu/cyberplayer/core/a$b;,
        Lcom/baidu/cyberplayer/core/a$a;,
        Lcom/baidu/cyberplayer/core/a$e;,
        Lcom/baidu/cyberplayer/core/a$d;,
        Lcom/baidu/cyberplayer/core/a$g;,
        Lcom/baidu/cyberplayer/core/a$c;,
        Lcom/baidu/cyberplayer/core/a$f;,
        Lcom/baidu/cyberplayer/core/a$m;,
        Lcom/baidu/cyberplayer/core/a$k;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field private static final a:Lcom/baidu/cyberplayer/core/a$j;

.field private static a:[B


# instance fields
.field private a:I

.field private a:Lcom/baidu/cyberplayer/core/a$e;

.field private a:Lcom/baidu/cyberplayer/core/a$f;

.field private a:Lcom/baidu/cyberplayer/core/a$g;

.field private a:Lcom/baidu/cyberplayer/core/a$i;

.field private a:Lcom/baidu/cyberplayer/core/a$k;

.field private a:Lcom/baidu/cyberplayer/core/a$m;

.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/cyberplayer/core/a;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:I

.field private b:Z

.field private c:I

.field private c:Z

.field private d:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2085
    new-instance v0, Lcom/baidu/cyberplayer/core/a$j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/cyberplayer/core/a$j;-><init>(Lcom/baidu/cyberplayer/core/a$1;)V

    sput-object v0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$j;

    .line 2099
    sput-object v1, Lcom/baidu/cyberplayer/core/a;->a:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 220
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Z

    .line 563
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/a;->b:Z

    .line 2087
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Ljava/lang/ref/WeakReference;

    .line 221
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/a;->a()V

    .line 222
    sget-object v0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$j;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/a$j;->a(Landroid/content/Context;)V

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 230
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 562
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/baidu/cyberplayer/core/a;->a:Z

    .line 563
    iput-boolean p2, p0, Lcom/baidu/cyberplayer/core/a;->b:Z

    .line 2087
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/baidu/cyberplayer/core/a;->a:Ljava/lang/ref/WeakReference;

    .line 231
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/a;->a()V

    .line 232
    sget-object p2, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$j;

    invoke-virtual {p2, p1}, Lcom/baidu/cyberplayer/core/a$j;->a(Landroid/content/Context;)V

    .line 233
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/a;)I
    .locals 0

    .line 171
    iget p0, p0, Lcom/baidu/cyberplayer/core/a;->d:I

    return p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/a;)Lcom/baidu/cyberplayer/core/a$e;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$e;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/a;)Lcom/baidu/cyberplayer/core/a$f;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$f;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/a;)Lcom/baidu/cyberplayer/core/a$g;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$g;

    return-object p0
.end method

.method static synthetic a()Lcom/baidu/cyberplayer/core/a$j;
    .locals 1

    .line 171
    sget-object v0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$j;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/a;)Lcom/baidu/cyberplayer/core/a$k;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$k;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/a;)Lcom/baidu/cyberplayer/core/a$m;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$m;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 252
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/a;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 253
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 261
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/a;)Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/baidu/cyberplayer/core/a;->d:Z

    return p0
.end method

.method static synthetic a()[B
    .locals 1

    .line 171
    sget-object v0, Lcom/baidu/cyberplayer/core/a;->a:[B

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/core/a;)I
    .locals 0

    .line 171
    iget p0, p0, Lcom/baidu/cyberplayer/core/a;->c:I

    return p0
.end method

.method private b()V
    .locals 2

    .line 1957
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    if-nez v0, :cond_0

    .line 1961
    return-void

    .line 1958
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 238
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/core/a$i;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 245
    iput-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    .line 246
    nop

    .line 247
    return-void

    .line 244
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 245
    iput-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    throw v1
.end method

.method public getDebugFlags()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/baidu/cyberplayer/core/a;->c:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/a;->d:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a$i;->a()I

    move-result v0

    return v0

    .line 544
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 646
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 647
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/a;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$m;

    if-eqz v0, :cond_3

    .line 648
    nop

    .line 649
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a$i;->a()I

    move-result v0

    goto :goto_0

    .line 649
    :cond_0
    const/4 v0, 0x1

    .line 652
    :goto_0
    iget-object v2, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    if-nez v2, :cond_1

    .line 653
    new-instance v2, Lcom/baidu/cyberplayer/core/a$i;

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/a;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/baidu/cyberplayer/core/a$i;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    .line 655
    :cond_1
    if-eq v0, v1, :cond_2

    .line 656
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/core/a$i;->a(I)V

    .line 659
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a$i;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    goto :goto_1

    .line 660
    :catch_0
    move-exception v0

    .line 661
    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    .line 664
    :cond_3
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/a;->c:Z

    .line 665
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a$i;->f()V

    .line 677
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    .line 679
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/a;->c:Z

    .line 680
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 681
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a$i;->d()V

    .line 614
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a$i;->e()V

    .line 625
    :cond_0
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 636
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/a$i;->a(Ljava/lang/Runnable;)V

    .line 638
    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a$i;->a()V

    .line 556
    :cond_0
    return-void
.end method

.method public setCheckBackupSnapShot([B)V
    .locals 0
    .param p1, "backupSnapShot"    # [B

    .line 559
    sput-object p1, Lcom/baidu/cyberplayer/core/a;->a:[B

    .line 560
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .param p1, "debugFlags"    # I

    .line 292
    iput p1, p0, Lcom/baidu/cyberplayer/core/a;->c:I

    .line 293
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .line 467
    new-instance v0, Lcom/baidu/cyberplayer/core/a$b;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1    # "redSize":I
    .end local p2    # "greenSize":I
    .end local p3    # "blueSize":I
    .end local p4    # "alphaSize":I
    .end local p5    # "depthSize":I
    .end local p6    # "stencilSize":I
    .local v2, "redSize":I
    .local v3, "greenSize":I
    .local v4, "blueSize":I
    .local v5, "alphaSize":I
    .local v6, "depthSize":I
    .local v7, "stencilSize":I
    invoke-direct/range {v0 .. v7}, Lcom/baidu/cyberplayer/core/a$b;-><init>(Lcom/baidu/cyberplayer/core/a;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/core/a;->setEGLConfigChooser(Lcom/baidu/cyberplayer/core/a$e;)V

    .line 469
    return-void
.end method

.method public setEGLConfigChooser(Lcom/baidu/cyberplayer/core/a$e;)V
    .locals 0
    .param p1, "configChooser"    # Lcom/baidu/cyberplayer/core/a$e;

    .line 432
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/a;->b()V

    .line 433
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$e;

    .line 434
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .param p1, "needDepth"    # Z

    .line 450
    new-instance v0, Lcom/baidu/cyberplayer/core/a$n;

    invoke-direct {v0, p0, p1}, Lcom/baidu/cyberplayer/core/a$n;-><init>(Lcom/baidu/cyberplayer/core/a;Z)V

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/core/a;->setEGLConfigChooser(Lcom/baidu/cyberplayer/core/a$e;)V

    .line 451
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .line 505
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/a;->b()V

    .line 506
    iput p1, p0, Lcom/baidu/cyberplayer/core/a;->d:I

    .line 507
    return-void
.end method

.method public setEGLContextFactory(Lcom/baidu/cyberplayer/core/a$f;)V
    .locals 0
    .param p1, "factory"    # Lcom/baidu/cyberplayer/core/a$f;

    .line 401
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/a;->b()V

    .line 402
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$f;

    .line 403
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/baidu/cyberplayer/core/a$g;)V
    .locals 0
    .param p1, "factory"    # Lcom/baidu/cyberplayer/core/a$g;

    .line 415
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/a;->b()V

    .line 416
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$g;

    .line 417
    return-void
.end method

.method public setGLWrapper(Lcom/baidu/cyberplayer/core/a$k;)V
    .locals 0
    .param p1, "glWrapper"    # Lcom/baidu/cyberplayer/core/a$k;

    .line 278
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$k;

    .line 279
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0
    .param p1, "preserveOnPause"    # Z

    .line 325
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/core/a;->d:Z

    .line 326
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .line 528
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/a$i;->a(I)V

    .line 530
    :cond_0
    return-void
.end method

.method public setRenderer(Lcom/baidu/cyberplayer/core/a$m;)V
    .locals 3
    .param p1, "renderer"    # Lcom/baidu/cyberplayer/core/a$m;

    .line 365
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/a;->b()V

    .line 366
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$e;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lcom/baidu/cyberplayer/core/a$n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/cyberplayer/core/a$n;-><init>(Lcom/baidu/cyberplayer/core/a;Z)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$e;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$f;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 370
    new-instance v0, Lcom/baidu/cyberplayer/core/a$c;

    invoke-direct {v0, p0, v1}, Lcom/baidu/cyberplayer/core/a$c;-><init>(Lcom/baidu/cyberplayer/core/a;Lcom/baidu/cyberplayer/core/a$1;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$f;

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$g;

    if-nez v0, :cond_2

    .line 373
    new-instance v0, Lcom/baidu/cyberplayer/core/a$d;

    invoke-direct {v0, v1}, Lcom/baidu/cyberplayer/core/a$d;-><init>(Lcom/baidu/cyberplayer/core/a$1;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$g;

    .line 375
    :cond_2
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$m;

    .line 376
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    if-nez v0, :cond_3

    .line 377
    new-instance v0, Lcom/baidu/cyberplayer/core/a$i;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/a;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/baidu/cyberplayer/core/a$i;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a$i;->start()V

    .line 381
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Z

    if-eqz v0, :cond_4

    .line 382
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a$i;->b()V

    .line 385
    :cond_4
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/a;->b:Z

    if-eqz v0, :cond_5

    .line 386
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    iget v1, p0, Lcom/baidu/cyberplayer/core/a;->a:I

    iget v2, p0, Lcom/baidu/cyberplayer/core/a;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/cyberplayer/core/a$i;->a(II)V

    .line 389
    :cond_5
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/a;->b:Z

    .line 597
    iput p3, p0, Lcom/baidu/cyberplayer/core/a;->a:I

    .line 598
    iput p4, p0, Lcom/baidu/cyberplayer/core/a;->b:I

    .line 600
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    invoke-virtual {v0, p3, p4}, Lcom/baidu/cyberplayer/core/a$i;->a(II)V

    .line 603
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 572
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a$i;->b()V

    .line 575
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Z

    .line 576
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 584
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Lcom/baidu/cyberplayer/core/a$i;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a$i;->c()V

    .line 587
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/a;->a:Z

    .line 588
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/a;->b:Z

    .line 589
    return-void
.end method
