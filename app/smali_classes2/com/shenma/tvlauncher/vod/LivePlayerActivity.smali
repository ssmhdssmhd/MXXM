.class public Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;,
        Lcom/shenma/tvlauncher/vod/LivePlayerActivity$WindowMessageID;,
        Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;
    }
.end annotation


# static fields
.field public static Failed:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "LivePlayerActivity"

.field private static final TIME:I = 0x1770

.field private static final TOUCH_BRIGHTNESS:I = 0x2

.field private static final TOUCH_NONE:I = 0x0

.field private static final TOUCH_VOLUME:I = 0x1

.field private static controlHeight:I

.field public static gsposition:I

.field public static hmblposition:I

.field public static jmposition:I

.field public static keyChanne:Ljava/lang/String;

.field private static menutype:I

.field public static nhposition:I

.field public static phszposition:I

.field public static qlposition:I

.field private static rxByte:Ljava/lang/String;

.field private static rxBytes:Ljava/lang/String;

.field public static xjposition:I


# instance fields
.field private Api_url:Ljava/lang/String;

.field private Auto_Source:I

.field private BASE_HOST:Ljava/lang/String;

.field private Client:Ljava/lang/String;

.field private ClientID:I

.field private KEYCODE_DPAD_DOWN:Z

.field private KEYCODE_DPAD_UP:Z

.field private Lightness:F

.field private MaxClientID:I

.field private Maxtimeout:I

.field private Navigation_mode:I

.field private PlayersNumber:I

.field private Referer:Ljava/lang/String;

.field private SP:Landroid/content/SharedPreferences;

.field private final SYNC_Playing:Ljava/lang/Object;

.field private Tackle_mode:I

.field private Type:I

.field Vod_Notice_starting_time:I

.field caton_check:I

.field check_time:I

.field private controlView:Landroid/view/View;

.field private controler:Landroid/widget/PopupWindow;

.field private core:I

.field private core_mode:I

.field private currentVolume:I

.field private epg:I

.field private firstTime:J

.field private gsplayIndex:I

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

.field private iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

.field private ib_playStatus:Landroid/widget/ImageButton;

.field private isBack:Z

.field private isCodeBlockExecuted:Z

.field private isControllerShow:Z

.field private isDestroy:Ljava/lang/Boolean;

.field private isLast:Ljava/lang/Boolean;

.field private isMenuItemShow:Z

.field private isMenuItemShows:Z

.field private isMenuItemShowss:Z

.field private isMenuShow:Z

.field private isNext:Ljava/lang/Boolean;

.field private isPause:Ljava/lang/Boolean;

.field private isSwitch:Z

.field private isUpKeyPressed:Z

.field private lastRxByte:J

.field private lastRxBytes:J

.field private lastSpeedTime:J

.field private lastSpeedTimes:J

.field private live_no_source:I

.field private ll_epg1:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private ll_epg2:Landroid/widget/LinearLayout;

.field private ll_forfend:Landroid/widget/LinearLayout;

.field private load:I

.field private logo_url:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mEventHandler:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsHwDecode:Z

.field private mLastPos:I

.field private mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

.field private mProgramNum:Landroid/widget/TextView;

.field private mProgressBar:Lcom/shenma/tvlauncher/view/PlayerProgressBar;

.field private mQueue:Lcom/android/volley/RequestQueue;

.field private mSpeedHandler:Landroid/os/Handler;

.field private mSurfaceYDisplayRange:I

.field private mToast:Landroid/widget/Toast;

.field private mTouchAction:I

.field private mTouchX:F

.field private mTouchY:F

.field private mVideoSource:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private maxVolume:I

.field private final mediaHandler:Landroid/os/Handler;

.field private memory_channel:I

.field private memory_source:I

.field private menulist:Landroid/widget/ListView;

.field private menulists:Landroid/widget/ListView;

.field private menulistss:Landroid/widget/ListView;

.field private menupopupWindow:Landroid/widget/PopupWindow;

.field private menupopupWindows:Landroid/widget/PopupWindow;

.field private networkspeed:I

.field private now_source:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrl;",
            ">;"
        }
    .end annotation
.end field

