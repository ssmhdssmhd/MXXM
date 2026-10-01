.class public Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;,
        Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$WindowMessageID;,
        Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;
    }
.end annotation


# static fields
.field public static Failed:Ljava/lang/String; = null

.field public static Sd:Landroid/content/SharedPreferences; = null

.field private static final TAG:Ljava/lang/String; = "VideoPlayerActivity"

.field private static final TIME:I = 0x1770

.field private static final TOUCH_BRIGHTNESS:I = 0x2

.field private static final TOUCH_NONE:I = 0x0

.field private static final TOUCH_SEEK:I = 0x3

.field private static final TOUCH_VOLUME:I = 0x1

.field public static bsposition:I

.field private static controlHeight:I

.field public static currentPosition:J

.field public static hmblposition:I

.field public static jmposition:I

.field private static menutype:I

.field public static nhposition:I

.field public static phszposition:I

.field public static ptposition:I

.field public static pwposition:I

.field public static qxdposition:I

.field private static rxByte:Ljava/lang/String;

.field public static xjposition:I


# instance fields
.field private Ad_block:I

.field private Ad_block_down:Landroid/widget/LinearLayout;

.field private Ad_block_right:Landroid/widget/LinearLayout;

.field private Ad_block_up:Landroid/widget/LinearLayout;

.field private Adblock:I

.field private Auto_Source:I

.field private Client:Ljava/lang/String;

.field private ClientID:I

.field private Conditions:Ljava/lang/String;

.field private EwmHeight:I

.field private EwmWidth:I

.field private Exclude_content:Ljava/lang/String;

.field private Fburl:Ljava/lang/String;

.field private Lightness:F

.field private MaxClientID:I

.field private Maxtimeout:I

.field private Moviesize:I

.field private Navigation_mode:I

.field private Number:I

.field private Numbermax:I

.field private Play_timeout_debug:I

.field private PlayersNumber:I

.field private Referer:Ljava/lang/String;

.field private final SYNC_Playing:Ljava/lang/Object;

.field private Sniff_debug_mode:I

.field private Trytime:I

.field private Tvplaysize:I

.field private Type:I

.field Vod_Notice_starting_time:I

.field private albumPic:Ljava/lang/String;

.field private collectionTime:I

.field private coloredBarrageSwitch:Landroid/widget/Switch;

.field private coloredDanmu:Z

.field private controlView:Landroid/view/View;

.field private controler:Landroid/widget/PopupWindow;

.field private core:I

.field private core_mode:I

.field private currentPositions:J

.field private currentVolume:I

.field private danmuInput:Landroid/widget/EditText;

.field private danmuInputDialog:Landroidx/appcompat/app/AlertDialog;

.field private danmuSend:Landroid/view/View;

.field private danmuSetting:Landroid/view/View;

.field private danmuSettingPopup:Landroid/widget/PopupWindow;

.field private danmuSwitch:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

.field private danmuTransparency:I

.field private danmuVelocitySeekBar:Lcom/view/FlexibleStepSeekBar;

.field private danmu_velocity_seekbar_value:Landroid/widget/TextView;

.field private dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

.field private domain:Ljava/lang/String;

.field editor:Landroid/content/SharedPreferences$Editor;

.field private firstTime:J

.field private firstTimen:J

.field private firstTimes:J

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private headposition:I

.field private iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

.field private ib_playStatus:Landroid/widget/TextView;

.field private isBack:Z

.field private isCodeBlockExecuted:Z

.field private isControllerShow:Z

.field private isDestroy:Ljava/lang/Boolean;

.field private isDialogShowing:Z

.field private isLast:Ljava/lang/Boolean;

.field private isMenuItemShow:Z

.field private isMenuShow:Z

.field private isNext:Ljava/lang/Boolean;

.field private isPause:Ljava/lang/Boolean;

.field private isSwitch:Z

.field private jump_time:Ljava/lang/String;

.field private jump_time_end:Ljava/lang/String;

.field private jxurl:Ljava/lang/String;

.field private jxurls:I

.field private lastRxByte:J

.field private lastSpeedTime:J

.field private linesSeekBar:Lcom/view/FlexibleStepSeekBar;

.field private lines_seekbar_value:Landroid/widget/TextView;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
            ">;"
        }
    .end annotation
.end field

.field private load:I

.field private logo_url:Ljava/lang/String;

.field private mAllDanmakuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field private mDanmakuView:Lmaster/flame/danmaku/ui/widget/DanmakuView;

.field private mEventHandler:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mHandler2:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsHwDecode:Z

.field private mLastPos:I

.field private mLastPos2:I

.field private mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

.field private mProgressBar:Lcom/shenma/tvlauncher/view/PlayerProgressBar;

.field private mQueue:Lcom/android/volley/RequestQueue;

.field private mSpeedHandler:Landroid/os/Handler;

.field private mSurfaceYDisplayRange:I

.field private mToast:Landroid/widget/Toast;

.field private mTouchAction:I

.field private mTouchX:F

.field private mTouchY:F

.field private mUpdateDanmakuRunnable:Ljava/lang/Runnable;

.field private mVideoSource:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private maxVolume:I

.field private final mediaHandler:Landroid/os/Handler;

.field private menulist:Landroid/widget/ListView;

.field private menupopupWindow:Landroid/widget/PopupWindow;

.field private mmkv:Lcom/tencent/mmkv/MMKV;

.field private nextlink:Ljava/lang/String;

.field private playIndex:I

.field private playPreCode:I

.field private position:I

.field private ptpositions:Z

.field private random:Ljava/util/Random;

.field private rootView:Landroid/view/View;

.field private safe_mode:I

.field private screenHeight:I

.field private screenWidth:I

.field private seekBar:Landroid/widget/SeekBar;

.field private seizing:I

.field private seizing_time:I

.field private seizings:I

.field private source:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrl;",
            ">;"
        }
    .end annotation
.end field

.field private sourceId:Ljava/lang/String;

.field private sp:Landroid/content/SharedPreferences;

.field private speed:J

.field private speedRunnable:Ljava/lang/Runnable;

.field private speedRunnabless:Ljava/lang/Runnable;

.field private textsizeSeekBar:Lcom/view/FlexibleStepSeekBar;

.field private textsize_seekbar_value:Landroid/widget/TextView;

.field private time:Ljava/lang/String;

.field private time_controlView:Landroid/view/View;

.field private time_controler:Landroid/widget/PopupWindow;

.field private timeout:I

.field private transparencySeekBar:Lcom/view/FlexibleStepSeekBar;

.field private transparency_seekbar_value:Landroid/widget/TextView;

.field private tv_currentTime:Landroid/widget/TextView;

.field private tv_logo:Landroid/widget/ImageView;

.field private tv_menu:Landroid/widget/TextView;

.field private tv_mv_name:Landroid/widget/TextView;

.field private tv_mv_speed:Landroid/widget/TextView;

.field private tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

.field private tv_notice_root:Landroid/widget/LinearLayout;

.field private tv_progress_time:Landroid/widget/TextView;

.field private tv_time:Landroid/widget/TextView;

.field private tv_totalTime:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;

.field private videoId:Ljava/lang/String;

.field private videoInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private videoLength:I

.field private vipstate:I

.field private vmAdapter:Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;

.field private vodPlayUrl:Ljava/lang/String;

.field vod_caton_check:I

.field private vodname:Ljava/lang/String;

.field private vodstate:Ljava/lang/String;

.field private vodtype:Ljava/lang/String;

.field private webHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private webView:Landroid/webkit/WebView;

