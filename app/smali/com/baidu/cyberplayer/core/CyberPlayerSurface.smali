.class public Lcom/baidu/cyberplayer/core/CyberPlayerSurface;
.super Lcom/baidu/cyberplayer/core/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;
    }
.end annotation


# static fields
.field public static final JellyBean:I = 0x10

.field public static final TAG:Ljava/lang/String; = "CyberPlayerSurface"

.field private static e:I


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/view/Surface;

.field a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;

.field a:Lcom/baidu/cyberplayer/core/d;

.field a:Lcom/baidu/cyberplayer/core/e;

.field private a:Ljava/nio/ByteBuffer;

.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field public mGL20Support:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x1

    sput v0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/a;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Ljava/nio/ByteBuffer;

    .line 49
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a(Landroid/content/Context;)Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/baidu/cyberplayer/core/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Ljava/nio/ByteBuffer;

    .line 57
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a(Landroid/content/Context;)Z

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:I

    return p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 1

    .line 65
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 67
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p1

    .line 69
    iget p1, p1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v0, 0x20000

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->mGL20Support:Z

    .line 70
    iget-boolean p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->mGL20Support:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->b:I

    return p0
.end method

.method static synthetic c(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->c:I

    return p0
.end method


# virtual methods
.method public OnSurfaceDestroyed()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/e;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/e;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/e;->b()V

    .line 242
    :cond_0
    return-void
.end method

.method public checkShouldCreatTexture()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/e;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/e;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/e;->a()V

    .line 247
    :cond_0
    return-void
.end method

.method public createVPTex(III)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 153
    if-lez p3, :cond_0

    const/16 v0, 0x12c

    if-le p1, v0, :cond_0

    .line 154
    shr-int/lit8 p1, p1, 0x1

    .line 155
    shr-int/lit8 p2, p2, 0x1

    .line 157
    :cond_0
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    shl-int/lit8 v0, v0, 0x5

    .line 158
    mul-int/lit8 v1, p2, 0x2

    .line 159
    nop

    .line 160
    nop

    .line 162
    mul-int v0, v0, v1

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Ljava/nio/ByteBuffer;

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    :goto_0
    iput p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:I

    .line 170
    iput p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->b:I

    .line 172
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->d:I

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VidWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",VidHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CyberPlayerSurface"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_1
    new-instance v0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$1;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$1;-><init>(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)V

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->queueEvent(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method public destroyByteBuffer()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Ljava/nio/ByteBuffer;

    .line 104
    :cond_0
    return-void
.end method

.method public destroyVPTex()V
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->destroyByteBuffer()V

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:I

    .line 194
    iput v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->b:I

    .line 201
    return-void
.end method

.method public bridge synthetic getDebugFlags()I
    .locals 1

    .line 24
    invoke-super {p0}, Lcom/baidu/cyberplayer/core/a;->getDebugFlags()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPreserveEGLContextOnPause()Z
    .locals 1

    .line 24
    invoke-super {p0}, Lcom/baidu/cyberplayer/core/a;->getPreserveEGLContextOnPause()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getRenderMode()I
    .locals 1

    .line 24
    invoke-super {p0}, Lcom/baidu/cyberplayer/core/a;->getRenderMode()I

    move-result v0

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Landroid/view/Surface;

    return-object v0
.end method

.method public getVPBuf()Ljava/nio/ByteBuffer;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public init()V
    .locals 3

    .line 74
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Z

    if-nez v0, :cond_2

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Z

    .line 76
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()I

    move-result v1

    sput v1, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->e:I

    .line 77
    sget v1, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->e:I

    const/4 v2, 0x2

    if-eq v1, v0, :cond_0

    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->e:I

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->setEGLContextClientVersion(I)V

    .line 81
    new-instance v0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;-><init>(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;

    .line 82
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->setRenderer(Lcom/baidu/cyberplayer/core/a$m;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->mGL20Support:Z

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->setEGLContextClientVersion(I)V

    .line 85
    new-instance v0, Lcom/baidu/cyberplayer/core/e;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/cyberplayer/core/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/e;

    .line 86
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/e;

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->setRenderer(Lcom/baidu/cyberplayer/core/a$m;)V

    goto :goto_0

    .line 88
    :cond_1
    new-instance v0, Lcom/baidu/cyberplayer/core/d;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/cyberplayer/core/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/d;

    .line 89
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/d;

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->setRenderer(Lcom/baidu/cyberplayer/core/a$m;)V

    .line 91
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->setRenderMode(I)V

    .line 92
    iput v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->b:I

    iput v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:I

    .line 93
    iput v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->c:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Ljava/nio/ByteBuffer;

    .line 96
    :cond_2
    return-void
.end method

.method public onFrameUpdate()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a()V

    .line 131
    :cond_0
    return-void
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .line 24
    invoke-super {p0}, Lcom/baidu/cyberplayer/core/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 229
    invoke-super {p0}, Lcom/baidu/cyberplayer/core/a;->onResume()V

    .line 230
    return-void
.end method

.method public bridge synthetic queueEvent(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Runnable;

    .line 24
    invoke-super {p0, p1}, Lcom/baidu/cyberplayer/core/a;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public recycle()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;

    .line 236
    :cond_0
    return-void
.end method

.method public bridge synthetic requestRender()V
    .locals 0

    .line 24
    invoke-super {p0}, Lcom/baidu/cyberplayer/core/a;->requestRender()V

    return-void
.end method

.method public setBackUpSnapShot([B)V
    .locals 0
    .param p1, "backUpSnapShot"    # [B

    .line 250
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->setCheckBackupSnapShot([B)V

    .line 251
    return-void
.end method

.method public bridge synthetic setCheckBackupSnapShot([B)V
    .locals 0
    .param p1, "x0"    # [B

    .line 24
    invoke-super {p0, p1}, Lcom/baidu/cyberplayer/core/a;->setCheckBackupSnapShot([B)V

    return-void
.end method

.method public bridge synthetic setDebugFlags(I)V
    .locals 0
    .param p1, "x0"    # I

    .line 24
    invoke-super {p0, p1}, Lcom/baidu/cyberplayer/core/a;->setDebugFlags(I)V

    return-void
.end method

.method public setDisplayMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 134
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()I

    move-result v0

    sput v0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->e:I

    .line 135
    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->e:I

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(I)V

    goto :goto_0

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->mGL20Support:Z

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/e;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/e;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/e;->a(I)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/d;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/d;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/d;->a(I)V

    .line 150
    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic setEGLConfigChooser(IIIIII)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I

    .line 24
    invoke-super/range {p0 .. p6}, Lcom/baidu/cyberplayer/core/a;->setEGLConfigChooser(IIIIII)V

    return-void
.end method

.method public bridge synthetic setEGLConfigChooser(Lcom/baidu/cyberplayer/core/a$e;)V
    .locals 0
    .param p1, "x0"    # Lcom/baidu/cyberplayer/core/a$e;

    .line 24
    invoke-super {p0, p1}, Lcom/baidu/cyberplayer/core/a;->setEGLConfigChooser(Lcom/baidu/cyberplayer/core/a$e;)V

    return-void
.end method

.method public bridge synthetic setEGLConfigChooser(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .line 24
    invoke-super {p0, p1}, Lcom/baidu/cyberplayer/core/a;->setEGLConfigChooser(Z)V

    return-void
.end method

.method public bridge synthetic setEGLContextClientVersion(I)V
    .locals 0
    .param p1, "x0"    # I

    .line 24
    invoke-super {p0, p1}, Lcom/baidu/cyberplayer/core/a;->setEGLContextClientVersion(I)V

    return-void
.end method

.method public bridge synthetic setEGLContextFactory(Lcom/baidu/cyberplayer/core/a$f;)V
    .locals 0
    .param p1, "x0"    # Lcom/baidu/cyberplayer/core/a$f;

    .line 24
    invoke-super {p0, p1}, Lcom/baidu/cyberplayer/core/a;->setEGLContextFactory(Lcom/baidu/cyberplayer/core/a$f;)V

    return-void
.end method

.method public bridge synthetic setEGLWindowSurfaceFactory(Lcom/baidu/cyberplayer/core/a$g;)V
    .locals 0
    .param p1, "x0"    # Lcom/baidu/cyberplayer/core/a$g;

    .line 24
    invoke-super {p0, p1}, Lcom/baidu/cyberplayer/core/a;->setEGLWindowSurfaceFactory(Lcom/baidu/cyberplayer/core/a$g;)V

    return-void
.end method

.method public bridge synthetic setGLWrapper(Lcom/baidu/cyberplayer/core/a$k;)V
    .locals 0
    .param p1, "x0"    # Lcom/baidu/cyberplayer/core/a$k;

    .line 24
    invoke-super {p0, p1}, Lcom/baidu/cyberplayer/core/a;->setGLWrapper(Lcom/baidu/cyberplayer/core/a$k;)V

    return-void
.end method

.method public bridge synthetic setPreserveEGLContextOnPause(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .line 24
    invoke-super {p0, p1}, Lcom/baidu/cyberplayer/core/a;->setPreserveEGLContextOnPause(Z)V

    return-void
.end method

.method public bridge synthetic setRenderMode(I)V
    .locals 0
    .param p1, "x0"    # I

    .line 24
    invoke-super {p0, p1}, Lcom/baidu/cyberplayer/core/a;->setRenderMode(I)V

    return-void
.end method

.method public bridge synthetic setRenderer(Lcom/baidu/cyberplayer/core/a$m;)V
    .locals 0
    .param p1, "x0"    # Lcom/baidu/cyberplayer/core/a$m;

    .line 24
    invoke-super {p0, p1}, Lcom/baidu/cyberplayer/core/a;->setRenderer(Lcom/baidu/cyberplayer/core/a$m;)V

    return-void
.end method

.method public setVideoDims(IIILjava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Ljava/nio/ByteBuffer;

    .line 109
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;

    invoke-virtual {v1, p1, p2}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(II)V

    .line 112
    :cond_0
    add-int/lit8 v1, p1, 0x1f

    shr-int/lit8 v1, v1, 0x5

    shl-int/lit8 v1, v1, 0x5

    .line 113
    mul-int/lit8 v2, p2, 0x2

    .line 114
    if-eqz p4, :cond_1

    .line 115
    iput-object p4, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Ljava/nio/ByteBuffer;

    .line 116
    return-void

    .line 119
    :cond_1
    mul-int v1, v1, v2

    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    :goto_0
    return-void
.end method

.method public bridge synthetic surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "x0"    # Landroid/view/SurfaceHolder;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/cyberplayer/core/a;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    return-void
.end method

.method public bridge synthetic surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/SurfaceHolder;

    .line 24
    invoke-super {p0, p1}, Lcom/baidu/cyberplayer/core/a;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public bridge synthetic surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/SurfaceHolder;

    .line 24
    invoke-super {p0, p1}, Lcom/baidu/cyberplayer/core/a;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public updateVPTex(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 204
    iput p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->c:I

    .line 205
    new-instance v0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$2;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$2;-><init>(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)V

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->queueEvent(Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method
