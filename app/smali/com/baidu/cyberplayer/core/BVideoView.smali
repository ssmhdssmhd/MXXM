.class public Lcom/baidu/cyberplayer/core/BVideoView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;
.implements Lcom/baidu/cyberplayer/core/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;,
        Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionWithParamListener;,
        Lcom/baidu/cyberplayer/core/BVideoView$OnNetworkSpeedListener;,
        Lcom/baidu/cyberplayer/core/BVideoView$OnSeekCompleteListener;,
        Lcom/baidu/cyberplayer/core/BVideoView$OnPlayingBufferCacheListener;,
        Lcom/baidu/cyberplayer/core/BVideoView$OnTotalCacheUpdateListener;,
        Lcom/baidu/cyberplayer/core/BVideoView$OnPositionUpdateListener;,
        Lcom/baidu/cyberplayer/core/BVideoView$OnInfoListener;,
        Lcom/baidu/cyberplayer/core/BVideoView$OnErrorListener;,
        Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionListener;,
        Lcom/baidu/cyberplayer/core/BVideoView$OnPreparedListener;
    }
.end annotation


# static fields
.field public static final BMP_OBJECT:I = 0x3

.field public static final DECODE_HW:I = 0x0

.field public static final DECODE_MHW:I = 0x2

.field public static final DECODE_MHW_AUTO:I = 0x3

.field public static final DECODE_SW:I = 0x1

.field public static final MEDIA_ERROR_DISPLAY:I = 0x130

.field public static final MEDIA_ERROR_EIO:I = 0x131

.field public static final MEDIA_ERROR_INVALID_INPUTFILE:I = 0x12e

.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_MC_EXCEPTION:I = -0x7d0

.field public static final MEDIA_ERROR_MC_LOW_SYSTEM_VERSION:I = -0x7d1

.field public static final MEDIA_ERROR_MC_NOT_SUPPORT:I = -0x7d2

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_NO_INPUTFILE:I = 0x12d

.field public static final MEDIA_ERROR_NO_SUPPORTED_CODEC:I = 0x12f

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UAS_ERRORPARAM:I = 0x201

.field public static final MEDIA_ERROR_UAS_ERR_USER_SIGN:I = 0x222

.field public static final MEDIA_ERROR_UAS_USER_NOT_EXIT:I = 0x21f

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_PLAYING_AVDIFFERENCE:I = 0x353

.field public static final MEDIA_INFO_PLAYING_QUALITY:I = 0x352

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final RAW_ARGB8888:I = 0x2

.field public static final RAW_RGB565:I = 0x1

.field public static final RAW_YUV420:I = 0x0

.field public static final RESOLUTION_TYPE_AUTO:I = -0x1

.field public static final RESOLUTION_TYPE_HD:I = 0x2

.field public static final RESOLUTION_TYPE_LD:I = 0x0

.field public static final RESOLUTION_TYPE_SD:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2

.field private static a:Lcom/baidu/cyberplayer/core/CBMetaData;

.field private static a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/lang/String;

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static i:I

.field private static j:I


# instance fields
.field private volatile a:D

.field private volatile a:I

.field private a:J

.field private a:Landroid/content/Context;

.field private a:Landroid/content/SharedPreferences;

.field a:Landroid/os/Handler;

.field private a:Landroid/widget/ProgressBar;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Landroid/widget/TextView;

.field private a:Lcom/baidu/cyberplayer/core/BMediaController;

.field private a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionListener;

.field private a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionWithParamListener;

.field private a:Lcom/baidu/cyberplayer/core/BVideoView$OnErrorListener;

.field private a:Lcom/baidu/cyberplayer/core/BVideoView$OnInfoListener;

.field private a:Lcom/baidu/cyberplayer/core/BVideoView$OnNetworkSpeedListener;

.field private a:Lcom/baidu/cyberplayer/core/BVideoView$OnPlayingBufferCacheListener;

.field private a:Lcom/baidu/cyberplayer/core/BVideoView$OnPositionUpdateListener;

.field private a:Lcom/baidu/cyberplayer/core/BVideoView$OnPreparedListener;

.field private a:Lcom/baidu/cyberplayer/core/BVideoView$OnSeekCompleteListener;

.field private a:Lcom/baidu/cyberplayer/core/BVideoView$OnTotalCacheUpdateListener;

.field private a:Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

.field private a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

.field private a:Lcom/baidu/cyberplayer/core/b$c;

.field private a:Lcom/baidu/cyberplayer/core/b;

.field private a:Lcom/baidu/cyberplayer/core/f;

.field private a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

.field private a:Lcom/baidu/cyberplayer/subtitle/c;

.field private a:Ljava/lang/String;

.field private volatile a:Z

.field private b:D

.field private volatile b:I

.field private b:Landroid/widget/TextView;

.field private c:D

.field private volatile c:I

.field private c:Landroid/widget/TextView;

.field private c:Z

.field private d:I

.field private d:Landroid/widget/TextView;

.field private final d:Ljava/lang/String;

.field private d:Z

.field private e:I

.field private final e:Ljava/lang/String;

.field private e:Z

.field private f:I

.field private f:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private final g:Ljava/lang/String;

.field private g:Z

.field private h:I

