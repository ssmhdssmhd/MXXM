.class public Lcom/shenma/tvlauncher/tvback/TVBackActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "TVBackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/tvback/TVBackActivity$MenuType;,
        Lcom/shenma/tvlauncher/tvback/TVBackActivity$WindowMessageID;
    }
.end annotation


# static fields
.field private static final DURATION_TIME:I = 0x493e0

.field private static final POWER_LOCK:Ljava/lang/String; = "TVBackActivity"

.field private static final SCREEN_DEFAULT:I = 0x1

.field private static final SCREEN_FULL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TVBackActivity"

.field private static final TIME:I = 0x1770

.field private static final TOUCH_BRIGHTNESS:I = 0x2

.field private static final TOUCH_NONE:I = 0x0

.field private static final TOUCH_SEEK:I = 0x3

.field private static final TOUCH_VOLUME:I = 0x1

.field private static WD_Selector:[I

.field private static loadFlag:Z

.field private static mChannelDatelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mNowProgramlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mProgramlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mchannellist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static medialist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static rb:[Landroid/widget/RadioButton;

.field public static rbChecked:I


# instance fields
.field private ISCNTV:Z

.field private Lightness:F

.field private back_video_blck:Landroid/widget/ImageView;

.field private channelAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;

.field private controlHeight:I

.field private controlView:Landroid/view/View;

.field private controler:Landroid/widget/PopupWindow;

.field private currentVolume:I

.field private firstTime:J

.field private isControllerShow:Z

.field private isFull:Z

.field private isMenuItemShow:Z

.field private isOnline:Ljava/lang/Boolean;

.field private isProgress:Z

.field private lv_tv_back_channles:Landroid/widget/ListView;

.field private lv_tv_back_videos:Landroid/widget/ListView;

.field private mApp:Lcom/shenma/tvlauncher/application/MyApplication;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mPostion:I

.field private mProgramPostion:I

.field private mProgressHandler:Landroid/os/Handler;

.field private mSurfaceYDisplayRange:I

.field private mToast:Landroid/widget/Toast;

.field private mTouchAction:I

.field private mTouchX:F

.field private mTouchY:F

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private maxVolume:I

.field private menulist:Landroid/widget/ListView;

.field private menupopupWindow:Landroid/widget/PopupWindow;

.field pose:I

.field pose_start:I

.field private programAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

.field private rb_tv_back_rd_1:Landroid/widget/RadioButton;

.field private rb_tv_back_rd_2:Landroid/widget/RadioButton;

.field private rb_tv_back_rd_3:Landroid/widget/RadioButton;

.field private rb_tv_back_rd_4:Landroid/widget/RadioButton;

.field private rb_tv_back_rd_5:Landroid/widget/RadioButton;

.field private rb_tv_back_rd_6:Landroid/widget/RadioButton;

.field private rb_tv_back_rd_7:Landroid/widget/RadioButton;

.field private rl_ProgressBar:Landroid/widget/RelativeLayout;

.field private screenHeight:I

.field private screenWidth:I

.field private seekBar:Landroid/widget/SeekBar;

.field private tv_back_current_channel:Landroid/widget/TextView;

.field private tv_back_current_tv:Landroid/widget/TextView;

.field private tv_back_next_tv:Landroid/widget/TextView;

.field private tv_currentTime:Landroid/widget/TextView;

.field private tv_totalTime:Landroid/widget/TextView;

.field private tvbackname:Ljava/lang/String;

.field updateThread:Ljava/lang/Runnable;

.field private updateinfo:Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;

.field private videoLength:I

.field private vv:Lcom/shenma/tvlauncher/view/VideoView;

.field private weekdays:Landroid/widget/RadioGroup;


# direct methods
.method static bridge synthetic -$$Nest$fgetISCNTV(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->ISCNTV:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisControllerShow(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isControllerShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisFull(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlv_tv_back_videos(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_videos:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmApp(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/application/MyApplication;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mApp:Lcom/shenma/tvlauncher/application/MyApplication;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPostion(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mPostion:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgramPostion(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressHandler(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgressHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menulist:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmenupopupWindow(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogramAdapter(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->programAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetseekBar(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->seekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_back_current_channel(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_current_channel:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_back_current_tv(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_current_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_back_next_tv(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_next_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_currentTime(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_currentTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvbackname(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tvbackname:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateinfo(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateinfo:Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvv(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/view/VideoView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisOnline(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isOnline:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPostion(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mPostion:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProgramPostion(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputprogramAdapter(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->programAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtvbackname(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tvbackname:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputupdateinfo(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateinfo:Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelDelayHide(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->cancelDelayHide()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideController(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideController()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideControllerDelay(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideControllerDelay()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideMenu(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideMenu()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadDataFromXml(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadDataFromXml(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadMediaFromXml(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadMediaFromXml(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMessage(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->onMessage(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mseekBarUpdate(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->seekBarUpdate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetVideoScale(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setVideoScale(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowController(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showController()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowMenu(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showMenu()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmChannelDatelist()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmNowProgramlist()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmProgramlist()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmchannellist()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mchannellist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmedialist()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->medialist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetrb()[Landroid/widget/RadioButton;
    .locals 1

    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmChannelDatelist(Ljava/util/ArrayList;)V
    .locals 0

    sput-object p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmNowProgramlist(Ljava/util/ArrayList;)V
    .locals 0

    sput-object p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmProgramlist(Ljava/util/ArrayList;)V
    .locals 0

    sput-object p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramlist:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmchannellist(Ljava/util/ArrayList;)V
    .locals 0

    sput-object p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mchannellist:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmedialist(Ljava/util/ArrayList;)V
    .locals 0

    sput-object p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->medialist:Ljava/util/ArrayList;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadFlag:Z

    .line 95
    sget v1, Lcom/shenma/tvlauncher/R$drawable;->tv_back_monday_selector:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->tv_back_tuesday_selector:I

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->tv_back_wenesday_seletor:I

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->tv_back_thuresday_selector:I

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->tv_back_friday_selector:I

    sget v6, Lcom/shenma/tvlauncher/R$drawable;->tv_back_saturday_selector:I

    sget v7, Lcom/shenma/tvlauncher/R$drawable;->tv_back_sunday_selector:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->WD_Selector:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 76
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    .line 104
    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose_start:I

    .line 121
    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mPostion:I

    .line 122
    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    .line 123
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    .line 124
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isProgress:Z

    .line 128
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->firstTime:J

    .line 131
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isControllerShow:Z

    .line 132
    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controlHeight:I

    .line 135
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isOnline:Ljava/lang/Boolean;

    .line 137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateinfo:Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;

    .line 138
    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 140
    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 141
    const-string v2, ""

    iput-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tvbackname:Ljava/lang/String;

    .line 142
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgressHandler:Landroid/os/Handler;

    .line 145
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isMenuItemShow:Z

    .line 146
    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mToast:Landroid/widget/Toast;

    .line 153
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->ISCNTV:Z

    .line 154
    new-instance v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$1;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateThread:Ljava/lang/Runnable;

    .line 167
    new-instance v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$2;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$2;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 206
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 208
    .local v0, "pm":Landroid/os/PowerManager;
    nop

    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 208
    const v2, 0x2000000a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 211
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 213
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private cancelDelayHide()V
    .locals 2

    .line 1143
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1144
    return-void
.end method

.method private doBrightnessTouch(F)V
    .locals 6
    .param p1, "y_changed"    # F

    .line 1511
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchAction:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchAction:I

    if-eq v0, v1, :cond_0

    .line 1512
    return-void

    .line 1513
    :cond_0
    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchAction:I

    .line 1514
    neg-float v0, p1

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mSurfaceYDisplayRange:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    .line 1515
    .local v0, "delta":F
    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->Lightness:F

    add-float/2addr v1, v0

    const v2, 0x3c23d70a    # 0.01f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 1517
    .local v1, "vol":I
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    .line 1518
    const/4 v2, 0x5

    const/16 v3, 0xff

    const/4 v4, 0x0

    if-ge v1, v2, :cond_1

    .line 1519
    sget v2, Lcom/shenma/tvlauncher/R$drawable;->mv_ic_brightness:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 1521
    :cond_1
    sget v2, Lcom/shenma/tvlauncher/R$drawable;->mv_ic_brightness:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    .line 1523
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->Lightness:F

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

    iget v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mSurfaceYDisplayRange:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "doBrightnessTouch"

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    :cond_2
    return-void
.end method

.method private doVolumeTouch(F)V
    .locals 6
    .param p1, "y_changed"    # F

    .line 1482
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchAction:I

    const/4 v1, 0x1

    .line 1491
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1482
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchAction:I

    if-eq v0, v1, :cond_0

    .line 1483
    return-void

    .line 1484
    :cond_0
    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchAction:I

    .line 1485
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mSurfaceYDisplayRange:I

    int-to-float v0, v0

    div-float v0, p1, v0

    iget v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->maxVolume:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    float-to-int v0, v0

    neg-int v0, v0

    .line 1486
    .local v0, "delta":I
    iget v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->currentVolume:I

    add-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->maxVolume:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1487
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

    .line 1488
    if-eqz v0, :cond_3

    .line 1489
    if-ge v3, v1, :cond_1

    .line 1490
    sget v1, Lcom/shenma/tvlauncher/R$drawable;->mv_ic_volume_mute:I

    iget v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->maxVolume:I

    .line 1491
    nop

    .line 1490
    invoke-direct {p0, v1, v4, v3, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 1493
    :cond_1
    if-lt v3, v1, :cond_2

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->maxVolume:I

    div-int/lit8 v1, v1, 0x2

    if-ge v3, v1, :cond_2

    .line 1494
    sget v1, Lcom/shenma/tvlauncher/R$drawable;->mv_ic_volume_low:I

    iget v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->maxVolume:I

    .line 1495
    nop

    .line 1494
    invoke-direct {p0, v1, v4, v3, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 1498
    :cond_2
    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->maxVolume:I

    div-int/lit8 v1, v1, 0x2

    if-lt v3, v1, :cond_3

    .line 1499
    sget v1, Lcom/shenma/tvlauncher/R$drawable;->mv_ic_volume_high:I

    iget v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->maxVolume:I

    .line 1500
    nop

    .line 1499
    invoke-direct {p0, v1, v4, v3, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    .line 1505
    :cond_3
    :goto_0
    return-void
.end method

.method private fastForward()V
    .locals 2

    .line 1323
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->videoLength:I

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    sub-int/2addr v0, v1

    const/16 v1, 0x3a98

    if-le v0, v1, :cond_0

    .line 1324
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    goto :goto_0

    .line 1326
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->videoLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    .line 1328
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isProgress:Z

    .line 1329
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->cancelDelayHide()V

    .line 1330
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1331
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1332
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_currentTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->toTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1333
    return-void
.end method

.method private getScreenSize()V
    .locals 2

    .line 1192
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1193
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->screenHeight:I

    .line 1194
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->screenWidth:I

    .line 1195
    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->screenHeight:I

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controlHeight:I

    .line 1196
    return-void
.end method

.method private hideController()V
    .locals 1

    .line 1136
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controler:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isControllerShow:Z

    .line 1140
    :cond_0
    return-void
.end method

.method private hideControllerDelay()V
    .locals 4

    .line 1147
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->cancelDelayHide()V

    .line 1148
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1149
    return-void
.end method

.method private hideMenu()V
    .locals 1

    .line 1424
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1427
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 2

    .line 278
    sget v0, Lcom/shenma/tvlauncher/R$string;->load_msg:I

    invoke-static {p0, v0}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 279
    const/4 v0, 0x0

    sput-boolean v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadFlag:Z

    .line 280
    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadDataFromXml(Ljava/lang/String;I)V

    .line 281
    return-void
.end method

.method private loadDataFromXml(Ljava/lang/String;I)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "menuType"    # I

    .line 668
    const-string v0, "_loadDataFromXml() start"

    const-string v1, "TVBackActivity"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    move-object v0, p1

    .line 671
    .local v0, "encodeUrl":Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .end local v0    # "encodeUrl":Ljava/lang/String;
    .local v2, "encodeUrl":Ljava/lang/String;
    goto :goto_0

    .line 672
    .end local v2    # "encodeUrl":Ljava/lang/String;
    .restart local v0    # "encodeUrl":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 673
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 674
    move-object v0, p1

    move-object v2, v0

    .line 676
    .end local v0    # "encodeUrl":Ljava/lang/String;
    .local v2, "encodeUrl":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/shenma/tvlauncher/network/PullXmlParserThread;

    new-instance v3, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;

    invoke-direct {v3, p0, p2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)V

    const-wide/16 v4, 0x0

    invoke-direct {v0, v4, v5, v3, p1}, Lcom/shenma/tvlauncher/network/PullXmlParserThread;-><init>(JLcom/shenma/tvlauncher/network/PullXmlParserCallback;Ljava/lang/String;)V

    .line 829
    .local v0, "parser":Lcom/shenma/tvlauncher/network/PullXmlParserThread;
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/network/PullXmlParserThread;->start()Z

    .line 831
    const-string v3, "_loadDataFromXml() end"

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method private loadMainUI()V
    .locals 0

    .line 255
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->initView()V

    .line 256
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->initData()V

    .line 257
    return-void
.end method

.method private loadMediaFromXml(Ljava/lang/String;I)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "menuType"    # I

    .line 908
    move-object v0, p1

    .line 909
    .local v0, "encodeUrl":Ljava/lang/String;
    new-instance v1, Lcom/shenma/tvlauncher/network/PullXmlParserThread;

    new-instance v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;

    invoke-direct {v2, p0, p2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)V

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4, v2, p1}, Lcom/shenma/tvlauncher/network/PullXmlParserThread;-><init>(JLcom/shenma/tvlauncher/network/PullXmlParserCallback;Ljava/lang/String;)V

    .line 993
    .local v1, "parser":Lcom/shenma/tvlauncher/network/PullXmlParserThread;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/network/PullXmlParserThread;->start()Z

    .line 995
    return-void
.end method

.method private onMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1035
    const-string v0, "TVBackActivity"

    if-eqz p1, :cond_4

    .line 1036
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1115
    :pswitch_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rl_ProgressBar:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1116
    goto/16 :goto_0

    .line 1111
    :pswitch_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rl_ProgressBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1113
    goto/16 :goto_0

    .line 1108
    :pswitch_3
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideController()V

    .line 1109
    goto/16 :goto_0

    .line 1087
    :pswitch_4
    iput-boolean v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->ISCNTV:Z

    .line 1088
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->medialist:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->medialist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1089
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->ISCNTV:Z

    .line 1090
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->medialist:Ljava/util/ArrayList;

    iget v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mPostion:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;->getMediaurl()Ljava/lang/String;

    move-result-object v1

    .line 1091
    .local v1, "mediaurl":Ljava/lang/String;
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v2, v1}, Lcom/shenma/tvlauncher/view/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 1092
    .end local v1    # "mediaurl":Ljava/lang/String;
    goto/16 :goto_0

    :cond_0
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    add-int/2addr v3, v2

    if-le v1, v3, :cond_1

    .line 1093
    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    .line 1094
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    iget v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 1095
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramUrl()Ljava/lang/String;

    move-result-object v1

    .line 1094
    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadMediaFromXml(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1097
    :cond_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/VideoView;->stopPlayback()V

    .line 1099
    goto/16 :goto_0

    .line 1080
    :pswitch_5
    new-instance v1, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    sget-object v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramlist:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->programAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    .line 1082
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_videos:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->programAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1083
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 1084
    goto/16 :goto_0

    .line 1101
    :pswitch_6
    sget v1, Lcom/shenma/tvlauncher/R$string;->tvback_str_data_loading_error:I

    .line 1102
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1101
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1103
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1104
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 1105
    goto/16 :goto_0

    .line 1067
    :pswitch_7
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mApp:Lcom/shenma/tvlauncher/application/MyApplication;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    iget v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    .line 1068
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    iget v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    .line 1069
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1067
    invoke-virtual {v1, v4}, Lcom/shenma/tvlauncher/application/MyApplication;->setOnPlay(Ljava/lang/String;)V

    .line 1070
    new-instance v1, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    sget-object v4, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4}, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->programAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    .line 1072
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_videos:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->programAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1073
    sget-boolean v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadFlag:Z

    if-nez v1, :cond_2

    .line 1074
    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->notifyData(I)V

    .line 1076
    :cond_2
    sput-boolean v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadFlag:Z

    .line 1077
    goto/16 :goto_0

    .line 1055
    :pswitch_8
    new-instance v1, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;

    sget-object v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mchannellist:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->channelAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;

    .line 1057
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_channles:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->channelAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1058
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mchannellist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1059
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mchannellist:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;->getChanneUrl()Ljava/lang/String;

    move-result-object v1

    .line 1060
    .local v1, "dataUrl":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mchannellist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;->getChanneName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tvbackname:Ljava/lang/String;

    .line 1061
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_current_channel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tvbackname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadDataFromXml(Ljava/lang/String;I)V

    .line 1063
    .end local v1    # "dataUrl":Ljava/lang/String;
    goto :goto_0

    .line 1039
    :pswitch_9
    const-string v1, ""

    .line 1040
    .local v1, "programUrl":Ljava/lang/String;
    sget v2, Lcom/shenma/tvlauncher/R$string;->load_msg:I

    invoke-static {p0, v2}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 1041
    const-string/jumbo v2, "\u8bbe\u7f6e\u65e5\u671f\u5217\u8868....loadingShow_tv"

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadFlag:Z

    if-nez v2, :cond_3

    .line 1043
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setChannelDate()V

    .line 1044
    sget-object v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->getChannelDate_Url()Ljava/lang/String;

    move-result-object v1

    .line 1045
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadDataFromXml(Ljava/lang/String;I)V

    goto :goto_0

    .line 1047
    :cond_3
    sget-object v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    sget v3, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    .line 1048
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->getChannelDate_Url()Ljava/lang/String;

    move-result-object v1

    .line 1049
    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadDataFromXml(Ljava/lang/String;I)V

    .line 1052
    nop

    .line 1122
    .end local v1    # "programUrl":Ljava/lang/String;
    :cond_4
    :goto_0
    const-string v1, "_onMessage() end"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 220
    :cond_0
    return-void
.end method

.method private rewind()V
    .locals 2

    .line 1340
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    const/16 v1, 0x3a98

    if-le v0, v1, :cond_0

    .line 1341
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    goto :goto_0

    .line 1343
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    .line 1345
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isProgress:Z

    .line 1346
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->cancelDelayHide()V

    .line 1347
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1348
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1349
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_currentTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->toTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1350
    return-void
.end method

.method private seekBarUpdate()V
    .locals 2

    .line 1200
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isOnline:Ljava/lang/Boolean;

    .line 1201
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/VideoView;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->videoLength:I

    .line 1202
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->medialist:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->medialist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 1203
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->medialist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v1, 0x493e0

    mul-int v0, v0, v1

    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->videoLength:I

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->videoLength:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1206
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_totalTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->videoLength:I

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->toTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1207
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideControllerDelay()V

    .line 1208
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1209
    return-void
.end method

.method private setVideoScale(I)V
    .locals 5
    .param p1, "flag"    # I

    .line 1157
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1171
    :pswitch_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->back_video_blck:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1172
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->screenWidth:I

    iget v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->screenHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1174
    .local v1, "fl_def":Landroid/widget/FrameLayout$LayoutParams;
    nop

    .line 1175
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$dimen;->sm_370:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1176
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$dimen;->sm_80:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1174
    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1177
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v2, v1}, Lcom/shenma/tvlauncher/view/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1178
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v2, v0}, Lcom/shenma/tvlauncher/view/VideoView;->setFocusable(Z)V

    .line 1179
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v2, v0}, Lcom/shenma/tvlauncher/view/VideoView;->setClickable(Z)V

    .line 1180
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    .line 1181
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_videos:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 1182
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_videos:Landroid/widget/ListView;

    iget v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 1159
    .end local v1    # "fl_def":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->back_video_blck:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1160
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/VideoView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->screenWidth:I

    .line 1161
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/VideoView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->screenHeight:I

    .line 1162
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1164
    .local v1, "fl_full":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1165
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    .line 1167
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v2, v0}, Lcom/shenma/tvlauncher/view/VideoView;->setFocusable(Z)V

    .line 1168
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/VideoView;->requestFocus()Z

    .line 1169
    nop

    .line 1185
    .end local v1    # "fl_full":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setvvListener()V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$8;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$8;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 563
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 606
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$10;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$10;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 630
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$11;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$11;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 651
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$12;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$12;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->setOnPlayingBufferCacheListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 658
    return-void
.end method

.method private showController()V
    .locals 4

    .line 1127
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controler:Landroid/widget/PopupWindow;

    sget v1, Lcom/shenma/tvlauncher/R$style;->AnimationFade:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1128
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controler:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    const/16 v2, 0x50

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1129
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controler:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controlHeight:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isControllerShow:Z

    .line 1131
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1132
    return-void
.end method

.method private showMenu()V
    .locals 4

    .line 1405
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menulist:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->programAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1406
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/shenma/tvlauncher/R$style;->AnimationMenu:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1407
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    const/16 v2, 0x35

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1408
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    .line 1409
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$dimen;->sm_500:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1408
    const/4 v2, -0x2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1411
    iput-boolean v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isMenuItemShow:Z

    .line 1412
    return-void
.end method

.method private showVolumeToast(IIILjava/lang/Boolean;)V
    .locals 5
    .param p1, "resId"    # I
    .param p2, "max"    # I
    .param p3, "current"    # I
    .param p4, "isVolume"    # Ljava/lang/Boolean;

    .line 1538
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1539
    invoke-static {p0, p3}, Lcom/shenma/tvlauncher/utils/Utils;->SetLightness(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1541
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1542
    const/4 v2, 0x3

    invoke-virtual {v0, v2, p3, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1544
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 1545
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mToast:Landroid/widget/Toast;

    .line 1546
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/shenma/tvlauncher/R$layout;->mv_media_volume_controler:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1548
    .local v0, "view":Landroid/view/View;
    sget v2, Lcom/shenma/tvlauncher/R$id;->center_image:I

    .line 1549
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1552
    .local v2, "center_image":Landroid/widget/ImageView;
    sget v3, Lcom/shenma/tvlauncher/R$id;->center_progress:I

    .line 1553
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 1554
    .local v3, "center_progress":Landroid/widget/ProgressBar;
    invoke-virtual {v3, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1555
    invoke-virtual {v3, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1556
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1557
    iget-object v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1558
    .end local v2    # "center_image":Landroid/widget/ImageView;
    .end local v3    # "center_progress":Landroid/widget/ProgressBar;
    goto :goto_1

    .line 1559
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 1562
    .restart local v0    # "view":Landroid/view/View;
    sget v2, Lcom/shenma/tvlauncher/R$id;->center_image:I

    .line 1563
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1564
    .restart local v2    # "center_image":Landroid/widget/ImageView;
    sget v3, Lcom/shenma/tvlauncher/R$id;->center_progress:I

    .line 1565
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 1566
    .restart local v3    # "center_progress":Landroid/widget/ProgressBar;
    invoke-virtual {v3, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1567
    invoke-virtual {v3, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1568
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1570
    .end local v2    # "center_image":Landroid/widget/ImageView;
    .end local v3    # "center_progress":Landroid/widget/ProgressBar;
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mToast:Landroid/widget/Toast;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 1572
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 1573
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1574
    return-void
.end method

.method private updataMenu()V
    .locals 4

    .line 1416
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    const/16 v2, 0x35

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1417
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    .line 1418
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$dimen;->sm_500:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1417
    const/4 v2, -0x2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1420
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1214
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1215
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isProgress:Z

    if-eqz v0, :cond_2

    .line 1216
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideControllerDelay()V

    .line 1217
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->ISCNTV:Z

    if-eqz v0, :cond_1

    .line 1218
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    const v1, 0x493e0

    if-le v0, v1, :cond_0

    .line 1219
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr v0, v1

    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose_start:I

    .line 1220
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mPostion:I

    iget v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose_start:I

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->medialist:Ljava/util/ArrayList;

    .line 1221
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose_start:I

    if-le v0, v2, :cond_0

    .line 1222
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose_start:I

    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mPostion:I

    .line 1223
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    sget-object v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->medialist:Ljava/util/ArrayList;

    iget v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mPostion:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;

    .line 1224
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;->getMediaurl()Ljava/lang/String;

    move-result-object v2

    .line 1223
    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 1227
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    rem-int/2addr v0, v1

    .line 1228
    .local v0, "pose_end":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/view/VideoView;->seekTo(I)V

    .line 1229
    .end local v0    # "pose_end":I
    goto :goto_0

    .line 1230
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->seekTo(I)V

    .line 1233
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isProgress:Z

    .line 1236
    :cond_2
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1238
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1239
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 1287
    :sswitch_0
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    if-eqz v1, :cond_9

    .line 1288
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideController()V

    .line 1289
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showMenu()V

    goto/16 :goto_1

    .line 1293
    :sswitch_1
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    if-eqz v1, :cond_4

    .line 1294
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideController()V

    .line 1295
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showMenu()V

    .line 1298
    :cond_4
    :sswitch_2
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    if-eqz v1, :cond_9

    .line 1299
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideController()V

    .line 1300
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showMenu()V

    goto/16 :goto_1

    .line 1279
    :sswitch_3
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    if-eqz v1, :cond_9

    .line 1280
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isControllerShow:Z

    if-nez v1, :cond_5

    .line 1281
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showController()V

    .line 1283
    :cond_5
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->fastForward()V

    goto/16 :goto_1

    .line 1271
    :sswitch_4
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    if-eqz v1, :cond_9

    .line 1272
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isControllerShow:Z

    if-nez v1, :cond_6

    .line 1273
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showController()V

    .line 1275
    :cond_6
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rewind()V

    goto/16 :goto_1

    .line 1311
    :sswitch_5
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    if-eqz v1, :cond_9

    .line 1312
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideController()V

    goto :goto_1

    .line 1304
    :sswitch_6
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    if-eqz v1, :cond_9

    .line 1305
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isControllerShow:Z

    if-nez v1, :cond_9

    .line 1306
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showController()V

    goto :goto_1

    .line 1241
    :sswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "weekdays.requestFocus()==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    .line 1242
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->requestFocus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1241
    const-string v3, "TVBackActivity"

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lv_tv_back_videos.hasFocus()==="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_videos:Landroid/widget/ListView;

    .line 1246
    invoke-virtual {v4}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1243
    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1248
    .local v2, "secondTime":J
    iget-boolean v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    if-eqz v4, :cond_7

    .line 1249
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideController()V

    .line 1250
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setVideoScale(I)V

    .line 1251
    return v1

    .line 1252
    :cond_7
    iget-wide v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->firstTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0xbb8

    cmp-long v8, v4, v6

    if-lez v8, :cond_8

    .line 1253
    iget-object v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->requestFocus()Z

    .line 1254
    sget v4, Lcom/shenma/tvlauncher/R$string;->onbackpressed:I

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {p0, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1256
    iput-wide v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->firstTime:J

    .line 1257
    return v1

    .line 1259
    :cond_8
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->finish()V

    .line 1269
    nop

    .line 1316
    .end local v2    # "secondTime":J
    :cond_9
    :goto_1
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_7
        0x13 -> :sswitch_6
        0x14 -> :sswitch_5
        0x15 -> :sswitch_4
        0x16 -> :sswitch_3
        0x17 -> :sswitch_1
        0x42 -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method protected findViewById()V
    .locals 3

    .line 287
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/RadioButton;

    sput-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    .line 288
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_back_channles:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_channles:Landroid/widget/ListView;

    .line 289
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_back_videos:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_videos:Landroid/widget/ListView;

    .line 290
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_back_current_channel:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_current_channel:Landroid/widget/TextView;

    .line 291
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_back_current_tv:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_current_tv:Landroid/widget/TextView;

    .line 292
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_back_next_tv:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_next_tv:Landroid/widget/TextView;

    .line 293
    sget v0, Lcom/shenma/tvlauncher/R$id;->back_video_blck:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->back_video_blck:Landroid/widget/ImageView;

    .line 294
    sget v0, Lcom/shenma/tvlauncher/R$id;->rg_tv_back_weekdays:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    .line 295
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_tv_back_rd_1:I

    .line 296
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_1:Landroid/widget/RadioButton;

    .line 297
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_1:Landroid/widget/RadioButton;

    aput-object v2, v0, v1

    .line 298
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_tv_back_rd_2:I

    .line 299
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_2:Landroid/widget/RadioButton;

    .line 300
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_2:Landroid/widget/RadioButton;

    aput-object v2, v0, v1

    .line 301
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_tv_back_rd_3:I

    .line 302
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_3:Landroid/widget/RadioButton;

    .line 303
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_3:Landroid/widget/RadioButton;

    aput-object v2, v0, v1

    .line 304
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_tv_back_rd_4:I

    .line 305
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_4:Landroid/widget/RadioButton;

    .line 306
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_4:Landroid/widget/RadioButton;

    aput-object v2, v0, v1

    .line 307
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_tv_back_rd_5:I

    .line 308
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_5:Landroid/widget/RadioButton;

    .line 309
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_5:Landroid/widget/RadioButton;

    aput-object v2, v0, v1

    .line 310
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_tv_back_rd_6:I

    .line 311
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_6:Landroid/widget/RadioButton;

    .line 312
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_6:Landroid/widget/RadioButton;

    aput-object v2, v0, v1

    .line 313
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_tv_back_rd_7:I

    .line 314
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_7:Landroid/widget/RadioButton;

    .line 315
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_7:Landroid/widget/RadioButton;

    aput-object v2, v0, v1

    .line 316
    sget v0, Lcom/shenma/tvlauncher/R$id;->videoview:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/view/VideoView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    .line 317
    sget v0, Lcom/shenma/tvlauncher/R$id;->rl_progressBar:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rl_ProgressBar:Landroid/widget/RelativeLayout;

    .line 318
    return-void
.end method

.method protected initView()V
    .locals 1

    .line 263
    const/4 v0, 0x0

    sput v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    .line 264
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 265
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getScreenSize()V

    .line 266
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadViewLayout()V

    .line 267
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById()V

    .line 268
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setListener()V

    .line 269
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setvvListener()V

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mchannellist:Ljava/util/ArrayList;

    .line 271
    return-void
.end method

.method protected loadViewLayout()V
    .locals 3

    .line 321
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$layout;->tv_media_controler:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controlView:Landroid/view/View;

    .line 323
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controlView:Landroid/view/View;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controler:Landroid/widget/PopupWindow;

    .line 325
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controlView:Landroid/view/View;

    sget v1, Lcom/shenma/tvlauncher/R$id;->seekbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->seekBar:Landroid/widget/SeekBar;

    .line 326
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controlView:Landroid/view/View;

    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_currentTime:I

    .line 327
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_currentTime:Landroid/widget/TextView;

    .line 328
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controlView:Landroid/view/View;

    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_totalTime:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_totalTime:Landroid/widget/TextView;

    .line 329
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->onCreateMenu()V

    .line 330
    return-void
.end method

.method protected notifyData(I)V
    .locals 3
    .param p1, "postion"    # I

    .line 1014
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_current_channel:Landroid/widget/TextView;

    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mchannellist:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;->getChanneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1015
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_current_tv:Landroid/widget/TextView;

    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 1016
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramName()Ljava/lang/String;

    move-result-object v1

    .line 1015
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-gt v0, v1, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_next_tv:Landroid/widget/TextView;

    const-string/jumbo v1, "\u4ee5\u5b9e\u9645\u64ad\u653e\u8282\u76ee\u4e3a\u51c6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_next_tv:Landroid/widget/TextView;

    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 1021
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramName()Ljava/lang/String;

    move-result-object v1

    .line 1020
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    :goto_0
    sget v0, Lcom/shenma/tvlauncher/R$string;->load_msg:I

    invoke-static {p0, v0}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 1024
    const-string v0, "TVBackActivity"

    const-string/jumbo v1, "\u5237\u65b0\u8282\u76ee\u5217\u8868....loadingShow_tv"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadMediaFromXml(Ljava/lang/String;I)V

    .line 1027
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 178
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    sget v0, Lcom/shenma/tvlauncher/R$layout;->activity_tvback:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setContentView(I)V

    .line 180
    const-string v0, "TVBackActivity"

    const-string v1, "TVBackActivity---->onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/application/MyApplication;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mApp:Lcom/shenma/tvlauncher/application/MyApplication;

    .line 182
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadMainUI()V

    .line 183
    return-void
.end method

.method public onCreateMenu()V
    .locals 3

    .line 1356
    sget v0, Lcom/shenma/tvlauncher/R$layout;->tv_controler_menu:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1357
    .local v0, "menuView":Landroid/view/View;
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_back_media_controler_menu:I

    .line 1358
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menulist:Landroid/widget/ListView;

    .line 1359
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    .line 1361
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1362
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1363
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1364
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity$15;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$15;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1378
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity$16;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$16;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1401
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 224
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 225
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 226
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/VideoView;->stopPlayback()V

    .line 229
    :cond_0
    const-string v0, "TVBackActivity"

    const-string v1, "TVBackActivity---->onDestroy"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 235
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onPause()V

    .line 236
    const-string v0, "TVBackActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 237
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 238
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->releaseWakeLock()V

    .line 239
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgressHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateThread:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 240
    const-string v1, "TVBackActivity---->onPause"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 193
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onResume()V

    .line 194
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->acquireWakeLock()V

    .line 195
    const-string v0, "TVBackActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 196
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 200
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgressHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateThread:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    const-string v1, "TVBackActivity---->onResume"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 187
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStart()V

    .line 188
    const-string v0, "TVBackActivity"

    const-string v1, "TVBackActivity---->onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 245
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStop()V

    .line 246
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 247
    const-string v0, "TVBackActivity"

    const-string v1, "TVBackActivity---->onStop"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1433
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1435
    .local v0, "result":Z
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1436
    .local v1, "screen":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1437
    iget v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mSurfaceYDisplayRange:I

    if-nez v2, :cond_0

    .line 1438
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mSurfaceYDisplayRange:I

    .line 1440
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchY:F

    sub-float/2addr v2, v3

    .line 1441
    .local v2, "y_changed":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchX:F

    sub-float/2addr v3, v4

    .line 1443
    .local v3, "x_changed":F
    div-float v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1444
    .local v4, "coef":F
    iget v5, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v5, v3, v5

    const v6, 0x40228f5c    # 2.54f

    mul-float v5, v5, v6

    .line 1445
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

    .line 1448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const-string v7, "TVBackActivity"

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 1461
    :pswitch_0
    const-string v6, "MotionEvent.ACTION_MOVE......."

    invoke-static {v7, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v6, v4, v6

    if-lez v6, :cond_2

    .line 1464
    iget v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchX:F

    iget v7, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->screenWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 1466
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->doVolumeTouch(F)V

    .line 1468
    :cond_1
    iget v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchX:F

    iget v7, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->screenWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 1469
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->doBrightnessTouch(F)V

    goto :goto_0

    .line 1474
    :pswitch_1
    const-string v6, "MotionEvent.ACTION_UP......."

    invoke-static {v7, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1450
    :pswitch_2
    const-string v6, "MotionEvent.ACTION_DOWN......."

    invoke-static {v7, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    const/4 v6, 0x0

    iput v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchAction:I

    .line 1452
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchY:F

    .line 1453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchX:F

    .line 1454
    iget-object v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1455
    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    iput v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->maxVolume:I

    .line 1456
    iget-object v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1457
    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    iput v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->currentVolume:I

    .line 1458
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetLightness(Landroid/app/Activity;)F

    move-result v6

    iput v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->Lightness:F

    .line 1459
    nop

    .line 1477
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

.method protected setChannelDate()V
    .locals 15

    .line 839
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    const-string/jumbo v2, "\u661f\u671f\u65e5"

    const-string/jumbo v3, "\u661f\u671f\u516d"

    const-string/jumbo v4, "\u661f\u671f\u4e94"

    const-string/jumbo v5, "\u661f\u671f\u56db"

    const-string/jumbo v6, "\u661f\u671f\u4e09"

    const-string/jumbo v7, "\u661f\u671f\u4e8c"

    const-string/jumbo v8, "\u661f\u671f\u4e00"

    const-string v9, "/"

    const/4 v10, 0x1

    if-le v0, v1, :cond_8

    .line 840
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_7

    .line 841
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->getChannelDate_label()Ljava/lang/String;

    move-result-object v1

    .line 842
    .local v1, "mdate":Ljava/lang/String;
    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getWeekToDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 843
    .local v11, "mweek":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v10

    .line 844
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    .line 843
    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 845
    .local v12, "text":Ljava/lang/String;
    if-eqz v11, :cond_0

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 846
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    sget v14, Lcom/shenma/tvlauncher/R$drawable;->tv_back_monday_selector:I

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 847
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    invoke-virtual {v13, v12}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 848
    :cond_0
    if-eqz v11, :cond_1

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 849
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    sget v14, Lcom/shenma/tvlauncher/R$drawable;->tv_back_tuesday_selector:I

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 850
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    invoke-virtual {v13, v12}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 851
    :cond_1
    if-eqz v11, :cond_2

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 852
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    sget v14, Lcom/shenma/tvlauncher/R$drawable;->tv_back_wenesday_seletor:I

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 853
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    invoke-virtual {v13, v12}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 854
    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 855
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    sget v14, Lcom/shenma/tvlauncher/R$drawable;->tv_back_thuresday_selector:I

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 856
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    invoke-virtual {v13, v12}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 857
    :cond_3
    if-eqz v11, :cond_4

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 858
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    sget v14, Lcom/shenma/tvlauncher/R$drawable;->tv_back_friday_selector:I

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 859
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    invoke-virtual {v13, v12}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 860
    :cond_4
    if-eqz v11, :cond_5

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 861
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    sget v14, Lcom/shenma/tvlauncher/R$drawable;->tv_back_saturday_selector:I

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 862
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    invoke-virtual {v13, v12}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 863
    :cond_5
    if-eqz v11, :cond_6

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 864
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    sget v14, Lcom/shenma/tvlauncher/R$drawable;->tv_back_sunday_selector:I

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 865
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    invoke-virtual {v13, v12}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 840
    .end local v1    # "mdate":Ljava/lang/String;
    .end local v11    # "mweek":Ljava/lang/String;
    .end local v12    # "text":Ljava/lang/String;
    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .end local v0    # "i":I
    :cond_7
    goto/16 :goto_4

    .line 869
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 870
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->getChannelDate_label()Ljava/lang/String;

    move-result-object v1

    .line 871
    .restart local v1    # "mdate":Ljava/lang/String;
    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getWeekToDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 872
    .restart local v11    # "mweek":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v10

    .line 873
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    .line 872
    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 874
    .restart local v12    # "text":Ljava/lang/String;
    if-eqz v11, :cond_9

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 875
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    sget v14, Lcom/shenma/tvlauncher/R$drawable;->tv_back_monday_selector:I

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 876
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    invoke-virtual {v13, v12}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 877
    :cond_9
    if-eqz v11, :cond_a

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 878
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    sget v14, Lcom/shenma/tvlauncher/R$drawable;->tv_back_tuesday_selector:I

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 879
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    invoke-virtual {v13, v12}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 880
    :cond_a
    if-eqz v11, :cond_b

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 881
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    sget v14, Lcom/shenma/tvlauncher/R$drawable;->tv_back_wenesday_seletor:I

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 882
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    invoke-virtual {v13, v12}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 883
    :cond_b
    if-eqz v11, :cond_c

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 884
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    sget v14, Lcom/shenma/tvlauncher/R$drawable;->tv_back_thuresday_selector:I

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 885
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    invoke-virtual {v13, v12}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 886
    :cond_c
    if-eqz v11, :cond_d

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 887
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    sget v14, Lcom/shenma/tvlauncher/R$drawable;->tv_back_friday_selector:I

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 888
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    invoke-virtual {v13, v12}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 889
    :cond_d
    if-eqz v11, :cond_e

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 890
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    sget v14, Lcom/shenma/tvlauncher/R$drawable;->tv_back_saturday_selector:I

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 891
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    invoke-virtual {v13, v12}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 892
    :cond_e
    if-eqz v11, :cond_f

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 893
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    sget v14, Lcom/shenma/tvlauncher/R$drawable;->tv_back_sunday_selector:I

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 894
    sget-object v13, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v13, v13, v0

    invoke-virtual {v13, v12}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 869
    .end local v1    # "mdate":Ljava/lang/String;
    .end local v11    # "mweek":Ljava/lang/String;
    .end local v12    # "text":Ljava/lang/String;
    :cond_f
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 898
    .end local v0    # "i":I
    :cond_10
    :goto_4
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    sget v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 899
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_channles:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 901
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_channles:Landroid/widget/ListView;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$3;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$3;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 357
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_videos:Landroid/widget/ListView;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 418
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 460
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$6;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$6;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 496
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 534
    return-void
.end method

.method protected setProgramData(I)V
    .locals 3
    .param p1, "type"    # I

    .line 1001
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1002
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->getChannelDate_Url()Ljava/lang/String;

    move-result-object v0

    .line 1003
    .local v0, "dataUrl":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadDataFromXml(Ljava/lang/String;I)V

    .line 1004
    sget v1, Lcom/shenma/tvlauncher/R$string;->load_msg:I

    invoke-static {p0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 1005
    const-string v1, "TVBackActivity"

    const-string/jumbo v2, "\u52a0\u8f7d\u754c\u9762\u5217\u8868....loadingShow_tv"

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    .end local v0    # "dataUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method