.field private xuanjiBtn:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetAd_block_down(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block_down:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetAd_block_right(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block_right:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetAd_block_up(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block_up:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetAdblock(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Adblock:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetAuto_Source(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Auto_Source:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetClient(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Client:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetClientID(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ClientID:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetConditions(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Conditions:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetEwmHeight(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->EwmHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetEwmWidth(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->EwmWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetExclude_content(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Exclude_content:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetFburl(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Fburl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetMaxClientID(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->MaxClientID:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetMaxtimeout(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Maxtimeout:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetMoviesize(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Moviesize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetNumber(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Number:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetPlay_timeout_debug(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Play_timeout_debug:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetPlayersNumber(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetSYNC_Playing(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->SYNC_Playing:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetTrytime(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Trytime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetTvplaysize(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Tvplaysize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetalbumPic(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->albumPic:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcollectionTime(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcoloredDanmu(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->coloredDanmu:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentPositions(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPositions:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetdanmuInput(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdanmuInputDialog(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuInputDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdanmuSwitch(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuSwitch:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdanmu_velocity_seekbar_value(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmu_velocity_seekbar_value:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdao(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdomain(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->domain:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetheadposition(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->headposition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetib_playStatus(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisCodeBlockExecuted(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isCodeBlockExecuted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisControllerShow(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisDestroy(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDestroy:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisLast(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isLast:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisMenuItemShow(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isMenuItemShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisNext(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isNext:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisPause(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isPause:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetjxurl(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jxurl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetjxurls(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jxurls:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastRxByte(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->lastRxByte:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastSpeedTime(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->lastSpeedTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlines_seekbar_value(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->lines_seekbar_value:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetload(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->load:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlogo_url(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->logo_url:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDanmakuView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/ui/widget/DanmakuView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mDanmakuView:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastPos(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlayerStatus(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressBar(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/view/PlayerProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mProgressBar:Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpeedHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menulist:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmenupopupWindow(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmmkv(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/tencent/mmkv/MMKV;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mmkv:Lcom/tencent/mmkv/MMKV;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnextlink(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nextlink:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplayIndex(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrootView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->rootView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscreenHeight(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscreenWidth(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetseekBar(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetseizing(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetseizing_time(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing_time:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetseizings(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizings:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsourceId(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sourceId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsp(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetspeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speed:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetspeedRunnable(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetspeedRunnabless(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speedRunnabless:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextsize_seekbar_value(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->textsize_seekbar_value:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettime(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettime_controler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettimeout(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->timeout:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettransparency_seekbar_value(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->transparency_seekbar_value:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_currentTime(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_currentTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_logo(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_logo:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_mv_speed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_speed:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_notice(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_notice_root(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoId(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoInfo(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvodPlayUrl(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodPlayUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvodname(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvodtype(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodtype:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwebHeaders(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webHeaders:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwebView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputFburl(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Fburl:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputNumbermax(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputPlayersNumber(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcollectionTime(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcoloredDanmu(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->coloredDanmu:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentPositions(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPositions:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdanmuTransparency(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuTransparency:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisCodeBlockExecuted(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isCodeBlockExecuted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisControllerShow(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisDialogShowing(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDialogShowing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisLast(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isLast:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisMenuItemShow(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isMenuItemShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisMenuShow(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isMenuShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisNext(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isNext:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisPause(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isPause:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisSwitch(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isSwitch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputjxurl(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jxurl:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputjxurls(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jxurls:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastRxByte(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->lastRxByte:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastSpeedTime(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->lastSpeedTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputload(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->load:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAllDanmakuItems(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mAllDanmakuItems:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastPos(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastPos2(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos2:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPlayerStatus(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVideoSource(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mVideoSource:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputplayIndex(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputptpositions(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptpositions:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputseizing(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputseizings(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizings:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputspeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speed:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtimeout(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->timeout:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvipstate(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vipstate:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwebHeaders(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webHeaders:Ljava/util/HashMap;

    return-void
.end method

.method static bridge synthetic -$$Nest$mPrepareVodData(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PrepareVodData(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mResetMovieTime(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ResetMovieTime()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mSelecteVod(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->SelecteVod(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mSwitchsource(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Switchsource(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddDanmakuToView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->addDanmakuToView(Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelDelayHide(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->cancelDelayHide()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mendSpeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->endSpeed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDanmakuWithinTimeRange(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;JJ)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getDanmakuWithinTimeRange(JJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetVodGongGao(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getVodGongGao()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideController(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hideController()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideControllerDelay(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hideControllerDelay()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideMenu(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hideMenu()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMessage(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->onMessage(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestDanmu(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->requestDanmu(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectScales(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->selectScales(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendDanmu(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sendDanmu(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDecode(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setDecode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetJump(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setJump(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetJump_end(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setJump_end(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSpeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowController(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showController()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDanmuSettingPopup(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showDanmuSettingPopup(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowInputDialog(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showInputDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowMenu(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showMenu()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartDanmakuSchedule(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->startDanmakuSchedule()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSpeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->startSpeed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTextViewWithTimeFormat(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Landroid/widget/TextView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateprogress(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->updateprogress(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvodlogoloadImg(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodlogoloadImg()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmenutype()I
    .locals 1

    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menutype:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetrxByte()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->rxByte:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmenutype(I)V
    .locals 0

    sput p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menutype:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputrxByte(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->rxByte:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 168
    const/4 v0, 0x0

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    .line 169
    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jmposition:I

    .line 170
    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->phszposition:I

    .line 171
    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->qxdposition:I

    .line 172
    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 173
    const/4 v1, 0x2

    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    .line 174
    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 175
    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 176
    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    .line 177
    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlHeight:I

    .line 420
    const-string v0, ""

    sput-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Failed:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 161
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->SYNC_Playing:Ljava/lang/Object;

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->albumPic:Ljava/lang/String;

    .line 183
    const/4 v1, 0x0

    .line 194
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 183
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    .line 189
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->firstTime:J

    .line 190
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 192
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isBack:Z

    .line 193
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    .line 194
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 195
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isLast:Ljava/lang/Boolean;

    .line 196
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isMenuItemShow:Z

    .line 197
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isMenuShow:Z

    .line 198
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isNext:Ljava/lang/Boolean;

    .line 199
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isPause:Ljava/lang/Boolean;

    .line 200
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isSwitch:Z

    .line 203
    iput-wide v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->firstTimes:J

    .line 204
    iput-wide v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->firstTimen:J

    .line 207
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 208
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 210
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mIsHwDecode:Z

    .line 211
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 212
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos2:I

    .line 216
    sget-object v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 220
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mToast:Landroid/widget/Toast;

    .line 224
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mVideoSource:Ljava/lang/String;

    .line 225
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 230
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    .line 266
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler2:Landroid/os/Handler;

    .line 269
    new-instance v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$1;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$1;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    .line 280
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodtype:Ljava/lang/String;

    .line 281
    new-instance v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    .line 382
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    .line 383
    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ClientID:I

    .line 384
    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->MaxClientID:I

    .line 385
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Type:I

    .line 387
    const-string v3, "Logo_url"

    invoke-static {p0, v3, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->logo_url:Ljava/lang/String;

    .line 389
    const-string v3, "Client"

    const-string v4, ""

    invoke-static {p0, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Client:Ljava/lang/String;

    .line 391
    const-string v3, "Auto_Source"

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Auto_Source:I

    .line 393
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jxurls:I

    .line 400
    const-string v3, "Sniff_debug_mode"

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Sniff_debug_mode:I

    .line 402
    const-string v3, "Play_timeout_debug"

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Play_timeout_debug:I

    .line 405
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Navigation_mode:I

    .line 407
    const-string v3, "Vod_Notice_starting_time"

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Vod_Notice_starting_time:I

    .line 411
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    .line 412
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->load:I

    .line 413
    const/16 v3, 0x12c

    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Maxtimeout:I

    .line 414
    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Maxtimeout:I

    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->timeout:I

    .line 417
    sget-object v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->source:Ljava/util/List;

    .line 418
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDialogShowing:Z

    .line 419
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isCodeBlockExecuted:Z

    .line 421
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptpositions:Z

    .line 428
    const/16 v3, 0x63

    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->core:I

    .line 429
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->safe_mode:I

    .line 431
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block:I

    .line 432
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    .line 438
    const-string v3, "core_mode"

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->core_mode:I

    .line 443
    const-string v3, "Adblock"

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Adblock:I

    .line 450
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->EwmWidth:I

    .line 451
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->EwmHeight:I

    .line 452
    const/16 v3, 0x78

    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Moviesize:I

    .line 453
    const/16 v3, 0x46

    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Tvplaysize:I

    .line 454
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->headposition:I

    .line 469
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mAllDanmakuItems:Ljava/util/List;

    .line 470
    const/16 v3, 0x32

    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuTransparency:I

    .line 471
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->coloredDanmu:Z

    .line 472
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 478
    const-string/jumbo v0, "vod_caton_check"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vod_caton_check:I

    .line 483
    const-string v0, "seizing_time"

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing_time:I

    return-void
.end method

.method private PrepareVodData(I)V
    .locals 4
    .param p1, "postion"    # I

    .line 1160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isSwitch:Z

    .line 1161
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    if-lt v1, v2, :cond_2

    .line 1162
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodtype:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodtype:Ljava/lang/String;

    const-string v2, "MOVIE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    .line 1164
    .local v0, "textView":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v2, v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    .end local v0    # "textView":Landroid/widget/TextView;
    goto :goto_0

    .line 1166
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1168
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->url:Ljava/lang/String;

    .line 1169
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1170
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    .line 1172
    :cond_2
    return-void
.end method

.method private PrepareVodDataa()V
    .locals 5

    .line 1275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->list:Ljava/util/List;

    .line 1276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    if-ge v0, v1, :cond_0

    .line 1277
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->source:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->domain:Ljava/lang/String;

    .line 1278
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->source:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->list:Ljava/util/List;

    .line 1276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1281
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1282
    .local v0, "arrayList":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1283
    new-instance v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    invoke-direct {v2}, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;-><init>()V

    .line 1284
    .local v2, "vinfo":Lcom/shenma/tvlauncher/vod/domain/VideoInfo;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    .line 1285
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    .line 1286
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    .end local v2    # "vinfo":Lcom/shenma/tvlauncher/vod/domain/VideoInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1289
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_3

    .line 1292
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    .local v1, "arrayLista":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1294
    new-instance v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    invoke-direct {v3}, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;-><init>()V

    .line 1295
    .local v3, "vinfo":Lcom/shenma/tvlauncher/vod/domain/VideoInfo;
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->list:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    .line 1296
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->list:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    .line 1297
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    .end local v3    # "vinfo":Lcom/shenma/tvlauncher/vod/domain/VideoInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1299
    .end local v2    # "i":I
    :cond_2
    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    .line 1300
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->SelecteVod(I)V

    .line 1301
    .end local v1    # "arrayLista":Ljava/util/ArrayList;
    goto :goto_3

    .line 1303
    :cond_3
    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Switchsource(I)V

    .line 1306
    :goto_3
    return-void
.end method

.method private ResetMovieTime()V
    .locals 2

    .line 3871
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_currentTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    .line 3872
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_totalTime:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    .line 3874
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3876
    return-void
.end method

.method private SelecteVod(I)V
    .locals 5
    .param p1, "postion"    # I

    .line 1177
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    const-string v2, "IJK"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1178
    .local v0, "playcore":Ljava/lang/String;
    const-string/jumbo v1, "\u81ea\u52a8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 1179
    sput v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 1180
    :cond_0
    const-string/jumbo v1, "\u7cfb\u7edf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1181
    sput v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 1182
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1183
    const/4 v1, 0x2

    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 1184
    :cond_2
    const-string v1, "EXO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1185
    const/4 v1, 0x3

    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 1186
    :cond_3
    const-string/jumbo v1, "\u963f\u91cc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1187
    const/4 v1, 0x4

    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    .line 1189
    :cond_4
    :goto_0
    sget-object v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 1190
    iput-boolean v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isSwitch:Z

    .line 1191
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->stopPlayback()V

    .line 1192
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1193
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1194
    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 1195
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodtype:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodtype:Ljava/lang/String;

    const-string v2, "MOVIE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 1196
    :cond_5
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    .line 1197
    .local v1, "textView":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    .end local v1    # "textView":Landroid/widget/TextView;
    goto :goto_1

    .line 1199
    :cond_6
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1201
    :goto_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->url:Ljava/lang/String;

    .line 1202
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Client:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    .line 1204
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1208
    return-void
.end method

.method private Sniffing(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 2616
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2617
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$43;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$43;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2672
    return-void
.end method

.method private Switchsource(I)V
    .locals 6
    .param p1, "msg"    # I

    .line 1310
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1311
    sget v0, Lcom/shenma/tvlauncher/R$string;->str_no_data_error:I

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1312
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 1315
    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    .line 1317
    const-string v3, "Fb_type"

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "-"

    if-nez v3, :cond_1

    .line 1318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/shenma/tvlauncher/R$string;->so_sorry:I

    invoke-virtual {p0, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v4, v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$string;->abnormal:I

    invoke-virtual {p0, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showUpdateDialog(Ljava/lang/String;Landroid/content/Context;)V

    .line 1319
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    goto/16 :goto_1

    .line 1321
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/shenma/tvlauncher/R$string;->so_sorry:I

    invoke-virtual {p0, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v4, v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$string;->abnormal:I

    invoke-virtual {p0, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {p0, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1322
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    add-int/2addr v4, v2

    if-le v3, v4, :cond_2

    .line 1324
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    .line 1326
    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    .line 1327
    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    sput v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 1328
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    .line 1329
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 1330
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    .line 1332
    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    .line 1333
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing:I

    .line 1334
    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->SelecteVod(I)V

    .line 1336
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1338
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 1339
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/TextView;

    new-instance v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$17;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$17;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1346
    :cond_2
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 1349
    :goto_0
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isCodeBlockExecuted:Z

    .line 1351
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v4, v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->domain:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getFailreport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    :cond_3
    :goto_1
    if-ne p1, v2, :cond_7

    .line 1356
    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Number:I

    if-le v3, v2, :cond_6

    .line 1357
    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    .line 1358
    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    iget v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Number:I

    if-lt v3, v4, :cond_4

    .line 1359
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Switchsource(I)V

    goto :goto_3

    .line 1361
    :cond_4
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    add-int/2addr v0, v2

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Number:I

    if-le v0, v3, :cond_5

    .line 1362
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sourceId:Ljava/lang/String;

    .line 1363
    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    goto :goto_2

    .line 1365
    :cond_5
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sourceId:Ljava/lang/String;

    .line 1366
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    .line 1368
    :goto_2
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PrepareVodDataa()V

    goto :goto_3

    .line 1371
    :cond_6
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Switchsource(I)V

    .line 1375
    :cond_7
    :goto_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    .line 1376
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing:I

    .line 1377
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Number:I

    if-le v0, v2, :cond_a

    .line 1378
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    .line 1379
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Number:I

    if-lt v0, v1, :cond_8

    .line 1381
    const-string/jumbo v0, "\u6700\u5927"

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_5

    .line 1383
    :cond_8
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Number:I

    if-le v0, v1, :cond_9

    .line 1384
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sourceId:Ljava/lang/String;

    .line 1385
    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    goto :goto_4

    .line 1387
    :cond_9
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sourceId:Ljava/lang/String;

    .line 1388
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    .line 1390
    :goto_4
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PrepareVodDataa()V

    goto :goto_5

    .line 1394
    :cond_a
    const-string/jumbo v0, "\u5355\u6e90"

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1398
    :cond_b
    :goto_5
    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 4551
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 4552
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 4553
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x2000000a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 4554
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4557
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private addDanmakuToView(Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;)V
    .locals 6
    .param p1, "item"    # Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2032
    const/4 v0, 0x1

    .line 2038
    .local v0, "type":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->createDanmaku(I)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v1

    .line 2039
    .local v1, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-nez v1, :cond_0

    return-void

    .line 2042
    :cond_0
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    .line 2045
    const/4 v2, -0x1

    :try_start_0
    iget-boolean v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->coloredDanmu:Z

    if-eqz v3, :cond_1

    .line 2046
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->getColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    goto :goto_0

    .line 2048
    :cond_1
    iput v2, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2052
    :goto_0
    goto :goto_1

    .line 2050
    :catch_0
    move-exception v3

    .line 2051
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    iput v2, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    .line 2054
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$dimen;->sm_18:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textSize:F

    .line 2055
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->getTime()I

    move-result v2

    if-nez v2, :cond_2

    .line 2056
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mDanmakuView:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-virtual {v2}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->getCurrentTime()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->setTime(J)V

    goto :goto_2

    .line 2058
    :cond_2
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->getTime()I

    move-result v2

    add-int/lit16 v2, v2, 0xbb8

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->setTime(J)V

    .line 2060
    :goto_2
    const/4 v2, 0x5

    iput v2, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->padding:I

    .line 2061
    const/4 v2, 0x0

    iput-byte v2, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->priority:B

    .line 2064
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mDanmakuView:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    if-nez v2, :cond_3

    .line 2065
    return-void

    .line 2068
    :cond_3
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mDanmakuView:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-virtual {v2, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 2069
    return-void
.end method

.method private analysisUrl(Ljava/lang/String;I)V
    .locals 17
    .param p1, "urls"    # Ljava/lang/String;
    .param p2, "way"    # I

    .line 2283
    move-object/from16 v1, p0

    move/from16 v13, p2

    const-string v0, "Timeout"

    const/16 v2, 0x19

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    .line 2285
    .local v14, "Timeout":I
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$36;

    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$36;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-static {v1, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 2293
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "userName"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2294
    .local v6, "account":Ljava/lang/String;
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "passWord"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2295
    .local v7, "password":Ljava/lang/String;
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "ckinfo"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2296
    .local v8, "token":Ljava/lang/String;
    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 2297
    .local v9, "machineid":Ljava/lang/String;
    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 2298
    .local v10, "value":D
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v3, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v2, v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Utils;->getEcodString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2301
    .local v12, "name":Ljava/lang/String;
    const/high16 v15, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-nez v13, :cond_0

    .line 2302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&app="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&account="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&password="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&token="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&machineid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&edition="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&vodname="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&line="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->domain:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&new=1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2303
    .local v2, "url":Ljava/lang/String;
    const/4 v4, 0x0

    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$39;

    const/4 v5, 0x0

    new-instance v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$37;

    invoke-direct {v4, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$37;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    const/16 v16, 0x0

    new-instance v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$38;

    invoke-direct {v5, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$38;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    move-object v3, v2

    .end local v2    # "url":Ljava/lang/String;
    .local v3, "url":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v16, v9

    const/4 v9, 0x0

    .end local v9    # "machineid":Ljava/lang/String;
    .local v16, "machineid":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$39;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    mul-int/lit16 v4, v14, 0x3e8

    invoke-direct {v2, v4, v9, v15}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v2}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 2334
    iget-object v2, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 2301
    .end local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    .end local v3    # "url":Ljava/lang/String;
    .end local v16    # "machineid":Ljava/lang/String;
    .restart local v9    # "machineid":Ljava/lang/String;
    :cond_0
    move-object/from16 v16, v9

    const/4 v9, 0x0

    .line 2339
    .end local v9    # "machineid":Ljava/lang/String;
    .restart local v16    # "machineid":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x1

    if-ne v13, v0, :cond_1

    .line 2340
    move-object/from16 v3, p1

    .line 2341
    .restart local v3    # "url":Ljava/lang/String;
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$42;

    new-instance v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$40;

    invoke-direct {v4, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$40;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$41;

    invoke-direct {v5, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$41;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    const/4 v2, 0x1

    move-object/from16 v9, v16

    const/4 v13, 0x0

    .end local v16    # "machineid":Ljava/lang/String;
    .restart local v9    # "machineid":Ljava/lang/String;
    invoke-direct/range {v0 .. v12}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$42;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    .line 2374
    .end local v9    # "machineid":Ljava/lang/String;
    .restart local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    .restart local v16    # "machineid":Ljava/lang/String;
    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    mul-int/lit16 v4, v14, 0x3e8

    invoke-direct {v2, v4, v13, v15}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v2}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 2377
    iget-object v2, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 2382
    .end local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private cancelDelayHide()V
    .locals 2

    .line 3407
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3408
    return-void
.end method

.method private dismissDanmuSettingPopup()V
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuSettingPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuSettingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuSettingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 862
    :cond_0
    return-void
.end method

.method private doBrightnessTouch(F)V
    .locals 6
    .param p1, "y_changed"    # F

    .line 4368
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchAction:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchAction:I

    if-eq v0, v1, :cond_0

    .line 4369
    return-void

    .line 4370
    :cond_0
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchAction:I

    .line 4371
    neg-float v0, p1

    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSurfaceYDisplayRange:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    .line 4372
    .local v0, "delta":F
    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Lightness:F

    add-float/2addr v1, v0

    const v2, 0x3c23d70a    # 0.01f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 4373
    .local v1, "vol":I
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    .line 4374
    const/4 v2, 0x5

    const/16 v3, 0xff

    const/4 v4, 0x0

    if-ge v1, v2, :cond_1

    .line 4375
    sget v2, Lcom/shenma/tvlauncher/R$drawable;->mv_ic_brightness:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 4377
    :cond_1
    sget v2, Lcom/shenma/tvlauncher/R$drawable;->mv_ic_brightness:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    .line 4379
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Lightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "....vol="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "...delta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "....mSurfaceYDisplayRange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSurfaceYDisplayRange:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "doBrightnessTouch"

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4381
    :cond_2
    return-void
.end method

.method private doSeekTouch(FFZ)V
    .locals 7
    .param p1, "coef"    # F
    .param p2, "gesturesize"    # F
    .param p3, "seek"    # Z

    .line 4385
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 4386
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchAction:I

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchAction:I

    if-ne v0, v1, :cond_5

    .line 4387
    :cond_0
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchAction:I

    .line 4388
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 4389
    .local v0, "time":I
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-double v1, v1

    const/high16 v3, 0x41000000    # 8.0f

    div-float v3, p2, v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide v5, 0x41224f8000000000L    # 600000.0

    mul-double v3, v3, v5

    const-wide v5, 0x40a7700000000000L    # 3000.0

    add-double/2addr v3, v5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    .line 4390
    .local v1, "jump":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jump="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "doSeekTouch"

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4391
    if-lez v1, :cond_1

    add-int v2, v0, v1

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoLength:I

    if-le v2, v3, :cond_1

    .line 4392
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoLength:I

    sub-int v1, v2, v0

    .line 4394
    :cond_1
    if-gez v1, :cond_2

    add-int v2, v0, v1

    if-gez v2, :cond_2

    .line 4395
    neg-int v1, v0

    .line 4397
    :cond_2
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoLength:I

    if-lez v2, :cond_5

    .line 4398
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_progress_time:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4399
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_progress_time:Landroid/widget/TextView;

    add-int v4, v0, v1

    invoke-direct {p0, v2, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    .line 4400
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x15

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4401
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4403
    if-eqz p3, :cond_5

    .line 4405
    add-int v2, v0, v1

    mul-int/lit16 v2, v2, 0x3e8

    iget v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoLength:I

    if-le v2, v4, :cond_4

    .line 4406
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    add-int/lit8 v4, v4, 0x1

    if-le v2, v4, :cond_3

    .line 4407
    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    .line 4409
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    .line 4410
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    sput v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 4411
    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    .line 4412
    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 4413
    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    .line 4415
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    .line 4416
    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing:I

    .line 4417
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->SelecteVod(I)V

    .line 4419
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4421
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 4422
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/TextView;

    new-instance v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$68;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$68;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4429
    :cond_3
    const-string/jumbo v2, "\u5df2\u662f\u6700\u540e\u4e00\u96c6\u4e86!"

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {p0, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 4432
    :cond_4
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    add-int v3, v0, v1

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 4433
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4439
    .end local v0    # "time":I
    .end local v1    # "jump":I
    :cond_5
    :goto_0
    return-void
.end method

.method private doVolumeTouch(F)V
    .locals 6
    .param p1, "y_changed"    # F

    .line 4349
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchAction:I

    const/4 v1, 0x1

    .line 4357
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 4349
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchAction:I

    if-eq v0, v1, :cond_0

    .line 4350
    return-void

    .line 4351
    :cond_0
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchAction:I

    .line 4352
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSurfaceYDisplayRange:I

    int-to-float v0, v0

    div-float v0, p1, v0

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->maxVolume:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    float-to-int v0, v0

    neg-int v0, v0

    .line 4353
    .local v0, "delta":I
    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentVolume:I

    add-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->maxVolume:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4354
    .local v3, "vol":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vol===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "...delta="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "doVolumeTouch"

    invoke-static {v5, v4}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4355
    if-eqz v0, :cond_3

    .line 4356
    if-ge v3, v1, :cond_1

    .line 4357
    sget v1, Lcom/shenma/tvlauncher/R$drawable;->mv_ic_volume_mute:I

    iget v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->maxVolume:I

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 4358
    :cond_1
    if-lt v3, v1, :cond_2

    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->maxVolume:I

    div-int/lit8 v1, v1, 0x2

    if-ge v3, v1, :cond_2

    .line 4359
    sget v1, Lcom/shenma/tvlauncher/R$drawable;->mv_ic_volume_low:I

    iget v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->maxVolume:I

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 4360
    :cond_2
    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->maxVolume:I

    div-int/lit8 v1, v1, 0x2

    if-lt v3, v1, :cond_3

    .line 4361
    sget v1, Lcom/shenma/tvlauncher/R$drawable;->mv_ic_volume_high:I

    iget v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->maxVolume:I

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    .line 4364
    :cond_3
    :goto_0
    return-void
.end method

.method private endSpeed()V
    .locals 2

    .line 4519
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->load:I

    .line 4520
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4521
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_speed:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4522
    return-void
.end method

.method private fastForward()V
    .locals 2

    .line 3834
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoLength:I

    div-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    div-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v0, v1

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 3835
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    add-int/lit16 v0, v0, 0x7530

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    goto :goto_0

    .line 3838
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoLength:I

    add-int/lit16 v0, v0, -0x2710

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 3840
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isBack:Z

    .line 3841
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->cancelDelayHide()V

    .line 3842
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3843
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$65;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$65;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z

    .line 3850
    return-void
.end method

.method private findAllViewsWithIds(Landroid/view/View;)V
    .locals 11
    .param p1, "rootView"    # Landroid/view/View;

    .line 724
    sget v0, Lcom/shenma/tvlauncher/R$id;->lines_seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/view/FlexibleStepSeekBar;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->linesSeekBar:Lcom/view/FlexibleStepSeekBar;

    .line 725
    sget v0, Lcom/shenma/tvlauncher/R$id;->textsize_seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/view/FlexibleStepSeekBar;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->textsizeSeekBar:Lcom/view/FlexibleStepSeekBar;

    .line 726
    sget v0, Lcom/shenma/tvlauncher/R$id;->transparency_seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/view/FlexibleStepSeekBar;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->transparencySeekBar:Lcom/view/FlexibleStepSeekBar;

    .line 727
    sget v0, Lcom/shenma/tvlauncher/R$id;->danmu_velocity_seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/view/FlexibleStepSeekBar;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuVelocitySeekBar:Lcom/view/FlexibleStepSeekBar;

    .line 728
    sget v0, Lcom/shenma/tvlauncher/R$id;->colored_barrage_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->coloredBarrageSwitch:Landroid/widget/Switch;

    .line 729
    sget v0, Lcom/shenma/tvlauncher/R$id;->lines_seekbar_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->lines_seekbar_value:Landroid/widget/TextView;

    .line 730
    sget v0, Lcom/shenma/tvlauncher/R$id;->textsize_seekbar_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->textsize_seekbar_value:Landroid/widget/TextView;

    .line 731
    sget v0, Lcom/shenma/tvlauncher/R$id;->transparency_seekbar_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->transparency_seekbar_value:Landroid/widget/TextView;

    .line 732
    sget v0, Lcom/shenma/tvlauncher/R$id;->danmu_velocity_seekbar_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmu_velocity_seekbar_value:Landroid/widget/TextView;

    .line 733
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1\u884c"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "2\u884c"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "3\u884c"

    aput-object v4, v0, v3

    const/4 v4, 0x3

    const-string v5, "4\u884c"

    aput-object v5, v0, v4

    const/4 v5, 0x4

    const-string v6, "5\u884c"

    aput-object v6, v0, v5

    const/4 v6, 0x5

    const-string v7, "6\u884c"

    aput-object v7, v0, v6

    const/4 v7, 0x6

    const-string v8, "7\u884c"

    aput-object v8, v0, v7

    const-string v8, "8\u884c"

    const/4 v9, 0x7

    aput-object v8, v0, v9

    const-string v8, "9\u884c"

    const/16 v9, 0x8

    aput-object v8, v0, v9

    const-string v8, "10\u884c"

    const/16 v9, 0x9

    aput-object v8, v0, v9

    .line 734
    .local v0, "lines":[Ljava/lang/String;
    new-array v8, v6, [Ljava/lang/String;

    const-string/jumbo v9, "\u6781\u5c0f"

    aput-object v9, v8, v1

    const-string/jumbo v9, "\u5c0f"

    aput-object v9, v8, v2

    const-string/jumbo v9, "\u9002\u4e2d"

    aput-object v9, v8, v3

    const-string/jumbo v10, "\u5927"

    aput-object v10, v8, v4

    const-string/jumbo v10, "\u7279\u5927"

    aput-object v10, v8, v5

    .line 735
    .local v8, "textSizes":[Ljava/lang/String;
    new-array v7, v7, [Ljava/lang/String;

    const-string v10, "50%"

    aput-object v10, v7, v1

    const-string v10, "60%"

    aput-object v10, v7, v2

    const-string v10, "70%"

    aput-object v10, v7, v3

    const-string v10, "80%"

    aput-object v10, v7, v4

    const-string v10, "90%"

    aput-object v10, v7, v5

    const-string v10, "100%"

    aput-object v10, v7, v6

    .line 736
    .local v7, "transparencys":[Ljava/lang/String;
    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v10, "\u6781\u6162"

    aput-object v10, v6, v1

    const-string/jumbo v1, "\u6162"

    aput-object v1, v6, v2

    aput-object v9, v6, v3

    const-string/jumbo v1, "\u5feb"

    aput-object v1, v6, v4

    const-string/jumbo v1, "\u6781\u5feb"

    aput-object v1, v6, v5

    .line 737
    .local v6, "danmuVelocitys":[Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->linesSeekBar:Lcom/view/FlexibleStepSeekBar;

    invoke-virtual {v1, v0}, Lcom/view/FlexibleStepSeekBar;->setStringValues([Ljava/lang/String;)V

    .line 738
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->textsizeSeekBar:Lcom/view/FlexibleStepSeekBar;

    invoke-virtual {v1, v8}, Lcom/view/FlexibleStepSeekBar;->setStringValues([Ljava/lang/String;)V

    .line 739
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->transparencySeekBar:Lcom/view/FlexibleStepSeekBar;

    invoke-virtual {v1, v7}, Lcom/view/FlexibleStepSeekBar;->setStringValues([Ljava/lang/String;)V

    .line 740
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuVelocitySeekBar:Lcom/view/FlexibleStepSeekBar;

    invoke-virtual {v1, v6}, Lcom/view/FlexibleStepSeekBar;->setStringValues([Ljava/lang/String;)V

    .line 741
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mmkv:Lcom/tencent/mmkv/MMKV;

    const-string v3, "coloredDanmu"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/mmkv/MMKV;->decodeBool(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->coloredDanmu:Z

    .line 742
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->coloredBarrageSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->coloredDanmu:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 744
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setupSeekBars()V

    .line 745
    return-void
.end method

.method private getDanmakuWithinTimeRange(JJ)Ljava/util/List;
    .locals 10
    .param p1, "currentTimeMs"    # J
    .param p3, "thresholdMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;",
            ">;"
        }
    .end annotation

    .line 2072
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2073
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;>;"
    sub-long v1, p1, p3

    .line 2074
    .local v1, "startTime":J
    add-long v3, p1, p3

    .line 2075
    .local v3, "endTime":J
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mAllDanmakuItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;

    .line 2076
    .local v6, "item":Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;
    invoke-virtual {v6}, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->getTime()I

    move-result v7

    int-to-long v7, v7

    cmp-long v9, v7, v1

    if-ltz v9, :cond_0

    invoke-virtual {v6}, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->getTime()I

    move-result v7

    int-to-long v7, v7

    cmp-long v9, v7, v3

    if-gtz v9, :cond_0

    .line 2077
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2079
    :cond_0
    invoke-virtual {v6}, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->getTime()I

    move-result v7

    int-to-long v7, v7

    cmp-long v9, v7, v3

    if-lez v9, :cond_1

    .line 2080
    goto :goto_1

    .line 2082
    .end local v6    # "item":Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;
    :cond_1
    goto :goto_0

    .line 2083
    :cond_2
    :goto_1
    return-object v0
.end method

.method private getFailreport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "vodname"    # Ljava/lang/String;
    .param p2, "episode"    # Ljava/lang/String;
    .param p3, "line"    # Ljava/lang/String;

    .line 3571
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 3572
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "userName"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3573
    .local v6, "account":Ljava/lang/String;
    move-object v8, p1

    .line 3574
    .local v8, "name":Ljava/lang/String;
    move-object v9, p2

    .line 3575
    .local v9, "vodepisode":Ljava/lang/String;
    move-object v7, p3

    .line 3576
    .local v7, "vodline":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ot:Ljava/lang/String;

    invoke-static {p0, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3578
    .local v3, "Fb_url":Ljava/lang/String;
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$60;

    new-instance v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$58;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$58;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$59;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$59;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$60;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3607
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 3609
    return-void
.end method

.method private getJumpdata()V
    .locals 25

    .line 1465
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "150"

    const-string v4, "120"

    const-string v5, "90"

    const-string v6, "60"

    const-string v7, "30"

    const-string v8, "20"

    const-string v9, "15"

    const-string v10, "10"

    const-string v11, "0"

    const/16 v12, 0xb

    const/16 v13, 0xa

    const/16 v14, 0x9

    const/16 v15, 0x8

    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, -0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v2, "300"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "240"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_2
    const-string v2, "180"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_6
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_7
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_8
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_9
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_a
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_b
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1503
    sput v23, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    goto :goto_2

    .line 1500
    :pswitch_0
    sput v12, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 1501
    goto :goto_2

    .line 1497
    :pswitch_1
    sput v13, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 1498
    goto :goto_2

    .line 1494
    :pswitch_2
    sput v14, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 1495
    goto :goto_2

    .line 1491
    :pswitch_3
    sput v15, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 1492
    goto :goto_2

    .line 1488
    :pswitch_4
    sput v16, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 1489
    goto :goto_2

    .line 1485
    :pswitch_5
    sput v17, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 1486
    goto :goto_2

    .line 1482
    :pswitch_6
    sput v18, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 1483
    goto :goto_2

    .line 1479
    :pswitch_7
    sput v19, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 1480
    goto :goto_2

    .line 1476
    :pswitch_8
    sput v20, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 1477
    goto :goto_2

    .line 1473
    :pswitch_9
    sput v21, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 1474
    goto :goto_2

    .line 1470
    :pswitch_a
    sput v22, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 1471
    goto :goto_2

    .line 1467
    :pswitch_b
    sput v23, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 1468
    nop

    .line 1507
    :goto_2
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time_end:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :cond_1
    goto/16 :goto_3

    :sswitch_c
    const-string v2, "300"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v24, 0xb

    goto/16 :goto_3

    :sswitch_d
    const-string v2, "240"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v24, 0xa

    goto :goto_3

    :sswitch_e
    const-string v2, "180"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v24, 0x9

    goto :goto_3

    :sswitch_f
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v24, 0x8

    goto :goto_3

    :sswitch_10
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v24, 0x7

    goto :goto_3

    :sswitch_11
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v24, 0x6

    goto :goto_3

    :sswitch_12
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v24, 0x5

    goto :goto_3

    :sswitch_13
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v24, 0x4

    goto :goto_3

    :sswitch_14
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v24, 0x3

    goto :goto_3

    :sswitch_15
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v24, 0x2

    goto :goto_3

    :sswitch_16
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v24, 0x1

    goto :goto_3

    :sswitch_17
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v24, 0x0

    :goto_3
    packed-switch v24, :pswitch_data_1

    .line 1545
    sput v23, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    goto :goto_4

    .line 1542
    :pswitch_c
    sput v12, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1543
    goto :goto_4

    .line 1539
    :pswitch_d
    sput v13, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1540
    goto :goto_4

    .line 1536
    :pswitch_e
    sput v14, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1537
    goto :goto_4

    .line 1533
    :pswitch_f
    sput v15, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1534
    goto :goto_4

    .line 1530
    :pswitch_10
    sput v16, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1531
    goto :goto_4

    .line 1527
    :pswitch_11
    sput v17, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1528
    goto :goto_4

    .line 1524
    :pswitch_12
    sput v18, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1525
    goto :goto_4

    .line 1521
    :pswitch_13
    sput v19, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1522
    goto :goto_4

    .line 1518
    :pswitch_14
    sput v20, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1519
    goto :goto_4

    .line 1515
    :pswitch_15
    sput v21, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1516
    goto :goto_4

    .line 1512
    :pswitch_16
    sput v22, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1513
    goto :goto_4

    .line 1509
    :pswitch_17
    sput v23, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1510
    nop

    .line 1548
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_b
        0x61f -> :sswitch_a
        0x624 -> :sswitch_9
        0x63e -> :sswitch_8
        0x65d -> :sswitch_7
        0x6ba -> :sswitch_6
        0x717 -> :sswitch_5
        0xbe2f -> :sswitch_4
        0xbe8c -> :sswitch_3
        0xbee9 -> :sswitch_2
        0xc22e -> :sswitch_1
        0xc573 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_17
        0x61f -> :sswitch_16
        0x624 -> :sswitch_15
        0x63e -> :sswitch_14
        0x65d -> :sswitch_13
        0x6ba -> :sswitch_12
        0x717 -> :sswitch_11
        0xbe2f -> :sswitch_10
        0xbe8c -> :sswitch_f
        0xbee9 -> :sswitch_e
        0xc22e -> :sswitch_d
        0xc573 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private getPlayPreferences()V
    .locals 3

    .line 1552
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "playPre"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playPreCode:I

    .line 1553
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playPreCode:I

    if-nez v0, :cond_0

    .line 1555
    sput v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->phszposition:I

    goto :goto_0

    .line 1558
    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->phszposition:I

    .line 1560
    :goto_0
    return-void
.end method

.method private getScreenSize()V
    .locals 3

    .line 3372
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->context:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3373
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 3374
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenHeight:I

    .line 3375
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenWidth:I

    .line 3376
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenHeight:I

    div-int/lit8 v2, v2, 0x4

    sput v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlHeight:I

    .line 3377
    return-void
.end method

.method private getVodGongGao()V
    .locals 13

    .line 4716
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 4717
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4718
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4719
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4720
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4721
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4722
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4723
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 4724
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$74;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api.php?app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&act=vod_notice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$72;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$72;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$73;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$73;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$74;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4765
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 4767
    return-void
.end method

.method private hideController()V
    .locals 1

    .line 3397
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controler:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3398
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3399
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    .line 3403
    :cond_0
    return-void
.end method

.method private hideControllerDelay()V
    .locals 4

    .line 3412
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->cancelDelayHide()V

    .line 3413
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3414
    return-void
.end method

.method private hideMenu()V
    .locals 2

    .line 3433
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Navigation_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3434
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Navigation()V

    .line 3436
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3437
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3439
    :cond_1
    return-void
.end method

.method private initData()V
    .locals 9

    .line 1220
    sget-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Sd:Landroid/content/SharedPreferences;

    const-string v1, "arrayList"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1221
    .local v0, "jsonString":Ljava/lang/String;
    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$16;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$16;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 1222
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$16;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1223
    .local v1, "listType":Ljava/lang/reflect/Type;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1224
    .local v2, "recoveredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VideoInfo;>;"
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1225
    .local v3, "intent":Landroid/content/Intent;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    .line 1227
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    .line 1228
    const-string v4, "albumPic"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->albumPic:Ljava/lang/String;

    .line 1229
    const-string/jumbo v4, "vodtype"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodtype:Ljava/lang/String;

    .line 1230
    const-string/jumbo v4, "videoId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoId:Ljava/lang/String;

    .line 1231
    const-string/jumbo v4, "vodname"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    .line 1232
    const-string v4, "domain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->domain:Ljava/lang/String;

    .line 1233
    const-string v4, "nextlink"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nextlink:Ljava/lang/String;

    .line 1234
    const-string/jumbo v4, "vodstate"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodstate:Ljava/lang/String;

    .line 1235
    const-string/jumbo v4, "sourceId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sourceId:Ljava/lang/String;

    .line 1236
    const-string v4, "playIndex"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    .line 1237
    const-string v4, "collectionTime"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 1238
    const-string/jumbo v4, "vodPlayUrl"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodPlayUrl:Ljava/lang/String;

    .line 1241
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1242
    .local v4, "arrayLista":Ljava/util/ArrayList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->source:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->source:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 1243
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->source:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1245
    .end local v6    # "i":I
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Number:I

    .line 1246
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sourceId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1247
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sourceId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    .line 1249
    :cond_1
    const-string/jumbo v6, "vod_Logo"

    invoke-static {p0, v6, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 1250
    .local v5, "vod_Logo":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 1251
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v8, 0x27

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1254
    :cond_2
    iget v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    sput v7, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 1255
    iget v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 1256
    sget v6, Lcom/shenma/tvlauncher/R$string;->selected:I

    sget v7, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1257
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v6}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 1259
    return-void

    .line 1262
    :cond_3
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodtype:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodtype:Ljava/lang/String;

    const-string v8, "MOVIE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v6, :cond_4

    .line 1263
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1265
    :cond_4
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v7, v7, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1268
    :goto_1
    iget v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-direct {p0, v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PrepareVodData(I)V

    .line 1270
    return-void
.end method

.method private initializeWebView()V
    .locals 5

    .line 2562
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2564
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Sniff_debug_mode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2565
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2566
    sget v0, Lcom/shenma/tvlauncher/R$string;->Sniffing_message:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2568
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/WebViewClient;

    invoke-direct {v3}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2569
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 2570
    .local v0, "settings":Landroid/webkit/WebSettings;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 2571
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2572
    const-string/jumbo v3, "utf-8"

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 2573
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 2574
    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 2575
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 2576
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 2577
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 2578
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 2579
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 2580
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 2581
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 2582
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 2583
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 2584
    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 2585
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 2586
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 2587
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 2588
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 2590
    :cond_1
    nop

    .line 2591
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 2593
    nop

    .line 2594
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 2595
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 2597
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 2598
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 2599
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 2600
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 2601
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 2602
    const-string v3, "database"

    invoke-virtual {p0, v3, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 2603
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 2604
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 2605
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v4, :cond_2

    .line 2606
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 2608
    :cond_2
    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 2609
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_3

    .line 2610
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 2612
    :cond_3
    return-void
.end method

.method private onMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 3444
    if-eqz p1, :cond_4

    .line 3445
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 3497
    return-void

    .line 3493
    :sswitch_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->switchCode()V

    .line 3494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isSwitch:Z

    .line 3495
    return-void

    .line 3480
    :sswitch_1
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ClientID:I

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->MaxClientID:I

    if-ge v0, v3, :cond_0

    .line 3481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Client:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ClientID:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 3483
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Auto_Source:I

    if-ne v0, v2, :cond_1

    .line 3485
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Switchsource(I)V

    goto :goto_0

    .line 3487
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3488
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Switchsource(I)V

    .line 3491
    :goto_0
    return-void

    .line 3477
    :sswitch_2
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hideMenu()V

    .line 3478
    return-void

    .line 3474
    :sswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_progress_time:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3475
    return-void

    .line 3471
    :sswitch_4
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hideController()V

    .line 3472
    return-void

    .line 3461
    :sswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v0

    .line 3462
    .local v0, "currPosition":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoLength:I

    .line 3463
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_currentTime:Landroid/widget/TextView;

    div-int/lit16 v2, v0, 0x3e8

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    .line 3464
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_totalTime:Landroid/widget/TextView;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoLength:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    .line 3465
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoLength:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 3466
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    div-int/lit16 v2, v0, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3467
    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 3468
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3469
    return-void

    .line 3447
    .end local v0    # "currPosition":I
    :sswitch_6
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ClientID:I

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->MaxClientID:I

    if-ge v0, v3, :cond_2

    .line 3448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Client:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ClientID:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 3450
    :cond_2
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Auto_Source:I

    if-ne v0, v2, :cond_3

    .line 3452
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Switchsource(I)V

    goto :goto_1

    .line 3456
    :cond_3
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Switchsource(I)V

    .line 3459
    :goto_1
    return-void

    .line 3500
    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_6
        0x5 -> :sswitch_5
        0x7 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x19 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 4561
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4562
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 4565
    :cond_0
    return-void
.end method

.method private requestDanmu(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 11
    .param p1, "urls"    # Ljava/lang/String;
    .param p2, "videoUrl"    # Ljava/lang/String;
    .param p3, "way"    # I
    .param p4, "danmuContent"    # Ljava/lang/String;

    .line 1932
    const-string v0, "Timeout"

    const/16 v1, 0x19

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1934
    .local v0, "Timeout":I
    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$31;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$31;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-static {p0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1942
    if-nez p3, :cond_0

    .line 1943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&a=list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zk.php"

    const-string v3, "api.php?act=dm"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1944
    .local v7, "url":Ljava/lang/String;
    new-instance v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$34;

    new-instance v8, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$32;

    invoke-direct {v8, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$32;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    new-instance v9, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$33;

    invoke-direct {v9, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$33;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    const/4 v6, 0x0

    move-object v5, p0

    move-object v10, p4

    .end local p4    # "danmuContent":Ljava/lang/String;
    .local v10, "danmuContent":Ljava/lang/String;
    invoke-direct/range {v4 .. v10}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$34;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    .line 1988
    .local v4, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    new-instance p4, Lcom/android/volley/DefaultRetryPolicy;

    mul-int/lit16 v1, v0, 0x3e8

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p4, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v4, p4}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 1991
    iget-object p4, v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p4, v4}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 1942
    .end local v4    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    .end local v7    # "url":Ljava/lang/String;
    .end local v10    # "danmuContent":Ljava/lang/String;
    .restart local p4    # "danmuContent":Ljava/lang/String;
    :cond_0
    move-object v5, p0

    move-object v10, p4

    .line 1994
    .end local p4    # "danmuContent":Ljava/lang/String;
    .restart local v10    # "danmuContent":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method private rewind()V
    .locals 2

    .line 3854
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 3855
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    add-int/lit16 v0, v0, -0x7530

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    goto :goto_0

    .line 3857
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 3859
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isBack:Z

    .line 3860
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->cancelDelayHide()V

    .line 3861
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3862
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$66;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$66;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z

    .line 3868
    return-void
.end method

.method private selectScales(I)V
    .locals 9
    .param p1, "paramInt"    # I

    .line 4167
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    if-eqz v0, :cond_12

    .line 4169
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4170
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 4172
    :cond_0
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 4173
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 4175
    :cond_1
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 4176
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 4178
    :cond_2
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 4179
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 4181
    :cond_3
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    const/4 v5, 0x4

    if-ne v0, v5, :cond_4

    .line 4182
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 4184
    :cond_4
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x5

    if-ne v0, v7, :cond_5

    .line 4185
    invoke-direct {p0, v6, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 4187
    :cond_5
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    const/4 v8, 0x6

    if-ne v0, v8, :cond_6

    .line 4188
    invoke-direct {p0, v6, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 4190
    :cond_6
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    const/4 v6, 0x7

    if-ne v0, v6, :cond_7

    .line 4191
    const/high16 v0, 0x40800000    # 4.0f

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 4193
    :cond_7
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    const/16 v6, 0x8

    if-ne v0, v6, :cond_8

    .line 4194
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 4198
    :cond_8
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 4251
    :pswitch_0
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Adblock:I

    if-ne v0, v2, :cond_a

    .line 4252
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block:I

    if-ne v0, v2, :cond_a

    .line 4253
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-eq v0, v4, :cond_9

    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-eq v0, v5, :cond_9

    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-eq v0, v7, :cond_9

    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-ne v0, v8, :cond_a

    .line 4254
    :cond_9
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 4255
    return-void

    .line 4259
    :cond_a
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    goto/16 :goto_0

    .line 4247
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 4248
    goto/16 :goto_0

    .line 4235
    :pswitch_2
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Adblock:I

    if-ne v0, v2, :cond_c

    .line 4236
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block:I

    if-ne v0, v2, :cond_c

    .line 4237
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-eq v0, v4, :cond_b

    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-eq v0, v5, :cond_b

    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-eq v0, v7, :cond_b

    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-ne v0, v8, :cond_c

    .line 4238
    :cond_b
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 4239
    return-void

    .line 4243
    :cond_c
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 4244
    goto :goto_0

    .line 4223
    :pswitch_3
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Adblock:I

    if-ne v0, v2, :cond_e

    .line 4224
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block:I

    if-ne v0, v2, :cond_e

    .line 4225
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-eq v0, v4, :cond_d

    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-eq v0, v5, :cond_d

    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-eq v0, v7, :cond_d

    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-ne v0, v8, :cond_e

    .line 4226
    :cond_d
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 4227
    return-void

    .line 4231
    :cond_e
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v5}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 4232
    goto :goto_0

    .line 4211
    :pswitch_4
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Adblock:I

    if-ne v0, v2, :cond_10

    .line 4212
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block:I

    if-ne v0, v2, :cond_10

    .line 4213
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-eq v0, v4, :cond_f

    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-eq v0, v5, :cond_f

    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-eq v0, v7, :cond_f

    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-ne v0, v8, :cond_10

    .line 4214
    :cond_f
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 4215
    return-void

    .line 4219
    :cond_10
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v7}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 4220
    goto :goto_0

    .line 4201
    :pswitch_5
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Adblock:I

    if-ne v0, v2, :cond_11

    .line 4202
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block:I

    if-ne v0, v2, :cond_11

    .line 4203
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 4204
    return-void

    .line 4207
    :cond_11
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 4208
    nop

    .line 4263
    :cond_12
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendDanmu(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 11
    .param p1, "urls"    # Ljava/lang/String;
    .param p2, "videoUrl"    # Ljava/lang/String;
    .param p3, "way"    # I
    .param p4, "danmuContent"    # Ljava/lang/String;

    .line 1882
    const-string v0, "Timeout"

    const/16 v1, 0x19

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1884
    .local v0, "Timeout":I
    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-static {p0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1892
    if-nez p3, :cond_0

    .line 1893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&a=add&content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mDanmakuView:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-virtual {v2}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->getCurrentTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zk.php"

    const-string v3, "api.php?act=dm"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1894
    .local v7, "url":Ljava/lang/String;
    new-instance v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$30;

    new-instance v8, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$28;

    invoke-direct {v8, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$28;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    new-instance v9, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$29;

    invoke-direct {v9, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$29;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    const/4 v6, 0x0

    move-object v5, p0

    move-object v10, p4

    .end local p4    # "danmuContent":Ljava/lang/String;
    .local v10, "danmuContent":Ljava/lang/String;
    invoke-direct/range {v4 .. v10}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$30;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    .line 1921
    .local v4, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    new-instance p4, Lcom/android/volley/DefaultRetryPolicy;

    mul-int/lit16 v1, v0, 0x3e8

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p4, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v4, p4}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 1924
    iget-object p4, v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p4, v4}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 1892
    .end local v4    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    .end local v7    # "url":Ljava/lang/String;
    .end local v10    # "danmuContent":Ljava/lang/String;
    .restart local p4    # "danmuContent":Ljava/lang/String;
    :cond_0
    move-object v5, p0

    move-object v10, p4

    .line 1927
    .end local p4    # "danmuContent":Ljava/lang/String;
    .restart local v10    # "danmuContent":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method private setDecode()V
    .locals 3

    .line 1453
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mIsHwDecode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mIsHwDecode:Z

    .line 1455
    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jmposition:I

    .line 1456
    return-void

    .line 1458
    :cond_0
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mIsHwDecode:Z

    .line 1459
    sput v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jmposition:I

    .line 1460
    return-void
.end method

.method private setFullScreenImmersive()V
    .locals 2

    .line 929
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 930
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1504

    .line 934
    .local v1, "flags":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 935
    return-void
.end method

.method private setJump(I)V
    .locals 2
    .param p1, "speed"    # I

    .line 4696
    if-nez p1, :cond_0

    .line 4697
    sget v0, Lcom/shenma/tvlauncher/R$string;->cancellationpt:I

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 4698
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time:Ljava/lang/String;

    .line 4699
    return-void

    .line 4701
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time:Ljava/lang/String;

    .line 4702
    return-void
.end method

.method private setJump_end(I)V
    .locals 2
    .param p1, "speed"    # I

    .line 4706
    if-nez p1, :cond_0

    .line 4707
    sget v0, Lcom/shenma/tvlauncher/R$string;->cancellationpw:I

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 4708
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time_end:Ljava/lang/String;

    .line 4709
    return-void

    .line 4711
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time_end:Ljava/lang/String;

    .line 4712
    return-void
.end method

.method private setSpeed(FI)V
    .locals 6
    .param p1, "speed"    # F
    .param p2, "source"    # I

    .line 4577
    const/4 v0, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-ne p2, v0, :cond_0

    .line 4579
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    if-eqz v0, :cond_4

    .line 4580
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setSpeed(F)V

    .line 4581
    float-to-double v3, p1

    cmpl-double v0, v3, v1

    if-eqz v0, :cond_4

    .line 4582
    return-void

    .line 4588
    :cond_0
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 4598
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setSpeed(F)V

    .line 4599
    move v0, p1

    .local v0, "Speed":F
    goto :goto_1

    .line 4589
    .end local v0    # "Speed":F
    :cond_2
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v3, p1, v0

    if-lez v3, :cond_3

    .line 4590
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v3, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setSpeed(F)V

    .line 4591
    const/4 v0, 0x5

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    .line 4592
    const/high16 v0, 0x40000000    # 2.0f

    .restart local v0    # "Speed":F
    goto :goto_1

    .line 4594
    .end local v0    # "Speed":F
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setSpeed(F)V

    .line 4595
    move v0, p1

    .line 4601
    .restart local v0    # "Speed":F
    :goto_1
    float-to-double v3, p1

    cmpl-double v5, v3, v1

    if-eqz v5, :cond_4

    .line 4602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/shenma/tvlauncher/R$string;->have:I

    invoke-virtual {p0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$string;->speed:I

    invoke-virtual {p0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {p0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4603
    return-void

    .line 4606
    .end local v0    # "Speed":F
    :cond_4
    return-void
.end method

.method private setupSeekBars()V
    .locals 5

    .line 750
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->linesSeekBar:Lcom/view/FlexibleStepSeekBar;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->linesSeekBar:Lcom/view/FlexibleStepSeekBar;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$6;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$6;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/view/FlexibleStepSeekBar;->setOnStepChangeListener(Lcom/view/FlexibleStepSeekBar$OnStepChangeListener;)V

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->textsizeSeekBar:Lcom/view/FlexibleStepSeekBar;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$7;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$7;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/view/FlexibleStepSeekBar;->setOnStepChangeListener(Lcom/view/FlexibleStepSeekBar$OnStepChangeListener;)V

    .line 789
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->transparencySeekBar:Lcom/view/FlexibleStepSeekBar;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$8;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$8;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/view/FlexibleStepSeekBar;->setOnStepChangeListener(Lcom/view/FlexibleStepSeekBar$OnStepChangeListener;)V

    .line 816
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuVelocitySeekBar:Lcom/view/FlexibleStepSeekBar;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$9;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$9;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/view/FlexibleStepSeekBar;->setOnStepChangeListener(Lcom/view/FlexibleStepSeekBar$OnStepChangeListener;)V

    .line 842
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->coloredBarrageSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$10;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$10;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 850
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->linesSeekBar:Lcom/view/FlexibleStepSeekBar;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mmkv:Lcom/tencent/mmkv/MMKV;

    const-string v2, "lines_seekbar_value"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->decodeInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/view/FlexibleStepSeekBar;->setCurrentStepIndex(I)V

    .line 851
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->textsizeSeekBar:Lcom/view/FlexibleStepSeekBar;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mmkv:Lcom/tencent/mmkv/MMKV;

    const-string/jumbo v2, "textsize_seekbar_value"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->decodeInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/view/FlexibleStepSeekBar;->setCurrentStepIndex(I)V

    .line 852
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->transparencySeekBar:Lcom/view/FlexibleStepSeekBar;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mmkv:Lcom/tencent/mmkv/MMKV;

    const-string/jumbo v2, "transparency_seekbar_value"

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v4}, Lcom/tencent/mmkv/MMKV;->decodeInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/view/FlexibleStepSeekBar;->setCurrentStepIndex(I)V

    .line 853
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuVelocitySeekBar:Lcom/view/FlexibleStepSeekBar;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mmkv:Lcom/tencent/mmkv/MMKV;

    const-string v2, "danmu_velocity_seekbar_value"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->decodeInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/view/FlexibleStepSeekBar;->setCurrentStepIndex(I)V

    .line 854
    return-void
.end method

.method private setvvListener()V
    .locals 2

    .line 2926
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$51;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$51;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnPlayingBufferCacheListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 2946
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$52;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$52;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 2981
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$53;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 3270
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$54;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$54;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 3348
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$55;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$55;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 3368
    return-void
.end method

.method private showController()V
    .locals 4

    .line 3381
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    .line 3382
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controler:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3383
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3384
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->rootView:Landroid/view/View;

    const/16 v3, 0x31

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3385
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controler:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->rootView:Landroid/view/View;

    const/16 v3, 0x51

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3386
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenWidth:I

    sget v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlHeight:I

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 3387
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controler:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenWidth:I

    sget v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 3388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    .line 3389
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3393
    :cond_0
    return-void
.end method

.method private showDanmuSettingPopup(Landroid/view/View;)V
    .locals 7
    .param p1, "anchorView"    # Landroid/view/View;

    .line 692
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuSettingPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 694
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 695
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/shenma/tvlauncher/R$layout;->danmu_setting_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 698
    .local v2, "popupView":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findAllViewsWithIds(Landroid/view/View;)V

    .line 701
    new-instance v3, Landroid/widget/PopupWindow;

    .line 703
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/shenma/tvlauncher/R$dimen;->sm_500:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 704
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/shenma/tvlauncher/R$dimen;->sm_500:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {v3, v2, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuSettingPopup:Landroid/widget/PopupWindow;

    .line 709
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuSettingPopup:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 710
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuSettingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 711
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuSettingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 718
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "popupView":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuSettingPopup:Landroid/widget/PopupWindow;

    const/16 v2, 0x50

    invoke-virtual {v0, p1, v2, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 720
    return-void
.end method

.method private showInputDialog()V
    .locals 6

    .line 2841
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuInputDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    .line 2843
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2847
    .local v0, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2848
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/shenma/tvlauncher/R$layout;->danmu_input_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2851
    .local v2, "dialogView":Landroid/view/View;
    sget v3, Lcom/shenma/tvlauncher/R$id;->etInput:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuInput:Landroid/widget/EditText;

    .line 2852
    sget v3, Lcom/shenma/tvlauncher/R$id;->btnSend:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 2855
    .local v3, "btnSend":Landroid/widget/Button;
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2858
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuInputDialog:Landroidx/appcompat/app/AlertDialog;

    .line 2861
    new-instance v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$49;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$49;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2898
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuInput:Landroid/widget/EditText;

    new-instance v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$50;

    invoke-direct {v5, p0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$50;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Landroid/widget/Button;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2910
    .end local v0    # "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "dialogView":Landroid/view/View;
    .end local v3    # "btnSend":Landroid/widget/Button;
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuInputDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 2913
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2914
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2915
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2916
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 2917
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuInput:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2919
    :cond_1
    return-void
.end method

.method private showMenu()V
    .locals 5

    .line 3418
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3419
    new-instance v0, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/VideoPlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v2

    iget-boolean v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isMenuItemShow:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0x8

    invoke-direct {v0, p0, v2, v4, v3}, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vmAdapter:Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;

    .line 3420
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menulist:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vmAdapter:Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3421
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    sget v2, Lcom/shenma/tvlauncher/R$style;->AnimationMenu:I

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 3422
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/16 v3, 0x35

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3423
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$dimen;->sm_350:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 3424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isMenuShow:Z

    .line 3425
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isMenuItemShow:Z

    .line 3426
    return-void

    .line 3428
    :cond_0
    sget v0, Lcom/shenma/tvlauncher/R$string;->incomplete:I

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 3429
    return-void
.end method

.method private showUpdateDialog(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 3504
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDialogShowing:Z

    if-eqz v0, :cond_0

    .line 3505
    return-void

    .line 3507
    :cond_0
    new-instance v0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    invoke-direct {v0, p2}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3508
    .local v0, "builder":Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
    sget v1, Lcom/shenma/tvlauncher/R$string;->Tips:I

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setTitle(I)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 3509
    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 3510
    sget v1, Lcom/shenma/tvlauncher/R$string;->continues:I

    new-instance v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$56;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$56;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 3537
    sget v1, Lcom/shenma/tvlauncher/R$string;->forget_it:I

    new-instance v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$57;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$57;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 3553
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3554
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->create()Lcom/shenma/tvlauncher/view/HomeDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/HomeDialog;->show()V

    .line 3556
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDialogShowing:Z

    .line 3557
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isCodeBlockExecuted:Z

    .line 3559
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v2, v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->domain:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getFailreport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3560
    return-void
.end method

.method private showVolumeToast(IIILjava/lang/Boolean;)V
    .locals 6
    .param p1, "resId"    # I
    .param p2, "max"    # I
    .param p3, "current"    # I
    .param p4, "isVolume"    # Ljava/lang/Boolean;

    .line 4478
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4479
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p3, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 4481
    :cond_0
    invoke-static {p0, p3}, Lcom/shenma/tvlauncher/utils/Utils;->SetLightness(Landroid/app/Activity;I)V

    .line 4486
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 4487
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mToast:Landroid/widget/Toast;

    .line 4488
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/shenma/tvlauncher/R$layout;->mv_media_volume_controler:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4489
    .local v0, "view":Landroid/view/View;
    sget v2, Lcom/shenma/tvlauncher/R$id;->center_image:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4490
    .local v2, "center_image":Landroid/widget/ImageView;
    sget v3, Lcom/shenma/tvlauncher/R$id;->center_progress:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 4491
    .local v3, "center_progress":Landroid/widget/ProgressBar;
    invoke-virtual {v3, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 4492
    invoke-virtual {v3, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4493
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4494
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 4496
    .end local v0    # "view":Landroid/view/View;
    .end local v2    # "center_image":Landroid/widget/ImageView;
    .end local v3    # "center_progress":Landroid/widget/ProgressBar;
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 4497
    .restart local v0    # "view":Landroid/view/View;
    sget v2, Lcom/shenma/tvlauncher/R$id;->center_image:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4498
    .restart local v2    # "center_image":Landroid/widget/ImageView;
    sget v3, Lcom/shenma/tvlauncher/R$id;->center_progress:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 4499
    .restart local v3    # "center_progress":Landroid/widget/ProgressBar;
    invoke-virtual {v3, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 4500
    invoke-virtual {v3, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4501
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4503
    :goto_1
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mToast:Landroid/widget/Toast;

    const/16 v5, 0x11

    invoke-virtual {v4, v5, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 4504
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 4505
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4506
    return-void
.end method

.method private startDanmakuSchedule()V
    .locals 2

    .line 2000
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$35;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$35;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mUpdateDanmakuRunnable:Ljava/lang/Runnable;

    .line 2024
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler2:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mUpdateDanmakuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2025
    return-void
.end method

.method private startSpeed()V
    .locals 4

    .line 4510
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4511
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->lastRxByte:J

    .line 4512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->lastSpeedTime:J

    .line 4513
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4514
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_speed:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4515
    return-void
.end method

.method private stopPlayback()V
    .locals 1

    .line 1212
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 1215
    :cond_0
    return-void
.end method

.method private switchCode()V
    .locals 5

    .line 4526
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mIsHwDecode"

    const/4 v2, 0x1

    .line 4535
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 4526
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4527
    .local v0, "Decode":I
    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    .line 4528
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mIsHwDecode:Z

    .line 4529
    sput v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jmposition:I

    goto :goto_0

    .line 4531
    :cond_0
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mIsHwDecode:Z

    .line 4532
    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jmposition:I

    .line 4534
    :goto_0
    if-ne v0, v2, :cond_1

    .line 4535
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 4536
    :cond_1
    if-nez v0, :cond_2

    .line 4537
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    .line 4539
    :cond_2
    :goto_1
    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isPause:Ljava/lang/Boolean;

    .line 4540
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->resume()V

    .line 4541
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    sput v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 4542
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    .line 4545
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4547
    return-void
.end method

.method private updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V
    .locals 7
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "second"    # I

    .line 3613
    rem-int/lit16 v0, p2, 0xe10

    div-int/lit8 v0, v0, 0x3c

    .line 3614
    .local v0, "mm":I
    rem-int/lit8 v1, p2, 0x3c

    .line 3615
    .local v1, "ss":I
    div-int/lit16 v2, p2, 0xe10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const/4 v2, 0x2

    aput-object v4, v5, v2

    const-string v2, "%02d:%02d:%02d"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3616
    return-void
.end method

.method private updateprogress(I)V
    .locals 11
    .param p1, "progress"    # I

    .line 4611
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Navigation_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4612
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Navigation()V

    .line 4615
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoLength:I

    div-int/lit16 v0, v0, 0x3e8

    .line 4617
    .local v0, "Videoduration":I
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4619
    .local v2, "sum1":I
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time_end:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 4621
    .local v3, "sum2":I
    add-int v4, v2, v3

    add-int/lit8 v4, v4, 0x1e

    .line 4625
    .local v4, "sum3":I
    iget v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vipstate:I

    if-ne v5, v1, :cond_1

    .line 4627
    iget v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Trytime:I

    mul-int/lit8 v5, v5, 0x3c

    if-lt p1, v5, :cond_1

    .line 4629
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v5}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 4632
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v6, 0x23

    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4637
    :cond_1
    iget v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos2:I

    const/4 v6, 0x0

    if-lez v5, :cond_2

    .line 4639
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iget v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos2:I

    invoke-virtual {v5, v7}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 4640
    iput v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos2:I

    .line 4644
    :cond_2
    if-le v0, v4, :cond_6

    .line 4646
    const-string v5, "-"

    const-string v7, "0"

    if-le v0, v2, :cond_4

    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    if-ge p1, v2, :cond_4

    .line 4647
    iget v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    div-int/lit16 v8, v8, 0x3e8

    if-eqz v8, :cond_4

    .line 4648
    iget-boolean v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptpositions:Z

    if-eqz v8, :cond_3

    .line 4649
    return-void

    .line 4651
    :cond_3
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptpositions:Z

    .line 4652
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v10, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v9, v9, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/shenma/tvlauncher/R$string;->titles:I

    invoke-virtual {p0, v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/shenma/tvlauncher/R$string;->seconds:I

    invoke-virtual {p0, v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {p0, v8, v9}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4653
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    mul-int/lit16 v9, v2, 0x3e8

    invoke-virtual {v8, v9}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 4657
    :cond_4
    if-le v0, v3, :cond_6

    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time_end:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    sub-int v7, v0, v3

    if-le p1, v7, :cond_6

    .line 4659
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v7, v7, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v7, Lcom/shenma/tvlauncher/R$string;->trailer:I

    invoke-virtual {p0, v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time_end:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v7, Lcom/shenma/tvlauncher/R$string;->seconds:I

    invoke-virtual {p0, v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v7, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {p0, v5, v7}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4661
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    add-int/2addr v7, v1

    if-le v5, v7, :cond_5

    .line 4663
    iput v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    .line 4665
    iget v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    .line 4666
    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 4667
    iput v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    .line 4668
    iput v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 4669
    iput v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    .line 4671
    const-wide/16 v7, 0x0

    sput-wide v7, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    .line 4672
    iput v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing:I

    .line 4673
    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->SelecteVod(I)V

    .line 4674
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4676
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4678
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 4679
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/TextView;

    new-instance v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$71;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$71;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4687
    :cond_5
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 4692
    :cond_6
    :goto_0
    return-void
.end method

.method private vodlogoloadImg()V
    .locals 2

    .line 4771
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_logo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4772
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->logo_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_logo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 4773
    return-void
.end method


# virtual methods
.method public Navigation()V
    .locals 2

    .line 4829
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 4830
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1002

    .line 4831
    .local v1, "uiOptions":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4832
    return-void
.end method

.method public VodGongGaoError(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 4808
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 4809
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4812
    :cond_0
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_1

    .line 4813
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4816
    :cond_1
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_2

    .line 4817
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4820
    :cond_2
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_3

    .line 4821
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4825
    :cond_3
    return-void
.end method

.method public VodGongGaoResponse(Ljava/lang/String;)V
    .locals 11
    .param p1, "response"    # Ljava/lang/String;

    .line 4777
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4778
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4779
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4780
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4782
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4783
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 4784
    .local v5, "code":I
    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4785
    .local v6, "msg":Ljava/lang/String;
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_3

    .line 4786
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4787
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4788
    .local v7, "miType":I
    const-string v9, "UTF-8"

    if-ne v7, v8, :cond_0

    .line 4789
    :try_start_1
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-static {v6, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4790
    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 4791
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-static {v6, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4792
    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 4793
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-static {v3, v6, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4795
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v9, 0x24

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4796
    nop

    .end local v7    # "miType":I
    goto :goto_1

    .line 4797
    :cond_3
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4802
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 4800
    :catch_0
    move-exception v4

    .line 4801
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 4803
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public analysisUrlError(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 2677
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    .line 2684
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    .line 2691
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    .line 2698
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_0

    .line 2700
    const-string/jumbo v0, "\u5ba2\u6237\u7aef\u4e0d\u5b58\u5728!"

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2701
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 2706
    :cond_0
    return-void
.end method

.method public analysisUrlResponse(Ljava/lang/String;)V
    .locals 12
    .param p1, "response"    # Ljava/lang/String;

    .line 2390
    const-string v0, "IJK"

    const-string v1, "referer"

    const-string v2, "Referer"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2394
    .local v3, "jSONObject":Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 2395
    .local v4, "code":I
    const-string v5, "encrypt"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 2396
    .local v5, "encrypt":I
    const/16 v6, 0xc8

    const/4 v7, 0x1

    if-ne v4, v6, :cond_17

    .line 2397
    const-string v6, "data"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2398
    .local v6, "data":Lorg/json/JSONObject;
    const-string v8, "header"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 2399
    .local v8, "header":Lorg/json/JSONObject;
    const-string v9, "User-Agent"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->userAgent:Ljava/lang/String;

    .line 2400
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2401
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Referer:Ljava/lang/String;

    .line 2403
    :cond_0
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2404
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Referer:Ljava/lang/String;

    .line 2406
    :cond_1
    const-string/jumbo v1, "url"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2407
    .local v1, "url":Ljava/lang/String;
    const-string v2, "ClientID"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ClientID:I

    .line 2408
    const-string v2, "MaxClientID"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->MaxClientID:I

    .line 2409
    const-string v2, "Maxtimeout"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Maxtimeout:I

    .line 2410
    const-string v2, "Exclude_content"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Exclude_content:Ljava/lang/String;

    .line 2411
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Maxtimeout:I

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->timeout:I

    .line 2412
    const-string v2, "Core"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->core:I

    .line 2413
    const-string v2, "Safe"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->safe_mode:I

    .line 2414
    const-string v2, "Ad_block"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block:I

    .line 2415
    const-string v2, "position"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    .line 2417
    const-string v2, "EwmWidth"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->EwmWidth:I

    .line 2418
    const-string v2, "EwmHeight"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->EwmHeight:I

    .line 2419
    const-string v2, "Moviesize"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Moviesize:I

    .line 2420
    const-string v2, "Tvplaysize"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Tvplaysize:I

    .line 2421
    const-string v2, "headposition"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->headposition:I

    .line 2423
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v9, "quanping"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuSwitch:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->getCurrentIndex()I

    move-result v2

    if-ne v2, v7, :cond_2

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodPlayUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2424
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodPlayUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2425
    new-instance v2, Ljava/lang/String;

    new-instance v10, Ljava/lang/String;

    sget-object v11, Lcom/shenma/tvlauncher/Api;->MAIN_JUHETV_URL:Ljava/lang/String;

    invoke-static {v11, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-static {v10}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/String;-><init>([B)V

    .line 2426
    .local v2, "dammuUrl":Ljava/lang/String;
    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodPlayUrl:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {p0, v2, v10, v9, v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->requestDanmu(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2431
    .end local v2    # "dammuUrl":Ljava/lang/String;
    :cond_2
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->core_mode:I

    if-ne v2, v7, :cond_a

    .line 2434
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->core:I

    const/4 v10, 0x2

    const/16 v11, 0x63

    if-eq v2, v11, :cond_5

    .line 2436
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->safe_mode:I

    if-ne v0, v7, :cond_3

    .line 2437
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->core:I

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 2441
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-ge v0, v2, :cond_4

    .line 2442
    iput v11, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->core:I

    .line 2453
    sput v10, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 2455
    :cond_4
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->core:I

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 2461
    :cond_5
    iput v11, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->core:I

    .line 2462
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    sget-object v11, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    invoke-interface {v2, v11, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2463
    .local v2, "playcore":Ljava/lang/String;
    const-string/jumbo v11, "\u81ea\u52a8"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2464
    sput v9, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 2465
    :cond_6
    const-string/jumbo v11, "\u7cfb\u7edf"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2466
    sput v7, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 2467
    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2468
    sput v10, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 2469
    :cond_8
    const-string v0, "EXO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2470
    const/4 v0, 0x3

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 2471
    :cond_9
    const-string/jumbo v0, "\u963f\u91cc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2472
    const/4 v0, 0x4

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    .line 2477
    .end local v2    # "playcore":Ljava/lang/String;
    :cond_a
    :goto_0
    const-string v0, "Conditions"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Conditions:Ljava/lang/String;

    .line 2478
    const-string v0, "Type"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Type:I

    .line 2479
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setUserAgent(Ljava/lang/String;)V

    .line 2480
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Referer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setReferer(Ljava/lang/String;)V

    .line 2481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->headers:Ljava/util/Map;

    .line 2482
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 2483
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2484
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2485
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2486
    .local v10, "value":Ljava/lang/String;
    iget-object v11, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->headers:Ljava/util/Map;

    invoke-interface {v11, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2489
    nop

    .end local v2    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    goto :goto_1

    .line 2490
    :cond_b
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Type:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, ""

    if-nez v2, :cond_11

    .line 2491
    :try_start_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2493
    if-ne v5, v7, :cond_e

    .line 2494
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2496
    sget-object v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Failed:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2497
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v9, v11}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/shenma/tvlauncher/utils/Rc4;->decryptBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->headers:Ljava/util/Map;

    invoke-virtual {v2, v9, v11}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 2499
    :cond_c
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    sget-object v9, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Failed:Ljava/lang/String;

    invoke-static {v9}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->headers:Ljava/util/Map;

    invoke-virtual {v2, v9, v11}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    .line 2502
    :goto_2
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v2, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v9}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decryptBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Fburl:Ljava/lang/String;

    .line 2503
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    invoke-virtual {v2, v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 2505
    :cond_d
    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->timeout:I

    goto/16 :goto_4

    .line 2508
    :cond_e
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 2510
    sget-object v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Failed:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2511
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->headers:Ljava/util/Map;

    invoke-virtual {v2, v9, v10}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 2513
    :cond_f
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    sget-object v9, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Failed:Ljava/lang/String;

    invoke-static {v9}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->headers:Ljava/util/Map;

    invoke-virtual {v2, v9, v10}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    .line 2516
    :goto_3
    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Fburl:Ljava/lang/String;

    .line 2517
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    invoke-virtual {v2, v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 2519
    :cond_10
    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->timeout:I

    goto :goto_4

    .line 2524
    :cond_11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-ge v2, v11, :cond_12

    .line 2526
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Sniff_debug_mode:I

    if-ne v2, v7, :cond_16

    .line 2527
    sget v2, Lcom/shenma/tvlauncher/R$string;->Sniffing_messages:I

    invoke-static {p0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 2530
    :cond_12
    if-ne v5, v7, :cond_14

    .line 2531
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2532
    iput v9, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jxurls:I

    .line 2533
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->initializeWebView()V

    .line 2534
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v2, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decryptBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Sniffing(Ljava/lang/String;)V

    goto :goto_4

    .line 2536
    :cond_13
    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->timeout:I

    goto :goto_4

    .line 2539
    :cond_14
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 2540
    iput v9, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jxurls:I

    .line 2541
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->initializeWebView()V

    .line 2542
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Sniffing(Ljava/lang/String;)V

    goto :goto_4

    .line 2544
    :cond_15
    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->timeout:I

    .line 2549
    .end local v0    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "url":Ljava/lang/String;
    .end local v6    # "data":Lorg/json/JSONObject;
    .end local v8    # "header":Lorg/json/JSONObject;
    :cond_16
    :goto_4
    goto :goto_5

    .line 2550
    :cond_17
    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->timeout:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 2554
    .end local v3    # "jSONObject":Lorg/json/JSONObject;
    .end local v4    # "code":I
    .end local v5    # "encrypt":I
    :catch_0
    move-exception v0

    .line 2555
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2552
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2553
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2556
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_5
    nop

    .line 2557
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 17
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 3627
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 3628
    .local v1, "currentFocus":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$id;->menu_parent:I

    invoke-virtual {v0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3629
    .local v2, "isFocusInMenu":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v5, :cond_2

    .line 3630
    iget-boolean v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isBack:Z

    if-eqz v3, :cond_1

    .line 3631
    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hideControllerDelay()V

    .line 3632
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iget v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    invoke-virtual {v3, v5}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 3633
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3634
    iput-boolean v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isBack:Z

    .line 3636
    :cond_1
    invoke-super/range {p0 .. p1}, Lcom/shenma/tvlauncher/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 3638
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 3640
    .local v3, "keyCode":I
    const/16 v7, 0x18

    const/16 v8, 0x11

    const-wide/16 v9, 0x0

    const/4 v11, 0x3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    .line 3825
    :sswitch_0
    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hideController()V

    .line 3826
    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showMenu()V

    goto/16 :goto_1

    .line 3799
    :sswitch_1
    iget-boolean v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    if-nez v4, :cond_3

    .line 3800
    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showController()V

    .line 3802
    :cond_3
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3803
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 3804
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3806
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/TextView;

    new-instance v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$63;

    invoke-direct {v5, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$63;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 3812
    goto/16 :goto_1

    .line 3814
    :cond_4
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->pause()V

    .line 3815
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3817
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/TextView;

    new-instance v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$64;

    invoke-direct {v5, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$64;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 3823
    goto/16 :goto_1

    .line 3773
    :sswitch_2
    iget-boolean v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    if-nez v4, :cond_5

    .line 3774
    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showController()V

    .line 3776
    :cond_5
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_6

    .line 3777
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 3778
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3780
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/TextView;

    new-instance v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$61;

    invoke-direct {v5, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$61;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 3786
    goto/16 :goto_1

    .line 3788
    :cond_6
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->pause()V

    .line 3789
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3791
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/TextView;

    new-instance v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$62;

    invoke-direct {v5, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$62;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 3797
    goto/16 :goto_1

    .line 3764
    :sswitch_3
    if-eqz v2, :cond_7

    .line 3765
    goto/16 :goto_1

    .line 3770
    :cond_7
    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->fastForward()V

    .line 3771
    goto/16 :goto_1

    .line 3761
    :sswitch_4
    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->rewind()V

    .line 3762
    goto/16 :goto_1

    .line 3720
    :sswitch_5
    if-eqz v2, :cond_8

    .line 3721
    goto/16 :goto_1

    .line 3723
    :cond_8
    iget v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playPreCode:I

    if-eqz v6, :cond_9

    .line 3724
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, -0x1

    invoke-virtual {v4, v11, v6, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 3725
    goto/16 :goto_1

    .line 3727
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 3728
    .local v11, "secondTime":J
    iget-wide v13, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->firstTime:J

    sub-long v13, v11, v13

    const-wide/16 v15, 0x1388

    cmp-long v6, v13, v15

    if-gtz v6, :cond_d

    .line 3729
    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget v13, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    add-int/2addr v13, v5

    if-gt v6, v13, :cond_a

    .line 3730
    sget v4, Lcom/shenma/tvlauncher/R$string;->finale:I

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v0, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 3731
    goto/16 :goto_1

    .line 3733
    :cond_a
    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    sget-object v13, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-eq v6, v13, :cond_b

    .line 3735
    iput v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    .line 3737
    iget v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    .line 3738
    iget v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    sput v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 3739
    iput v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    .line 3741
    sput-wide v9, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    .line 3742
    iput v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing:I

    .line 3743
    iget v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-direct {v0, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->SelecteVod(I)V

    .line 3745
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3748
    :cond_b
    iget-boolean v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    if-nez v4, :cond_c

    .line 3749
    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showController()V

    .line 3751
    :cond_c
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3752
    goto/16 :goto_1

    .line 3754
    :cond_d
    sget v4, Lcom/shenma/tvlauncher/R$string;->vod_onpressed_play_next:I

    sget v6, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v0, v4, v6}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 3755
    iput-wide v11, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->firstTime:J

    .line 3756
    return v5

    .line 3685
    .end local v11    # "secondTime":J
    :sswitch_6
    iget v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playPreCode:I

    if-eqz v6, :cond_e

    .line 3686
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v11, v5, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 3687
    goto/16 :goto_1

    .line 3690
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 3691
    .restart local v11    # "secondTime":J
    iget-wide v13, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->firstTime:J

    sub-long v13, v11, v13

    const-wide/16 v15, 0x7d0

    cmp-long v6, v13, v15

    if-gtz v6, :cond_12

    .line 3692
    iget v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    if-gtz v6, :cond_f

    .line 3693
    sget v4, Lcom/shenma/tvlauncher/R$string;->vod_onpressed_play_frist:I

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v0, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 3694
    goto/16 :goto_1

    .line 3696
    :cond_f
    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    sget-object v13, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-eq v6, v13, :cond_10

    .line 3697
    iget v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    sub-int/2addr v6, v5

    iput v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    .line 3698
    iput v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    .line 3700
    iget v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    sput v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 3701
    iput v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    .line 3703
    sput-wide v9, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    .line 3704
    iput v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing:I

    .line 3705
    iget v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-direct {v0, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->SelecteVod(I)V

    .line 3707
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3710
    :cond_10
    iget-boolean v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    if-nez v4, :cond_11

    .line 3711
    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showController()V

    .line 3713
    :cond_11
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3714
    goto/16 :goto_1

    .line 3716
    :cond_12
    sget v4, Lcom/shenma/tvlauncher/R$string;->vod_onpressed_play_last:I

    sget v6, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v0, v4, v6}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 3717
    iput-wide v11, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->firstTime:J

    .line 3718
    return v5

    .line 3643
    .end local v11    # "secondTime":J
    :sswitch_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3645
    .local v6, "secondTime":J
    iget-object v8, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v8}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v8

    iput v8, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    .line 3646
    iget v8, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    if-eqz v8, :cond_13

    .line 3647
    new-instance v8, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-direct {v8}, Lcom/shenma/tvlauncher/vod/db/Album;-><init>()V

    .line 3648
    .local v8, "album":Lcom/shenma/tvlauncher/vod/db/Album;
    iget-object v9, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumId(Ljava/lang/String;)V

    .line 3649
    iget-object v9, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sourceId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumSourceType(Ljava/lang/String;)V

    .line 3650
    iget v9, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/vod/db/Album;->setCollectionTime(I)V

    .line 3651
    iget v9, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/vod/db/Album;->setPlayIndex(I)V

    .line 3652
    iget-object v9, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->albumPic:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumPic(Ljava/lang/String;)V

    .line 3653
    iget-object v9, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodtype:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumType(Ljava/lang/String;)V

    .line 3654
    iget-object v9, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumTitle(Ljava/lang/String;)V

    .line 3657
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u89c2\u770b:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    div-int/lit16 v10, v10, 0x3e8

    div-int/lit8 v10, v10, 0x3c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\u5206\u949f"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumState(Ljava/lang/String;)V

    .line 3658
    iget-object v9, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nextlink:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/vod/db/Album;->setNextLink(Ljava/lang/String;)V

    .line 3659
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/vod/db/Album;->setTime(Ljava/lang/String;)V

    .line 3660
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/vod/db/Album;->setTypeId(I)V

    .line 3661
    iget-object v9, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodPlayUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/vod/db/Album;->setVod_play_url(Ljava/lang/String;)V

    .line 3662
    iget-object v9, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    invoke-virtual {v9, v8}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->addAlbums(Lcom/shenma/tvlauncher/vod/db/Album;)V

    .line 3669
    .end local v8    # "album":Lcom/shenma/tvlauncher/vod/db/Album;
    :cond_13
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {v8, v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3670
    .local v8, "intent":Landroid/content/Intent;
    const-string v9, "back"

    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3671
    const-string/jumbo v5, "sourceid"

    iget-object v9, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sourceId:Ljava/lang/String;

    invoke-virtual {v8, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3672
    iget v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    div-int/lit8 v5, v5, 0x14

    const-string v9, "paixu"

    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3673
    iget v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    rem-int/lit8 v5, v5, 0x14

    const-string/jumbo v9, "xuanji"

    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3674
    const/high16 v5, 0x30000

    invoke-virtual {v8, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3675
    invoke-virtual {v0, v8}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 3676
    invoke-virtual {v0, v4, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->overridePendingTransition(II)V

    .line 3679
    nop

    .line 3829
    .end local v6    # "secondTime":J
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-super/range {p0 .. p1}, Lcom/shenma/tvlauncher/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    return v4

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_7
        0x13 -> :sswitch_6
        0x14 -> :sswitch_5
        0x15 -> :sswitch_4
        0x16 -> :sswitch_3
        0x17 -> :sswitch_2
        0x42 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public findViewById()V
    .locals 3

    .line 1565
    sget v0, Lcom/shenma/tvlauncher/R$id;->Ad_block_up:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block_up:Landroid/widget/LinearLayout;

    .line 1566
    sget v0, Lcom/shenma/tvlauncher/R$id;->Ad_block_down:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block_down:Landroid/widget/LinearLayout;

    .line 1567
    sget v0, Lcom/shenma/tvlauncher/R$id;->Ad_block_right:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block_right:Landroid/widget/LinearLayout;

    .line 1568
    sget v0, Lcom/shenma/tvlauncher/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    .line 1569
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_logo:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_logo:Landroid/widget/ImageView;

    .line 1571
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_notice_root:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    .line 1572
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_notice:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    .line 1575
    sget v0, Lcom/shenma/tvlauncher/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mProgressBar:Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    .line 1576
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_progress_time:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_progress_time:Landroid/widget/TextView;

    .line 1577
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_mv_speed:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_speed:Landroid/widget/TextView;

    .line 1579
    sget v0, Lcom/shenma/tvlauncher/R$id;->root_view:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->rootView:Landroid/view/View;

    .line 1580
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mProgressBar:Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setVisibility(I)V

    .line 1581
    const/4 v0, 0x0

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    .line 1582
    const-string v0, "libijkplayer.so"

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    .line 1583
    sget v0, Lcom/shenma/tvlauncher/R$id;->i_video_view:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 1584
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    sget v1, Lcom/shenma/tvlauncher/R$id;->hubview:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setHudView(Landroid/widget/TableLayout;)V

    .line 1585
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mIsHwDecode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1587
    .local v0, "Decode":I
    if-ne v0, v2, :cond_0

    .line 1588
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1589
    :cond_0
    if-nez v0, :cond_1

    .line 1590
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    .line 1592
    :cond_1
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 867
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->finish()V

    .line 868
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->overridePendingTransition(II)V

    .line 869
    return-void
.end method

.method public initView()V
    .locals 9

    .line 1402
    const-string/jumbo v0, "shenma"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    .line 1403
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "vip"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time:Ljava/lang/String;

    .line 1405
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->gD:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Trytime:I

    .line 1406
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1407
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v3, "\u5168\u5c4f\u62c9\u4f38"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1408
    .local v0, "playratio":Ljava/lang/String;
    const-string/jumbo v2, "\u539f\u59cb\u6bd4\u4f8b"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    .line 1409
    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    goto :goto_0

    .line 1410
    :cond_0
    const-string v2, "4:3 \u7f29\u653e"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1411
    sput v7, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    goto :goto_0

    .line 1412
    :cond_1
    const-string v2, "16:9\u7f29\u653e"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1413
    sput v6, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    goto :goto_0

    .line 1414
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1415
    sput v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    goto :goto_0

    .line 1416
    :cond_3
    const-string/jumbo v2, "\u7b49\u6bd4\u7f29\u653e"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1417
    sput v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    goto :goto_0

    .line 1418
    :cond_4
    const-string/jumbo v2, "\u5168\u5c4f\u88c1\u526a"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1419
    const/4 v2, 0x5

    sput v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    .line 1421
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    const-string v8, "IJK"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1422
    .local v2, "playcore":Ljava/lang/String;
    const-string/jumbo v3, "\u81ea\u52a8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1423
    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_1

    .line 1424
    :cond_6
    const-string/jumbo v1, "\u7cfb\u7edf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1425
    sput v7, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_1

    .line 1426
    :cond_7
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1427
    sput v6, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_1

    .line 1428
    :cond_8
    const-string v1, "EXO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1429
    sput v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_1

    .line 1430
    :cond_9
    const-string/jumbo v1, "\u963f\u91cc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1431
    sput v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    .line 1433
    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, "play_jump"

    const-string v4, "0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->stringDrawNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time:Ljava/lang/String;

    .line 1434
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, "play_jump_end"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->stringDrawNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time_end:Ljava/lang/String;

    .line 1436
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getJumpdata()V

    .line 1438
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setDecode()V

    .line 1439
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getPlayPreferences()V

    .line 1440
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getScreenSize()V

    .line 1441
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById()V

    .line 1442
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->loadViewLayout()V

    .line 1443
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setListener()V

    .line 1444
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setvvListener()V

    .line 1446
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "event handler thread"

    const/16 v4, 0xa

    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1447
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1448
    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    .line 1449
    return-void
.end method

.method public loadViewLayout()V
    .locals 35

    .line 1596
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$layout;->mv_media_controler:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    .line 1597
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v2, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controler:Landroid/widget/PopupWindow;

    .line 1598
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controler:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1599
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v6, Lcom/shenma/tvlauncher/R$layout;->mv_media_time_controler:I

    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time_controlView:Landroid/view/View;

    .line 1600
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time_controlView:Landroid/view/View;

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    .line 1602
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    sget v3, Lcom/shenma/tvlauncher/R$id;->xuanji_btn:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xuanjiBtn:Landroid/view/View;

    .line 1604
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    sget v3, Lcom/shenma/tvlauncher/R$id;->tv_danmu_switch:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuSwitch:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 1605
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    sget v3, Lcom/shenma/tvlauncher/R$id;->seekbar:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    .line 1606
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    sget v3, Lcom/shenma/tvlauncher/R$id;->tv_currentTime:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_currentTime:Landroid/widget/TextView;

    .line 1607
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    sget v3, Lcom/shenma/tvlauncher/R$id;->tv_totalTime:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_totalTime:Landroid/widget/TextView;

    .line 1608
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    sget v3, Lcom/shenma/tvlauncher/R$id;->tv_menu:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_menu:Landroid/widget/TextView;

    .line 1609
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    sget v3, Lcom/shenma/tvlauncher/R$id;->ib_playStatus:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/TextView;

    .line 1610
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    sget v3, Lcom/shenma/tvlauncher/R$id;->danmu_setting:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuSetting:Landroid/view/View;

    .line 1611
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    sget v3, Lcom/shenma/tvlauncher/R$id;->danmu_send:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuSend:Landroid/view/View;

    .line 1612
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time_controlView:Landroid/view/View;

    sget v3, Lcom/shenma/tvlauncher/R$id;->tv_time:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_time:Landroid/widget/TextView;

    .line 1613
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time_controlView:Landroid/view/View;

    sget v3, Lcom/shenma/tvlauncher/R$id;->tv_mv_name:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    .line 1614
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1616
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "\u5173"

    aput-object v5, v3, v4

    const-string/jumbo v5, "\u5f00"

    aput-object v5, v3, v2

    .line 1617
    .local v3, "danmuSwitchs":[Ljava/lang/String;
    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuSwitch:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    invoke-virtual {v5, v3}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setContentArray([Ljava/lang/String;)V

    .line 1618
    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuSwitch:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    invoke-virtual {v5, v4}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setSelectedIndex(I)Z

    .line 1621
    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    sget v6, Lcom/shenma/tvlauncher/R$id;->tv_mv_speed:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 1623
    .local v5, "mv_speed":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    const/4 v6, 0x6

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "0.50"

    aput-object v8, v7, v4

    const-string v8, "0.75"

    aput-object v8, v7, v2

    const-string v8, "1.00"

    aput-object v8, v7, v1

    const/4 v8, 0x3

    const-string v9, "1.25"

    aput-object v9, v7, v8

    const/4 v9, 0x4

    const-string v10, "1.50"

    aput-object v10, v7, v9

    const/4 v10, 0x5

    const-string v11, "2.00"

    aput-object v11, v7, v10

    .line 1624
    .local v7, "mv_speeds":[Ljava/lang/String;
    invoke-virtual {v5, v7}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setContentArray([Ljava/lang/String;)V

    .line 1625
    invoke-virtual {v5, v1}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setSelectedIndex(I)Z

    .line 1627
    iget-object v11, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    sget v12, Lcom/shenma/tvlauncher/R$id;->tv_video_decoding:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 1628
    .local v11, "mv_video_decoding":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/shenma/tvlauncher/R$array;->play_setting_decode:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 1629
    .local v12, "mAll_play_setting_decode":[Ljava/lang/String;
    new-array v13, v1, [Ljava/lang/String;

    const-string/jumbo v14, "\u8f6f\u89e3\u7801"

    aput-object v14, v13, v4

    const-string/jumbo v14, "\u786c\u89e3\u7801"

    aput-object v14, v13, v2

    .line 1630
    .local v13, "mv_video_decodings":[Ljava/lang/String;
    iget-object v14, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    sget-object v15, Lcom/shenma/tvlauncher/utils/Constant;->mg:Ljava/lang/String;

    const/16 v16, 0x2

    aget-object v1, v12, v2

    invoke-interface {v14, v15, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1631
    .local v1, "play_decode":Ljava/lang/String;
    iget-object v14, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v15

    const/16 v17, 0x0

    const-string v4, "mIsHwDecode"

    invoke-interface {v14, v4, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1633
    .local v4, "mIsHwDecode":I
    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setDecode()V

    .line 1634
    if-ne v4, v2, :cond_0

    .line 1635
    iget-object v14, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v15}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1636
    :cond_0
    if-nez v4, :cond_1

    .line 1637
    iget-object v14, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v15}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    .line 1639
    :cond_1
    :goto_0
    invoke-virtual {v11, v13}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setContentArray([Ljava/lang/String;)V

    .line 1640
    invoke-virtual {v11, v4}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setSelectedIndex(I)Z

    .line 1643
    iget-object v14, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    sget v15, Lcom/shenma/tvlauncher/R$id;->tv_mv_proportion:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 1645
    .local v14, "mv_proportion":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    new-array v15, v6, [Ljava/lang/String;

    const-string/jumbo v18, "\u539f\u59cb"

    aput-object v18, v15, v17

    const-string v18, "4:3"

    aput-object v18, v15, v2

    const-string v18, "16:9"

    aput-object v18, v15, v16

    const-string/jumbo v18, "\u62c9\u4f38"

    aput-object v18, v15, v8

    const-string/jumbo v18, "\u7b49\u6bd4"

    aput-object v18, v15, v9

    const-string/jumbo v18, "\u88c1\u526a"

    aput-object v18, v15, v10

    .line 1646
    .local v15, "mv_proportions":[Ljava/lang/String;
    invoke-virtual {v14, v15}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setContentArray([Ljava/lang/String;)V

    .line 1649
    const/16 v18, 0x1

    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    const/16 v19, 0x6

    sget v6, Lcom/shenma/tvlauncher/R$id;->tv_mv_headline:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 1651
    .local v2, "mv_headline":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    const/16 v6, 0xc

    const/16 v20, 0x3

    new-array v8, v6, [Ljava/lang/String;

    const/16 v21, 0x4

    const-string v9, "0\u79d2"

    aput-object v9, v8, v17

    const-string v22, "10\u79d2"

    aput-object v22, v8, v18

    const-string v23, "15\u79d2"

    aput-object v23, v8, v16

    const-string v24, "20\u79d2"

    aput-object v24, v8, v20

    const-string v25, "30\u79d2"

    aput-object v25, v8, v21

    const-string v26, "60\u79d2"

    aput-object v26, v8, v10

    const-string v27, "90\u79d2"

    aput-object v27, v8, v19

    const/16 v28, 0x7

    const-string v29, "120\u79d2"

    aput-object v29, v8, v28

    const/16 v30, 0x8

    const-string v31, "150\u79d2"

    aput-object v31, v8, v30

    const-string v32, "180\u79d2"

    const/16 v33, 0x9

    aput-object v32, v8, v33

    const-string v32, "240\u79d2"

    const/16 v33, 0xa

    aput-object v32, v8, v33

    const-string v32, "300\u79d2"

    const/16 v33, 0xb

    aput-object v32, v8, v33

    .line 1652
    .local v8, "mv_headlines":[Ljava/lang/String;
    invoke-virtual {v2, v8}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setContentArray([Ljava/lang/String;)V

    .line 1653
    const/16 v32, 0x5

    iget-object v10, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v6, "play_jump"

    invoke-interface {v10, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1654
    .local v6, "pHeadLine":Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setSelectedIndex(I)Z

    .line 1656
    iget-object v10, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    move-object/from16 v34, v1

    .end local v1    # "play_decode":Ljava/lang/String;
    .local v34, "play_decode":Ljava/lang/String;
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_mv_headend:I

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 1658
    .local v1, "mv_endline":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    const/16 v10, 0xc

    new-array v10, v10, [Ljava/lang/String;

    aput-object v9, v10, v17

    aput-object v22, v10, v18

    aput-object v23, v10, v16

    aput-object v24, v10, v20

    aput-object v25, v10, v21

    aput-object v26, v10, v32

    aput-object v27, v10, v19

    aput-object v29, v10, v28

    aput-object v31, v10, v30

    const-string v19, "180\u79d2"

    const/16 v22, 0x9

    aput-object v19, v10, v22

    const-string v19, "240\u79d2"

    const/16 v22, 0xa

    aput-object v19, v10, v22

    const-string v19, "300\u79d2"

    const/16 v22, 0xb

    aput-object v19, v10, v22

    .line 1659
    .local v10, "mv_endlines":[Ljava/lang/String;
    invoke-virtual {v1, v10}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setContentArray([Ljava/lang/String;)V

    .line 1660
    move-object/from16 v19, v3

    .end local v3    # "danmuSwitchs":[Ljava/lang/String;
    .local v19, "danmuSwitchs":[Ljava/lang/String;
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    move/from16 v22, v4

    .end local v4    # "mIsHwDecode":I
    .local v22, "mIsHwDecode":I
    const-string v4, "play_jump_end"

    invoke-interface {v3, v4, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1661
    .local v3, "pEndline":Ljava/lang/String;
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setSelectedIndex(I)Z

    .line 1664
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    sget v9, Lcom/shenma/tvlauncher/R$id;->tv_player_kernel:I

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 1666
    .local v4, "player_kernel":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object/from16 v23, v3

    .end local v3    # "pEndline":Ljava/lang/String;
    .local v23, "pEndline":Ljava/lang/String;
    sget v3, Lcom/shenma/tvlauncher/R$array;->play_setting_core:I

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1667
    .local v3, "mAll_play_setting_core":[Ljava/lang/String;
    iget-object v9, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v24, v3

    .end local v3    # "mAll_play_setting_core":[Ljava/lang/String;
    .local v24, "mAll_play_setting_core":[Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    move-object/from16 v25, v6

    .end local v6    # "pHeadLine":Ljava/lang/String;
    .local v25, "pHeadLine":Ljava/lang/String;
    aget-object v6, v24, v16

    invoke-interface {v9, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1668
    .local v3, "play_core":Ljava/lang/String;
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v9, "\u81ea\u52a8"

    aput-object v9, v6, v17

    const-string/jumbo v9, "\u7cfb\u7edf"

    aput-object v9, v6, v18

    const-string v9, "IJK"

    aput-object v9, v6, v16

    const-string v9, "EXO"

    aput-object v9, v6, v20

    const-string/jumbo v9, "\u963f\u91cc"

    aput-object v9, v6, v21

    .line 1669
    .local v6, "player_kernels":[Ljava/lang/String;
    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setContentArray([Ljava/lang/String;)V

    .line 1671
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    move-object/from16 v16, v3

    .end local v3    # "play_core":Ljava/lang/String;
    .local v16, "play_core":Ljava/lang/String;
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v17, v6

    .end local v6    # "player_kernels":[Ljava/lang/String;
    .local v17, "player_kernels":[Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    move-object/from16 v18, v7

    .end local v7    # "mv_speeds":[Ljava/lang/String;
    .local v18, "mv_speeds":[Ljava/lang/String;
    const-string v7, "EXO"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1672
    .local v3, "kernelIndex":I
    invoke-virtual {v4, v3}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setSelectedIndex(I)Z

    .line 1675
    new-instance v6, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$18;

    invoke-direct {v6, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$18;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setOnContentChangeListener(Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;)V

    .line 1711
    new-instance v6, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;

    invoke-direct {v6, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v14, v6}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setOnContentChangeListener(Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;)V

    .line 1736
    new-instance v6, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;

    invoke-direct {v6, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v2, v6}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setOnContentChangeListener(Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;)V

    .line 1749
    new-instance v6, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$21;

    invoke-direct {v6, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$21;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v1, v6}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setOnContentChangeListener(Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;)V

    .line 1762
    new-instance v6, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;

    invoke-direct {v6, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v11, v6}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setOnContentChangeListener(Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;)V

    .line 1794
    new-instance v6, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;

    invoke-direct {v6, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setOnContentChangeListener(Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;)V

    .line 1818
    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xuanjiBtn:Landroid/view/View;

    new-instance v7, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;

    invoke-direct {v7, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1837
    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuSwitch:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    new-instance v7, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$25;

    invoke-direct {v7, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$25;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v6, v7}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setOnContentChangeListener(Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;)V

    .line 1861
    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controler:Landroid/widget/PopupWindow;

    new-instance v7, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$26;

    invoke-direct {v7, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$26;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1869
    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v9, "\u5168\u5c4f\u62c9\u4f38"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1870
    .local v6, "play_ratio":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v9, v15

    if-ge v7, v9, :cond_3

    .line 1871
    aget-object v9, v15, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1872
    invoke-virtual {v14, v7}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setSelectedIndex(I)Z

    .line 1870
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1876
    .end local v7    # "i":I
    :cond_3
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 3622
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 4444
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 4446
    .local v0, "viewId":I
    sget v1, Lcom/shenma/tvlauncher/R$id;->ib_playStatus:I

    if-ne v0, v1, :cond_2

    .line 4447
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    if-nez v1, :cond_0

    .line 4448
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showController()V

    .line 4451
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_1

    .line 4452
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->pause()V

    .line 4453
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4455
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/TextView;

    new-instance v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$69;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$69;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4463
    :cond_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 4464
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4466
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/TextView;

    new-instance v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$70;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$70;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 4474
    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 490
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 491
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mmkv:Lcom/tencent/mmkv/MMKV;

    .line 492
    const/4 v0, 0x1

    .line 597
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 593
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 492
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->requestWindowFeature(I)Z

    .line 493
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 497
    sget v3, Lcom/shenma/tvlauncher/R$layout;->mv_videoplayer:I

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setContentView(I)V

    .line 500
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 501
    .local v3, "decorView":Landroid/view/View;
    const/16 v4, 0x1504

    .line 505
    .local v4, "uiOptions":I
    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 506
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 508
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 509
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 513
    .end local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    const/4 v7, 0x0

    if-lt v5, v6, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 517
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-lt v5, v6, :cond_2

    .line 518
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 522
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v6, :cond_3

    .line 523
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v5

    .line 524
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v8

    or-int/2addr v6, v8

    .line 523
    invoke-interface {v5, v6}, Landroid/view/WindowInsetsController;->hide(I)V

    goto :goto_0

    .line 528
    :cond_3
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x1504

    invoke-virtual {v5, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 537
    :goto_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 538
    new-instance v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$3;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$3;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {p0, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 555
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    iput-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->random:Ljava/util/Random;

    .line 556
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setFullScreenImmersive()V

    .line 558
    new-instance v5, Lcom/shenma/tvlauncher/vod/dao/VodDao;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/vod/dao/VodDao;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    .line 559
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->stopAutoBrightness(Landroid/app/Activity;)V

    .line 560
    iget v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Navigation_mode:I

    if-ne v5, v0, :cond_4

    .line 561
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Navigation()V

    .line 563
    :cond_4
    const-string v5, "TempData"

    invoke-virtual {p0, v5, v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    sput-object v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Sd:Landroid/content/SharedPreferences;

    .line 564
    const-string v5, "LIVE"

    invoke-static {p0, v5, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 565
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->initView()V

    .line 566
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->initData()V

    .line 586
    sget v5, Lcom/shenma/tvlauncher/R$id;->danmaku_view:I

    invoke-virtual {p0, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lmaster/flame/danmaku/ui/widget/DanmakuView;

    iput-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mDanmakuView:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    .line 589
    invoke-static {}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->create()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v5

    iput-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 592
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 593
    .local v5, "maxLinesPair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mmkv:Lcom/tencent/mmkv/MMKV;

    const-string v8, "lines_seekbar_value"

    const/4 v9, 0x3

    invoke-virtual {v6, v8, v9}, Lcom/tencent/mmkv/MMKV;->decodeInt(Ljava/lang/String;I)I

    move-result v6

    add-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 597
    .local v6, "overlappingEnablePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-virtual {v6, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mmkv:Lcom/tencent/mmkv/MMKV;

    const-string/jumbo v2, "textsize_seekbar_value"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->decodeInt(Ljava/lang/String;I)I

    move-result v1

    .line 601
    .local v1, "textSizeIndex":I
    const v2, 0x3f99999a    # 1.2f

    .line 602
    .local v2, "textSizeScale":F
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 616
    :pswitch_0
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_1

    .line 613
    :pswitch_1
    const v2, 0x3fe66666    # 1.8f

    .line 614
    goto :goto_1

    .line 610
    :pswitch_2
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 611
    goto :goto_1

    .line 607
    :pswitch_3
    const v2, 0x3f99999a    # 1.2f

    .line 608
    goto :goto_1

    .line 604
    :pswitch_4
    const v2, 0x3f4ccccd    # 0.8f

    .line 605
    nop

    .line 620
    :goto_1
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mmkv:Lcom/tencent/mmkv/MMKV;

    const-string v9, "danmu_velocity_seekbar_value"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Lcom/tencent/mmkv/MMKV;->decodeInt(Ljava/lang/String;I)I

    move-result v8

    .line 621
    .local v8, "danmuSpeedIndex":I
    const v9, 0x3f99999a    # 1.2f

    .line 622
    .local v9, "danmuSpeed":F
    packed-switch v8, :pswitch_data_1

    goto :goto_2

    .line 636
    :pswitch_5
    const v9, 0x3f333333    # 0.7f

    goto :goto_2

    .line 633
    :pswitch_6
    const v9, 0x3f666666    # 0.9f

    .line 634
    goto :goto_2

    .line 630
    :pswitch_7
    const v9, 0x3f99999a    # 1.2f

    .line 631
    goto :goto_2

    .line 627
    :pswitch_8
    const/high16 v9, 0x3fc00000    # 1.5f

    .line 628
    goto :goto_2

    .line 624
    :pswitch_9
    const/high16 v9, 0x40000000    # 2.0f

    .line 625
    nop

    .line 641
    :goto_2
    iget-object v11, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    new-array v12, v0, [F

    const/high16 v13, 0x40400000    # 3.0f

    aput v13, v12, v7

    invoke-virtual {v11, v10, v12}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setDanmakuStyle(I[F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v10

    .line 642
    invoke-virtual {v10, v7}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setDuplicateMergingEnabled(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v10

    .line 643
    invoke-virtual {v10, v9}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setScrollSpeedFactor(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v10

    .line 644
    invoke-virtual {v10, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setScaleTextSize(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v10

    new-instance v11, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;

    invoke-direct {v11}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;-><init>()V

    .line 645
    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setCacheStuffer(Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v10

    .line 646
    invoke-virtual {v10, v5}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setMaximumLines(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v10

    .line 647
    invoke-virtual {v10, v6}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->preventOverlapping(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v10

    .line 648
    const/16 v11, 0x28

    invoke-virtual {v10, v11}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setDanmakuMargin(I)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 651
    new-instance v10, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;

    invoke-direct {v10, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 658
    .local v10, "parser":Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    iget-object v11, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mDanmakuView:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    new-instance v12, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;

    invoke-direct {v12, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v11, v12}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->setCallback(Lmaster/flame/danmaku/controller/DrawHandler$Callback;)V

    .line 677
    iget-object v11, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mDanmakuView:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    iget-object v12, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v11, v10, v12}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->prepare(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 678
    iget-object v11, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mDanmakuView:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-virtual {v11, v7}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->showFPS(Z)V

    .line 679
    iget-object v11, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mDanmakuView:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-virtual {v11, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->enableDanmakuDrawingCache(Z)V

    .line 682
    new-instance v11, Landroid/content/Intent;

    const-class v12, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {v11, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 683
    .local v11, "intent":Landroid/content/Intent;
    const-string v12, "oncreate"

    invoke-virtual {v11, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 684
    const/high16 v0, 0x30000

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 685
    invoke-virtual {p0, v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 686
    invoke-virtual {p0, v7, v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->overridePendingTransition(II)V

    .line 688
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateMenu()V
    .locals 3

    .line 3880
    sget v0, Lcom/shenma/tvlauncher/R$layout;->mv_controler_menu:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3881
    .local v0, "menuView":Landroid/view/View;
    sget v1, Lcom/shenma/tvlauncher/R$id;->media_controler_menu:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menulist:Landroid/widget/ListView;

    .line 3882
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    .line 3883
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 3884
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3885
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3886
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$67;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4163
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 905
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 906
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 907
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->stopPlayback()V

    .line 908
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speedRunnabless:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 912
    :cond_0
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    .line 913
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->startAutoBrightness(Landroid/app/Activity;)V

    .line 921
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mDanmakuView:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mDanmakuView:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-virtual {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->release()V

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mDanmakuView:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    .line 925
    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 874
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setIntent(Landroid/content/Intent;)V

    .line 875
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 876
    const-string v0, "isRecommandClick"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 877
    .local v0, "isRecommandClick":Z
    const-string/jumbo v1, "vodPlayUrl"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodPlayUrl:Ljava/lang/String;

    .line 878
    const-string v1, "FROM_BACK"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 879
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->finish()V

    goto :goto_0

    .line 889
    :cond_0
    const-string v1, "quanping"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 893
    :cond_1
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->initData()V

    .line 895
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1135
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onPause()V

    .line 1136
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "quanping"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    return-void

    .line 1139
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause...mPlayerStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerActivity"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    invoke-static {v1}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 1141
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 1142
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->releaseWakeLock()V

    .line 1143
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1144
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 1145
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1146
    sget-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_BACKSTAGE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 1147
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/TextView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$15;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$15;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1154
    :cond_1
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hideController()V

    .line 1155
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1156
    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 952
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onResume()V

    .line 954
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "quanping"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    return-void

    .line 958
    :cond_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setFullScreenImmersive()V

    .line 959
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hideMenu()V

    .line 960
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 962
    const-string v0, "VideoPlayerActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 963
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 964
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 965
    .local v1, "m_value":Ljava/util/Map;
    const-string/jumbo v2, "vodname"

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    const-string v2, "domain"

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->domain:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    const-string/jumbo v2, "vodtype"

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodtype:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    const-string v2, "VOD_PLAY"

    invoke-static {p0, v2, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 969
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 970
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume...mPlayerStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->acquireWakeLock()V

    .line 974
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 975
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "event handler thread"

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 976
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 977
    new-instance v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    .line 981
    :cond_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mVideoSource:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v3, ""

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mVideoSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    sget-object v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-ne v3, v4, :cond_2

    .line 982
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    .line 983
    const-string v3, "onResume... \u53d1\u8d77\u64ad\u653e"

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :cond_2
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$11;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$11;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    .line 1000
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    .line 1055
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speedRunnabless:Ljava/lang/Runnable;

    .line 1107
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    sget-object v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_BACKSTAGE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-ne v0, v3, :cond_4

    .line 1108
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    const/4 v2, 0x5

    if-nez v0, :cond_3

    .line 1110
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 1111
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1115
    :cond_3
    sget-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_PREPARED:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 1116
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 1117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1119
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1121
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/TextView;

    new-instance v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$14;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$14;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1128
    :cond_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mProgressBar:Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setProgress(I)V

    .line 1129
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1131
    :goto_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 940
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStop()V

    .line 941
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 942
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 943
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 944
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 945
    const/4 v0, 0x0

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 946
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 947
    const-string v0, "VideoPlayerActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4269
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 4270
    .local v0, "result":Z
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4271
    .local v1, "screen":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4272
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSurfaceYDisplayRange:I

    if-nez v2, :cond_0

    .line 4273
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSurfaceYDisplayRange:I

    .line 4275
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchY:F

    sub-float/2addr v2, v3

    .line 4276
    .local v2, "y_changed":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchX:F

    sub-float/2addr v3, v4

    .line 4278
    .local v3, "x_changed":F
    div-float v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 4279
    .local v4, "coef":F
    iget v5, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v5, v3, v5

    const v6, 0x40228f5c    # 2.54f

    mul-float v5, v5, v6

    .line 4280
    .local v5, "xgesturesize":F
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "y_changed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "...x_changed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "...coef="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "...xgesturesize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "joychang"

    invoke-static {v7, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const-string v9, "VideoPlayerActivity"

    const/4 v10, 0x1

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1

    .line 4293
    :pswitch_0
    const-string v6, "MotionEvent.ACTION_MOVE......."

    invoke-static {v9, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4294
    cmpl-float v6, v4, v7

    if-lez v6, :cond_2

    .line 4295
    const/4 v6, 0x0

    .line 4297
    .local v6, "isSeekTouch":Z
    iget v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchX:F

    iget v9, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenWidth:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_1

    .line 4299
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->doVolumeTouch(F)V

    .line 4301
    :cond_1
    iget v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchX:F

    iget v9, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenWidth:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_2

    .line 4303
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->doBrightnessTouch(F)V

    .line 4306
    .end local v6    # "isSeekTouch":Z
    :cond_2
    invoke-direct {p0, v4, v5, v8}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->doSeekTouch(FFZ)V

    .line 4307
    goto/16 :goto_1

    .line 4309
    :pswitch_1
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    sget-object v8, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-eq v6, v8, :cond_3

    .line 4310
    sget v6, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 4336
    :pswitch_2
    const/high16 v6, 0x40a00000    # 5.0f

    invoke-direct {p0, v6, v10}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    goto :goto_0

    .line 4333
    :pswitch_3
    const/high16 v6, 0x40800000    # 4.0f

    invoke-direct {p0, v6, v10}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 4334
    goto :goto_0

    .line 4330
    :pswitch_4
    const/high16 v6, 0x40400000    # 3.0f

    invoke-direct {p0, v6, v10}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 4331
    goto :goto_0

    .line 4327
    :pswitch_5
    invoke-direct {p0, v7, v10}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 4328
    goto :goto_0

    .line 4324
    :pswitch_6
    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-direct {p0, v6, v10}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 4325
    goto :goto_0

    .line 4321
    :pswitch_7
    const/high16 v6, 0x3fa00000    # 1.25f

    invoke-direct {p0, v6, v10}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 4322
    goto :goto_0

    .line 4318
    :pswitch_8
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {p0, v6, v10}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 4319
    goto :goto_0

    .line 4315
    :pswitch_9
    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {p0, v6, v10}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 4316
    goto :goto_0

    .line 4312
    :pswitch_a
    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct {p0, v6, v10}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 4313
    nop

    .line 4340
    :cond_3
    :goto_0
    const-string v6, "MotionEvent.ACTION_UP......."

    invoke-static {v9, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4341
    invoke-direct {p0, v4, v5, v10}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->doSeekTouch(FFZ)V

    goto :goto_1

    .line 4283
    :pswitch_b
    const-string v6, "MotionEvent.ACTION_DOWN......."

    invoke-static {v9, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4284
    const/4 v6, 0x1

    .line 4285
    .restart local v6    # "isSeekTouch":Z
    iput v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchAction:I

    .line 4286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchY:F

    .line 4287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchX:F

    .line 4288
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v7

    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->maxVolume:I

    .line 4289
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentVolume:I

    .line 4290
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetLightness(Landroid/app/Activity;)F

    move-result v7

    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Lightness:F

    .line 4291
    nop

    .line 4344
    .end local v6    # "isSeekTouch":Z
    :goto_1
    return v10

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 899
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onWindowFocusChanged(Z)V

    .line 900
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setFullScreenImmersive()V

    .line 901
    :cond_0
    return-void
.end method

.method public setListener()V
    .locals 2

    .line 2710
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_menu:Landroid/widget/TextView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$44;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$44;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2718
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$45;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$45;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 2785
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$46;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$46;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2816
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuSetting:Landroid/view/View;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$47;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$47;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2822
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->danmuSend:Landroid/view/View;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$48;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$48;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2836
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "Client"    # Ljava/lang/String;

    .line 2265
    const-string v0, "Submission_method"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2274
    .local v0, "Submission_method":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/?url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2276
    .local v1, "urlEncode":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->analysisUrl(Ljava/lang/String;I)V

    .line 2277
    return-void
.end method
