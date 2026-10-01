.class Lcom/baidu/cyberplayer/core/CyberPlayerCore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;,
        Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;,
        Lcom/baidu/cyberplayer/core/CyberPlayerCore$g;,
        Lcom/baidu/cyberplayer/core/CyberPlayerCore$f;,
        Lcom/baidu/cyberplayer/core/CyberPlayerCore$m;,
        Lcom/baidu/cyberplayer/core/CyberPlayerCore$l;,
        Lcom/baidu/cyberplayer/core/CyberPlayerCore$i;,
        Lcom/baidu/cyberplayer/core/CyberPlayerCore$h;,
        Lcom/baidu/cyberplayer/core/CyberPlayerCore$c;,
        Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;,
        Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;,
        Lcom/baidu/cyberplayer/core/CyberPlayerCore$j;,
        Lcom/baidu/cyberplayer/core/CyberPlayerCore$k;,
        Lcom/baidu/cyberplayer/core/CyberPlayerCore$a;,
        Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;
    }
.end annotation


# static fields
.field private static a:F

.field private static a:J

.field private static a:Landroid/content/ContentValues;

.field private static a:Landroid/media/AudioTrack;

.field private static a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;

.field private static a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

.field private static a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

.field private static a:Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;

.field private static final a:Ljava/lang/Object;

.field private static a:Ljava/lang/String;

.field private static a:Ljava/lang/Thread;

.field public static a:Z