.field private final h:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    .line 92
    sput-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    .line 436
    const-string v0, ""

    sput-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Ljava/lang/String;

    .line 437
    sput-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->c:Ljava/lang/String;

    .line 445
    const/4 v0, -0x1

    sput v0, Lcom/baidu/cyberplayer/core/BVideoView;->i:I

    .line 446
    sput v0, Lcom/baidu/cyberplayer/core/BVideoView;->j:I

    .line 481
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 795
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Z

    .line 85
    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:I

    .line 86
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:D

    .line 87
    iput v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:I

    .line 88
    iput v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:I

    .line 406
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnSeekCompleteListener;

    .line 412
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/ProgressBar;

    .line 413
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/TextView;

    .line 414
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Landroid/widget/TextView;

    .line 419
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    .line 421
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:Z

    .line 422
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Z

    .line 424
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    .line 425
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 426
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/RelativeLayout;

    .line 427
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Ljava/lang/String;

    .line 428
    iput v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:I

    .line 429
    sget-object v3, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    iput-object v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b$c;

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:J

    .line 431
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:Landroid/widget/TextView;

    .line 432
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:Z

    .line 433
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    .line 434
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    .line 439
    const/16 v3, 0xc8

    iput v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:I

    .line 440
    const/16 v3, 0x1e

    iput v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:I

    .line 441
    iput v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:I

    .line 443
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:D

    .line 444
    iput v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:I

    .line 469
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:Z

    .line 470
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:Z

    .line 472
    const-string v5, "CyberPlayer_Used_By_JarAndSo_Mode"

    iput-object v5, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Ljava/lang/String;

    .line 473
    const-string v6, "CyberPlayer_Used_By_Reflect_Mode"

    iput-object v6, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:Ljava/lang/String;

    .line 478
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:Z

    .line 479
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->i:Z

    .line 480
    iput-wide v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:D

    .line 483
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPreparedListener;

    .line 484
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionListener;

    .line 485
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnErrorListener;

    .line 486
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnInfoListener;

    .line 487
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPositionUpdateListener;

    .line 488
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnTotalCacheUpdateListener;

    .line 493
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPlayingBufferCacheListener;

    .line 498
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnNetworkSpeedListener;

    .line 502
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionWithParamListener;

    .line 581
    new-instance v0, Lcom/baidu/cyberplayer/core/BVideoView$1;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/core/BVideoView$1;-><init>(Lcom/baidu/cyberplayer/core/BVideoView;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    .line 939
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->j:Z

    .line 1263
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:I

    .line 1265
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:Z

    .line 1371
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/SharedPreferences;

    .line 1372
    const-string v0, "cyberplayer_state"

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:Ljava/lang/String;

    .line 1373
    const-string v0, "ak_checke_state"

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:Ljava/lang/String;

    .line 1374
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->l:Z

    .line 797
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/Context;

    .line 798
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:Ljava/lang/String;

    .line 799
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->c()V

    .line 800
    invoke-static {v5}, Lcom/baidu/cyberplayer/utils/q;->d(Ljava/lang/String;)V

    .line 801
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 809
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Z

    .line 85
    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:I

    .line 86
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:D

    .line 87
    iput v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:I

    .line 88
    iput v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:I

    .line 406
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnSeekCompleteListener;

    .line 412
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/ProgressBar;

    .line 413
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/TextView;

    .line 414
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Landroid/widget/TextView;

    .line 419
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    .line 421
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:Z

    .line 422
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Z

    .line 424
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    .line 425
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 426
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/RelativeLayout;

    .line 427
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Ljava/lang/String;

    .line 428
    iput v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:I

    .line 429
    sget-object v3, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    iput-object v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b$c;

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:J

    .line 431
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:Landroid/widget/TextView;

    .line 432
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:Z

    .line 433
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    .line 434
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    .line 439
    const/16 v3, 0xc8

    iput v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:I

    .line 440
    const/16 v3, 0x1e

    iput v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:I

    .line 441
    iput v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:I

    .line 443
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:D

    .line 444
    iput v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:I

    .line 469
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:Z

    .line 470
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:Z

    .line 472
    const-string v5, "CyberPlayer_Used_By_JarAndSo_Mode"

    iput-object v5, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Ljava/lang/String;

    .line 473
    const-string v6, "CyberPlayer_Used_By_Reflect_Mode"

    iput-object v6, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:Ljava/lang/String;

    .line 478
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:Z

    .line 479
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->i:Z

    .line 480
    iput-wide v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:D

    .line 483
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPreparedListener;

    .line 484
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionListener;

    .line 485
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnErrorListener;

    .line 486
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnInfoListener;

    .line 487
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPositionUpdateListener;

    .line 488
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnTotalCacheUpdateListener;

    .line 493
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPlayingBufferCacheListener;

    .line 498
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnNetworkSpeedListener;

    .line 502
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionWithParamListener;

    .line 581
    new-instance v0, Lcom/baidu/cyberplayer/core/BVideoView$1;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/core/BVideoView$1;-><init>(Lcom/baidu/cyberplayer/core/BVideoView;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    .line 939
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->j:Z

    .line 1263
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:I

    .line 1265
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:Z

    .line 1371
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/SharedPreferences;

    .line 1372
    const-string v0, "cyberplayer_state"

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:Ljava/lang/String;

    .line 1373
    const-string v0, "ak_checke_state"

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:Ljava/lang/String;

    .line 1374
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->l:Z

    .line 811
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/Context;

    .line 812
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:Ljava/lang/String;

    .line 813
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->c()V

    .line 814
    invoke-static {v5}, Lcom/baidu/cyberplayer/utils/q;->d(Ljava/lang/String;)V

    .line 815
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 825
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Z

    .line 85
    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:I

    .line 86
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:D

    .line 87
    iput v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:I

    .line 88
    iput v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:I

    .line 406
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnSeekCompleteListener;

    .line 412
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/ProgressBar;

    .line 413
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/TextView;

    .line 414
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Landroid/widget/TextView;

    .line 419
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    .line 421
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:Z

    .line 422
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Z

    .line 424
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    .line 425
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 426
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/RelativeLayout;

    .line 427
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Ljava/lang/String;

    .line 428
    iput v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:I

    .line 429
    sget-object v3, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    iput-object v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b$c;

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:J

    .line 431
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:Landroid/widget/TextView;

    .line 432
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:Z

    .line 433
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    .line 434
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    .line 439
    const/16 v3, 0xc8

    iput v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:I

    .line 440
    const/16 v3, 0x1e

    iput v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:I

    .line 441
    iput v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:I

    .line 443
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:D

    .line 444
    iput v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:I

    .line 469
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:Z

    .line 470
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:Z

    .line 472
    const-string v5, "CyberPlayer_Used_By_JarAndSo_Mode"

    iput-object v5, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Ljava/lang/String;

    .line 473
    const-string v6, "CyberPlayer_Used_By_Reflect_Mode"

    iput-object v6, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:Ljava/lang/String;

    .line 478
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:Z

    .line 479
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->i:Z

    .line 480
    iput-wide v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:D

    .line 483
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPreparedListener;

    .line 484
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionListener;

    .line 485
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnErrorListener;

    .line 486
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnInfoListener;

    .line 487
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPositionUpdateListener;

    .line 488
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnTotalCacheUpdateListener;

    .line 493
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPlayingBufferCacheListener;

    .line 498
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnNetworkSpeedListener;

    .line 502
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionWithParamListener;

    .line 581
    new-instance v0, Lcom/baidu/cyberplayer/core/BVideoView$1;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/core/BVideoView$1;-><init>(Lcom/baidu/cyberplayer/core/BVideoView;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    .line 939
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->j:Z

    .line 1263
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:I

    .line 1265
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:Z

    .line 1371
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/SharedPreferences;

    .line 1372
    const-string v0, "cyberplayer_state"

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:Ljava/lang/String;

    .line 1373
    const-string v0, "ak_checke_state"

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:Ljava/lang/String;

    .line 1374
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->l:Z

    .line 827
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/Context;

    .line 828
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:Ljava/lang/String;

    .line 829
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->c()V

    .line 830
    invoke-static {v5}, Lcom/baidu/cyberplayer/utils/q;->d(Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "pkgName"    # Ljava/lang/String;

    .line 874
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Z

    .line 85
    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:I

    .line 86
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:D

    .line 87
    iput v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:I

    .line 88
    iput v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:I

    .line 406
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnSeekCompleteListener;

    .line 412
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/ProgressBar;

    .line 413
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/TextView;

    .line 414
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Landroid/widget/TextView;

    .line 419
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    .line 421
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:Z

    .line 422
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Z

    .line 424
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    .line 425
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 426
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/RelativeLayout;

    .line 427
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Ljava/lang/String;

    .line 428
    iput v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:I

    .line 429
    sget-object v3, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    iput-object v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b$c;

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:J

    .line 431
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:Landroid/widget/TextView;

    .line 432
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:Z

    .line 433
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    .line 434
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    .line 439
    const/16 v3, 0xc8

    iput v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:I

    .line 440
    const/16 v3, 0x1e

    iput v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:I

    .line 441
    iput v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:I

    .line 443
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:D

    .line 444
    iput v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:I

    .line 469
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:Z

    .line 470
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:Z

    .line 472
    const-string v5, "CyberPlayer_Used_By_JarAndSo_Mode"

    iput-object v5, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Ljava/lang/String;

    .line 473
    const-string v5, "CyberPlayer_Used_By_Reflect_Mode"

    iput-object v5, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:Ljava/lang/String;

    .line 478
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:Z

    .line 479
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->i:Z

    .line 480
    iput-wide v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:D

    .line 483
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPreparedListener;

    .line 484
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionListener;

    .line 485
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnErrorListener;

    .line 486
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnInfoListener;

    .line 487
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPositionUpdateListener;

    .line 488
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnTotalCacheUpdateListener;

    .line 493
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPlayingBufferCacheListener;

    .line 498
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnNetworkSpeedListener;

    .line 502
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionWithParamListener;

    .line 581
    new-instance v0, Lcom/baidu/cyberplayer/core/BVideoView$1;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/core/BVideoView$1;-><init>(Lcom/baidu/cyberplayer/core/BVideoView;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    .line 939
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->j:Z

    .line 1263
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:I

    .line 1265
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:Z

    .line 1371
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/SharedPreferences;

    .line 1372
    const-string v0, "cyberplayer_state"

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:Ljava/lang/String;

    .line 1373
    const-string v0, "ak_checke_state"

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:Ljava/lang/String;

    .line 1374
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->l:Z

    .line 876
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/Context;

    .line 877
    iput-object p4, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:Ljava/lang/String;

    .line 878
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->c()V

    .line 879
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->b()V

    .line 880
    invoke-static {v5}, Lcom/baidu/cyberplayer/utils/q;->d(Ljava/lang/String;)V

    .line 881
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 856
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Z

    .line 85
    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:I

    .line 86
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:D

    .line 87
    iput v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:I

    .line 88
    iput v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:I

    .line 406
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnSeekCompleteListener;

    .line 412
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/ProgressBar;

    .line 413
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/TextView;

    .line 414
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Landroid/widget/TextView;

    .line 419
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    .line 421
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:Z

    .line 422
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Z

    .line 424
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    .line 425
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 426
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/RelativeLayout;

    .line 427
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Ljava/lang/String;

    .line 428
    iput v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:I

    .line 429
    sget-object v3, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    iput-object v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b$c;

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:J

    .line 431
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:Landroid/widget/TextView;

    .line 432
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:Z

    .line 433
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    .line 434
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    .line 439
    const/16 v3, 0xc8

    iput v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:I

    .line 440
    const/16 v3, 0x1e

    iput v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:I

    .line 441
    iput v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:I

    .line 443
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:D

    .line 444
    iput v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:I

    .line 469
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:Z

    .line 470
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:Z

    .line 472
    const-string v5, "CyberPlayer_Used_By_JarAndSo_Mode"

    iput-object v5, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Ljava/lang/String;

    .line 473
    const-string v5, "CyberPlayer_Used_By_Reflect_Mode"

    iput-object v5, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:Ljava/lang/String;

    .line 478
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:Z

    .line 479
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->i:Z

    .line 480
    iput-wide v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:D

    .line 483
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPreparedListener;

    .line 484
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionListener;

    .line 485
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnErrorListener;

    .line 486
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnInfoListener;

    .line 487
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPositionUpdateListener;

    .line 488
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnTotalCacheUpdateListener;

    .line 493
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPlayingBufferCacheListener;

    .line 498
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnNetworkSpeedListener;

    .line 502
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionWithParamListener;

    .line 581
    new-instance v0, Lcom/baidu/cyberplayer/core/BVideoView$1;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/core/BVideoView$1;-><init>(Lcom/baidu/cyberplayer/core/BVideoView;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    .line 939
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->j:Z

    .line 1263
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:I

    .line 1265
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:Z

    .line 1371
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/SharedPreferences;

    .line 1372
    const-string v0, "cyberplayer_state"

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:Ljava/lang/String;

    .line 1373
    const-string v0, "ak_checke_state"

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:Ljava/lang/String;

    .line 1374
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->l:Z

    .line 858
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/Context;

    .line 859
    iput-object p3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:Ljava/lang/String;

    .line 860
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->c()V

    .line 861
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->b()V

    .line 862
    invoke-static {v5}, Lcom/baidu/cyberplayer/utils/q;->d(Ljava/lang/String;)V

    .line 863
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 839
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Z

    .line 85
    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:I

    .line 86
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:D

    .line 87
    iput v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:I

    .line 88
    iput v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:I

    .line 406
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnSeekCompleteListener;

    .line 412
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/ProgressBar;

    .line 413
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/TextView;

    .line 414
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Landroid/widget/TextView;

    .line 419
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    .line 421
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:Z

    .line 422
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Z

    .line 424
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    .line 425
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 426
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/RelativeLayout;

    .line 427
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Ljava/lang/String;

    .line 428
    iput v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:I

    .line 429
    sget-object v3, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    iput-object v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b$c;

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:J

    .line 431
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:Landroid/widget/TextView;

    .line 432
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:Z

    .line 433
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    .line 434
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    .line 439
    const/16 v3, 0xc8

    iput v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:I

    .line 440
    const/16 v3, 0x1e

    iput v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:I

    .line 441
    iput v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:I

    .line 443
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:D

    .line 444
    iput v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:I

    .line 469
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:Z

    .line 470
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:Z

    .line 472
    const-string v5, "CyberPlayer_Used_By_JarAndSo_Mode"

    iput-object v5, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Ljava/lang/String;

    .line 473
    const-string v5, "CyberPlayer_Used_By_Reflect_Mode"

    iput-object v5, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:Ljava/lang/String;

    .line 478
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:Z

    .line 479
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->i:Z

    .line 480
    iput-wide v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:D

    .line 483
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPreparedListener;

    .line 484
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionListener;

    .line 485
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnErrorListener;

    .line 486
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnInfoListener;

    .line 487
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPositionUpdateListener;

    .line 488
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnTotalCacheUpdateListener;

    .line 493
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPlayingBufferCacheListener;

    .line 498
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnNetworkSpeedListener;

    .line 502
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionWithParamListener;

    .line 581
    new-instance v0, Lcom/baidu/cyberplayer/core/BVideoView$1;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/core/BVideoView$1;-><init>(Lcom/baidu/cyberplayer/core/BVideoView;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    .line 939
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->j:Z

    .line 1263
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:I

    .line 1265
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:Z

    .line 1371
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/SharedPreferences;

    .line 1372
    const-string v0, "cyberplayer_state"

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:Ljava/lang/String;

    .line 1373
    const-string v0, "ak_checke_state"

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:Ljava/lang/String;

    .line 1374
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->l:Z

    .line 841
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/Context;

    .line 842
    iput-object p2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:Ljava/lang/String;

    .line 843
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->c()V

    .line 844
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->b()V

    .line 845
    invoke-static {v5}, Lcom/baidu/cyberplayer/utils/q;->d(Ljava/lang/String;)V

    .line 846
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 79
    sget v0, Lcom/baidu/cyberplayer/core/BVideoView;->j:I

    return v0
.end method

.method private static a(I[I)I
    .locals 3

    .line 2133
    array-length v0, p1

    .line 2134
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2135
    aget v2, p1, v1

    if-ne p0, v2, :cond_0

    return v1

    .line 2134
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2137
    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:I

    return p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;I)I
    .locals 0

    .line 79
    iput p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/content/Context;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/content/SharedPreferences;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/BMediaController;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BMediaController;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/BVideoView$OnPositionUpdateListener;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPositionUpdateListener;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;)Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/CyberPlayerSurface;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)Lcom/baidu/cyberplayer/core/CyberPlayerSurface;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/b$c;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b$c;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/b;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;Lcom/baidu/cyberplayer/core/b;)Lcom/baidu/cyberplayer/core/b;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/subtitle/SubtitleManager;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;)Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a()Lorg/apache/http/client/HttpClient;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 1422
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 1423
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1425
    new-instance v1, Lcom/baidu/cyberplayer/utils/B;

    invoke-direct {v1, v0}, Lcom/baidu/cyberplayer/utils/B;-><init>(Ljava/security/KeyStore;)V

    .line 1426
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 1428
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1429
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 1430
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 1432
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1433
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    const-string v6, "http"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1434
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v1, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1436
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 1438
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v2
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;)Lorg/apache/http/client/HttpClient;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->a()Lorg/apache/http/client/HttpClient;

    move-result-object p0

    return-object p0
.end method

.method private static a()V
    .locals 4

    .line 967
    nop

    .line 968
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 969
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getSupportedBitrateKb()[I

    move-result-object v0

    goto :goto_0

    .line 968
    :cond_0
    const/4 v0, 0x0

    .line 971
    :goto_0
    const/4 v1, -0x1

    if-eqz v0, :cond_2

    sget v2, Lcom/baidu/cyberplayer/core/BVideoView;->j:I

    if-le v2, v1, :cond_2

    sget v2, Lcom/baidu/cyberplayer/core/BVideoView;->j:I

    array-length v3, v0

    if-lt v2, v3, :cond_1

    goto :goto_1

    .line 978
    :cond_1
    sget v1, Lcom/baidu/cyberplayer/core/BVideoView;->j:I

    aget v1, v0, v1

    .line 979
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 980
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 981
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 982
    sput v0, Lcom/baidu/cyberplayer/core/BVideoView;->i:I

    .line 983
    return-void

    .line 974
    :cond_2
    :goto_1
    sput v1, Lcom/baidu/cyberplayer/core/BVideoView;->j:I

    .line 975
    return-void
.end method

.method private a(I)V
    .locals 1

    .line 1655
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->j:Z

    if-eqz v0, :cond_0

    .line 1656
    return-void

    .line 1658
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BMediaController;

    if-eqz v0, :cond_1

    .line 1659
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BMediaController;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/BMediaController;->setProgress(I)V

    .line 1660
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->g()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;Lorg/apache/http/HttpResponse;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 1175
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;)V
    .locals 4

    .line 1442
    const/16 v0, 0xc

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 1446
    :cond_0
    nop

    .line 1448
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1450
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1451
    nop

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1452
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1455
    :cond_1
    new-instance v1, Lorg/json/JSONTokener;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 1456
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 1457
    const-string v1, "ak"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1458
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    sget-object v3, Lcom/baidu/cyberplayer/core/BVideoView;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1459
    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    .line 1460
    const/4 p1, 0x1

    goto :goto_1

    .line 1466
    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 1467
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->l:Z

    .line 1468
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1466
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 1463
    :catch_0
    move-exception p1

    .line 1464
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1466
    nop

    .line 1470
    :cond_3
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1472
    nop

    .line 1473
    :goto_2
    return-void

    .line 1470
    :goto_3
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    throw p1

    .line 1443
    :cond_4
    :goto_4
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1444
    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 1179
    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 1180
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 1181
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 1184
    :cond_0
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 1185
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1188
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/core/BVideoView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:Z

    return p0
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/core/BVideoView;)I
    .locals 2

    .line 79
    iget v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:I

    return v0
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/core/BVideoView;I)I
    .locals 0

    .line 79
    iput p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:I

    return p1
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 3

    .line 1059
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/lib"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/b;->a(Ljava/lang/String;)V

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/b;->b(Ljava/lang/String;)V

    .line 1065
    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 1

    .line 1663
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BMediaController;

    if-eqz v0, :cond_0

    .line 1664
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BMediaController;

    add-int/lit8 p1, p1, 0xa

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/BMediaController;->setCache(I)V

    .line 1665
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/core/BVideoView;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->h()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/core/BVideoView;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/BVideoView;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/core/BVideoView;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 1191
    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 1192
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 1193
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1197
    :cond_0
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 1198
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1201
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/core/BVideoView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:Z

    return p0
