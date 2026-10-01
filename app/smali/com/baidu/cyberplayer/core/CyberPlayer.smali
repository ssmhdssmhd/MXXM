.class public Lcom/baidu/cyberplayer/core/CyberPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/baidu/cyberplayer/core/CyberPlayerCore$c;
.implements Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;
.implements Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;
.implements Lcom/baidu/cyberplayer/core/CyberPlayerCore$f;
.implements Lcom/baidu/cyberplayer/core/CyberPlayerCore$g;
.implements Lcom/baidu/cyberplayer/core/CyberPlayerCore$h;
.implements Lcom/baidu/cyberplayer/core/CyberPlayerCore$i;
.implements Lcom/baidu/cyberplayer/core/CyberPlayerCore$j;
.implements Lcom/baidu/cyberplayer/core/CyberPlayerCore$k;
.implements Lcom/baidu/cyberplayer/core/CyberPlayerCore$l;
.implements Lcom/baidu/cyberplayer/core/CyberPlayerCore$m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/core/CyberPlayer$OnInfoListener;,
        Lcom/baidu/cyberplayer/core/CyberPlayer$OnErrorListener;,
        Lcom/baidu/cyberplayer/core/CyberPlayer$OnVideoSizeChangedListener;,
        Lcom/baidu/cyberplayer/core/CyberPlayer$OnSeekCompleteListener;,
        Lcom/baidu/cyberplayer/core/CyberPlayer$OnOnNetworkSpeedListener;,
        Lcom/baidu/cyberplayer/core/CyberPlayer$OnPlayingBufferCacheListener;,
        Lcom/baidu/cyberplayer/core/CyberPlayer$OnBufferingUpdateListener;,
        Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionWithParamListener;,
        Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionListener;,
        Lcom/baidu/cyberplayer/core/CyberPlayer$OnPreparedListener;,
        Lcom/baidu/cyberplayer/core/CyberPlayer$a;,
        Lcom/baidu/cyberplayer/core/CyberPlayer$b;
    }
.end annotation


# static fields
.field public static final DECODE_HW:I = 0x0

.field public static final DECODE_MHW:I = 0x2

.field public static final DECODE_MHW_AUTO:I = 0x3

.field public static final DECODE_SW:I = 0x1

.field public static final MEDIA_ERROR_EIO:I = 0x131

.field public static final MEDIA_ERROR_INVALID_INPUTFILE:I = 0x12e

.field public static final MEDIA_ERROR_MC_EXCEPTION:I = -0x7d0

.field public static final MEDIA_ERROR_MC_LOW_SYSTEM_VERSION:I = -0x7d1

.field public static final MEDIA_ERROR_MC_NOT_SUPPORT:I = -0x7d2

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_NO_INPUTFILE:I = 0x12d

.field public static final MEDIA_ERROR_NO_SUPPORTED_CODEC:I = 0x12f

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_SET_VIDEOMODE:I = 0x130

.field public static final MEDIA_ERROR_UAS_ERRORPARAM:I = 0x201

.field public static final MEDIA_ERROR_UAS_ERR_USER_SIGN:I = 0x222

.field public static final MEDIA_ERROR_UAS_USER_NOT_EXIT:I = 0x21f

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_PLAYING_AVDIFFERENCE:I = 0x353

.field public static final MEDIA_INFO_PLAYING_QUALITY:I = 0x352

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# instance fields
.field private a:D

.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/media/MediaPlayer;

.field private a:Landroid/os/HandlerThread;

.field private a:Lcom/baidu/cyberplayer/core/CBMetaData;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnBufferingUpdateListener;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionListener;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionWithParamListener;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnErrorListener;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnInfoListener;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnOnNetworkSpeedListener;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnPlayingBufferCacheListener;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnPreparedListener;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnSeekCompleteListener;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnVideoSizeChangedListener;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayer$a;

.field private volatile a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