.field private static a:[B

.field private static a:[I

.field private static a:[Ljava/lang/String;

.field private static b:I

.field private static final b:Ljava/lang/Object;

.field private static b:Ljava/lang/String;

.field private static b:Ljava/nio/ByteBuffer;

.field private static c:I

.field private static final c:Ljava/lang/Object;

.field private static c:Ljava/lang/String;

.field private static d:I

.field private static final d:Ljava/lang/Object;

.field private static d:Ljava/lang/String;

.field private static d:Z

.field private static e:I

.field private static final e:Ljava/lang/Object;

.field private static e:Ljava/lang/String;

.field private static e:Z

.field private static volatile f:I

.field private static final f:Ljava/lang/Object;

.field private static f:Z

.field private static volatile g:I

.field private static final g:Ljava/lang/Object;

.field private static g:Ljava/lang/String;

.field private static volatile h:I

.field private static final h:Ljava/lang/Object;

.field private static h:Ljava/lang/String;

.field private static volatile i:I

.field private static final i:Ljava/lang/Object;

.field private static i:Ljava/lang/String;

.field private static volatile i:Z

.field private static j:I

.field private static final j:Ljava/lang/Object;

.field private static j:Ljava/lang/String;

.field private static j:Z

.field private static k:Ljava/lang/Object;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field public static mNativeContext:Landroid/content/Context;

.field private static n:I

.field private static n:Ljava/lang/String;


# instance fields
.field public a:I

.field private a:Landroid/os/HandlerThread;

.field private a:Landroid/os/PowerManager$WakeLock;

.field private a:Landroid/view/SurfaceHolder$Callback;

.field private a:Landroid/view/SurfaceHolder;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$c;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$f;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$g;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$h;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$i;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$j;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$k;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$l;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$m;

.field public a:Ljava/nio/ByteBuffer;

.field private b:J

.field private b:Ljava/lang/Thread;

.field private b:Z

.field private c:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e:Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:Ljava/lang/Object;

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Ljava/lang/Object;

    .line 128
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 131
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;

    .line 133
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/nio/ByteBuffer;

    .line 137
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sput-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/content/ContentValues;

    .line 147
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/lang/String;

    .line 149
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/lang/String;

    .line 150
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:Ljava/lang/String;

    .line 151
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Ljava/lang/String;

    .line 152
    const-string v1, "/mnt/sdcard/iqiyip2pcache"

    sput-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e:Ljava/lang/String;

    .line 153
    const/4 v1, 0x0

    sput-boolean v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Z

    .line 154
    const/4 v2, 0x1

    sput-boolean v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e:Z

    .line 155
    sput-boolean v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:Z

    .line 158
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:Ljava/lang/String;

    .line 159
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:Ljava/lang/String;

    .line 160
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:[I

    .line 161
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:[Ljava/lang/String;

    .line 163
    const-string v3, ""

    sput-object v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:Ljava/lang/String;

    .line 176
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:Ljava/lang/Object;

    .line 177
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/lang/Thread;

    .line 178
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/media/AudioTrack;

    .line 183
    sput v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:I

    .line 184
    sput v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:I

    .line 185
    sput v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:I

    .line 187
    sput v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e:I

    .line 188
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:J

    .line 189
    const/4 v4, 0x0

    sput v4, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:F

    .line 192
    sput v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:I

    .line 193
    sput v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:I

    .line 194
    sput v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:I

    .line 195
    sput v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:I

    .line 196
    sput v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:I

    .line 198
    sput-boolean v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:Z

    .line 199
    sput-boolean v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Z

    .line 201
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->mNativeContext:Landroid/content/Context;

    .line 202
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Ljava/lang/String;

    .line 203
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:Ljava/lang/String;

    .line 205
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->l:Ljava/lang/String;

    .line 206
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->m:Ljava/lang/String;

    .line 208
    sget-object v4, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sput-object v4, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    .line 212
    sput-object v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:Ljava/lang/String;

    .line 224
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:[B

    .line 229
    sput-boolean v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Z

    .line 759
    sput v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/view/SurfaceHolder;

    .line 130
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Z

    .line 132
    iput-boolean v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:Z

    .line 157
    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/os/PowerManager$WakeLock;

    .line 181
    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/lang/Thread;

    .line 210
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:J

    .line 753
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:I

    .line 2021
    new-instance v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$1;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$1;-><init>(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/view/SurfaceHolder$Callback;

    .line 270
    sput-object p1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->mNativeContext:Landroid/content/Context;

    .line 271
    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/baidu/cyberplayer/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public static ReceiverValue_callback(II)I
    .locals 8
    .param p0, "iGet"    # I
    .param p1, "iIndex"    # I

    .line 2261
    const/high16 v0, 0xf000000

    const v1, 0xfff000

    const/16 v2, 0xc8

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_a

    .line 2431
    :pswitch_1
    const/16 v0, 0x8

    invoke-static {v0, p0, v4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c(III)V

    .line 2432
    goto/16 :goto_a

    .line 2428
    :pswitch_2
    sput p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:I

    .line 2429
    goto/16 :goto_a

    .line 2425
    :pswitch_3
    const/16 v0, 0x353

    invoke-static {v2, v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c(III)V

    .line 2426
    goto/16 :goto_a

    .line 2422
    :pswitch_4
    const/16 v0, 0x352

    invoke-static {v2, v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c(III)V

    .line 2423
    goto/16 :goto_a

    .line 2419
    :pswitch_5
    const/4 v0, 0x3

    invoke-static {v0, p0, v4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c(III)V

    .line 2420
    goto/16 :goto_a

    .line 2370
    :pswitch_6
    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0xc

    .line 2371
    and-int/lit16 v2, p0, 0xfff

    .line 2372
    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x18

    .line 2374
    :try_start_0
    sget-object v5, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    if-eqz v5, :cond_9

    .line 2375
    sget v5, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:I

    if-ne v1, v5, :cond_0

    sget v5, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:I

    if-ne v2, v5, :cond_0

    sget-object v5, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v5}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getVPBuf()Ljava/nio/ByteBuffer;

    move-result-object v5

    if-nez v5, :cond_6

    .line 2376
    :cond_0
    sget v5, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:I

    if-eq v5, v3, :cond_1

    sget v5, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:I

    if-nez v5, :cond_2

    .line 2378
    :cond_1
    sget-object v5, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v5}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->destroyVPTex()V

    .line 2381
    :cond_2
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeDetachVpTargetBuf()V

    .line 2383
    sput v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:I

    .line 2384
    sput v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:I

    .line 2386
    sget v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:I

    sput v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:I

    .line 2387
    sget v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:I

    sput v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:I

    .line 2390
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:[B

    if-eqz v1, :cond_3

    .line 2391
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->checkShouldCreatTexture()V

    .line 2394
    :cond_3
    sget v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:I

    if-eq v1, v3, :cond_5

    sget v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:I

    if-nez v1, :cond_4

    goto :goto_0

    .line 2399
    :cond_4
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    sget v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:I

    sget v5, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:I

    sget v6, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:I

    sget-object v7, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v5, v6, v7}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->setVideoDims(IIILjava/nio/ByteBuffer;)V

    goto :goto_1

    .line 2396
    :cond_5
    :goto_0
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    sget v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:I

    sget v5, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:I

    sget v6, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:I

    invoke-virtual {v1, v2, v5, v6}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->createVPTex(III)V

    .line 2402
    :goto_1
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getVPBuf()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeSetVpTargetBuf(Ljava/nio/ByteBuffer;)V

    .line 2404
    :cond_6
    sget v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:I

    if-eq v1, v3, :cond_8

    sget v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:I

    if-nez v1, :cond_7

    goto :goto_2

    .line 2409
    :cond_7
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->onFrameUpdate()V

    goto :goto_3

    .line 2406
    :cond_8
    :goto_2
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->updateVPTex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2415
    :cond_9
    :goto_3
    goto/16 :goto_a

    .line 2413
    :catch_0
    move-exception v0

    .line 2414
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2417
    goto/16 :goto_a

    .line 2365
    :pswitch_7
    if-nez p0, :cond_a

    const/4 v3, 0x0

    :cond_a
    sput-boolean v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:Z

    .line 2366
    const/4 v0, 0x6

    invoke-static {v0, p0, v4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c(III)V

    .line 2367
    goto/16 :goto_a

    .line 2332
    :pswitch_8
    and-int/lit16 v2, p0, 0xfff

    sput v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:I

    .line 2333
    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0xc

    sput v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:I

    .line 2334
    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x18

    sput v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:I

    .line 2336
    :try_start_1
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    if-eqz v0, :cond_d

    .line 2337
    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:I

    if-eq v0, v3, :cond_b

    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:I

    if-nez v0, :cond_c

    .line 2339
    :cond_b
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->destroyVPTex()V

    .line 2342
    :cond_c
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeDetachVpTargetBuf()V

    .line 2344
    :cond_d
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:[B

    if-eqz v0, :cond_e

    .line 2345
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->checkShouldCreatTexture()V

    .line 2347
    :cond_e
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    if-eqz v0, :cond_11

    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:I

    if-lez v0, :cond_11

    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:I

    if-lez v0, :cond_11

    .line 2348
    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:I

    if-eq v0, v3, :cond_10

    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:I

    if-nez v0, :cond_f

    goto :goto_4

    .line 2352
    :cond_f
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    sget v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:I

    sget v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:I

    sget v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:I

    sget-object v5, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->setVideoDims(IIILjava/nio/ByteBuffer;)V

    goto :goto_5

    .line 2350
    :cond_10
    :goto_4
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    sget v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:I

    sget v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:I

    sget v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->createVPTex(III)V

    .line 2354
    :goto_5
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getVPBuf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeSetVpTargetBuf(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2358
    :cond_11
    goto :goto_6

    .line 2356
    :catch_1
    move-exception v0

    .line 2357
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2360
    :goto_6
    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:I

    sput v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:I

    .line 2361
    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:I

    sput v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:I

    .line 2362
    goto/16 :goto_a

    .line 2325
    :pswitch_9
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->c:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    .line 2326
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2327
    :try_start_2
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 2328
    monitor-exit v0

    .line 2329
    goto/16 :goto_a

    .line 2328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2322
    :pswitch_a
    const/4 v0, 0x4

    invoke-static {v0, v4, v4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c(III)V

    .line 2323
    goto/16 :goto_a

    .line 2319
    :pswitch_b
    const/4 v0, 0x7

    invoke-static {v0, p0, v4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c(III)V

    .line 2320
    goto/16 :goto_a

    .line 2314
    :pswitch_c
    if-ne p0, v3, :cond_12

    goto :goto_7

    :cond_12
    const/4 v3, 0x0

    .line 2315
    :goto_7
    if-eqz v3, :cond_13

    const/16 v0, 0x2bd

    goto :goto_8

    :cond_13
    const/16 v0, 0x2be

    :goto_8
    invoke-static {v2, v0, v4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c(III)V

    .line 2317
    goto/16 :goto_a

    .line 2309
    :pswitch_d
    sput-boolean v4, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:Z

    .line 2310
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    .line 2311
    const/4 v0, 0x2

    invoke-static {v0, p0, v4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c(III)V

    .line 2312
    goto :goto_a

    .line 2304
    :pswitch_e
    sput-boolean v4, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:Z

    .line 2305
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    .line 2306
    const/16 v0, 0x64

    invoke-static {v0, p0, v4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c(III)V

    .line 2307
    goto :goto_a

    .line 2300
    :pswitch_f
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    .line 2301
    invoke-static {v3, v4, v4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c(III)V

    .line 2302
    goto :goto_a

    .line 2293
    :pswitch_10
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2294
    if-nez p0, :cond_14

    goto :goto_9

    :cond_14
    const/4 v3, 0x0

    :goto_9
    :try_start_3
    sput-boolean v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:Z

    .line 2295
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 2296
    monitor-exit v0

    .line 2298
    goto :goto_a

    .line 2296
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 2286
    :pswitch_11
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2287
    :try_start_4
    sput p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:I

    .line 2288
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 2289
    monitor-exit v0

    .line 2291
    goto :goto_a

    .line 2289
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 2279
    :pswitch_12
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2280
    :try_start_5
    sput p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:I

    .line 2281
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 2282
    monitor-exit v0

    .line 2284
    goto :goto_a

    .line 2282
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1

    .line 2269
    :pswitch_13
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2270
    :try_start_6
    sput p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:I

    .line 2271
    sget v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:I

    if-gez v1, :cond_15

    .line 2272
    sput v4, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:I

    .line 2274
    :cond_15
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 2276
    monitor-exit v0

    .line 2277
    goto :goto_a

    .line 2276
    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v1

    .line 2263
    :pswitch_14
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2264
    :try_start_7
    sput p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:I

    .line 2265
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 2266
    monitor-exit v0

    .line 2267
    goto :goto_a

    .line 2266
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v1

    .line 2436
    :goto_a
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static ReceiverValue_callback_int_array(II[I)I
    .locals 1
    .param p0, "iGet"    # I
    .param p1, "iIndex"    # I
    .param p2, "bits"    # [I

    .line 2222
    packed-switch p1, :pswitch_data_0

    .line 2229
    const/4 v0, 0x0

    return v0

    .line 2224
    :pswitch_0
    sput-object p2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:[I

    .line 2225
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public static ReceiverValue_callback_string(IILjava/lang/String;)I
    .locals 1
    .param p0, "iGet"    # I
    .param p1, "iIndex"    # I
    .param p2, "sGet"    # Ljava/lang/String;

    .line 2245
    packed-switch p1, :pswitch_data_0

    .line 2252
    const/4 v0, 0x0

    return v0

    .line 2247
    :pswitch_0
    sput-object p2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:Ljava/lang/String;

    .line 2248
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public static ReceiverValue_callback_string_array(II[Ljava/lang/String;)I
    .locals 1
    .param p0, "iGet"    # I
    .param p1, "iIndex"    # I
    .param p2, "res"    # [Ljava/lang/String;

    .line 2234
    packed-switch p1, :pswitch_data_0

    .line 2241
    const/4 v0, 0x0

    return v0

    .line 2236
    :pswitch_0
    sput-object p2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:[Ljava/lang/String;

    .line 2237
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public static a()I
    .locals 1

    .line 767
    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:I

    return v0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:J

    return-wide v0
.end method

.method private a(Ljava/nio/ByteBuffer;III)Landroid/graphics/Bitmap;
    .locals 10

    .line 474
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    iget-boolean v0, v0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->mGL20Support:Z

    .line 475
    nop

    .line 479
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    .line 480
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 482
    mul-int v2, p2, p3

    .line 483
    div-int/lit8 v3, v2, 0x4

    .line 486
    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 488
    mul-int/lit8 v0, v2, 0x2

    new-array v0, v0, [B

    .line 489
    nop

    .line 493
    if-ne p4, p2, :cond_0

    .line 494
    invoke-virtual {p1, v0, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 496
    nop

    :goto_0
    div-int/lit8 p4, p3, 0x2

    if-ge v4, p4, :cond_2

    .line 498
    add-int p4, v2, v3

    mul-int v1, v4, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p4, v1

    div-int/lit8 v5, p2, 0x2

    invoke-virtual {p1, v0, p4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 500
    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 496
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 503
    :cond_0
    new-array v1, v1, [B

    .line 504
    nop

    .line 507
    mul-int v5, p4, p3

    mul-int/lit8 v6, v5, 0x3

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p1, v1, v4, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 508
    nop

    .line 511
    const/4 p1, 0x0

    :goto_1
    if-ge p1, p3, :cond_1

    .line 512
    mul-int v6, p1, p4

    mul-int v7, p1, p2

    invoke-static {v1, v6, v0, v7, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 511
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 515
    :cond_1
    nop

    :goto_2
    div-int/lit8 p1, p3, 0x2

    if-ge v4, p1, :cond_2

    .line 517
    mul-int p1, v4, p4

    add-int/2addr p1, v5

    div-int/lit8 v6, p4, 0x2

    add-int/2addr v6, p1

    mul-int v7, v4, p2

    div-int/lit8 v7, v7, 0x2

    add-int v8, v2, v7

    div-int/lit8 v9, p2, 0x2

    invoke-static {v1, v6, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    add-int v6, v2, v3

    add-int/2addr v6, v7

    invoke-static {v1, p1, v0, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 515
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 523
    :cond_2
    new-array p1, v2, [I

    .line 524
    nop

    .line 528
    invoke-direct {p0, v0, p2, p3, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a([BII[I)V

    .line 531
    sget-object p4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 532
    goto :goto_4

    .line 533
    :cond_3
    new-array p4, v2, [I

    .line 534
    nop

    :goto_3
    if-ge v4, v2, :cond_4

    .line 535
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 536
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 538
    and-int/lit16 v3, v1, 0xf8

    shl-int/lit8 v3, v3, 0x10

    .line 539
    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x3

    and-int/lit16 v5, v0, 0xe0

    shr-int/lit8 v5, v5, 0x5

    or-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0xa

    .line 540
    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x3

    .line 541
    or-int/2addr v1, v3

    or-int/2addr v0, v1

    aput v0, p4, v4

    .line 534
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 545
    :cond_4
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 548
    :goto_4
    return-object p1
.end method

.method static synthetic a()Landroid/media/AudioTrack;
    .locals 1

    .line 46
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$c;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$c;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$f;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$f;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$g;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$g;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$h;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$h;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$i;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$i;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$j;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$j;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$k;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$k;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$l;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$l;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$m;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$m;

    return-object p0
.end method

.method static synthetic a()Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;
    .locals 1

    .line 46
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;
    .locals 0

    .line 46
    sput-object p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    return-object p0
.end method

.method static synthetic a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;
    .locals 1

    .line 46
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)Lcom/baidu/cyberplayer/core/CyberPlayerSurface;
    .locals 0

    .line 46
    sput-object p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    return-object p0
.end method

.method static synthetic a()Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;
    .locals 1

    .line 46
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .line 46
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    sput-object p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a()Ljava/nio/ByteBuffer;
    .locals 1

    .line 46
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 46
    sput-object p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static a(F)V
    .locals 0

    .line 716
    sput p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:F

    .line 717
    return-void
.end method

.method public static a(I)V
    .locals 1

    .line 696
    if-ltz p0, :cond_0

    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    .line 697
    sput p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e:I

    .line 699
    :cond_0
    return-void
.end method

.method public static a(J)V
    .locals 0

    .line 708
    sput-wide p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:J

    .line 709
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeInitpath(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d(Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 249
    sput-object p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 245
    sput-object p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:Ljava/lang/String;

    .line 246
    return-void
.end method

.method static synthetic a(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeSetVpTargetBuf(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 736
    sput-boolean p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Z

    .line 737
    return-void
.end method

.method private a([BII[I)V
    .locals 17

    .line 565
    move/from16 v0, p3

    mul-int v1, p2, v0

    .line 567
    nop

    .line 569
    nop

    .line 570
    div-int/lit8 v2, v1, 0x4

    add-int/2addr v2, v1

    .line 572
    nop

    .line 576
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v0, :cond_e

    .line 577
    const/4 v7, 0x0

    :goto_1
    div-int/lit8 v8, p2, 0x2

    if-ge v7, v8, :cond_c

    .line 578
    add-int/lit8 v8, v5, 0x1

    aget-byte v5, p1, v5

    const/16 v9, 0xff

    and-int/2addr v5, v9

    .line 579
    add-int/lit8 v10, v8, 0x1

    aget-byte v8, p1, v8

    and-int/2addr v8, v9

    .line 580
    add-int/lit8 v11, v2, 0x1

    aget-byte v2, p1, v2

    and-int/2addr v2, v9

    add-int/lit8 v2, v2, -0x80

    .line 581
    add-int/lit8 v12, v1, 0x1

    aget-byte v1, p1, v1

    and-int/2addr v1, v9

    add-int/lit8 v1, v1, -0x80

    .line 584
    mul-int/lit16 v13, v1, 0x1c6

    shr-int/lit8 v13, v13, 0x8

    add-int v14, v5, v13

    .line 585
    if-gez v14, :cond_0

    .line 586
    const/4 v14, 0x0

    goto :goto_2

    .line 587
    :cond_0
    if-le v14, v9, :cond_1

    .line 588
    const/16 v14, 0xff

    .line 592
    :cond_1
    :goto_2
    mul-int/lit8 v1, v1, 0x58

    mul-int/lit16 v15, v2, 0xb7

    add-int/2addr v1, v15

    shr-int/lit8 v1, v1, 0x8

    sub-int v15, v5, v1

    .line 593
    if-gez v15, :cond_2

    .line 594
    const/4 v15, 0x0

    goto :goto_3

    .line 595
    :cond_2
    if-le v15, v9, :cond_3

    .line 596
    const/16 v15, 0xff

    .line 600
    :cond_3
    :goto_3
    mul-int/lit16 v2, v2, 0x167

    shr-int/lit8 v2, v2, 0x8

    add-int/2addr v5, v2

    .line 601
    if-gez v5, :cond_4

    .line 602
    const/4 v5, 0x0

    goto :goto_4

    .line 603
    :cond_4
    if-le v5, v9, :cond_5

    .line 604
    const/16 v5, 0xff

    .line 608
    :cond_5
    :goto_4
    add-int/lit8 v16, v6, 0x1

    and-int/lit16 v14, v14, 0xf8

    and-int/lit16 v15, v15, 0xfc

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    and-int/lit16 v5, v5, 0xf8

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v14

    aput v5, p4, v6

    .line 612
    add-int/2addr v13, v8

    .line 613
    if-gez v13, :cond_6

    .line 614
    const/4 v13, 0x0

    goto :goto_5

    .line 615
    :cond_6
    if-le v13, v9, :cond_7

    .line 616
    const/16 v13, 0xff

    .line 620
    :cond_7
    :goto_5
    sub-int v1, v8, v1

    .line 621
    if-gez v1, :cond_8

    .line 622
    const/4 v1, 0x0

    goto :goto_6

    .line 623
    :cond_8
    if-le v1, v9, :cond_9

    .line 624
    const/16 v1, 0xff

    .line 628
    :cond_9
    :goto_6
    add-int/2addr v8, v2

    .line 629
    if-gez v8, :cond_a

    .line 630
    const/4 v9, 0x0

    goto :goto_7

    .line 631
    :cond_a
    if-le v8, v9, :cond_b

    .line 632
    goto :goto_7

    .line 631
    :cond_b
    move v9, v8

    .line 635
    :goto_7
    add-int/lit8 v6, v16, 0x1

    and-int/lit16 v2, v13, 0xf8

    and-int/lit16 v1, v1, 0xfc

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v2, v9, 0xf8

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aput v1, p4, v16

    .line 577
    add-int/lit8 v7, v7, 0x1

    move v5, v10

    move v2, v11

    move v1, v12

    goto/16 :goto_1

    .line 637
    :cond_c
    and-int/lit8 v7, v4, 0x1

    if-nez v7, :cond_d

    .line 638
    sub-int/2addr v2, v8

    .line 639
    sub-int/2addr v1, v8

    .line 576
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 642
    :cond_e
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Z

    return p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Ljava/lang/String;)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    .line 2518
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2519
    return v0

    .line 2521
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2522
    const-string v1, "qiyi.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 2523
    const-string v2, ".m3u8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 2524
    const-string v3, "http:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 2525
    const-string v4, "http://127.0.0.1:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 2526
    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    .line 2527
    return v4

    .line 2528
    :cond_1
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    .line 2529
    return v4

    .line 2531
    :cond_2
    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 46
    sput-boolean p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:Z

    return p0
.end method

.method static synthetic a()[B
    .locals 1

    .line 46
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:[B

    return-object v0
.end method

.method static synthetic a([B)[B
    .locals 0

    .line 46
    sput-object p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:[B

    return-object p0
.end method

.method public static audioInit(IZZI)Ljava/lang/Object;
    .locals 9
    .param p0, "sampleRate"    # I
    .param p1, "is16Bit"    # Z
    .param p2, "isStereo"    # Z
    .param p3, "desiredFrames"    # I

    .line 2123
    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eqz p2, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    .line 2125
    :goto_0
    if-eqz p1, :cond_1

    const/4 v6, 0x2

    goto :goto_1

    :cond_1
    const/4 v6, 0x3

    .line 2127
    :goto_1
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    const/4 v2, 0x2

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    :goto_2
    if-eqz p1, :cond_3

    const/4 v3, 0x2

    goto :goto_3

    :cond_3
    const/4 v3, 0x1

    :goto_3
    mul-int v2, v2, v3

    .line 2129
    if-eqz p1, :cond_5

    .line 2130
    if-eqz p2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x1

    :goto_4
    mul-int v1, v1, p3

    new-array v1, v1, [S

    sput-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:Ljava/lang/Object;

    goto :goto_6

    .line 2132
    :cond_5
    if-eqz p2, :cond_6

    goto :goto_5

    :cond_6
    const/4 v1, 0x1

    :goto_5
    mul-int v1, v1, p3

    new-array v1, v1, [B

    sput-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:Ljava/lang/Object;

    .line 2142
    :goto_6
    invoke-static {p0, v5, v6}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    div-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 2146
    const/4 v1, 0x0

    move v0, v2

    :try_start_0
    new-instance v2, Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    mul-int v7, p3, v0

    const/4 v8, 0x1

    const/4 v3, 0x3

    move v4, p0

    .end local p0    # "sampleRate":I
    .local v4, "sampleRate":I
    :try_start_1
    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/media/AudioTrack;

    .line 2148
    sget-object p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getState()I

    move-result p0

    if-nez p0, :cond_7

    .line 2149
    const-string p0, "CyberPlayerCore"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioTrack uninitialized,sampleRate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",audioFormat : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",channelConfig : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/cyberplayer/utils/m;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 2150
    return-object v1

    .line 2155
    :cond_7
    nop

    .line 2156
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->audioStartThread()V

    .line 2162
    sget-object p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:Ljava/lang/Object;

    return-object p0

    .line 2152
    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_7

    .end local v4    # "sampleRate":I
    .restart local p0    # "sampleRate":I
    :catch_1
    move-exception v0

    move v4, p0

    move-object p0, v0

    .line 2153
    .end local p0    # "sampleRate":I
    .restart local v4    # "sampleRate":I
    :goto_7
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 2154
    return-object v1
.end method

.method public static audioQuit()V
    .locals 2

    .line 2485
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2487
    :try_start_0
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2491
    goto :goto_0

    .line 2489
    :catch_0
    move-exception v0

    .line 2492
    :goto_0
    sput-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/lang/Thread;

    .line 2495
    :cond_0
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 2496
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 2497
    sput-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/media/AudioTrack;

    .line 2499
    :cond_1
    return-void
.end method

.method public static audioStartThread()V
    .locals 2

    .line 2167
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$2;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/lang/Thread;

    .line 2175
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 2176
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/lang/Thread;

    const-string v1, "JavaAudioThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2177
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2178
    return-void
.end method

.method public static audioWriteByteBuffer([B)V
    .locals 3
    .param p0, "buffer"    # [B

    .line 2464
    if-eqz p0, :cond_4

    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    goto :goto_3

    .line 2466
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 2467
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/media/AudioTrack;

    array-length v2, p0

    sub-int/2addr v2, v0

    invoke-virtual {v1, p0, v0, v2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    .line 2468
    if-lez v1, :cond_1

    .line 2469
    add-int/2addr v0, v1

    goto :goto_2

    .line 2470
    :cond_1
    if-nez v1, :cond_2

    .line 2472
    const-wide/16 v1, 0x1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2475
    :goto_1
    goto :goto_2

    .line 2473
    :catch_0
    move-exception v1

    goto :goto_1

    .line 2480
    :goto_2
    goto :goto_0

    .line 2478
    :cond_2
    return-void

    .line 2481
    :cond_3
    return-void

    .line 2465
    :cond_4
    :goto_3
    return-void
.end method

.method public static audioWriteShortBuffer([S)V
    .locals 3
    .param p0, "buffer"    # [S

    .line 2442
    if-eqz p0, :cond_4

    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    goto :goto_3

    .line 2444
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 2445
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/media/AudioTrack;

    array-length v2, p0

    sub-int/2addr v2, v0

    invoke-virtual {v1, p0, v0, v2}, Landroid/media/AudioTrack;->write([SII)I

    move-result v1

    .line 2446
    if-lez v1, :cond_1

    .line 2447
    add-int/2addr v0, v1

    goto :goto_2

    .line 2448
    :cond_1
    if-nez v1, :cond_2

    .line 2450
    const-wide/16 v1, 0x1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2453
    :goto_1
    goto :goto_2

    .line 2451
    :catch_0
    move-exception v1

    goto :goto_1

    .line 2458
    :goto_2
    goto :goto_0

    .line 2456
    :cond_2
    return-void

    .line 2459
    :cond_3
    return-void

    .line 2443
    :cond_4
    :goto_3
    return-void
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .line 46
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(III)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c(III)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .line 253
    sput-object p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 257
    sput-object p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->l:Ljava/lang/String;

    .line 258
    sput-object p1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->m:Ljava/lang/String;

    .line 259
    return-void
.end method

.method private b(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1767
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:[B

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1768
    nop

    .line 1770
    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:I

    add-int/lit8 v0, v0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    shl-int/lit8 v0, v0, 0x5

    .line 1771
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1772
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1773
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1774
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 1775
    sget-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:[B

    sget v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:I

    mul-int v0, v0, v3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1777
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1778
    sget-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:[B

    sget v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:I

    mul-int v0, v0, v3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v2, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1779
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1783
    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Z)V
    .locals 0

    .line 740
    sput-boolean p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e:Z

    .line 741
    return-void
.end method

.method static synthetic b()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:Z

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:Ljava/lang/String;

    return-object v0
.end method

.method private static c(III)V
    .locals 1

    .line 2207
    sget-boolean v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Z

    if-eqz v0, :cond_0

    .line 2208
    return-void

    .line 2211
    :cond_0
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;

    if-eqz v0, :cond_1

    .line 2212
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2213
    iput p0, v0, Landroid/os/Message;->what:I

    .line 2214
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2215
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2216
    sget-object p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->sendMessage(Landroid/os/Message;)Z

    .line 2218
    :cond_1
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .line 720
    sput-object p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/lang/String;

    .line 721
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 724
    sput-object p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/lang/String;

    .line 725
    sput-object p1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:Ljava/lang/String;

    .line 726
    return-void
.end method

.method public static c(Z)V
    .locals 0

    .line 744
    sput-boolean p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:Z

    .line 745
    return-void
.end method

.method static synthetic c()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e:Z

    return v0
.end method

.method static synthetic d()I
    .locals 1

    .line 46
    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:I

    return v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0

    .line 728
    sput-object p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Ljava/lang/String;

    .line 729
    return-void
.end method

.method private d(Z)V
    .locals 1

    .line 2003
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 2004
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2005
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 2006
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2007
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2010
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:Z

    .line 2011
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->l()V

    .line 2012
    return-void
.end method

.method static synthetic d()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Z

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .line 46
    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:I

    return v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    .line 732
    sput-object p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e:Ljava/lang/String;

    .line 733
    return-void
.end method

.method static synthetic f()I
    .locals 1

    .line 46
    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:I

    return v0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 0

    .line 748
    sput-object p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:Ljava/lang/String;

    .line 749
    return-void
.end method

.method static synthetic g()I
    .locals 1

    .line 46
    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:I

    return v0
.end method

.method static synthetic h()I
    .locals 1

    .line 46
    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:I

    return v0
.end method

.method static synthetic i()I
    .locals 1

    .line 46
    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:I

    return v0
.end method

.method static synthetic j()I
    .locals 1

    .line 46
    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:I

    return v0
.end method

.method static synthetic j()V
    .locals 0

    .line 46
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeDetachVpTargetBuf()V

    return-void
.end method

.method static synthetic k()V
    .locals 0

    .line 46
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeRunAudioThread()V

    return-void
.end method

.method private l()V
    .locals 2

    .line 2015
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 2016
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/view/SurfaceHolder;

    iget-boolean v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 2018
    :cond_1
    return-void
.end method

.method private static native nativeDetachVpTargetBuf()V
.end method

.method private native nativeGetVersion()Ljava/lang/String;
.end method

.method private native nativeInitpath(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private static native nativeRunAudioThread()V
.end method

.method private native nativeSetBufferSize(J)V
.end method

.method private native nativeSetCacheTime(F)V
.end method

.method private native nativeSetCustomizedPlayerIdForHLS(Ljava/lang/String;)V
.end method

.method private native nativeSetCustomizedPlayerKeyForHLS(Ljava/lang/String;)V
.end method

.method private static native nativeSetGlesVersion(I)V
.end method

.method private native nativeSetLocalDecryptKeyForHLS(Ljava/lang/String;)V
.end method

.method private native nativeSetLogLevel(I)V
.end method

.method private static native nativeSetVpTargetBuf(Ljava/nio/ByteBuffer;)V
.end method

.method private native onNativeMsgSend(II)V
.end method


# virtual methods
.method public a()D
    .locals 4

    .line 1139
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-ne v0, v1, :cond_1

    .line 1140
    const v0, 0x8003

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->onNativeMsgSend(II)V

    .line 1141
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1143
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1144
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 1146
    :cond_0
    sget v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-double v1, v1

    :try_start_1
    monitor-exit v0

    return-wide v1

    .line 1150
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1147
    :catch_0
    move-exception v1

    .line 1148
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1150
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1152
    :cond_1
    :goto_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(I)D
    .locals 2

    .line 1227
    if-nez p1, :cond_0

    .line 1228
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b()D

    move-result-wide v0

    return-wide v0

    .line 1229
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1230
    sget p1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:I

    int-to-double v0, p1

    return-wide v0

    .line 1232
    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 2

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpre openExtSubFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CyberPlayerCore"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeOpenExtSubFile(Ljava/lang/String;)I

    move-result p1

    .line 652
    return p1
.end method

.method public a()Landroid/graphics/Bitmap;
    .locals 4

    .line 441
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    const-string v2, "CyberPlayerCore"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 442
    const-string v0, "msbIsPlaying is false, can not get snapshot."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-object v3

    .line 445
    :cond_0
    sget-boolean v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 446
    const-string v0, "HandlerPaused, can not get snapshot."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-object v3

    .line 450
    :cond_1
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    if-nez v0, :cond_2

    .line 451
    return-object v3

    .line 453
    :cond_2
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getVPBuf()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 454
    if-nez v0, :cond_3

    .line 456
    return-object v3

    .line 458
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 459
    sget v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:I

    .line 460
    sget v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:I

    .line 462
    add-int/lit8 v3, v1, 0x1f

    shr-int/lit8 v3, v3, 0x5

    shl-int/lit8 v3, v3, 0x5

    .line 463
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Ljava/nio/ByteBuffer;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/core/CBMetaData;
    .locals 23

    .line 400
    move-object/from16 v0, p0

    .line 401
    invoke-static/range {p1 .. p1}, Lcom/baidu/cyberplayer/core/b;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 402
    iget v2, v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:I

    iget v3, v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->l:I

    iget v4, v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->m:I

    iget-object v5, v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/nio/ByteBuffer;

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeGetMediaInfo(Ljava/lang/String;IIILjava/nio/ByteBuffer;)Lcom/baidu/cyberplayer/core/CBMetaData;

    move-result-object v1

    goto :goto_0

    .line 401
    :cond_0
    move-object v1, v6

    .line 406
    :goto_0
    if-nez v1, :cond_1

    .line 407
    new-instance v7, Lcom/baidu/cyberplayer/core/CBMetaData;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v7 .. v22}, Lcom/baidu/cyberplayer/core/CBMetaData;-><init>(IIIIIIIIFIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-object v7

    .line 410
    :cond_1
    iget v2, v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->m:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 411
    iget v2, v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:I

    iget v4, v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->l:I

    mul-int v2, v2, v4

    new-array v2, v2, [I

    .line 413
    const/4 v4, 0x0

    :goto_1
    iget v5, v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:I

    iget v7, v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->l:I

    mul-int v5, v5, v7

    if-ge v4, v5, :cond_2

    .line 414
    iget-object v5, v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 415
    iget-object v7, v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 417
    and-int/lit16 v8, v7, 0xf8

    shl-int/lit8 v8, v8, 0x10

    .line 418
    and-int/lit8 v7, v7, 0x7

    shl-int/2addr v7, v3

    and-int/lit16 v9, v5, 0xe0

    shr-int/lit8 v9, v9, 0x5

    or-int/2addr v7, v9

    shl-int/lit8 v7, v7, 0xa

    .line 419
    and-int/lit8 v5, v5, 0x1f

    shl-int/2addr v5, v3

    .line 420
    or-int/2addr v7, v8

    or-int/2addr v5, v7

    aput v5, v2, v4

    .line 413
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 423
    :cond_2
    iget v3, v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:I

    iget v4, v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->l:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 424
    if-eqz v2, :cond_3

    .line 425
    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/core/CBMetaData;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 427
    :cond_3
    invoke-virtual {v1, v6}, Lcom/baidu/cyberplayer/core/CBMetaData;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 430
    :cond_4
    :goto_2
    return-object v1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1198
    nop

    .line 1199
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:Ljava/lang/String;

    .line 1200
    return-object v0
.end method

.method public a()V
    .locals 8

    .line 277
    const-string v0, "CyberPlayerCore"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->l:Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->m:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 278
    sget-object v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->m:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 279
    sget-object v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->l:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 281
    :cond_0
    sget-object v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "/libcyberplayer.so"

    const-string v5, "loading "

    const-string v6, "libcyberplayer-core.so"

    if-eqz v3, :cond_2

    :try_start_1
    sget-object v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/cyberplayer/utils/l;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 294
    :cond_2
    sget-object v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 299
    :cond_3
    const-string v3, "cyberplayer-core"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 300
    const-string v3, "cyberplayer"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 301
    const-string v3, "loadLibrary"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_1
    sput-boolean v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 307
    goto :goto_2

    .line 304
    :catch_0
    move-exception v3

    .line 305
    invoke-virtual {v3}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 306
    sput-boolean v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Z

    .line 308
    :goto_2
    sget-boolean v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Z

    if-eqz v3, :cond_5

    .line 310
    :try_start_2
    sget-object v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/libffmpeg.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/libiqiyip2pkernel.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading iqiyi p2p"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 315
    :cond_4
    const-string v3, "ffmpeg"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 316
    const-string v3, "iqiyip2pkernel"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 317
    const-string v3, "loadLibrary iqiyi p2p"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    .line 325
    :goto_3
    goto :goto_4

    .line 319
    :catch_1
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 324
    sput-boolean v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Z

    .line 327
    :cond_5
    :goto_4
    sget-boolean v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Z

    if-eqz v0, :cond_6

    .line 328
    new-instance v0, Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;-><init>()V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;

    .line 329
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;

    if-nez v0, :cond_6

    .line 330
    sput-boolean v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Z

    .line 334
    :cond_6
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "player listeners handler thread"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/os/HandlerThread;

    .line 336
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 337
    new-instance v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;-><init>(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Lcom/baidu/cyberplayer/core/CyberPlayerCore;Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;

    .line 339
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    .line 341
    sget-boolean v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Z

    if-nez v0, :cond_8

    .line 342
    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e:I

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeSetLogLevel(I)V

    .line 343
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:J

    .line 344
    sget-wide v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_7

    .line 345
    sget-wide v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeSetBufferSize(J)V

    .line 347
    :cond_7
    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 348
    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:F

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeSetCacheTime(F)V

    .line 351
    :cond_8
    return-void
.end method

.method public a(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1095
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-ne v0, v1, :cond_1

    .line 1096
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Ljava/lang/String;)Z

    .line 1099
    :cond_0
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    const p2, 0x8015

    invoke-direct {p0, p2, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->onNativeMsgSend(II)V

    .line 1101
    :cond_1
    return-void
.end method

.method public a(III)V
    .locals 2

    .line 360
    iput p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:I

    .line 361
    iput p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->l:I

    .line 362
    iput p3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->m:I

    .line 364
    const/4 p1, 0x0

    const/4 p2, 0x3

    const/4 v0, 0x2

    if-nez p3, :cond_0

    .line 366
    :try_start_0
    iget p3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:I

    iget v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->l:I

    mul-int p3, p3, v1

    mul-int/lit8 p3, p3, 0x3

    div-int/2addr p3, v0

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 377
    :catch_0
    move-exception p2

    goto :goto_2

    .line 367
    :cond_0
    const/4 v1, 0x1

    if-eq p3, v1, :cond_3

    if-ne p3, p2, :cond_1

    goto :goto_0

    .line 370
    :cond_1
    if-ne p3, v0, :cond_2

    .line 372
    iget p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:I

    iget p3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->l:I

    mul-int p2, p2, p3

    mul-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 374
    :cond_2
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 369
    :cond_3
    :goto_0
    iget p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:I

    iget p3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->l:I

    mul-int p2, p2, p3

    mul-int/lit8 p2, p2, 0x2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_1
    goto :goto_3

    .line 378
    :goto_2
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/nio/ByteBuffer;

    .line 379
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    :goto_3
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$c;)V
    .locals 0

    .line 1524
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$c;

    .line 1525
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;)V
    .locals 0

    .line 1467
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;

    .line 1468
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;)V
    .locals 0

    .line 1483
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;

    .line 1484
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$f;)V
    .locals 0

    .line 1661
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$f;

    .line 1662
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$g;)V
    .locals 0

    .line 1745
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$g;

    .line 1746
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$h;)V
    .locals 0

    .line 1537
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$h;

    .line 1538
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$i;)V
    .locals 0

    .line 1544
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$i;

    .line 1545
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$j;)V
    .locals 0

    .line 1442
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$j;

    .line 1443
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$k;)V
    .locals 0

    .line 1427
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$k;

    .line 1428
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$l;)V
    .locals 0

    .line 1571
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$l;

    .line 1572
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$m;)V
    .locals 0

    .line 1601
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$m;

    .line 1602
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)V
    .locals 4

    .line 816
    if-nez p1, :cond_0

    .line 817
    return-void

    .line 818
    :cond_0
    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:I

    if-nez v0, :cond_3

    .line 820
    :cond_1
    iget-boolean v0, p1, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->mGL20Support:Z

    .line 821
    if-eqz v0, :cond_2

    .line 822
    invoke-static {v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeSetGlesVersion(I)V

    goto :goto_0

    .line 824
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeSetGlesVersion(I)V

    .line 826
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CyberPlayerCore"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_3
    sput-object p1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 831
    sget-object p1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    if-eqz p1, :cond_5

    .line 832
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_4

    .line 833
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 835
    :cond_4
    sget-object p1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/view/SurfaceHolder;

    .line 836
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 837
    sget-object p1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:I

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->setDisplayMode(I)V

    .line 838
    sget p1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:I

    if-ne p1, v1, :cond_6

    .line 841
    sget-object p1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-eq p1, v0, :cond_6

    .line 842
    new-instance p1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$a;

    invoke-direct {p1, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$a;-><init>(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)V

    .line 843
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 844
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 845
    goto :goto_1

    .line 848
    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/view/SurfaceHolder;

    .line 852
    :cond_6
    :goto_1
    return-void
.end method

.method public a()Z
    .locals 2

    .line 1080
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-ne v0, v1, :cond_0

    .line 1081
    sget-boolean v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:Z

    return v0

    .line 1084
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a()[I
    .locals 5

    .line 1161
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1162
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:[I

    .line 1163
    const v0, 0x8011

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->onNativeMsgSend(II)V

    .line 1164
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 1166
    :try_start_0
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:Ljava/lang/Object;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 1167
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:[I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    .line 1171
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1168
    :catch_0
    move-exception v1

    .line 1169
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1171
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1173
    :cond_0
    :goto_1
    return-object v2
.end method

.method public a()[Ljava/lang/String;
    .locals 5

    .line 1182
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1183
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:[Ljava/lang/String;

    .line 1184
    const v0, 0x8012

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->onNativeMsgSend(II)V

    .line 1185
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 1187
    :try_start_0
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Ljava/lang/Object;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 1188
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    .line 1192
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1189
    :catch_0
    move-exception v1

    .line 1190
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1192
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1194
    :cond_0
    :goto_1
    return-object v2
.end method

.method public b()D
    .locals 5

    .line 1209
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-ne v0, v1, :cond_1

    .line 1210
    const v0, 0x8004

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->onNativeMsgSend(II)V

    .line 1212
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1214
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 1217
    :cond_0
    sget v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    :try_start_1
    monitor-exit v0

    return-wide v1

    .line 1221
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1218
    :catch_0
    move-exception v1

    .line 1219
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1221
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1223
    :cond_1
    :goto_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public b()I
    .locals 5

    .line 999
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1000
    const v0, 0x8006

    invoke-direct {p0, v0, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->onNativeMsgSend(II)V

    .line 1001
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 1004
    :try_start_0
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 1005
    sget v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 1009
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1006
    :catch_0
    move-exception v1

    .line 1007
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1009
    monitor-exit v0

    .line 1013
    return v2

    .line 1009
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1011
    :cond_0
    return v2
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 2201
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/nio/ByteBuffer;

    .line 393
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 762
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 763
    :cond_0
    sput p1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:I

    .line 764
    :cond_1
    return-void
.end method

.method public c()I
    .locals 5

    .line 1026
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1027
    const v0, 0x8005

    invoke-direct {p0, v0, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->onNativeMsgSend(II)V

    .line 1029
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 1031
    :try_start_0
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 1032
    sget v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 1036
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1033
    :catch_0
    move-exception v1

    .line 1034
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1036
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1038
    :cond_0
    :goto_1
    return v2
.end method

.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 876
    const-string v0, "CyberPlayerCore"

    const-string v1, "prepare async begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 879
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Z

    .line 880
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 881
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-ne v0, v1, :cond_4

    .line 884
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/lang/Thread;

    if-nez v0, :cond_3

    .line 885
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/content/ContentValues;

    const-string v1, "path"

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/content/ContentValues;

    const-string v1, "User-Agent"

    sget-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 888
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/lang/String;

    const-string v1, "key-referer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/content/ContentValues;

    const-string v1, "Referer"

    sget-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    :cond_0
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 893
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/content/ContentValues;

    const-string v1, "http-header"

    sget-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :cond_1
    const-string v0, "CyberPlayerCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExtSubtitleFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 899
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/content/ContentValues;

    const-string v1, "subfile"

    sget-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 902
    :cond_2
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/content/ContentValues;

    const-string v1, "subfile"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 905
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:J

    .line 906
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;

    sget-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/content/ContentValues;

    invoke-direct {v1, p0, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$o;-><init>(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Landroid/content/ContentValues;)V

    const-string v2, "SDLThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/lang/Thread;

    .line 908
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    .line 909
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 910
    const-string v0, "CyberPlayerCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "main thread start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->mNativeContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 913
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->mNativeContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:Ljava/lang/String;

    .line 914
    const-string v0, "CyberPlayerCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current network type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 918
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "player status is idle, but the thread is running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_4
    :goto_1
    const-string v0, "CyberPlayerCore"

    const-string v1, "prepare async end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    return-void

    .line 881
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public c(I)V
    .locals 1

    .line 770
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 774
    :cond_0
    iput v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:I

    goto :goto_1

    .line 772
    :cond_1
    :goto_0
    iput p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:I

    .line 777
    :goto_1
    sget-object p1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-ne p1, v0, :cond_2

    .line 778
    sget-object p1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    if-eqz p1, :cond_2

    .line 779
    sget-object p1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:I

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->setDisplayMode(I)V

    .line 782
    :cond_2
    return-void
.end method

.method public d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 934
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-ne v0, v1, :cond_0

    .line 935
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 936
    const v0, 0x800a

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->onNativeMsgSend(II)V

    .line 937
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:J

    .line 938
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->mNativeContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 940
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->mNativeContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/q;->a(Landroid/content/Context;)Lcom/baidu/cyberplayer/utils/q;

    move-result-object v0

    .line 941
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/q;->a()V

    .line 946
    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 2

    .line 1042
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-ne v0, v1, :cond_0

    .line 1043
    const v0, 0x8019

    invoke-direct {p0, v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->onNativeMsgSend(II)V

    .line 1045
    :cond_0
    return-void
.end method

.method public e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 955
    const-string v0, "CyberPlayerCore"

    const-string v1, "enter stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-ne v0, v1, :cond_0

    .line 957
    return-void

    .line 958
    :cond_0
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    const/4 v2, 0x1

    const v3, 0x800b

    if-ne v0, v1, :cond_1

    .line 959
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 961
    :try_start_0
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    goto :goto_0

    .line 966
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 962
    :catch_0
    move-exception v1

    .line 964
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 966
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 967
    invoke-direct {p0, v3, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->onNativeMsgSend(II)V

    goto :goto_2

    .line 966
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 968
    :cond_1
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->c:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-ne v0, v1, :cond_3

    .line 970
    :cond_2
    invoke-direct {p0, v3, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->onNativeMsgSend(II)V

    .line 972
    :cond_3
    :goto_2
    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1048
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-ne v0, v1, :cond_0

    .line 1049
    const v0, 0x801a

    invoke-direct {p0, v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->onNativeMsgSend(II)V

    .line 1051
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 982
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-ne v0, v1, :cond_0

    .line 983
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    const v0, 0x800a

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->onNativeMsgSend(II)V

    .line 987
    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 2

    .line 1054
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-ne v0, v1, :cond_0

    .line 1055
    const v0, 0x801b

    invoke-direct {p0, v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->onNativeMsgSend(II)V

    .line 1057
    :cond_0
    return-void
.end method

.method public g()V
    .locals 5

    .line 1252
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Z

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/cyberplayer/media/ffmpeg/FFMpegPlayer;->a(Ljava/lang/String;)V

    .line 1255
    :cond_0
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    .line 1256
    const-string v0, "CyberPlayerCore"

    const-string v1, "player status idle wait thread quit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 1259
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e()V

    .line 1260
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i()V

    .line 1261
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1262
    sput-boolean v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Z

    .line 1263
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:Ljava/lang/String;

    .line 1264
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->mNativeContext:Landroid/content/Context;

    .line 1265
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:Ljava/lang/Object;

    .line 1266
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/lang/Thread;

    .line 1267
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/media/AudioTrack;

    .line 1268
    sput v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:I

    .line 1269
    sput v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:I

    .line 1270
    sput v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:I

    .line 1271
    sput v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:I

    .line 1272
    sput v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:I

    .line 1273
    sput v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:I

    .line 1274
    sput v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:I

    .line 1275
    sput-boolean v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:Z

    .line 1276
    sput-boolean v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Z

    .line 1277
    iput-object v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:Ljava/lang/String;

    .line 1280
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Ljava/lang/String;

    .line 1281
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:Ljava/lang/String;

    .line 1282
    sput-boolean v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Z

    .line 1283
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    .line 1284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:J

    .line 1298
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:Z

    if-nez v0, :cond_2

    .line 1299
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->recycle()V

    .line 1300
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 1301
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/nio/ByteBuffer;

    .line 1303
    :cond_2
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:[B

    .line 1304
    return-void

    .line 1306
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e()V

    .line 1307
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 1308
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Z

    .line 1309
    sget-object v4, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1310
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1311
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i()V

    .line 1313
    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:I

    if-eq v0, v1, :cond_4

    sget v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->n:I

    if-nez v0, :cond_5

    .line 1315
    :cond_4
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    if-eqz v0, :cond_5

    .line 1316
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->destroyVPTex()V

    .line 1318
    :cond_5
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->mNativeContext:Landroid/content/Context;

    .line 1319
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:Ljava/lang/Object;

    .line 1320
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/lang/Thread;

    .line 1321
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/media/AudioTrack;

    .line 1322
    sput v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:I

    .line 1323
    sput v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:I

    .line 1324
    sput v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:I

    .line 1325
    sput v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:I

    .line 1326
    sput v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:I

    .line 1327
    sput v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c:I

    .line 1328
    sput v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:I

    .line 1329
    sput-boolean v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:Z

    .line 1330
    sput-boolean v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Z

    .line 1331
    iput-object v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:Ljava/lang/String;

    .line 1333
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Ljava/lang/String;

    .line 1334
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:Ljava/lang/String;

    .line 1335
    sput-boolean v3, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d:Z

    .line 1336
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    .line 1337
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:J

    .line 1340
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:Z

    if-nez v0, :cond_6

    .line 1341
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->recycle()V

    .line 1342
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 1343
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/nio/ByteBuffer;

    .line 1345
    :cond_6
    sput-object v2, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:[B

    .line 1347
    return-void

    .line 1310
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public g(I)V
    .locals 2

    .line 1060
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-ne v0, v1, :cond_0

    .line 1061
    const v0, 0x801c

    invoke-direct {p0, v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->onNativeMsgSend(II)V

    .line 1063
    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:Ljava/lang/String;

    .line 862
    return-void
.end method

.method public h()V
    .locals 2

    .line 1355
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-ne v0, v1, :cond_0

    .line 1356
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i()V

    .line 1357
    return-void

    .line 1359
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e()V

    .line 1360
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 1361
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Z

    .line 1362
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1363
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i()V

    .line 1365
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->k:Ljava/lang/Object;

    .line 1366
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/lang/Thread;

    .line 1367
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Landroid/media/AudioTrack;

    .line 1368
    const/4 v1, 0x0

    sput v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:I

    .line 1369
    sput v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g:I

    .line 1370
    sput-boolean v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i:Z

    .line 1371
    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f:Ljava/lang/String;

    .line 1372
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h:Ljava/lang/String;

    .line 1373
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    .line 1374
    sput-boolean v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j:Z

    .line 1375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:J

    .line 1377
    return-void

    .line 1363
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public h(I)V
    .locals 2

    .line 1066
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-ne v0, v1, :cond_0

    .line 1067
    const v0, 0x801d

    invoke-direct {p0, v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->onNativeMsgSend(II)V

    .line 1069
    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 1112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeSetLocalDecryptKeyForHLS(Ljava/lang/String;)V

    .line 1115
    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 1380
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1382
    :try_start_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    goto :goto_0

    .line 1383
    :catch_0
    move-exception v0

    .line 1385
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1387
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b:Ljava/lang/Thread;

    .line 1389
    :cond_0
    return-void
.end method

.method protected i(Ljava/lang/String;)V
    .locals 1

    .line 1120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1121
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeSetCustomizedPlayerIdForHLS(Ljava/lang/String;)V

    .line 1123
    :cond_0
    return-void
.end method

.method protected j(Ljava/lang/String;)V
    .locals 1

    .line 1128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeSetCustomizedPlayerKeyForHLS(Ljava/lang/String;)V

    .line 1131
    :cond_0
    return-void
.end method

.method public native nativeGetMediaInfo(Ljava/lang/String;IIILjava/nio/ByteBuffer;)Lcom/baidu/cyberplayer/core/CBMetaData;
.end method

.method public native nativeGetMetaData(Ljava/lang/String;)Lcom/baidu/cyberplayer/core/CBMetaData;
.end method

.method public native nativeOpenExtSubFile(Ljava/lang/String;)I
.end method

.method public native nativeSetEnableFastStart(I)V
.end method

.method public native nativeSetResolutionType(I)V
.end method