.end method

.method static synthetic c(Lcom/baidu/cyberplayer/core/BVideoView;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:I

    return p0
.end method

.method private c()V
    .locals 3

    .line 1098
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyberplayer_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/SharedPreferences;

    .line 1102
    :cond_0
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->d()V

    .line 1103
    return-void
.end method

.method private c(I)V
    .locals 1

    .line 2468
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    if-eqz v0, :cond_0

    .line 2469
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->seekTo(I)V

    .line 2471
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/baidu/cyberplayer/core/BVideoView;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->i()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/cyberplayer/core/BVideoView;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/BVideoView;->c(I)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/cyberplayer/core/BVideoView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->f:Z

    return p0
.end method

.method static synthetic d(Lcom/baidu/cyberplayer/core/BVideoView;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:I

    return p0
.end method

.method private d()V
    .locals 9

    .line 1106
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1107
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1109
    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1111
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/RelativeLayout;

    .line 1112
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1114
    iget-object v4, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1116
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1117
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1119
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1120
    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1122
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1124
    const/16 v6, 0xd

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1126
    new-instance v6, Landroid/widget/ProgressBar;

    iget-object v7, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/ProgressBar;

    .line 1127
    iget-object v6, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/ProgressBar;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1128
    iget-object v6, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/ProgressBar;

    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1129
    iget-object v6, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 1130
    iget-object v6, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/ProgressBar;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1131
    iget-object v6, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1133
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1135
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1136
    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1137
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/TextView;

    .line 1139
    iget-object v5, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1140
    iget-object v5, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1141
    iget-object v5, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1142
    iget-object v5, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1148
    new-instance v1, Lcom/baidu/cyberplayer/subtitle/c;

    iget-object v4, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/baidu/cyberplayer/subtitle/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/subtitle/c;

    .line 1149
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1151
    iget-object v4, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/subtitle/c;

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1153
    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:Landroid/widget/TextView;

    .line 1154
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1157
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1158
    iget-object v8, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1159
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1161
    new-instance v1, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    .line 1162
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1163
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1164
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1165
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1166
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1167
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1169
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1170
    iget-object v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1171
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1172
    return-void
.end method

.method static synthetic d(Lcom/baidu/cyberplayer/core/BVideoView;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->j()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/cyberplayer/core/BVideoView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->i:Z

    return p0
.end method

.method public static destroyThumbnail()V
    .locals 1

    .line 2192
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_0

    .line 2193
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b()V

    .line 2195
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/baidu/cyberplayer/core/BVideoView;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:I

    return p0
.end method

.method private e()V
    .locals 2

    .line 1296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:Z

    .line 1297
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1298
    return-void
.end method

.method static synthetic e(Lcom/baidu/cyberplayer/core/BVideoView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:Z

    return p0
.end method

.method static synthetic f(Lcom/baidu/cyberplayer/core/BVideoView;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:I

    return p0
.end method

.method private f()V
    .locals 2

    .line 1301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:Z

    .line 1302
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1303
    return-void
.end method

.method private g()V
    .locals 12

    .line 1306
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float v9, v0, v1

    .line 1307
    new-instance v2, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    const/4 v8, 0x2

    const/4 v10, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/high16 v7, -0x40800000    # -1.0f

    move v11, v9

    move-object v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;-><init>(Lcom/baidu/cyberplayer/core/BVideoView;IFIFIFIF)V

    iput-object v2, v3, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    .line 1315
    iget-object v0, v3, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->setDuration(J)V

    .line 1316
    iget-object v0, v3, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    new-instance v1, Lcom/baidu/cyberplayer/core/BVideoView$2;

    invoke-direct {v1, p0}, Lcom/baidu/cyberplayer/core/BVideoView$2;-><init>(Lcom/baidu/cyberplayer/core/BVideoView;)V

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1345
    iget-boolean v0, v3, Lcom/baidu/cyberplayer/core/BVideoView;->e:Z

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, v3, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1348
    :cond_0
    return-void
.end method

.method public static getABitRateKb()I
    .locals 1

    .line 2058
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 2059
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getABitRateKb()I

    move-result v0

    return v0

    .line 2061
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getAcodecName()Ljava/lang/String;
    .locals 1

    .line 1948
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 1949
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getAcodecName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1951
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 2080
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 2081
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2083
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBytebuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 2069
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-eqz v0, :cond_0

    .line 2070
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget-object v0, v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Ljava/nio/ByteBuffer;

    return-object v0

    .line 2072
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getChannels()I
    .locals 1

    .line 2047
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 2048
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getChannels()I

    move-result v0

    return v0

    .line 2050
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getDurationInMediaInfo()I
    .locals 1

    .line 1580
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 1581
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getDurationUs()I

    move-result v0

    return v0

    .line 1583
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getDurationUs()I
    .locals 1

    .line 1992
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 1993
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getDurationUs()I

    move-result v0

    return v0

    .line 1995
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getExtension()Ljava/lang/String;
    .locals 1

    .line 1926
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 1927
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getExtension()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1929
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFileSizeKb()I
    .locals 1

    .line 1981
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 1982
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getFileSizeKb()I

    move-result v0

    return v0

    .line 1984
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getFrameRate()F
    .locals 1

    .line 2025
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 2026
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getFrameRate()F

    move-result v0

    return v0

    .line 2028
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getLongName()Ljava/lang/String;
    .locals 1

    .line 1937
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 1938
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getLongName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1940
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMediaInfo(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 2172
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-nez v0, :cond_0

    .line 2173
    new-instance v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    .line 2174
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()V

    .line 2176
    :cond_0
    sget-boolean v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Z

    if-eqz v0, :cond_1

    .line 2177
    const-string v0, "CyberPlayerVideoView"

    const-string v1, "BVideoView MEDIA_ERROR_NATIVELIB_LOAD"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    .line 2179
    const/16 v0, 0x131

    return v0

    .line 2181
    :cond_1
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(III)V

    .line 2182
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/core/CBMetaData;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    .line 2183
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    .line 2184
    return v1
.end method

.method public static getMediaInfo(Landroid/content/Context;Ljava/lang/String;III)I
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "colorFormat"    # I

    .line 2150
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    if-nez v0, :cond_0

    .line 2151
    new-instance v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    .line 2152
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()V

    .line 2154
    :cond_0
    sget-boolean v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:Z

    if-eqz v0, :cond_1

    .line 2155
    const-string v0, "CyberPlayerVideoView"

    const-string v1, "BVideoView MEDIA_ERROR_NATIVELIB_LOAD"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    .line 2157
    const/16 v0, 0x131

    return v0

    .line 2159
    :cond_1
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p2, p3, p4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(III)V

    .line 2160
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/core/CBMetaData;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    .line 2161
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    .line 2162
    const/4 v0, 0x0

    return v0
.end method

.method public static getSampleRate()I
    .locals 1

    .line 2036
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 2037
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getSampleRate()I

    move-result v0

    return v0

    .line 2039
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getSupportedBitrateKb()[I
    .locals 1

    .line 2092
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 2093
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getSupportedBitrateKb()[I

    move-result-object v0

    return-object v0

    .line 2095
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSupportedResolution()[Ljava/lang/String;
    .locals 1

    .line 2104
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 2105
    invoke-static {}, Lcom/baidu/cyberplayer/core/BVideoView;->l()V

    .line 2106
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getSupportedResolution()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2108
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTitle()Ljava/lang/String;
    .locals 1

    .line 2003
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 2004
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2006
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTotBitRateKb()I
    .locals 1

    .line 1970
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 1971
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getTotBitRateKb()I

    move-result v0

    return v0

    .line 1973
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getVBitRateKb()I
    .locals 1

    .line 2014
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 2015
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getVBitRateKb()I

    move-result v0

    return v0

    .line 2017
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getVcodecName()Ljava/lang/String;
    .locals 1

    .line 1959
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 1960
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getVcodecName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1962
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVideoHeightInMediaInfo()I
    .locals 1

    .line 1900
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 1901
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getHeight()I

    move-result v0

    return v0

    .line 1903
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getVideoWidthInMediaInfo()I
    .locals 1

    .line 1875
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 1876
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getWidth()I

    move-result v0

    return v0

    .line 1878
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private h()V
    .locals 1

    .line 1351
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->pause()V

    .line 1354
    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    .line 1357
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->resume()V

    .line 1360
    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    .line 1363
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->cancel()V

    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1367
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 1369
    :cond_1
    return-void
.end method

.method private k()V
    .locals 3

    .line 1383
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->l:Z

    if-eqz v0, :cond_0

    .line 1384
    return-void

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/SharedPreferences;

    const-string v1, "ak_checke_state"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1387
    return-void

    .line 1389
    :cond_1
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1390
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1391
    return-void

    .line 1393
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/cyberplayer/core/BVideoView$3;

    invoke-direct {v1, p0}, Lcom/baidu/cyberplayer/core/BVideoView$3;-><init>(Lcom/baidu/cyberplayer/core/BVideoView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1414
    return-void
.end method

.method private static l()V
    .locals 4

    .line 2112
    nop

    .line 2113
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_0

    .line 2114
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getSupportedBitrateKb()[I

    move-result-object v0

    goto :goto_0

    .line 2113
    :cond_0
    const/4 v0, 0x0

    .line 2116
    :goto_0
    const/4 v1, -0x1

    if-eqz v0, :cond_3

    sget v2, Lcom/baidu/cyberplayer/core/BVideoView;->i:I

    if-ne v2, v1, :cond_1

    goto :goto_2

    .line 2122
    :cond_1
    array-length v1, v0

    .line 2123
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 2124
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 2125
    sget v3, Lcom/baidu/cyberplayer/core/BVideoView;->i:I

    if-lt v3, v1, :cond_2

    .line 2126
    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    invoke-static {v1, v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(I[I)I

    move-result v0

    sput v0, Lcom/baidu/cyberplayer/core/BVideoView;->j:I

    goto :goto_1

    .line 2128
    :cond_2
    sget v1, Lcom/baidu/cyberplayer/core/BVideoView;->i:I

    aget v1, v2, v1

    invoke-static {v1, v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(I[I)I

    move-result v0

    sput v0, Lcom/baidu/cyberplayer/core/BVideoView;->j:I

    .line 2130
    :goto_1
    return-void

    .line 2118
    :cond_3
    :goto_2
    sput v1, Lcom/baidu/cyberplayer/core/BVideoView;->j:I

    .line 2119
    return-void
.end method

.method public static setAK(Ljava/lang/String;)V
    .locals 0
    .param p0, "ak"    # Ljava/lang/String;

    .line 898
    sput-object p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Ljava/lang/String;

    .line 899
    return-void
.end method

.method public static setAKSK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "ak"    # Ljava/lang/String;
    .param p1, "sk"    # Ljava/lang/String;

    .line 889
    sput-object p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Ljava/lang/String;

    .line 890
    sput-object p1, Lcom/baidu/cyberplayer/core/BVideoView;->c:Ljava/lang/String;

    .line 891
    return-void
.end method

.method public static setNativeLibsDirectory(Ljava/lang/String;)V
    .locals 0
    .param p0, "nativeLibsDir"    # Ljava/lang/String;

    .line 909
    invoke-static {p0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setNativeLlibsDirectory(Ljava/lang/String;)V

    .line 910
    return-void
.end method

.method public static setNativeLibsFileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "playerName"    # Ljava/lang/String;
    .param p1, "coreName"    # Ljava/lang/String;

    .line 918
    invoke-static {p0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setNativeLibsFileName(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    return-void
.end method


# virtual methods
.method public GetMediaId()Ljava/lang/String;
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    return-object v0
.end method

.method public OnCompletionWithParam(I)V
    .locals 1
    .param p1, "param"    # I

    .line 2433
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->j:Z

    if-eqz v0, :cond_0

    .line 2434
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->start()V

    goto :goto_0

    .line 2436
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionWithParamListener;

    if-eqz v0, :cond_1

    .line 2437
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionWithParamListener;

    invoke-interface {v0, p1}, Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionWithParamListener;->OnCompletionWithParam(I)V

    .line 2440
    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1680
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->g:I

    .line 1681
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getCurrentPlayingUrl()Ljava/lang/String;
    .locals 1

    .line 1647
    nop

    .line 1648
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    if-eqz v0, :cond_0

    .line 1649
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1648
    :cond_0
    const/4 v0, 0x0

    .line 1651
    :goto_0
    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 1616
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->j:Z

    if-eqz v0, :cond_0

    .line 1617
    iget-wide v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:D

    double-to-int v0, v0

    return v0

    .line 1619
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    if-eqz v0, :cond_1

    .line 1620
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/b;->a()D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 1622
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPositionInMsec()J
    .locals 2

    .line 1632
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->j:Z

    if-eqz v0, :cond_0

    .line 1633
    iget-wide v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:D

    double-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0

    .line 1635
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    if-eqz v0, :cond_1

    .line 1636
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/b;->b()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 1638
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()I
    .locals 2

    .line 1567
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    if-eqz v0, :cond_0

    .line 1568
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/b;->c()D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 1569
    :cond_0
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_1

    .line 1570
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getDurationUs()I

    move-result v0

    return v0

    .line 1572
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration(I)I
    .locals 2
    .param p1, "mode"    # I

    .line 1594
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/b;->a(I)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 1597
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNativeVersion()Ljava/lang/String;
    .locals 1

    .line 1605
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    if-eqz v0, :cond_0

    .line 1606
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1608
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtitlePlayManger(Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;)Lcom/baidu/cyberplayer/subtitle/SubtitleManager;
    .locals 3
    .param p1, "callback"    # Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    .line 2457
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    if-nez v0, :cond_0

    .line 2458
    new-instance v0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/subtitle/c;

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;-><init>(Landroid/content/Context;Lcom/baidu/cyberplayer/core/BVideoView;Lcom/baidu/cyberplayer/subtitle/c;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    .line 2460
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1887
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    if-eqz v0, :cond_0

    .line 1888
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/b;->b()I

    move-result v0

    return v0

    .line 1889
    :cond_0
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_1

    .line 1890
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getHeight()I

    move-result v0

    return v0

    .line 1892
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1862
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    if-eqz v0, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/b;->a()I

    move-result v0

    return v0

    .line 1864
    :cond_0
    sget-boolean v0, Lcom/baidu/cyberplayer/core/BVideoView;->b:Z

    if-eqz v0, :cond_1

    .line 1865
    sget-object v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CBMetaData;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CBMetaData;->getWidth()I

    move-result v0

    return v0

    .line 1867
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 2389
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    if-eqz v0, :cond_0

    .line 2390
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/b;->a()Z

    move-result v0

    return v0

    .line 2392
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public manualSyncSubtitle(I)V
    .locals 2
    .param p1, "mSec"    # I

    .line 2312
    iget v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:I

    if-eq v0, p1, :cond_0

    .line 2313
    iput p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:I

    .line 2314
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/b;->i(I)V

    goto :goto_0

    .line 2317
    :cond_0
    const-string v0, "CyberPlayerVideoView"

    const-string v1, "setSubtitlePos error! Because the new position is same as the older.\n"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    :goto_0
    return-void
.end method

.method public onCacheStatusChanged(Lcom/baidu/cyberplayer/core/b$a;)V
    .locals 2
    .param p1, "status"    # Lcom/baidu/cyberplayer/core/b$a;

    .line 1803
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1804
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1805
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1806
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1807
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1809
    :cond_0
    return-void
.end method

.method public onCachingUpdate(I)V
    .locals 5
    .param p1, "percent"    # I

    .line 1816
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1817
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1818
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1819
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1820
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1823
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnTotalCacheUpdateListener;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:I

    if-lez v0, :cond_1

    .line 1825
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnTotalCacheUpdateListener;

    int-to-double v1, p1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    iget v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/baidu/cyberplayer/core/BVideoView$OnTotalCacheUpdateListener;->onTotalCacheUpdate(J)V

    .line 1827
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 2379
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/f;

    const-string v1, "baiduvideoview"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/f;->b(Ljava/lang/String;)I

    .line 2382
    return-void
.end method

.method public onCompletion()V
    .locals 2

    .line 2416
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->j:Z

    if-eqz v0, :cond_0

    .line 2417
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->start()V

    goto :goto_0

    .line 2419
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionListener;

    if-eqz v0, :cond_1

    .line 2420
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionListener;

    invoke-interface {v0}, Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionListener;->onCompletion()V

    .line 2422
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2423
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->f()V

    .line 2425
    :goto_0
    return-void
.end method

.method public onError(II)Z
    .locals 2
    .param p1, "errCode"    # I
    .param p2, "extra"    # I

    .line 2347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:Z

    .line 2348
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 2349
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnErrorListener;

    if-eqz v1, :cond_0

    .line 2350
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnErrorListener;

    invoke-interface {v0, p1, p2}, Lcom/baidu/cyberplayer/core/BVideoView$OnErrorListener;->onError(II)Z

    move-result v0

    return v0

    .line 2352
    :cond_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    if-eqz v1, :cond_1

    .line 2353
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->releaseSubtitle()V

    .line 2355
    :cond_1
    return v0
.end method

.method public onInfo(II)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .line 2447
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnInfoListener;

    if-eqz v0, :cond_0

    .line 2448
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnInfoListener;

    invoke-interface {v0, p1, p2}, Lcom/baidu/cyberplayer/core/BVideoView$OnInfoListener;->onInfo(II)Z

    .line 2450
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1696
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNetworkSpeedUpdate(I)V
    .locals 1
    .param p1, "speed"    # I

    .line 1852
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnNetworkSpeedListener;

    if-eqz v0, :cond_0

    .line 1853
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnNetworkSpeedListener;

    invoke-interface {v0, p1}, Lcom/baidu/cyberplayer/core/BVideoView$OnNetworkSpeedListener;->onNetworkSpeedUpdate(I)V

    .line 1855
    :cond_0
    return-void
.end method

.method public onPlayStatusChanged(Lcom/baidu/cyberplayer/core/b$c;II)V
    .locals 2
    .param p1, "status"    # Lcom/baidu/cyberplayer/core/b$c;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 1790
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b$c;

    .line 1791
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1792
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1793
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1794
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1795
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1797
    :cond_0
    return-void
.end method

.method public onPlayingBufferCache(I)V
    .locals 2
    .param p1, "percent"    # I

    .line 1835
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1836
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1837
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1838
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1839
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1845
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPlayingBufferCacheListener;

    if-eqz v0, :cond_1

    .line 1846
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPlayingBufferCacheListener;

    invoke-interface {v0, p1}, Lcom/baidu/cyberplayer/core/BVideoView$OnPlayingBufferCacheListener;->onPlayingBufferCache(I)V

    .line 1848
    :cond_1
    return-void
.end method

.method public onPrePared()V
    .locals 5

    .line 2401
    iget-wide v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 2402
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    iget-wide v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:D

    invoke-virtual {v0, v1, v2}, Lcom/baidu/cyberplayer/core/b;->a(D)V

    .line 2404
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPreparedListener;

    if-eqz v0, :cond_1

    .line 2405
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPreparedListener;

    invoke-interface {v0}, Lcom/baidu/cyberplayer/core/BVideoView$OnPreparedListener;->onPrepared()V

    .line 2407
    :cond_1
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->e()V

    .line 2408
    return-void
.end method

.method public onSeekCompleted()V
    .locals 4

    .line 2326
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2327
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    iget v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->e:I

    int-to-long v1, v1

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2334
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnSeekCompleteListener;

    if-eqz v0, :cond_1

    .line 2335
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnSeekCompleteListener;

    invoke-interface {v0}, Lcom/baidu/cyberplayer/core/BVideoView$OnSeekCompleteListener;->onSeekComplete()V

    .line 2336
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->j:Z

    .line 2337
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:D

    .line 2338
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1705
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1706
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BMediaController;

    if-eqz v0, :cond_1

    .line 1707
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BMediaController;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BMediaController;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BMediaController;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BMediaController;->hide()V

    goto :goto_0

    .line 1710
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BMediaController;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BMediaController;->show()V

    .line 1714
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1715
    const/4 v0, 0x0

    return v0
.end method

.method public openExtSubFile(Ljava/lang/String;)I
    .locals 2
    .param p1, "subFilePath"    # Ljava/lang/String;

    .line 2222
    nop

    .line 2223
    if-nez p1, :cond_0

    .line 2224
    const-string v0, "CyberPlayerVideoView"

    const-string v1, "openExtSubFile subFilePath==null\n"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    const/4 v0, -0x2

    return v0

    .line 2227
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    if-eqz v0, :cond_1

    .line 2228
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/b;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2227
    :cond_1
    const/4 v0, -0x1

    .line 2230
    :goto_0
    return v0
.end method

.method public pause()V
    .locals 2

    .line 1497
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    if-eqz v0, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/b;->a()V

    .line 1500
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1501
    return-void
.end method

.method public resume()V
    .locals 4

    .line 1507
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    if-eqz v0, :cond_1

    .line 1508
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    if-nez v0, :cond_0

    .line 1509
    iget v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1512
    new-instance v0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 1513
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1515
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1519
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/b;->a(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)V

    .line 1522
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/b;->b()V

    .line 1524
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1525
    return-void
.end method

.method public seekTo(D)V
    .locals 2
    .param p1, "second"    # D

    .line 1551
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b$c;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    if-ne v0, v1, :cond_0

    .line 1552
    iput-wide p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:D

    goto :goto_0

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    if-eqz v0, :cond_1

    .line 1555
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1556
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/cyberplayer/core/b;->a(D)V

    .line 1559
    :cond_1
    :goto_0
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, p1

    double-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/BVideoView;->c(I)V

    .line 1560
    return-void
.end method

.method public selectResolutionType(I)V
    .locals 2
    .param p1, "resType"    # I

    .line 941
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->j:Z

    if-nez v0, :cond_2

    sget v0, Lcom/baidu/cyberplayer/core/BVideoView;->j:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 944
    :cond_0
    sput p1, Lcom/baidu/cyberplayer/core/BVideoView;->j:I

    .line 945
    invoke-static {}, Lcom/baidu/cyberplayer/core/BVideoView;->a()V

    .line 946
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b$c;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->c:Lcom/baidu/cyberplayer/core/b$c;

    if-ne v0, v1, :cond_1

    .line 947
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->getCurrentPosition()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:D

    .line 948
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->j:Z

    .line 949
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->stopPlayback()V

    .line 951
    :cond_1
    return-void

    .line 942
    :cond_2
    :goto_0
    return-void
.end method

.method public setCacheBufferSize(J)V
    .locals 0
    .param p1, "size"    # J

    .line 1008
    invoke-static {p1, p2}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setNativeBufferSize(J)V

    .line 1009
    return-void
.end method

.method public setCacheTime(F)V
    .locals 0
    .param p1, "timeSec"    # F

    .line 1017
    invoke-static {p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setCacheTime(F)V

    .line 1018
    return-void
.end method

.method public setCustomHttpHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpHeaderBuffer"    # Ljava/lang/String;

    .line 1026
    invoke-static {p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setCustomHttpHeader(Ljava/lang/String;)V

    .line 1027
    return-void
.end method

.method public setDecodeMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 932
    iput p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:I

    .line 933
    return-void
.end method

.method public setEnableDolby(Z)V
    .locals 0
    .param p1, "bEnableDolby"    # Z

    .line 1056
    invoke-static {p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setEnableDolby(Z)V

    .line 1057
    return-void
.end method

.method public setEnableFastStart(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .line 961
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/b;->c(I)V

    .line 964
    :cond_0
    return-void
.end method

.method public setEnableP2p(Z)V
    .locals 0
    .param p1, "bEnableP2p"    # Z

    .line 1048
    invoke-static {p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setEnableP2p(Z)V

    .line 1049
    invoke-static {p1}, Lcom/baidu/cyberplayer/core/b;->a(Z)V

    .line 1050
    return-void
.end method

.method public setExtSubtitleFile(Ljava/lang/String;)I
    .locals 2
    .param p1, "subFilePath"    # Ljava/lang/String;

    .line 2204
    nop

    .line 2205
    if-nez p1, :cond_0

    .line 2206
    const-string v0, "CyberPlayerVideoView"

    const-string v1, "setExtSubtitleFile subFilePath==null\n"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    const/4 v0, -0x2

    return v0

    .line 2210
    :cond_0
    invoke-static {p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setExtSubtitleFile(Ljava/lang/String;)V

    .line 2211
    nop

    .line 2212
    const/4 v0, 0x0

    return v0
.end method

.method public setIsShowSubtitle(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .line 2239
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Z

    if-eq v0, p1, :cond_1

    .line 2240
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Z

    .line 2241
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Z

    if-eqz v0, :cond_0

    .line 2242
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/b;->e(I)V

    goto :goto_0

    .line 2244
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/b;->e(I)V

    goto :goto_0

    .line 2247
    :cond_1
    const-string v0, "CyberPlayerVideoView"

    const-string v1, "setIsShowSubtitle error: new visibility is same as older!\n"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    :goto_0
    return-void
.end method

.method public setLogLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .line 1215
    invoke-static {p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setLogLevel(I)V

    .line 1216
    return-void
.end method

.method public setMediaController(Lcom/baidu/cyberplayer/core/BMediaController;)V
    .locals 1
    .param p1, "controller"    # Lcom/baidu/cyberplayer/core/BMediaController;

    .line 2366
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BMediaController;

    .line 2367
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/core/BMediaController;->hasVideoView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2368
    invoke-virtual {p1, p0}, Lcom/baidu/cyberplayer/core/BMediaController;->setMediaPlayerControl(Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;)V

    .line 2369
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b$c;

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/core/BMediaController;->UpdateUI(Lcom/baidu/cyberplayer/core/b$c;)V

    .line 2371
    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionListener;)V
    .locals 0
    .param p1, "linstener"    # Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionListener;

    .line 517
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionListener;

    .line 518
    return-void
.end method

.method public setOnCompletionWithParamListener(Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionWithParamListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionWithParamListener;

    .line 578
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionWithParamListener;

    .line 579
    return-void
.end method

.method public setOnErrorListener(Lcom/baidu/cyberplayer/core/BVideoView$OnErrorListener;)V
    .locals 0
    .param p1, "linstener"    # Lcom/baidu/cyberplayer/core/BVideoView$OnErrorListener;

    .line 527
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnErrorListener;

    .line 528
    return-void
.end method

.method public setOnInfoListener(Lcom/baidu/cyberplayer/core/BVideoView$OnInfoListener;)V
    .locals 0
    .param p1, "linstener"    # Lcom/baidu/cyberplayer/core/BVideoView$OnInfoListener;

    .line 536
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnInfoListener;

    .line 537
    return-void
.end method

.method public setOnNetworkSpeedListener(Lcom/baidu/cyberplayer/core/BVideoView$OnNetworkSpeedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/baidu/cyberplayer/core/BVideoView$OnNetworkSpeedListener;

    .line 570
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnNetworkSpeedListener;

    .line 571
    return-void
.end method

.method public setOnPlayingBufferCacheListener(Lcom/baidu/cyberplayer/core/BVideoView$OnPlayingBufferCacheListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/baidu/cyberplayer/core/BVideoView$OnPlayingBufferCacheListener;

    .line 562
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPlayingBufferCacheListener;

    .line 563
    return-void
.end method

.method public setOnPositionUpdateListener(Lcom/baidu/cyberplayer/core/BVideoView$OnPositionUpdateListener;)V
    .locals 0
    .param p1, "linstener"    # Lcom/baidu/cyberplayer/core/BVideoView$OnPositionUpdateListener;

    .line 544
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPositionUpdateListener;

    .line 545
    return-void
.end method

.method public setOnPreparedListener(Lcom/baidu/cyberplayer/core/BVideoView$OnPreparedListener;)V
    .locals 0
    .param p1, "linstener"    # Lcom/baidu/cyberplayer/core/BVideoView$OnPreparedListener;

    .line 509
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnPreparedListener;

    .line 510
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/baidu/cyberplayer/core/BVideoView$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/baidu/cyberplayer/core/BVideoView$OnSeekCompleteListener;

    .line 400
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnSeekCompleteListener;

    .line 401
    return-void
.end method

.method public setOnTotalCacheUpdateListener(Lcom/baidu/cyberplayer/core/BVideoView$OnTotalCacheUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/baidu/cyberplayer/core/BVideoView$OnTotalCacheUpdateListener;

    .line 553
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/BVideoView$OnTotalCacheUpdateListener;

    .line 554
    return-void
.end method

.method public setP2pCachePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "strP2pCachePath"    # Ljava/lang/String;

    .line 1044
    invoke-static {p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setP2pCachePath(Ljava/lang/String;)V

    .line 1045
    return-void
.end method

.method public setParametKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "strKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 999
    invoke-static {p1, p2}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setParametKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    return-void
.end method

.method public setRetainLastFrame(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 1223
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:Z

    .line 1224
    invoke-static {p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setRetainLastFrame(Z)V

    .line 1225
    return-void
.end method

.method public setSubtitleAlignMethod(I)V
    .locals 2
    .param p1, "iAlignMethod"    # I

    .line 2295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSubtitleAlignMethod iAlignMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CyberPlayerVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    iget v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:I

    if-eq v0, p1, :cond_0

    .line 2298
    iput p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->b:I

    .line 2299
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/b;->h(I)V

    goto :goto_0

    .line 2302
    :cond_0
    const-string v0, "setSubtitlePos error! Because the new position is same as the older.\n"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    :goto_0
    return-void
.end method

.method public setSubtitleColor(I)V
    .locals 2
    .param p1, "iColor"    # I

    .line 2257
    iget v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:I

    if-eq v0, p1, :cond_0

    .line 2258
    iput p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:I

    .line 2259
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/b;->f(I)V

    goto :goto_0

    .line 2262
    :cond_0
    const-string v0, "CyberPlayerVideoView"

    const-string v1, "setSubtitleColor error! Because the new color is same as the older.\n"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    :goto_0
    return-void
.end method

.method public setSubtitleFontScale(D)V
    .locals 5
    .param p1, "fFontScale"    # D

    .line 2271
    nop

    .line 2272
    const-wide v0, 0x3fb999999999999aL    # 0.1

    const-string v2, "CyberPlayerVideoView"

    cmpg-double v3, p1, v0

    if-gez v3, :cond_0

    .line 2274
    const-string v0, "setSubtitleFontScale error! Because the new FontScale is too small.\n"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double v0, v0, p1

    double-to-int v0, v0

    .line 2279
    iget-wide v3, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:D

    cmpl-double v1, v3, p1

    if-eqz v1, :cond_1

    .line 2280
    iput-wide p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:D

    .line 2281
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/core/b;->g(I)V

    goto :goto_0

    .line 2284
    :cond_1
    const-string v0, "setSubtitleFontScale error! Because the new FontScale is same as the older.\n"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    :goto_0
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "strUA"    # Ljava/lang/String;

    .line 990
    invoke-static {p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setUserAgent(Ljava/lang/String;)V

    .line 991
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 1232
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Ljava/lang/String;

    .line 1233
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 1277
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1281
    :cond_0
    iput v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:I

    goto :goto_1

    .line 1279
    :cond_1
    :goto_0
    iput p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:I

    .line 1284
    :goto_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b$c;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    if-eq v0, v1, :cond_2

    .line 1285
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    iget v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:I

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/b;->b(I)V

    .line 1287
    :cond_2
    return-void
.end method

.method public setWatermarkText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 1290
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1293
    :cond_0
    return-void
.end method

.method public showCacheInfo(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 1241
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:Z

    .line 1242
    return-void
.end method

.method public start()V
    .locals 2

    .line 1480
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/BVideoView;->k()V

    .line 1481
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b$c;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    if-eq v0, v1, :cond_0

    .line 1483
    return-void

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1490
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .line 1531
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:D

    .line 1532
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/b;->c()V

    .line 1535
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:Z

    if-nez v0, :cond_1

    .line 1537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 1538
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->i:Z

    if-nez v0, :cond_1

    .line 1539
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1540
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1544
    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 1731
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    if-nez v0, :cond_0

    .line 1732
    iget v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1739
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 1746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->i:Z

    .line 1747
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b$c;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    if-ne v0, v1, :cond_0

    .line 1748
    iget v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    iget v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:I

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/b;->b(I)V

    .line 1750
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/cyberplayer/core/b;->a(Ljava/lang/String;Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)V

    .line 1753
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1754
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->setZOrderMediaOverlay(Z)V

    .line 1757
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    if-nez v0, :cond_2

    .line 1758
    iget v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->h:I

    if-ne v0, v1, :cond_2

    .line 1760
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1761
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1765
    :cond_2
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 1772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->i:Z

    .line 1774
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->k:Z

    .line 1775
    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setRetainLastFrame(Z)V

    .line 1776
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    if-eqz v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/b;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->c:D

    .line 1779
    :cond_0
    nop

    .line 1784
    return-void
.end method

.method public takeSnapshot()Landroid/graphics/Bitmap;
    .locals 1

    .line 1913
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Lcom/baidu/cyberplayer/core/b;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/b;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1916
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