.field private a:Lcom/baidu/cyberplayer/utils/l$a;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const-string v0, ""

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer;->c:Ljava/lang/String;

    .line 72
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer;->d:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer;->e:Ljava/lang/String;

    .line 82
    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "CyberPlayer"

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    .line 49
    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    .line 50
    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/content/Context;

    .line 60
    const/4 v1, 0x1

    iput v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:I

    .line 65
    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->b:Ljava/lang/String;

    .line 68
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Z

    .line 69
    const/16 v3, 0x431

    iput v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->b:I

    .line 74
    iput v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->c:I

    .line 75
    iput v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->d:I

    .line 76
    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/utils/l$a;

    .line 77
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:D

    .line 79
    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    .line 89
    sget-object v3, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    iput-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    .line 172
    const/4 v3, 0x2

    iput v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->e:I

    .line 205
    iput v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->f:I

    .line 206
    iput v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->g:I

    .line 1044
    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionWithParamListener;

    .line 369
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/content/Context;

    .line 371
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "player event handler thread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/os/HandlerThread;

    .line 373
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 374
    new-instance v0, Lcom/baidu/cyberplayer/core/CyberPlayer$a;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayer$a;-><init>(Lcom/baidu/cyberplayer/core/CyberPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$a;

    .line 378
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 379
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 381
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 382
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 383
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->c:I

    .line 384
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->d:I

    .line 387
    invoke-static {}, Lcom/baidu/cyberplayer/utils/l;->a()Lcom/baidu/cyberplayer/utils/l$a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/utils/l$a;

    .line 390
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/utils/l$a;

    iget v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->c:I

    iget v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->d:I

    invoke-static {v0, v1, v2}, Lcom/baidu/cyberplayer/utils/l;->a(Lcom/baidu/cyberplayer/utils/l$a;II)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:D

    .line 393
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|cpu type =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/utils/l$a;

    iget v2, v2, Lcom/baidu/cyberplayer/utils/l$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|cpu count =  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/utils/l$a;

    iget v3, v3, Lcom/baidu/cyberplayer/utils/l$a;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|cpu max freq =  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/utils/l$a;

    iget-wide v3, v3, Lcom/baidu/cyberplayer/utils/l$a;->a:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|screen resolution =  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->d:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|device ability =  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-nez v0, :cond_1

    .line 401
    new-instance v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    .line 402
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()V

    .line 403
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$c;)V

    .line 404
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;)V

    .line 405
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;)V

    .line 406
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$f;)V

    .line 407
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$g;)V

    .line 408
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$k;)V

    .line 409
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$j;)V

    .line 410
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$l;)V

    .line 411
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$m;)V

    .line 412
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$i;)V

    .line 413
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$h;)V

    .line 414
    sget-boolean v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Z

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/q;->c(Ljava/lang/String;)V

    .line 416
    new-instance v0, Lcom/baidu/cyberplayer/utils/VersionManager;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/VersionManager;-><init>()V

    .line 417
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CyberPlayer version["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v3}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], SDK version["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/VersionManager;->getCurrentVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j(Ljava/lang/String;)V

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    .line 425
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    .line 426
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 427
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 428
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 429
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 430
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 431
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 432
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 436
    :cond_2
    invoke-static {}, Lcom/baidu/cyberplayer/utils/VersionManager;->getInstance()Lcom/baidu/cyberplayer/utils/VersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/VersionManager;->getCurrentVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/q;->b(Ljava/lang/String;)V

    .line 438
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    .line 439
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayer;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:I

    return p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Lcom/baidu/cyberplayer/core/CBMetaData;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayer;Lcom/baidu/cyberplayer/core/CBMetaData;)Lcom/baidu/cyberplayer/core/CBMetaData;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayer;Lcom/baidu/cyberplayer/core/CyberPlayer$b;)Lcom/baidu/cyberplayer/core/CyberPlayer$b;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Lcom/baidu/cyberplayer/core/CyberPlayerCore;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a(II)Ljava/lang/String;
    .locals 8

    .line 563
    nop

    .line 565
    iget-wide v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:D

    const-wide/16 v2, 0x0

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v6, v0, v2

    if-lez v6, :cond_1

    iget-wide v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:D

    cmpg-double v2, v0, v4

    if-gtz v2, :cond_1

    .line 566
    const/16 v0, 0xf0

    if-gt p2, v0, :cond_0

    const/16 p2, 0x140

    if-le p1, p2, :cond_7

    .line 567
    :cond_0
    const-string p1, "1072"

    goto :goto_0

    .line 568
    :cond_1
    iget-wide v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:D

    const/16 v2, 0x1e0

    const-wide v6, 0x3fd999999999999aL    # 0.4

    cmpl-double v3, v0, v4

    if-lez v3, :cond_3

    iget-wide v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:D

    cmpg-double v3, v0, v6

    if-gtz v3, :cond_3

    .line 569
    const/16 v0, 0x168

    if-gt p2, v0, :cond_2

    if-le p1, v2, :cond_7

    .line 570
    :cond_2
    const-string p1, "1073"

    goto :goto_0

    .line 571
    :cond_3
    iget-wide v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:D

    const-wide v3, 0x3fe6666666666666L    # 0.7

    cmpl-double v5, v0, v6

    if-lez v5, :cond_5

    iget-wide v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:D

    cmpg-double v5, v0, v3

    if-gtz v5, :cond_5

    .line 572
    if-gt p2, v2, :cond_4

    const/16 p2, 0x280

    if-le p1, p2, :cond_7

    .line 573
    :cond_4
    const-string p1, "1074"

    goto :goto_0

    .line 574
    :cond_5
    iget-wide v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:D

    cmpl-double v2, v0, v3

    if-lez v2, :cond_7

    iget-wide v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_7

    .line 575
    const/16 v0, 0x2d0

    if-gt p2, v0, :cond_6

    const/16 p2, 0x500

    if-le p1, p2, :cond_7

    .line 576
    :cond_6
    const-string p1, "1075"

    goto :goto_0

    .line 578
    :cond_7
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayer;II)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/baidu/cyberplayer/core/CyberPlayer;->a(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/CyberPlayer;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/core/CyberPlayer;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->e:I

    return p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/core/CyberPlayer;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomizedPlayerIdForHLS()Ljava/lang/String;
    .locals 1

    .line 559
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static setBAEKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "accessKey"    # Ljava/lang/String;
    .param p1, "secretKey"    # Ljava/lang/String;

    .line 147
    sput-object p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->c:Ljava/lang/String;

    .line 148
    sput-object p1, Lcom/baidu/cyberplayer/core/CyberPlayer;->d:Ljava/lang/String;

    .line 149
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/q;->a(Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer;->c:Ljava/lang/String;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static setCacheTime(F)V
    .locals 0
    .param p0, "timeSec"    # F

    .line 118
    invoke-static {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(F)V

    .line 119
    return-void
.end method

.method public static setCustomHttpHeader(Ljava/lang/String;)V
    .locals 0
    .param p0, "httpHeaderBuffer"    # Ljava/lang/String;

    .line 130
    invoke-static {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static setCustomizedPlayerIdForHLS(Ljava/lang/String;)V
    .locals 1
    .param p0, "playerId"    # Ljava/lang/String;

    .line 553
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    sput-object p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->e:Ljava/lang/String;

    .line 556
    :cond_0
    return-void
.end method

.method protected static setCustomizedPlayerKeyForHLS(Ljava/lang/String;)V
    .locals 1
    .param p0, "playerKey"    # Ljava/lang/String;

    .line 1510
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1511
    sput-object p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->f:Ljava/lang/String;

    .line 1513
    :cond_0
    return-void
.end method

.method public static setEnableDolby(Z)V
    .locals 0
    .param p0, "bEnableDolby"    # Z

    .line 141
    invoke-static {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b(Z)V

    .line 142
    return-void
.end method

.method public static setEnableP2p(Z)V
    .locals 0
    .param p0, "bEnableP2p"    # Z

    .line 138
    invoke-static {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Z)V

    .line 139
    return-void
.end method

.method public static setExtSubtitleFile(Ljava/lang/String;)V
    .locals 0
    .param p0, "extSubtitleFile"    # Ljava/lang/String;

    .line 154
    invoke-static {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "level"    # I

    .line 99
    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/m;->a(I)V

    .line 100
    invoke-static {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(I)V

    .line 101
    return-void
.end method

.method public static setNativeBufferSize(J)V
    .locals 0
    .param p0, "size"    # J

    .line 110
    invoke-static {p0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(J)V

    .line 111
    return-void
.end method

.method public static setNativeFilesDirectory(Ljava/lang/String;)V
    .locals 0
    .param p0, "nativeFilesDir"    # Ljava/lang/String;

    .line 162
    invoke-static {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public static setNativeLibsFileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "playerName"    # Ljava/lang/String;
    .param p1, "ffmpegName"    # Ljava/lang/String;

    .line 167
    invoke-static {p0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public static setNativeLlibsDirectory(Ljava/lang/String;)V
    .locals 0
    .param p0, "nativeLibsDir"    # Ljava/lang/String;

    .line 158
    invoke-static {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public static setP2pCachePath(Ljava/lang/String;)V
    .locals 0
    .param p0, "strP2pCachePath"    # Ljava/lang/String;

    .line 134
    invoke-static {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static setParametKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "strKey"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 126
    invoke-static {p0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static setRetainLastFrame(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 144
    invoke-static {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c(Z)V

    .line 145
    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p0, "ua"    # Ljava/lang/String;

    .line 122
    invoke-static {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c(Ljava/lang/String;)V

    .line 123
    return-void
.end method


# virtual methods
.method public getCurrentDecodeMode()I
    .locals 1

    .line 477
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:I

    return v0
.end method

.method public getCurrentPlayingUrl()Ljava/lang/String;
    .locals 1

    .line 872
    nop

    .line 873
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 873
    :cond_0
    const/4 v0, 0x0

    .line 876
    :goto_0
    return-object v0
.end method

.method public getCurrentPositionInMsecs()D
    .locals 5

    .line 859
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-ne v0, v1, :cond_1

    .line 860
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    return-wide v3

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_1

    .line 865
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()D

    move-result-wide v3

    mul-double v3, v3, v1

    return-wide v3

    .line 868
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()D
    .locals 4

    .line 885
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-ne v0, v1, :cond_1

    .line 886
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:I

    if-nez v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 888
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_1

    .line 891
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b()D

    move-result-wide v0

    return-wide v0

    .line 894
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration(I)D
    .locals 4
    .param p1, "mode"    # I

    .line 898
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 899
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:I

    if-nez v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 901
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_2

    .line 904
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b()D

    move-result-wide v0

    return-wide v0

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:I

    if-eqz v0, :cond_2

    .line 907
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(I)D

    .line 910
    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportedBitrateKb()[I
    .locals 1

    .line 1496
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()[I

    move-result-object v0

    return-object v0

    .line 1499
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedResolutionKb()[Ljava/lang/String;
    .locals 1

    .line 1503
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1506
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 484
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 2

    .line 724
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-ne v0, v1, :cond_1

    .line 725
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:I

    if-nez v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c()I

    move-result v0

    return v0

    .line 733
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-ne v0, v1, :cond_1

    .line 702
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:I

    if-nez v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b()I

    move-result v0

    return v0

    .line 711
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 808
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-ne v0, v1, :cond_1

    .line 809
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:I

    if-nez v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Z

    move-result v0

    return v0

    .line 817
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public manualSyncSubtitle(I)V
    .locals 2
    .param p1, "mSec"    # I

    .line 762
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-ne v0, v1, :cond_0

    .line 763
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h(I)V

    .line 765
    :cond_0
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I

    .line 1435
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, p0, p2}, Lcom/baidu/cyberplayer/core/CyberPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/baidu/cyberplayer/core/CyberPlayer;I)V

    .line 1437
    :cond_0
    return-void
.end method

.method public onBufferingUpdate(Lcom/baidu/cyberplayer/core/CyberPlayerCore;I)V
    .locals 1
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayerCore;
    .param p2, "percent"    # I

    .line 1359
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, p0, p2}, Lcom/baidu/cyberplayer/core/CyberPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/baidu/cyberplayer/core/CyberPlayer;I)V

    .line 1361
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .line 1470
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    .line 1471
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionListener;

    invoke-interface {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionListener;->onCompletion(Lcom/baidu/cyberplayer/core/CyberPlayer;)V

    .line 1473
    :cond_0
    return-void
.end method

.method public onCompletion(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)V
    .locals 1
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    .line 1388
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    .line 1389
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionListener;

    invoke-interface {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionListener;->onCompletion(Lcom/baidu/cyberplayer/core/CyberPlayer;)V

    .line 1391
    :cond_0
    return-void
.end method

.method public onCompletionWithParam(Lcom/baidu/cyberplayer/core/CyberPlayerCore;I)V
    .locals 1
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayerCore;
    .param p2, "param"    # I

    .line 1396
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionWithParamListener;

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionWithParamListener;

    invoke-interface {v0, p0, p2}, Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionWithParamListener;->onCompletionWithParam(Lcom/baidu/cyberplayer/core/CyberPlayer;I)V

    .line 1398
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 1455
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    .line 1456
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnErrorListener;

    invoke-interface {v0, p0, p2, p3}, Lcom/baidu/cyberplayer/core/CyberPlayer$OnErrorListener;->onError(Lcom/baidu/cyberplayer/core/CyberPlayer;II)Z

    move-result v0

    return v0

    .line 1458
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onError(Lcom/baidu/cyberplayer/core/CyberPlayerCore;II)Z
    .locals 1
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayerCore;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 1365
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    .line 1366
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnErrorListener;

    invoke-interface {v0, p0, p2, p3}, Lcom/baidu/cyberplayer/core/CyberPlayer$OnErrorListener;->onError(Lcom/baidu/cyberplayer/core/CyberPlayer;II)Z

    move-result v0

    return v0

    .line 1368
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 1422
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnInfoListener;

    invoke-interface {v0, p0, p2, p3}, Lcom/baidu/cyberplayer/core/CyberPlayer$OnInfoListener;->onInfo(Lcom/baidu/cyberplayer/core/CyberPlayer;II)Z

    move-result v0

    return v0

    .line 1424
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onInfo(Lcom/baidu/cyberplayer/core/CyberPlayerCore;II)Z
    .locals 1
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayerCore;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 1409
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnInfoListener;

    invoke-interface {v0, p0, p2, p3}, Lcom/baidu/cyberplayer/core/CyberPlayer$OnInfoListener;->onInfo(Lcom/baidu/cyberplayer/core/CyberPlayer;II)Z

    move-result v0

    return v0

    .line 1411
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNetworkSpeedUpdate(Lcom/baidu/cyberplayer/core/CyberPlayerCore;I)V
    .locals 1
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayerCore;
    .param p2, "speed"    # I

    .line 1449
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnOnNetworkSpeedListener;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnOnNetworkSpeedListener;

    invoke-interface {v0, p0, p2}, Lcom/baidu/cyberplayer/core/CyberPlayer$OnOnNetworkSpeedListener;->onOnNetworkSpeedUpdate(Lcom/baidu/cyberplayer/core/CyberPlayer;I)V

    .line 1451
    :cond_0
    return-void
.end method

.method public onPlayingBufferCache(Lcom/baidu/cyberplayer/core/CyberPlayerCore;I)V
    .locals 1
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayerCore;
    .param p2, "percent"    # I

    .line 1442
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnPlayingBufferCacheListener;

    if-eqz v0, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnPlayingBufferCacheListener;

    invoke-interface {v0, p0, p2}, Lcom/baidu/cyberplayer/core/CyberPlayer$OnPlayingBufferCacheListener;->onPlayingBufferCache(Lcom/baidu/cyberplayer/core/CyberPlayer;I)V

    .line 1444
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .line 1463
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    .line 1464
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnPreparedListener;

    invoke-interface {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayer$OnPreparedListener;->onPrepared(Lcom/baidu/cyberplayer/core/CyberPlayer;)V

    .line 1466
    :cond_0
    return-void
.end method

.method public onPrepared(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)V
    .locals 1
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    .line 1373
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    .line 1374
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnPreparedListener;

    invoke-interface {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayer$OnPreparedListener;->onPrepared(Lcom/baidu/cyberplayer/core/CyberPlayer;)V

    .line 1376
    :cond_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .line 1429
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnSeekCompleteListener;

    invoke-interface {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/baidu/cyberplayer/core/CyberPlayer;)V

    .line 1431
    :cond_0
    return-void
.end method

.method public onSeekComplete(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)V
    .locals 1
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    .line 1353
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnSeekCompleteListener;

    invoke-interface {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/baidu/cyberplayer/core/CyberPlayer;)V

    .line 1355
    :cond_0
    return-void
.end method

.method public onStatusChanged(Lcom/baidu/cyberplayer/core/CyberPlayerCore;I)V
    .locals 0
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayerCore;
    .param p2, "isPlaying"    # I

    .line 1384
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 1416
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnVideoSizeChangedListener;

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnVideoSizeChangedListener;

    invoke-interface {v0, p0, p2, p3}, Lcom/baidu/cyberplayer/core/CyberPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/baidu/cyberplayer/core/CyberPlayer;II)V

    .line 1418
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Lcom/baidu/cyberplayer/core/CyberPlayerCore;II)V
    .locals 1
    .param p1, "mp"    # Lcom/baidu/cyberplayer/core/CyberPlayerCore;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1402
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnVideoSizeChangedListener;

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnVideoSizeChangedListener;

    invoke-interface {v0, p0, p2, p3}, Lcom/baidu/cyberplayer/core/CyberPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/baidu/cyberplayer/core/CyberPlayer;II)V

    .line 1404
    :cond_0
    return-void
.end method

.method public openExtSubFile(Ljava/lang/String;)I
    .locals 2
    .param p1, "subFilePath"    # Ljava/lang/String;

    .line 789
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-ne v0, v1, :cond_0

    .line 795
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 800
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-ne v0, v1, :cond_1

    .line 681
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:I

    if-nez v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f()V

    .line 689
    :cond_1
    :goto_0
    return-void
.end method

.method public prepareAsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->sendEmptyMessage(I)Z

    .line 544
    return-void
.end method

.method public release()V
    .locals 3

    .line 919
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 921
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()V

    .line 925
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    .line 928
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$a;

    if-eqz v0, :cond_2

    .line 929
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->removeMessages(I)V

    .line 930
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->removeMessages(I)V

    .line 931
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$a;

    .line 934
    :cond_2
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 935
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 936
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/os/HandlerThread;

    .line 938
    :cond_3
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnPreparedListener;

    .line 939
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionListener;

    .line 940
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionWithParamListener;

    .line 941
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnBufferingUpdateListener;

    .line 942
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnPlayingBufferCacheListener;

    .line 943
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnOnNetworkSpeedListener;

    .line 944
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnSeekCompleteListener;

    .line 945
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnVideoSizeChangedListener;

    .line 946
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnErrorListener;

    .line 947
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnInfoListener;

    .line 948
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    .line 949
    return-void
.end method

.method public reset()V
    .locals 2

    .line 957
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-ne v0, v1, :cond_0

    .line 958
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->removeMessages(I)V

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_2

    .line 964
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h()V

    .line 966
    :cond_2
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    .line 967
    return-void
.end method

.method public seekTo(D)V
    .locals 3
    .param p1, "msec"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 829
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->c:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-ne v0, v1, :cond_2

    .line 831
    :cond_0
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:I

    if-nez v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 833
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, p1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_2

    .line 836
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(D)V

    .line 839
    :cond_2
    :goto_0
    return-void
.end method

.method public selectResolutionType(I)V
    .locals 1
    .param p1, "resIndex"    # I

    .line 848
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeSetResolutionType(I)V

    .line 851
    :cond_0
    return-void
.end method

.method public setAutoVideoCloudTranscoding(Z)V
    .locals 0
    .param p1, "enableCVT"    # Z

    .line 196
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Z

    .line 198
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    if-nez p1, :cond_0

    .line 526
    return-void

    .line 528
    :cond_0
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->b:Ljava/lang/String;

    .line 529
    return-void
.end method

.method public setDecodeMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .line 495
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 499
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 504
    :cond_0
    return v2

    .line 501
    :cond_1
    :goto_0
    iput p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:I

    .line 502
    return v0

    .line 509
    :cond_2
    return v2
.end method

.method public setDisplay(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)V
    .locals 2
    .param p1, "sv"    # Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 452
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:I

    if-nez v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 454
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 461
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)V

    .line 469
    :cond_2
    :goto_0
    return-void
.end method

.method public setEnableFastStart(I)V
    .locals 1
    .param p1, "isEnable"    # I

    .line 842
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->nativeSetEnableFastStart(I)V

    .line 845
    :cond_0
    return-void
.end method

.method public setLocalDecryptKeyForHLS(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 547
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h(Ljava/lang/String;)V

    .line 550
    :cond_0
    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/baidu/cyberplayer/core/CyberPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/baidu/cyberplayer/core/CyberPlayer$OnBufferingUpdateListener;

    .line 1072
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnBufferingUpdateListener;

    .line 1073
    return-void
.end method

.method public setOnCompletionListener(Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionListener;

    .line 1029
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionListener;

    .line 1030
    return-void
.end method

.method public setOnCompletionWithParamListener(Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionWithParamListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionWithParamListener;

    .line 1041
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionWithParamListener;

    .line 1042
    return-void
.end method

.method public setOnErrorListener(Lcom/baidu/cyberplayer/core/CyberPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/baidu/cyberplayer/core/CyberPlayer$OnErrorListener;

    .line 1248
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnErrorListener;

    .line 1249
    return-void
.end method

.method public setOnInfoListener(Lcom/baidu/cyberplayer/core/CyberPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/baidu/cyberplayer/core/CyberPlayer$OnInfoListener;

    .line 1346
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnInfoListener;

    .line 1347
    return-void
.end method

.method public setOnNetworkSpeedListener(Lcom/baidu/cyberplayer/core/CyberPlayer$OnOnNetworkSpeedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/baidu/cyberplayer/core/CyberPlayer$OnOnNetworkSpeedListener;

    .line 1093
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnOnNetworkSpeedListener;

    .line 1094
    return-void
.end method

.method public setOnPlayingBufferCacheListener(Lcom/baidu/cyberplayer/core/CyberPlayer$OnPlayingBufferCacheListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/baidu/cyberplayer/core/CyberPlayer$OnPlayingBufferCacheListener;

    .line 1083
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnPlayingBufferCacheListener;

    .line 1084
    return-void
.end method

.method public setOnPreparedListener(Lcom/baidu/cyberplayer/core/CyberPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/baidu/cyberplayer/core/CyberPlayer$OnPreparedListener;

    .line 991
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnPreparedListener;

    .line 992
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/baidu/cyberplayer/core/CyberPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/baidu/cyberplayer/core/CyberPlayer$OnSeekCompleteListener;

    .line 1120
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnSeekCompleteListener;

    .line 1121
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/baidu/cyberplayer/core/CyberPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/baidu/cyberplayer/core/CyberPlayer$OnVideoSizeChangedListener;

    .line 1152
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnVideoSizeChangedListener;

    .line 1153
    return-void
.end method

.method public setSubtitleAlignMethod(I)V
    .locals 2
    .param p1, "iAlignMethod"    # I

    .line 756
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-ne v0, v1, :cond_0

    .line 757
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g(I)V

    .line 759
    :cond_0
    return-void
.end method

.method public setSubtitleColor(I)V
    .locals 2
    .param p1, "iColor"    # I

    .line 743
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-ne v0, v1, :cond_0

    .line 744
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e(I)V

    .line 747
    :cond_0
    return-void
.end method

.method public setSubtitleFontScale(I)V
    .locals 2
    .param p1, "iFontScale"    # I

    .line 750
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-ne v0, v1, :cond_0

    .line 751
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f(I)V

    .line 753
    :cond_0
    return-void
.end method

.method public setSubtitleVisibility(I)V
    .locals 2
    .param p1, "isShow"    # I

    .line 737
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-ne v0, v1, :cond_0

    .line 738
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d(I)V

    .line 740
    :cond_0
    return-void
.end method

.method public setVideoCloudTransLevel(I)V
    .locals 0
    .param p1, "transcodeLevel"    # I

    .line 201
    iput p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->b:I

    .line 203
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 175
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iput v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->e:I

    goto :goto_1

    .line 177
    :cond_1
    :goto_0
    iput p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->e:I

    .line 182
    :goto_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-eq v0, v1, :cond_3

    .line 185
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:I

    if-nez v0, :cond_2

    .line 186
    nop

    .line 187
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->e:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    goto :goto_2

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->e:I

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c(I)V

    .line 193
    :cond_3
    :goto_2
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->c:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-ne v0, v1, :cond_2

    .line 633
    :cond_0
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:I

    if-nez v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d()V

    .line 647
    :cond_2
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->c:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-ne v0, v1, :cond_3

    .line 668
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayer$a;->removeMessages(I)V

    .line 669
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    goto :goto_1

    .line 658
    :cond_1
    :goto_0
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:I

    if-nez v0, :cond_2

    .line 659
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 660
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 661
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionListener;

    invoke-interface {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayer$OnCompletionListener;->onCompletion(Lcom/baidu/cyberplayer/core/CyberPlayer;)V

    goto :goto_1

    .line 664
    :cond_2
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_3

    .line 665
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e()V

    .line 671
    :cond_3
    :goto_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 1479
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 1484
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1485
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 1489
    return-void
.end method

.method public takeSnapshot()Landroid/graphics/Bitmap;
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    if-ne v0, v1, :cond_0

    .line 780
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayer;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 785
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