.field private parts:[Ljava/lang/String;

.field private pauseVideoReceiver:Landroid/content/BroadcastReceiver;

.field private playIndex:I

.field private playPreCode:I

.field private reverse:I

.field private safe_mode:I

.field private screenHeight:I

.field private screenWidth:I

.field private seekBar:Landroid/widget/SeekBar;

.field private sp:Landroid/content/SharedPreferences;

.field private speed:J

.field private speedRunnable:Ljava/lang/Runnable;

.field private speedRunnables:Ljava/lang/Runnable;

.field private speedRunnabless:Ljava/lang/Runnable;

.field private speeds:J

.field private splitCount:I

.field private switchs:I

.field private time_controlView:Landroid/view/View;

.field private time_controler:Landroid/widget/PopupWindow;

.field private timeout:I

.field private tv_channelname1:Landroid/widget/TextView;

.field private tv_channelname2:Landroid/widget/TextView;

.field private tv_channelnum1:Landroid/widget/TextView;

.field private tv_channelnum2:Landroid/widget/TextView;

.field private tv_currentTime:Landroid/widget/TextView;

.field private tv_logo:Landroid/widget/ImageView;

.field private tv_menu:Landroid/widget/TextView;

.field private tv_mv_name:Landroid/widget/TextView;

.field private tv_mv_speed:Landroid/widget/TextView;

.field private tv_netspeedinfo:Landroid/widget/TextView;

.field private tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

.field private tv_notice_root:Landroid/widget/LinearLayout;

.field private tv_progress_time:Landroid/widget/TextView;

.field private tv_srcinfo1:Landroid/widget/TextView;

.field private tv_srcinfo2:Landroid/widget/TextView;

.field private tv_time:Landroid/widget/TextView;

.field private tv_totalTime:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;

.field private videoInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private videoInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private videoLength:I

.field private vmAdapter:Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

.field private vmAdapters:Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

.field private vmAdapterss:Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static bridge synthetic -$$Nest$fgetAuto_Source(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Auto_Source:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetClient(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Client:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetClientID(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ClientID:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetMaxClientID(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->MaxClientID:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetPlayersNumber(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetSP(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SP:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetSYNC_Playing(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SYNC_Playing:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetTackle_mode(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Tackle_mode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgsplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisCodeBlockExecuted(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isCodeBlockExecuted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisControllerShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isControllerShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisDestroy(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isDestroy:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisLast(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isLast:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisMenuItemShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuItemShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisMenuShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisNext(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isNext:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisPause(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isPause:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastRxByte(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastRxByte:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastRxBytes(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastRxBytes:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastSpeedTime(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastSpeedTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastSpeedTimes(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastSpeedTimes:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetll_epg1(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_epg1:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetll_epg2(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_epg2:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetll_forfend(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_forfend:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetload(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->load:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlogo_url(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->logo_url:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlayerStatus(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgramNum(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mProgramNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressBar(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/view/PlayerProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mProgressBar:Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpeedHandler(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmemory_channel(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->memory_channel:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmemory_source(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->memory_source:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulist:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmenulists(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulists:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmenulistss(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulistss:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmenupopupWindow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmenupopupWindows(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnetworkspeed(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->networkspeed:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnow_source(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->now_source:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetseekBar(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->seekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsp(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetspeed(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speed:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetspeedRunnable(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetspeedRunnables(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnables:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetspeedRunnabless(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnabless:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetspeeds(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speeds:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettimeout(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->timeout:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettv_currentTime(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_currentTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_logo(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_logo:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_mv_name(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_mv_speed(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_speed:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_netspeedinfo(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_netspeedinfo:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_notice(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_notice_root(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoInfo(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoInfos(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfos:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputgsplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisCodeBlockExecuted(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isCodeBlockExecuted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisDestroy(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isDestroy:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisLast(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isLast:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisMenuItemShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuItemShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisMenuShow(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisNext(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isNext:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisPause(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isPause:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisSwitch(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isSwitch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisUpKeyPressed(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastRxByte(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastRxByte:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastRxBytes(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastRxBytes:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastSpeedTime(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastSpeedTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastSpeedTimes(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastSpeedTimes:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputload(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->load:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastPos(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPlayerStatus(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnow_source(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->now_source:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputspeed(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speed:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputspeeds(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speeds:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtimeout(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->timeout:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvideoInfo(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvideoInfos(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfos:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$mPrepareVodData(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PrepareVodData(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mResetMovieTime(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ResetMovieTime()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mSelecteVod(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SelecteVod(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mSwitchsource(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Switchsource(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelDelayHide(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->cancelDelayHide()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mendSpeed(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->endSpeed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPlayPreferences(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getPlayPreferences()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetVodGongGao(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getVodGongGao()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideController(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideController()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideControllerDelay(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideControllerDelay()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideMenu(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideMenu()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMessage(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->onMessage(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectScales(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->selectScales(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDecode(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setDecode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowController(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showController()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowMenu(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showMenu()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowMenus(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showMenus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSpeed(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->startSpeed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopPlayback(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->stopPlayback()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTextViewWithTimeFormat(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Landroid/widget/TextView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateprogress(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->updateprogress()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvodlogoloadImg(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->vodlogoloadImg()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmenutype()I
    .locals 1

    sget v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menutype:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetrxByte()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->rxByte:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetrxBytes()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->rxBytes:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmenutype(I)V
    .locals 0

    sput p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menutype:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputrxByte(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->rxByte:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputrxBytes(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->rxBytes:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 128
    const/4 v0, 0x0

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    .line 129
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->jmposition:I

    .line 130
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->phszposition:I

    .line 131
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 132
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    .line 133
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->qlposition:I

    .line 134
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlHeight:I

    .line 341
    const-string v1, ""

    sput-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Failed:Ljava/lang/String;

    .line 365
    sput-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    .line 445
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsposition:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 122
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SYNC_Playing:Ljava/lang/Object;

    .line 142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->firstTime:J

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 145
    const/4 v1, 0x0

    .line 147
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 145
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isBack:Z

    .line 146
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isControllerShow:Z

    .line 147
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 148
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isLast:Ljava/lang/Boolean;

    .line 149
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuItemShow:Z

    .line 150
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuItemShows:Z

    .line 151
    iput-boolean v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuItemShowss:Z

    .line 152
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuShow:Z

    .line 153
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isNext:Ljava/lang/Boolean;

    .line 154
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isPause:Ljava/lang/Boolean;

    .line 155
    iput-boolean v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isSwitch:Z

    .line 158
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 159
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 161
    iput-boolean v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mIsHwDecode:Z

    .line 162
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 163
    sget-object v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    .line 167
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mToast:Landroid/widget/Toast;

    .line 171
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mVideoSource:Ljava/lang/String;

    .line 172
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 179
    const-string v2, "LIVEs"

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    .line 180
    const-string v2, "gsLIVEs"

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    .line 204
    new-instance v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$1;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$1;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    .line 215
    new-instance v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    .line 318
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    .line 319
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfos:Ljava/util/List;

    .line 320
    iput v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ClientID:I

    .line 321
    iput v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->MaxClientID:I

    .line 322
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Type:I

    .line 324
    const-string v2, "Logo_url"

    invoke-static {p0, v2, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->logo_url:Ljava/lang/String;

    .line 326
    const-string v2, "Client"

    const-string v4, ""

    invoke-static {p0, v2, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Client:Ljava/lang/String;

    .line 328
    iput v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Auto_Source:I

    .line 333
    const-string v2, "Navigation_mode"

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Navigation_mode:I

    .line 335
    const-string v2, "Vod_Notice_starting_time"

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Vod_Notice_starting_time:I

    .line 336
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->load:I

    .line 337
    const/16 v2, 0x12c

    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Maxtimeout:I

    .line 338
    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Maxtimeout:I

    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->timeout:I

    .line 340
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isCodeBlockExecuted:Z

    .line 342
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->now_source:Ljava/util/List;

    .line 343
    const-string v2, "Api_url"

    invoke-static {p0, v2, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Api_url:Ljava/lang/String;

    .line 344
    const-string v2, "BASE_HOST"

    invoke-static {p0, v2, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->BASE_HOST:Ljava/lang/String;

    .line 349
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->KEYCODE_DPAD_UP:Z

    .line 350
    iput-boolean v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->KEYCODE_DPAD_DOWN:Z

    .line 366
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mProgramNum:Landroid/widget/TextView;

    .line 379
    const-string v0, "caton_check"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->caton_check:I

    .line 386
    const-string v0, "check_time"

    const/16 v2, 0xa

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->check_time:I

    .line 394
    const-string v0, "Tackle_mode"

    invoke-static {p0, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Tackle_mode:I

    .line 402
    const-string v0, "networkspeed"

    invoke-static {p0, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->networkspeed:I

    .line 411
    const-string v0, "epg"

    invoke-static {p0, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->epg:I

    .line 419
    const-string/jumbo v0, "switchs"

    invoke-static {p0, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->switchs:I

    .line 427
    const-string v0, "memory_source"

    invoke-static {p0, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->memory_source:I

    .line 435
    const-string v0, "memory_channel"

    invoke-static {p0, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->memory_channel:I

    .line 443
    const-string v0, "live_no_source"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->live_no_source:I

    .line 447
    const/16 v0, 0x63

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->core:I

    .line 448
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->safe_mode:I

    .line 452
    const-string v0, "core_mode"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->core_mode:I

    .line 457
    const-string v0, "reverse"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->reverse:I

    .line 1953
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    return-void
.end method

.method private PrepareVodData(I)V
    .locals 8
    .param p1, "postion"    # I

    .line 753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isSwitch:Z

    .line 754
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    if-lt v1, v2, :cond_4

    .line 755
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    .line 756
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v2, v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelname1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelname2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelnum1:Landroid/widget/TextView;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelnum2:Landroid/widget/TextView;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v2, v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    .line 763
    .local v2, "str":Ljava/lang/String;
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    .line 764
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->splitCount:I

    .line 766
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->memory_source:I

    const/4 v4, 0x0

    if-ne v3, v0, :cond_0

    .line 767
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SP:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v5, v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 770
    :cond_0
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->splitCount:I

    if-le v3, v5, :cond_1

    .line 771
    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 772
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    goto :goto_1

    .line 774
    :cond_1
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->memory_source:I

    if-ne v3, v0, :cond_2

    .line 775
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SP:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v5, v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    goto :goto_0

    .line 777
    :cond_2
    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 780
    :goto_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    .line 783
    :goto_1
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v4, v4

    const-string v5, "/"

    const-string/jumbo v6, "\u6e90:"

    if-le v3, v4, :cond_3

    .line 784
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 787
    :cond_3
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v7, v0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    :goto_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 793
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    .line 795
    .end local v1    # "textView":Landroid/widget/TextView;
    .end local v2    # "str":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private ResetMovieTime()V
    .locals 2

    .line 2288
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_currentTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    .line 2289
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_totalTime:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    .line 2290
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2291
    return-void
.end method

.method private SelecteVod(I)V
    .locals 8
    .param p1, "postion"    # I

    .line 799
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->stopPlayback()V

    .line 804
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 805
    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    .line 806
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsposition:I

    .line 809
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_1

    .line 810
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    .line 811
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsposition:I

    .line 827
    :cond_1
    sget-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    .line 828
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isSwitch:Z

    .line 829
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->stopPlayback()V

    .line 830
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 831
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 832
    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 833
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    .line 834
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelname1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v4, v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelname2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v4, v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelnum1:Landroid/widget/TextView;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelnum2:Landroid/widget/TextView;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    .line 840
    .local v3, "str":Ljava/lang/String;
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    .line 841
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v4, v4

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->splitCount:I

    .line 843
    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->memory_source:I

    if-ne v4, v2, :cond_2

    .line 844
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SP:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v5, v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 847
    :cond_2
    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->splitCount:I

    if-le v4, v5, :cond_3

    .line 848
    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 849
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    aget-object v0, v4, v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    goto :goto_1

    .line 851
    :cond_3
    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->memory_source:I

    if-ne v4, v2, :cond_4

    .line 852
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SP:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v5, v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    goto :goto_0

    .line 854
    :cond_4
    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 857
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    .line 860
    :goto_1
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v0, v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v4, v4

    const-string v5, "/"

    const-string/jumbo v6, "\u6e90:"

    if-le v0, v4, :cond_5

    .line 861
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 864
    :cond_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v7, v2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    :goto_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Client:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    .line 870
    return-void
.end method

.method private Switchsource(I)V
    .locals 7
    .param p1, "msg"    # I

    .line 1002
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->stopPlayback()V

    .line 1003
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 1004
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->live_no_source:I

    const/16 v4, 0x11

    if-nez v3, :cond_0

    .line 1011
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sput v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 1012
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 1013
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SelecteVod(I)V

    .line 1014
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1016
    :cond_0
    iget-boolean v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->KEYCODE_DPAD_UP:Z

    if-eqz v3, :cond_2

    .line 1017
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    if-lez v3, :cond_1

    .line 1018
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    .line 1019
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sput v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 1020
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 1021
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SelecteVod(I)V

    .line 1022
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1023
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    goto :goto_0

    .line 1025
    :cond_1
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    .line 1026
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sput v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 1027
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 1028
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SelecteVod(I)V

    .line 1029
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1030
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 1033
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->KEYCODE_DPAD_DOWN:Z

    if-eqz v3, :cond_4

    .line 1034
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    add-int/2addr v5, v0

    if-le v3, v5, :cond_3

    .line 1035
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    .line 1036
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sput v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 1037
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 1038
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SelecteVod(I)V

    .line 1039
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1040
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    goto :goto_1

    .line 1042
    :cond_3
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    .line 1043
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sput v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 1044
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 1045
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SelecteVod(I)V

    .line 1046
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1047
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 1054
    :cond_4
    :goto_1
    if-ne p1, v0, :cond_a

    .line 1056
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->epg:I

    if-ne v3, v0, :cond_5

    .line 1057
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_epg1:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_2

    .line 1058
    :cond_5
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->epg:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 1059
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_epg2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1066
    :cond_6
    :goto_2
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->switchs:I

    if-ne v3, v0, :cond_7

    .line 1067
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_forfend:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1070
    :cond_7
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->stopPlayback()V

    .line 1071
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->splitCount:I

    if-le v3, v4, :cond_8

    .line 1072
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 1073
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    .line 1074
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SP:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1087
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Switchsource(I)V

    goto/16 :goto_3

    .line 1089
    :cond_8
    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 1090
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    .line 1092
    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v3, v3

    if-le v2, v3, :cond_9

    .line 1093
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6e90:1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1096
    :cond_9
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6e90:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    :goto_3
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->load:I

    .line 1102
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Client:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    .line 1104
    :cond_a
    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 2930
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 2931
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2932
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x2000000a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2933
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2936
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private analysisUrl(Ljava/lang/String;I)V
    .locals 17
    .param p1, "urls"    # Ljava/lang/String;
    .param p2, "way"    # I

    .line 1292
    move-object/from16 v1, p0

    move/from16 v13, p2

    const-string v0, "Timeout"

    const/16 v2, 0x19

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    .line 1294
    .local v14, "Timeout":I
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v1, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1296
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "userName"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1297
    .local v6, "account":Ljava/lang/String;
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "passWord"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1298
    .local v7, "password":Ljava/lang/String;
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "ckinfo"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1299
    .local v8, "token":Ljava/lang/String;
    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 1300
    .local v9, "machineid":Ljava/lang/String;
    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 1301
    .local v10, "value":D
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v2, v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Utils;->getEcodString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1304
    .local v12, "name":Ljava/lang/String;
    const/high16 v15, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-nez v13, :cond_0

    .line 1305
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

    const-string v4, "&line=live&new=1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1306
    .local v2, "url":Ljava/lang/String;
    const/4 v4, 0x0

    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$14;

    const/4 v5, 0x0

    new-instance v4, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$12;

    invoke-direct {v4, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$12;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    const/16 v16, 0x0

    new-instance v5, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$13;

    invoke-direct {v5, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$13;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    move-object v3, v2

    .end local v2    # "url":Ljava/lang/String;
    .local v3, "url":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v16, v9

    const/4 v9, 0x0

    .end local v9    # "machineid":Ljava/lang/String;
    .local v16, "machineid":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$14;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    mul-int/lit16 v4, v14, 0x3e8

    invoke-direct {v2, v4, v9, v15}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v2}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 1337
    iget-object v2, v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 1304
    .end local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    .end local v3    # "url":Ljava/lang/String;
    .end local v16    # "machineid":Ljava/lang/String;
    .restart local v9    # "machineid":Ljava/lang/String;
    :cond_0
    move-object/from16 v16, v9

    const/4 v9, 0x0

    .line 1342
    .end local v9    # "machineid":Ljava/lang/String;
    .restart local v16    # "machineid":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x1

    if-ne v13, v0, :cond_1

    .line 1343
    move-object/from16 v3, p1

    .line 1344
    .restart local v3    # "url":Ljava/lang/String;
    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$17;

    new-instance v4, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$15;

    invoke-direct {v4, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$15;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$16;

    invoke-direct {v5, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$16;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    const/4 v2, 0x1

    move-object/from16 v9, v16

    const/4 v13, 0x0

    .end local v16    # "machineid":Ljava/lang/String;
    .restart local v9    # "machineid":Ljava/lang/String;
    invoke-direct/range {v0 .. v12}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$17;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    .line 1377
    .end local v9    # "machineid":Ljava/lang/String;
    .restart local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    .restart local v16    # "machineid":Ljava/lang/String;
    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    mul-int/lit16 v4, v14, 0x3e8

    invoke-direct {v2, v4, v13, v15}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v2}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 1380
    iget-object v2, v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1383
    .end local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private cancelDelayHide()V
    .locals 2

    .line 1814
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1815
    return-void
.end method

.method private createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 985
    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$11;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$11;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    return-object v0
.end method

.method private createVodDataSuccessListener()Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;",
            ">;"
        }
    .end annotation

    .line 925
    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    return-object v0
.end method

.method private doBrightnessTouch(F)V
    .locals 6
    .param p1, "y_changed"    # F

    .line 2798
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchAction:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchAction:I

    if-eq v0, v1, :cond_0

    .line 2799
    return-void

    .line 2800
    :cond_0
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchAction:I

    .line 2801
    neg-float v0, p1

    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSurfaceYDisplayRange:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    .line 2802
    .local v0, "delta":F
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Lightness:F

    add-float/2addr v1, v0

    const v2, 0x3c23d70a    # 0.01f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 2803
    .local v1, "vol":I
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    .line 2804
    const/4 v2, 0x5

    const/16 v3, 0xff

    const/4 v4, 0x0

    if-ge v1, v2, :cond_1

    .line 2805
    sget v2, Lcom/shenma/tvlauncher/R$drawable;->mv_ic_brightness:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 2807
    :cond_1
    sget v2, Lcom/shenma/tvlauncher/R$drawable;->mv_ic_brightness:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    .line 2809
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Lightness:F

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

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSurfaceYDisplayRange:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "doBrightnessTouch"

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2811
    :cond_2
    return-void
.end method

.method private doVolumeTouch(F)V
    .locals 6
    .param p1, "y_changed"    # F

    .line 2779
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchAction:I

    const/4 v1, 0x1

    .line 2787
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2779
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchAction:I

    if-eq v0, v1, :cond_0

    .line 2780
    return-void

    .line 2781
    :cond_0
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchAction:I

    .line 2782
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSurfaceYDisplayRange:I

    int-to-float v0, v0

    div-float v0, p1, v0

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->maxVolume:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    float-to-int v0, v0

    neg-int v0, v0

    .line 2783
    .local v0, "delta":I
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->currentVolume:I

    add-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->maxVolume:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2784
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

    .line 2785
    if-eqz v0, :cond_3

    .line 2786
    if-ge v3, v1, :cond_1

    .line 2787
    sget v1, Lcom/shenma/tvlauncher/R$drawable;->mv_ic_volume_mute:I

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->maxVolume:I

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 2788
    :cond_1
    if-lt v3, v1, :cond_2

    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->maxVolume:I

    div-int/lit8 v1, v1, 0x2

    if-ge v3, v1, :cond_2

    .line 2789
    sget v1, Lcom/shenma/tvlauncher/R$drawable;->mv_ic_volume_low:I

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->maxVolume:I

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 2790
    :cond_2
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->maxVolume:I

    div-int/lit8 v1, v1, 0x2

    if-lt v3, v1, :cond_3

    .line 2791
    sget v1, Lcom/shenma/tvlauncher/R$drawable;->mv_ic_volume_high:I

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->maxVolume:I

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    .line 2794
    :cond_3
    :goto_0
    return-void
.end method

.method private endSpeed()V
    .locals 4

    .line 2886
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->load:I

    .line 2887
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2888
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_speed:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2895
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnables:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2896
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastRxBytes:J

    .line 2897
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastSpeedTimes:J

    .line 2898
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnables:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2901
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->caton_check:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2902
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnabless:Ljava/lang/Runnable;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->check_time:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2905
    :cond_0
    return-void
.end method

.method private fastForward(I)V
    .locals 7
    .param p1, "postion"    # I

    .line 2225
    sget-object v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    .line 2226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isSwitch:Z

    .line 2227
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2228
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2229
    const/4 v1, 0x0

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 2230
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    .line 2231
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2233
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->stopPlayback()V

    .line 2234
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->splitCount:I

    if-le v3, v4, :cond_0

    .line 2235
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 2236
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    aget-object v1, v3, v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    goto :goto_0

    .line 2238
    :cond_0
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 2239
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    .line 2241
    :goto_0
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v3, v3

    const-string v4, "/"

    const-string/jumbo v5, "\u6e90:"

    if-le v1, v3, :cond_1

    .line 2242
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2243
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2245
    :cond_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2246
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2248
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Client:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    .line 2249
    return-void
.end method

.method private getPlayPreferences()V
    .locals 3

    .line 1164
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "playPre"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playPreCode:I

    .line 1165
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playPreCode:I

    if-nez v0, :cond_0

    .line 1167
    sput v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->phszposition:I

    goto :goto_0

    .line 1170
    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->phszposition:I

    .line 1172
    :goto_0
    return-void
.end method

.method private getScreenSize()V
    .locals 2

    .line 1782
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1783
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->screenHeight:I

    .line 1784
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->screenWidth:I

    .line 1785
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->screenHeight:I

    div-int/lit8 v1, v1, 0x4

    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlHeight:I

    .line 1786
    return-void
.end method

.method private getVodGongGao()V
    .locals 13

    .line 2956
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 2957
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2958
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2959
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2960
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2961
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2962
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2963
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 2964
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$38;

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

    const-string v3, "&act=live_notice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$36;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$36;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$37;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$37;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$38;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3005
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 3007
    return-void
.end method

.method private hideController()V
    .locals 1

    .line 1805
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controler:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1807
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1808
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isControllerShow:Z

    .line 1810
    :cond_0
    return-void
.end method

.method private hideControllerDelay()V
    .locals 4

    .line 1819
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->cancelDelayHide()V

    .line 1820
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1821
    return-void
.end method

.method private hideMenu()V
    .locals 2

    .line 1859
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Navigation_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1860
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Navigation()V

    .line 1862
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1863
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1865
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1866
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1868
    :cond_2
    return-void
.end method

.method private initData()V
    .locals 5

    .line 881
    new-instance v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/domain/RequestVo;-><init>()V

    .line 883
    .local v0, "vo":Lcom/shenma/tvlauncher/vod/domain/RequestVo;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, "User_url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api.php?app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&act=iptv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    .line 885
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V

    .line 886
    const-string/jumbo v2, "vod_Logo"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 887
    .local v2, "vod_Logo":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 888
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 890
    :cond_0
    return-void
.end method

.method private initMessage(I)V
    .locals 4
    .param p1, "what"    # I

    .line 1939
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1940
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x28

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    .line 1943
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mProgramNum:Landroid/widget/TextView;

    sget-object v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMessage...keyChanne="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LivePlayerActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1950
    return-void
.end method

.method private onMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1873
    if-eqz p1, :cond_4

    .line 1874
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 1926
    return-void

    .line 1922
    :sswitch_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->switchCode()V

    .line 1923
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isSwitch:Z

    .line 1924
    return-void

    .line 1908
    :sswitch_1
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ClientID:I

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->MaxClientID:I

    if-ge v0, v3, :cond_0

    .line 1909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Client:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ClientID:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1911
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Auto_Source:I

    if-ne v0, v2, :cond_1

    .line 1913
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Switchsource(I)V

    goto :goto_0

    .line 1915
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1916
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Switchsource(I)V

    .line 1920
    :goto_0
    return-void

    .line 1905
    :sswitch_2
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideMenu()V

    .line 1906
    return-void

    .line 1902
    :sswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_progress_time:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1903
    return-void

    .line 1899
    :sswitch_4
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideController()V

    .line 1900
    return-void

    .line 1889
    :sswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v0

    .line 1890
    .local v0, "currPosition":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoLength:I

    .line 1891
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_currentTime:Landroid/widget/TextView;

    div-int/lit16 v2, v0, 0x3e8

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    .line 1892
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_totalTime:Landroid/widget/TextView;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoLength:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    .line 1893
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->seekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoLength:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1894
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->seekBar:Landroid/widget/SeekBar;

    div-int/lit16 v2, v0, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1895
    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 1896
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1897
    return-void

    .line 1876
    .end local v0    # "currPosition":I
    :sswitch_6
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ClientID:I

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->MaxClientID:I

    if-ge v0, v3, :cond_2

    .line 1877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Client:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ClientID:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 1879
    :cond_2
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Auto_Source:I

    if-ne v0, v2, :cond_3

    .line 1881
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Switchsource(I)V

    goto :goto_1

    .line 1884
    :cond_3
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Switchsource(I)V

    .line 1887
    :goto_1
    return-void

    .line 1929
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

    .line 2940
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2941
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2942
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2944
    :cond_0
    return-void
.end method

.method private rewind(I)V
    .locals 7
    .param p1, "postion"    # I

    .line 2253
    sget-object v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    .line 2254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isSwitch:Z

    .line 2255
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2256
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2257
    const/4 v1, 0x0

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 2258
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    .line 2259
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v2, v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2261
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->stopPlayback()V

    .line 2262
    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    sub-int/2addr v2, p1

    if-gez v2, :cond_0

    .line 2263
    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->splitCount:I

    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 2264
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->splitCount:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    goto :goto_0

    .line 2266
    :cond_0
    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 2267
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    .line 2278
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6e90:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2279
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2282
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Client:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    .line 2284
    return-void
.end method

.method private selectScales(I)V
    .locals 2
    .param p1, "paramInt"    # I

    .line 2667
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    .line 2669
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2692
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    goto :goto_0

    .line 2688
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 2689
    goto :goto_0

    .line 2684
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 2685
    goto :goto_0

    .line 2680
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 2681
    goto :goto_0

    .line 2676
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 2677
    goto :goto_0

    .line 2672
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 2673
    nop

    .line 2696
    :cond_0
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

.method private setDecode()V
    .locals 3

    .line 1153
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mIsHwDecode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mIsHwDecode:Z

    .line 1155
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->jmposition:I

    .line 1156
    return-void

    .line 1158
    :cond_0
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mIsHwDecode:Z

    .line 1159
    sput v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->jmposition:I

    .line 1160
    return-void
.end method

.method private setvvListener()V
    .locals 2

    .line 1641
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$21;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$21;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnPlayingBufferCacheListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 1656
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 1681
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 1707
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 1758
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$25;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$25;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 1778
    return-void
.end method

.method private showController()V
    .locals 4

    .line 1790
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    .line 1791
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_time:Landroid/widget/TextView;

    const-string v1, ":"

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getStringTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1792
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    sget v1, Lcom/shenma/tvlauncher/R$style;->AnimationTimeFade:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1793
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1794
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controler:Landroid/widget/PopupWindow;

    sget v1, Lcom/shenma/tvlauncher/R$style;->AnimationFade:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1795
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controler:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1796
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->screenWidth:I

    sget v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlHeight:I

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1797
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controler:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->screenWidth:I

    sget v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlHeight:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1798
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isControllerShow:Z

    .line 1799
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1801
    :cond_0
    return-void
.end method

.method private showMenu()V
    .locals 5

    .line 1825
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1826
    new-instance v0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/LivePlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v2

    iget-boolean v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuItemShow:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x6

    invoke-direct {v0, p0, v2, v4, v3}, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->vmAdapter:Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    .line 1827
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulist:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->vmAdapter:Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1828
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    sget v2, Lcom/shenma/tvlauncher/R$style;->AnimationMenu:I

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1829
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/16 v3, 0x35

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1830
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$dimen;->sm_364:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->screenHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuShow:Z

    .line 1832
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuItemShow:Z

    .line 1833
    return-void

    .line 1835
    :cond_0
    sget v0, Lcom/shenma/tvlauncher/R$string;->incomplete:I

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1836
    return-void
.end method

.method private showMenus()V
    .locals 9

    .line 1840
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1843
    new-instance v0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfos:Ljava/util/List;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->vmAdapters:Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    .line 1844
    new-instance v0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->vmAdapterss:Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    .line 1845
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulists:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->vmAdapters:Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1846
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulists:Landroid/widget/ListView;

    sget v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsposition:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1847
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulistss:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->vmAdapterss:Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1848
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulistss:Landroid/widget/ListView;

    sget v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1849
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulistss:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 1850
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/16 v3, 0x33

    invoke-virtual {v0, v2, v3, v7, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1851
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$dimen;->sm_683:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->screenHeight:I

    invoke-virtual {v0, v7, v7, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1852
    return-void

    .line 1854
    :cond_0
    sget v0, Lcom/shenma/tvlauncher/R$string;->incomplete:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1855
    return-void
.end method

.method private showVolumeToast(IIILjava/lang/Boolean;)V
    .locals 6
    .param p1, "resId"    # I
    .param p2, "max"    # I
    .param p3, "current"    # I
    .param p4, "isVolume"    # Ljava/lang/Boolean;

    .line 2825
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2826
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p3, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 2828
    :cond_0
    invoke-static {p0, p3}, Lcom/shenma/tvlauncher/utils/Utils;->SetLightness(Landroid/app/Activity;I)V

    .line 2833
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 2834
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mToast:Landroid/widget/Toast;

    .line 2835
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/shenma/tvlauncher/R$layout;->mv_media_volume_controler:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2836
    .local v0, "view":Landroid/view/View;
    sget v2, Lcom/shenma/tvlauncher/R$id;->center_image:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2837
    .local v2, "center_image":Landroid/widget/ImageView;
    sget v3, Lcom/shenma/tvlauncher/R$id;->center_progress:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 2838
    .local v3, "center_progress":Landroid/widget/ProgressBar;
    invoke-virtual {v3, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 2839
    invoke-virtual {v3, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2840
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2841
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 2843
    .end local v0    # "view":Landroid/view/View;
    .end local v2    # "center_image":Landroid/widget/ImageView;
    .end local v3    # "center_progress":Landroid/widget/ProgressBar;
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 2844
    .restart local v0    # "view":Landroid/view/View;
    sget v2, Lcom/shenma/tvlauncher/R$id;->center_image:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2845
    .restart local v2    # "center_image":Landroid/widget/ImageView;
    sget v3, Lcom/shenma/tvlauncher/R$id;->center_progress:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 2846
    .restart local v3    # "center_progress":Landroid/widget/ProgressBar;
    invoke-virtual {v3, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 2847
    invoke-virtual {v3, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2848
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2850
    :goto_1
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mToast:Landroid/widget/Toast;

    const/16 v5, 0x11

    invoke-virtual {v4, v5, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 2851
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 2852
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2853
    return-void
.end method

.method private startSpeed()V
    .locals 4

    .line 2857
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnabless:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2858
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2859
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastRxByte:J

    .line 2860
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastSpeedTime:J

    .line 2861
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2862
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_speed:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2865
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->epg:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2866
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_epg1:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 2867
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->epg:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 2868
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_epg2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2879
    :cond_1
    :goto_0
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->switchs:I

    if-ne v0, v2, :cond_2

    .line 2880
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_forfend:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2882
    :cond_2
    return-void
.end method

.method private stopPlayback()V
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 877
    :cond_0
    return-void
.end method

.method private switchCode()V
    .locals 4

    .line 2909
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mIsHwDecode"

    const/4 v2, 0x1

    .line 2918
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2909
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2910
    .local v0, "Decode":I
    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    .line 2911
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mIsHwDecode:Z

    .line 2912
    sput v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->jmposition:I

    goto :goto_0

    .line 2914
    :cond_0
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mIsHwDecode:Z

    .line 2915
    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->jmposition:I

    .line 2917
    :goto_0
    if-ne v0, v2, :cond_1

    .line 2918
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1, v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 2919
    :cond_1
    if-nez v0, :cond_2

    .line 2920
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    .line 2922
    :cond_2
    :goto_1
    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isPause:Ljava/lang/Boolean;

    .line 2923
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->resume()V

    .line 2924
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 2925
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2926
    return-void
.end method

.method private updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V
    .locals 7
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "second"    # I

    .line 1933
    rem-int/lit16 v0, p2, 0xe10

    div-int/lit8 v0, v0, 0x3c

    .line 1934
    .local v0, "mm":I
    rem-int/lit8 v1, p2, 0x3c

    .line 1935
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

    .line 1936
    return-void
.end method

.method private updateprogress()V
    .locals 2

    .line 3072
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Navigation_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3073
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Navigation()V

    .line 3075
    :cond_0
    return-void
.end method

.method private vodlogoloadImg()V
    .locals 2

    .line 3011
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_logo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3012
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->logo_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_logo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 3013
    return-void
.end method


# virtual methods
.method public Navigation()V
    .locals 2

    .line 3079
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 3080
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1002

    .line 3081
    .local v1, "uiOptions":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3082
    return-void
.end method

.method public VodGongGaoError(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 3050
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 3051
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3054
    :cond_0
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_1

    .line 3055
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3058
    :cond_1
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_2

    .line 3059
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3062
    :cond_2
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_3

    .line 3063
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3067
    :cond_3
    return-void
.end method

.method public VodGongGaoResponse(Ljava/lang/String;)V
    .locals 11
    .param p1, "response"    # Ljava/lang/String;

    .line 3017
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3018
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3019
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3020
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3023
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3024
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 3025
    .local v5, "code":I
    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3026
    .local v6, "msg":Ljava/lang/String;
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_3

    .line 3027
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3028
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3029
    .local v7, "miType":I
    const-string v9, "UTF-8"

    if-ne v7, v8, :cond_0

    .line 3030
    :try_start_1
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-static {v6, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3031
    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 3032
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-static {v6, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3033
    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 3034
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-static {v3, v6, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3036
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v9, 0x24

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3038
    nop

    .end local v7    # "miType":I
    goto :goto_1

    .line 3039
    :cond_3
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3044
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 3042
    :catch_0
    move-exception v4

    .line 3043
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 3045
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public analysisUrlError(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 1513
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    .line 1514
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Maxtimeout:I

    .line 1520
    :cond_0
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_1

    .line 1521
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Maxtimeout:I

    .line 1527
    :cond_1
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_2

    .line 1528
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Maxtimeout:I

    .line 1534
    :cond_2
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_3

    .line 1535
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Maxtimeout:I

    .line 1542
    :cond_3
    return-void
.end method

.method public analysisUrlResponse(Ljava/lang/String;)V
    .locals 12
    .param p1, "response"    # Ljava/lang/String;

    .line 1389
    const-string v0, "IJK"

    const-string v1, "Safe"

    const-string v2, "Core"

    const-string v3, "referer"

    const-string v4, "Referer"

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1390
    .local v5, "jSONObject":Lorg/json/JSONObject;
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1391
    .local v6, "code":I
    const-string v7, "encrypt"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 1392
    .local v7, "encrypt":I
    const/16 v8, 0xc8

    const/4 v9, 0x1

    if-ne v6, v8, :cond_13

    .line 1393
    const-string v8, "data"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1394
    .local v8, "data":Lorg/json/JSONObject;
    const-string v10, "header"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 1395
    .local v10, "header":Lorg/json/JSONObject;
    const-string v11, "User-Agent"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->userAgent:Ljava/lang/String;

    .line 1396
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1397
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Referer:Ljava/lang/String;

    .line 1399
    :cond_0
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1400
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Referer:Ljava/lang/String;

    .line 1402
    :cond_1
    const-string/jumbo v3, "url"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1403
    .local v3, "url":Ljava/lang/String;
    const-string v4, "ClientID"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ClientID:I

    .line 1404
    const-string v4, "MaxClientID"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->MaxClientID:I

    .line 1405
    const-string v4, "Maxtimeout"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Maxtimeout:I

    .line 1406
    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Maxtimeout:I

    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->timeout:I

    .line 1407
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1408
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->core:I

    .line 1410
    :cond_2
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1411
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->safe_mode:I

    .line 1413
    :cond_3
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->core_mode:I

    if-ne v1, v9, :cond_b

    .line 1416
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->core:I

    const/4 v2, 0x2

    const/16 v4, 0x63

    if-eq v1, v4, :cond_6

    .line 1418
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->safe_mode:I

    if-ne v0, v9, :cond_4

    .line 1419
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->core:I

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_0

    .line 1423
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_5

    .line 1424
    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->core:I

    .line 1437
    sput v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_0

    .line 1439
    :cond_5
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->core:I

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_0

    .line 1445
    :cond_6
    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->core:I

    .line 1446
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->vy:Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1447
    .local v1, "live_core":Ljava/lang/String;
    const-string/jumbo v4, "\u81ea\u52a8"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1448
    const/4 v0, 0x0

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_0

    .line 1449
    :cond_7
    const-string/jumbo v4, "\u7cfb\u7edf"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1450
    sput v9, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_0

    .line 1451
    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1452
    sput v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_0

    .line 1453
    :cond_9
    const-string v0, "EXO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1454
    const/4 v0, 0x3

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_0

    .line 1455
    :cond_a
    const-string/jumbo v0, "\u963f\u91cc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1456
    const/4 v0, 0x4

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    .line 1461
    .end local v1    # "live_core":Ljava/lang/String;
    :cond_b
    :goto_0
    const-string v0, "Type"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Type:I

    .line 1462
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setUserAgent(Ljava/lang/String;)V

    .line 1463
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Referer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setReferer(Ljava/lang/String;)V

    .line 1464
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->headers:Ljava/util/Map;

    .line 1465
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1466
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1467
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1468
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1469
    .local v2, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->headers:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    nop

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 1473
    :cond_c
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Type:I

    if-nez v1, :cond_12

    .line 1474
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->webView:Landroid/webkit/WebView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1476
    const-string v1, ""

    if-ne v7, v9, :cond_f

    .line 1477
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1479
    sget-object v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Failed:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1480
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decryptBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->headers:Ljava/util/Map;

    invoke-virtual {v2, v1, v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 1482
    :cond_d
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    sget-object v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Failed:Ljava/lang/String;

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2, v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    .line 1484
    :goto_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

    invoke-virtual {v1, v9}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 1486
    :cond_e
    iput v9, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->timeout:I

    goto :goto_4

    .line 1489
    :cond_f
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1491
    sget-object v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Failed:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1492
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2, v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 1494
    :cond_10
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    sget-object v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Failed:Ljava/lang/String;

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2, v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    .line 1496
    :goto_3
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

    invoke-virtual {v1, v9}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 1498
    :cond_11
    iput v9, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->timeout:I

    .line 1502
    .end local v0    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "url":Ljava/lang/String;
    .end local v8    # "data":Lorg/json/JSONObject;
    .end local v10    # "header":Lorg/json/JSONObject;
    :cond_12
    :goto_4
    goto :goto_5

    .line 1503
    :cond_13
    iput v9, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->timeout:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1507
    .end local v5    # "jSONObject":Lorg/json/JSONObject;
    .end local v6    # "code":I
    .end local v7    # "encrypt":I
    :goto_5
    goto :goto_6

    .line 1505
    :catch_0
    move-exception v0

    .line 1506
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1508
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_6
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1956
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1957
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isBack:Z

    if-eqz v0, :cond_0

    .line 1958
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideControllerDelay()V

    .line 1959
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 1960
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1961
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isBack:Z

    .line 1963
    :cond_0
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1965
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1967
    .local v0, "keyCode":I
    const/16 v3, 0x11

    const/16 v4, 0x18

    const/4 v5, 0x3

    const-wide/16 v6, 0xbb8

    const-wide/16 v8, 0x3e8

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    .line 2208
    :sswitch_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideController()V

    .line 2209
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showMenu()V

    .line 2210
    goto/16 :goto_3

    .line 2216
    :sswitch_1
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideController()V

    .line 2217
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showMenus()V

    goto/16 :goto_3

    .line 2212
    :sswitch_2
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideController()V

    .line 2213
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showMenus()V

    .line 2214
    goto/16 :goto_3

    .line 2189
    :sswitch_3
    const/16 v1, 0x16

    if-ne v0, v1, :cond_3

    .line 2190
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    if-nez v1, :cond_2

    .line 2191
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    .line 2192
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2198
    nop

    .line 2202
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->fastForward(I)V

    .line 2204
    :cond_2
    return v2

    .line 2206
    :cond_3
    invoke-super {p0, v0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2160
    :sswitch_4
    const/16 v1, 0x15

    if-ne v0, v1, :cond_5

    .line 2161
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    if-nez v1, :cond_4

    .line 2162
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    .line 2163
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$28;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$28;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2169
    nop

    .line 2173
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->rewind(I)V

    .line 2175
    :cond_4
    return v2

    .line 2177
    :cond_5
    invoke-super {p0, v0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2100
    :sswitch_5
    const/16 v6, 0x14

    if-ne v0, v6, :cond_d

    .line 2101
    iget-boolean v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    if-nez v6, :cond_c

    .line 2102
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    .line 2103
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$27;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$27;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2109
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->KEYCODE_DPAD_UP:Z

    .line 2110
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->KEYCODE_DPAD_DOWN:Z

    .line 2111
    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playPreCode:I

    if-eqz v6, :cond_6

    .line 2112
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, -0x1

    invoke-virtual {v1, v5, v3, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 2113
    return v2

    .line 2115
    :cond_6
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    sget-object v6, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    if-eq v5, v6, :cond_b

    .line 2116
    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->reverse:I

    if-nez v5, :cond_8

    .line 2117
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    add-int/2addr v6, v2

    if-gt v5, v6, :cond_7

    .line 2118
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    goto :goto_0

    .line 2120
    :cond_7
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    goto :goto_0

    .line 2123
    :cond_8
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    if-gtz v1, :cond_9

    .line 2124
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    goto :goto_0

    .line 2126
    :cond_9
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    .line 2129
    :goto_0
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 2132
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v1, v5, :cond_a

    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    add-int/2addr v1, v2

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfos:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    add-int/2addr v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v5, v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v1, v5, :cond_a

    .line 2133
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    .line 2134
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsposition:I

    .line 2140
    :cond_a
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SelecteVod(I)V

    .line 2141
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2143
    :cond_b
    nop

    .line 2146
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2148
    :cond_c
    return v2

    .line 2150
    :cond_d
    invoke-super {p0, v0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2025
    :sswitch_6
    const/16 v6, 0x13

    if-ne v0, v6, :cond_15

    .line 2026
    iget-boolean v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    if-nez v6, :cond_14

    .line 2027
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    .line 2028
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$26;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$26;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2034
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->KEYCODE_DPAD_UP:Z

    .line 2035
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->KEYCODE_DPAD_DOWN:Z

    .line 2036
    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playPreCode:I

    if-eqz v6, :cond_e

    .line 2037
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5, v2, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 2038
    return v2

    .line 2040
    :cond_e
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    sget-object v6, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    if-eq v5, v6, :cond_13

    .line 2041
    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->reverse:I

    if-nez v5, :cond_10

    .line 2042
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    if-gtz v1, :cond_f

    .line 2043
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    goto :goto_1

    .line 2045
    :cond_f
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    goto :goto_1

    .line 2048
    :cond_10
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    add-int/2addr v6, v2

    if-gt v5, v6, :cond_11

    .line 2049
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    goto :goto_1

    .line 2051
    :cond_11
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    .line 2054
    :goto_1
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 2058
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    add-int/lit8 v1, v1, 0x2

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfos:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v5, v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gt v1, v5, :cond_12

    .line 2059
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    .line 2060
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsposition:I

    .line 2063
    :cond_12
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SelecteVod(I)V

    .line 2064
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2066
    :cond_13
    nop

    .line 2069
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2071
    :cond_14
    return v2

    .line 2073
    :cond_15
    invoke-super {p0, v0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1978
    :sswitch_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->initMessage(I)V

    .line 1979
    goto :goto_3

    .line 1981
    :sswitch_8
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideController()V

    .line 1982
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1983
    .local v3, "secondTime":J
    iget-wide v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->firstTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x7d0

    cmp-long v9, v5, v7

    if-gtz v9, :cond_17

    .line 1985
    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->memory_channel:I

    const-string v6, "LIVEs"

    if-ne v5, v2, :cond_16

    .line 1986
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-static {p0, v6, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1987
    const-string v1, "gsLIVEs"

    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    invoke-static {p0, v1, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 1989
    :cond_16
    invoke-static {p0, v6, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1991
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 1992
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->stopPlayback()V

    .line 1993
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->finish()V

    .line 1994
    goto :goto_3

    .line 1996
    :cond_17
    sget v1, Lcom/shenma/tvlauncher/R$string;->onbackpressed:I

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {p0, v1, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1997
    iput-wide v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->firstTime:J

    .line 1998
    return v2

    .line 2220
    .end local v3    # "secondTime":J
    :goto_3
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_8
        0x7 -> :sswitch_7
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0xa -> :sswitch_7
        0xb -> :sswitch_7
        0xc -> :sswitch_7
        0xd -> :sswitch_7
        0xe -> :sswitch_7
        0xf -> :sswitch_7
        0x10 -> :sswitch_7
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

    .line 1176
    sget v0, Lcom/shenma/tvlauncher/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->webView:Landroid/webkit/WebView;

    .line 1177
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_logo:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_logo:Landroid/widget/ImageView;

    .line 1178
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_notice_root:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    .line 1179
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_notice:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    .line 1180
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlView:Landroid/view/View;

    sget v1, Lcom/shenma/tvlauncher/R$id;->seekbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->seekBar:Landroid/widget/SeekBar;

    .line 1181
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlView:Landroid/view/View;

    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_currentTime:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_currentTime:Landroid/widget/TextView;

    .line 1182
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlView:Landroid/view/View;

    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_totalTime:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_totalTime:Landroid/widget/TextView;

    .line 1183
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlView:Landroid/view/View;

    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_menu:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_menu:Landroid/widget/TextView;

    .line 1184
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlView:Landroid/view/View;

    sget v1, Lcom/shenma/tvlauncher/R$id;->ib_playStatus:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ib_playStatus:Landroid/widget/ImageButton;

    .line 1185
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ib_playStatus:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1186
    sget v0, Lcom/shenma/tvlauncher/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mProgressBar:Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    .line 1187
    sget v0, Lcom/shenma/tvlauncher/R$id;->ll_epg1:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_epg1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1188
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_channelname1:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelname1:Landroid/widget/TextView;

    .line 1189
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_srcinfo1:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    .line 1190
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_channelnum1:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelnum1:Landroid/widget/TextView;

    .line 1192
    sget v0, Lcom/shenma/tvlauncher/R$id;->ll_epg2:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_epg2:Landroid/widget/LinearLayout;

    .line 1193
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_channelname2:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelname2:Landroid/widget/TextView;

    .line 1194
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_srcinfo2:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    .line 1195
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_channelnum2:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelnum2:Landroid/widget/TextView;

    .line 1196
    sget v0, Lcom/shenma/tvlauncher/R$id;->program_num:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mProgramNum:Landroid/widget/TextView;

    .line 1197
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_netspeedinfo:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_netspeedinfo:Landroid/widget/TextView;

    .line 1203
    sget v0, Lcom/shenma/tvlauncher/R$id;->ll_forfend:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_forfend:Landroid/widget/LinearLayout;

    .line 1204
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_progress_time:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_progress_time:Landroid/widget/TextView;

    .line 1205
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_mv_speed:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_speed:Landroid/widget/TextView;

    .line 1206
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->time_controlView:Landroid/view/View;

    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_time:Landroid/widget/TextView;

    .line 1207
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->time_controlView:Landroid/view/View;

    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_mv_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    .line 1208
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mProgressBar:Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setVisibility(I)V

    .line 1220
    const/4 v0, 0x0

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    .line 1221
    const-string v0, "libijkplayer.so"

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    .line 1222
    sget v0, Lcom/shenma/tvlauncher/R$id;->i_video_view:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 1223
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    sget v1, Lcom/shenma/tvlauncher/R$id;->hubview:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setHudView(Landroid/widget/TableLayout;)V

    .line 1224
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mIsHwDecode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1226
    .local v0, "Decode":I
    if-ne v0, v2, :cond_0

    .line 1227
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1228
    :cond_0
    if-nez v0, :cond_1

    .line 1229
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    .line 1231
    :cond_1
    :goto_0
    return-void
.end method

.method protected getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V
    .locals 8
    .param p1, "reqVo"    # Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    .line 895
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 896
    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$9;

    iget-object v4, p1, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    const-class v5, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;

    .line 897
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->createVodDataSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v6

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v7

    const/4 v3, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$9;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 920
    .local v1, "mVodData":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;>;"
    iget-object v0, v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 921
    return-void
.end method

.method public initView()V
    .locals 9

    .line 1108
    const-string/jumbo v0, "shenma"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    .line 1109
    const-string v0, "live"

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SP:Landroid/content/SharedPreferences;

    .line 1110
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1111
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v3, "\u5168\u5c4f\u62c9\u4f38"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1112
    .local v0, "playratio":Ljava/lang/String;
    const-string/jumbo v2, "\u539f\u59cb\u6bd4\u4f8b"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    .line 1113
    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    goto :goto_0

    .line 1114
    :cond_0
    const-string v2, "4:3 \u7f29\u653e"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1115
    sput v7, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    goto :goto_0

    .line 1116
    :cond_1
    const-string v2, "16:9\u7f29\u653e"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1117
    sput v6, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    goto :goto_0

    .line 1118
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1119
    sput v5, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    goto :goto_0

    .line 1120
    :cond_3
    const-string/jumbo v2, "\u7b49\u6bd4\u7f29\u653e"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1121
    sput v4, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    goto :goto_0

    .line 1122
    :cond_4
    const-string/jumbo v2, "\u5168\u5c4f\u88c1\u526a"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1123
    const/4 v2, 0x5

    sput v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    .line 1125
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, "live_core"

    const-string/jumbo v8, "\u81ea\u52a8"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1126
    .local v2, "live_core":Ljava/lang/String;
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1127
    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_1

    .line 1128
    :cond_6
    const-string/jumbo v3, "\u7cfb\u7edf"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1129
    sput v7, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_1

    .line 1130
    :cond_7
    const-string v3, "IJK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1131
    sput v6, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_1

    .line 1132
    :cond_8
    const-string v3, "EXO"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1133
    sput v5, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_1

    .line 1134
    :cond_9
    const-string/jumbo v3, "\u963f\u91cc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1135
    sput v4, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    .line 1137
    :cond_a
    :goto_1
    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->qlposition:I

    .line 1138
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setDecode()V

    .line 1139
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getPlayPreferences()V

    .line 1140
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getScreenSize()V

    .line 1141
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->loadViewLayout()V

    .line 1142
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById()V

    .line 1143
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setListener()V

    .line 1144
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setvvListener()V

    .line 1146
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "event handler thread"

    const/16 v4, 0xa

    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1147
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1148
    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

    .line 1149
    return-void
.end method

.method public loadViewLayout()V
    .locals 3

    .line 1235
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$layout;->mv_media_controlers:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlView:Landroid/view/View;

    .line 1236
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controler:Landroid/widget/PopupWindow;

    .line 1237
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$layout;->mv_media_time_controler:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->time_controlView:Landroid/view/View;

    .line 1238
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->time_controlView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    .line 1239
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 2816
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/shenma/tvlauncher/R$id;->ib_playStatus:I

    if-ne v0, v1, :cond_0

    .line 2817
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isControllerShow:Z

    if-nez v0, :cond_0

    .line 2818
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showController()V

    .line 2821
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 467
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 470
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->requestWindowFeature(I)Z

    .line 471
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 475
    sget v1, Lcom/shenma/tvlauncher/R$layout;->mv_videoplayer:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setContentView(I)V

    .line 479
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 480
    .local v1, "decorView":Landroid/view/View;
    const/16 v2, 0x1006

    .line 483
    .local v2, "uiOptions":I
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 485
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 490
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_1

    .line 491
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v3

    .line 492
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    or-int/2addr v4, v5

    .line 491
    invoke-interface {v3, v4}, Landroid/view/WindowInsetsController;->hide(I)V

    goto :goto_0

    .line 496
    :cond_1
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x1006

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 504
    :goto_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 505
    new-instance v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$3;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$3;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 522
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->stopAutoBrightness(Landroid/app/Activity;)V

    .line 523
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Navigation_mode:I

    if-ne v3, v0, :cond_2

    .line 524
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Navigation()V

    .line 527
    :cond_2
    const-string v3, "LIVE"

    invoke-static {p0, v3, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 528
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->initView()V

    .line 529
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->initData()V

    .line 531
    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$4;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$4;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->pauseVideoReceiver:Landroid/content/BroadcastReceiver;

    .line 549
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->pauseVideoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.example.MY_ACTION_FINISH_LIVE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 550
    return-void
.end method

.method public onCreateMenu()V
    .locals 3

    .line 2295
    sget v0, Lcom/shenma/tvlauncher/R$layout;->mv_controler_menu:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2296
    .local v0, "menuView":Landroid/view/View;
    sget v1, Lcom/shenma/tvlauncher/R$id;->media_controler_menu:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulist:Landroid/widget/ListView;

    .line 2297
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    .line 2298
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2299
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 2300
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2302
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2505
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$31;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$31;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2527
    return-void
.end method

.method public onCreateMenus()V
    .locals 3

    .line 2531
    sget v0, Lcom/shenma/tvlauncher/R$layout;->mv_controler_menus:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2532
    .local v0, "menuView":Landroid/view/View;
    sget v1, Lcom/shenma/tvlauncher/R$id;->media_controler_menu_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulists:Landroid/widget/ListView;

    .line 2533
    sget v1, Lcom/shenma/tvlauncher/R$id;->media_controler_menu_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulistss:Landroid/widget/ListView;

    .line 2534
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    .line 2535
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2536
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 2537
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2539
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulists:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$32;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$32;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2555
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulists:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2577
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulistss:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$34;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$34;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2643
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulistss:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$35;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$35;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2663
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 554
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 555
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 556
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->stopPlayback()V

    .line 557
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnables:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 559
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnabless:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 563
    :cond_0
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->startAutoBrightness(Landroid/app/Activity;)V

    .line 564
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->overridePendingTransition(II)V

    .line 565
    const-string v0, "LivePlayerActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->pauseVideoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 568
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->pauseVideoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 570
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 735
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onPause()V

    .line 736
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause...mPlayerStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LivePlayerActivity"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-static {v1}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 739
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 740
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->releaseWakeLock()V

    .line 741
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->pause()V

    .line 743
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 744
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 745
    sget-object v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_BACKSTAGE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    .line 747
    :cond_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideController()V

    .line 748
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 749
    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 586
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideMenu()V

    .line 587
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 588
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onResume()V

    .line 589
    const-string v0, "LivePlayerActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 590
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 591
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 592
    .local v1, "m_value":Ljava/util/Map;
    const-string v2, "VOD_PLAY"

    invoke-static {p0, v2, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 593
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume...mPlayerStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->acquireWakeLock()V

    .line 598
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 599
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "event handler thread"

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 600
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 601
    new-instance v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

    .line 605
    :cond_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mVideoSource:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v3, ""

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mVideoSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    sget-object v4, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    if-ne v3, v4, :cond_1

    .line 606
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    .line 607
    const-string v3, "onResume... \u53d1\u8d77\u64ad\u653e"

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_1
    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$5;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$5;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    .line 631
    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    .line 672
    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnables:Ljava/lang/Runnable;

    .line 695
    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$8;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$8;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnabless:Ljava/lang/Runnable;

    .line 718
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    sget-object v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_BACKSTAGE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    if-ne v0, v3, :cond_3

    .line 719
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 721
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    goto :goto_0

    .line 723
    :cond_2
    sget-object v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_PREPARED:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    .line 724
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 725
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 728
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mProgressBar:Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setProgress(I)V

    .line 729
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 731
    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 574
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStop()V

    .line 575
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 576
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 577
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 578
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 579
    const/4 v0, 0x0

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 580
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 581
    const-string v0, "LivePlayerActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2701
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2702
    .local v0, "result":Z
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2703
    .local v1, "screen":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2704
    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSurfaceYDisplayRange:I

    if-nez v2, :cond_0

    .line 2705
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSurfaceYDisplayRange:I

    .line 2707
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchY:F

    sub-float/2addr v2, v3

    .line 2708
    .local v2, "y_changed":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchX:F

    sub-float/2addr v3, v4

    .line 2710
    .local v3, "x_changed":F
    div-float v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2711
    .local v4, "coef":F
    iget v5, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v5, v3, v5

    const v6, 0x40228f5c    # 2.54f

    mul-float v5, v5, v6

    .line 2712
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

    .line 2713
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const-string v7, "LivePlayerActivity"

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 2725
    :pswitch_0
    const-string v6, "MotionEvent.ACTION_MOVE......."

    invoke-static {v7, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2726
    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v6, v4, v6

    if-lez v6, :cond_2

    .line 2727
    const/4 v6, 0x0

    .line 2729
    .local v6, "isSeekTouch":Z
    iget v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchX:F

    iget v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->screenWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 2731
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->doVolumeTouch(F)V

    .line 2733
    :cond_1
    iget v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchX:F

    iget v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->screenWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 2735
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->doBrightnessTouch(F)V

    goto :goto_0

    .line 2740
    .end local v6    # "isSeekTouch":Z
    :pswitch_1
    sget-object v6, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    .line 2771
    const-string v6, "MotionEvent.ACTION_UP......."

    invoke-static {v7, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2715
    :pswitch_2
    const-string v6, "MotionEvent.ACTION_DOWN......."

    invoke-static {v7, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    const/4 v6, 0x1

    .line 2717
    .restart local v6    # "isSeekTouch":Z
    const/4 v7, 0x0

    iput v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchAction:I

    .line 2718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchY:F

    .line 2719
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchX:F

    .line 2720
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v7

    iput v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->maxVolume:I

    .line 2721
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    iput v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->currentVolume:I

    .line 2722
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetLightness(Landroid/app/Activity;)F

    move-result v7

    iput v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Lightness:F

    .line 2723
    nop

    .line 2774
    .end local v6    # "isSeekTouch":Z
    :cond_2
    :goto_0
    const/4 v6, 0x1

    return v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setListener()V
    .locals 2

    .line 1546
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_menu:Landroid/widget/TextView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$18;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$18;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1554
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$19;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$19;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1615
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$20;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$20;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1636
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "Client"    # Ljava/lang/String;

    .line 1283
    const-string v0, "Submission_method"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1285
    .local v0, "Submission_method":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/?url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1287
    .local v1, "urlEncode":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->analysisUrl(Ljava/lang/String;I)V

    .line 1288
    return-void
.end method
