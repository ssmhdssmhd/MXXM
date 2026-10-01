.class public Lcom/shenma/tvlauncher/HomeActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/HomeActivity$WindowMessageID;,
        Lcom/shenma/tvlauncher/HomeActivity$UiID;
    }
.end annotation


# static fields
.field protected static ISTV:Ljava/lang/Boolean;

.field public static homeFrom:Ljava/lang/String;

.field public static homeParams:Ljava/lang/String;

.field public static lib:Ljava/lang/String;

.field private static titile_position:I


# instance fields
.field private En:Ljava/lang/String;

.field private Logo_url:Ljava/lang/String;

.field private Mac:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private PWD:Ljava/lang/String;

.field public RequestQueue:Lcom/android/volley/RequestQueue;

.field private final TAG:Ljava/lang/String;

.field private adapter:Lcom/shenma/tvlauncher/adapter/FragAdapter;

.field private app_nshow:Ljava/lang/String;

.field private app_nurl:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private category:Ljava/lang/String;

.field private categorypwd:Ljava/lang/String;

.field private compel:I

.field private countSize:F

.field private currentSize:F

.field public fl_main:Landroid/widget/FrameLayout;

.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private fromXDelta:F

.field private gongGao:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

.field private gongGaoRoot:Landroid/widget/LinearLayout;

.field private homeHandler:Landroid/os/Handler;

.field private home_clear:Landroid/widget/LinearLayout;

.field private home_collect:Landroid/widget/LinearLayout;

.field private home_play_set:Landroid/widget/LinearLayout;

.field private home_top_record:Landroid/widget/ImageView;

.field private home_top_records:Landroid/widget/LinearLayout;

.field private home_top_search:Landroid/widget/ImageView;

.field private home_top_searchs:Landroid/widget/LinearLayout;

.field private home_user:Landroid/widget/LinearLayout;

.field private home_wallpaper:Landroid/widget/LinearLayout;

.field private isHasFouse:Ljava/lang/Boolean;

.field private isRunning:Z

.field iv_jilu:Landroid/widget/RelativeLayout;

.field private iv_net_state:Landroid/widget/ImageView;

.field iv_persion:Landroid/widget/ImageView;

.field private iv_titile:Landroid/widget/ImageView;

.field private live:I

.field private ll_rb:Landroid/widget/LinearLayout;

.field private logo:Landroid/widget/ImageView;

.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

.field private mDialog:Landroid/app/Dialog;

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

.field private mWallReceiver:Landroid/content/BroadcastReceiver;

.field private mediaHandler:Landroid/os/Handler;

.field private mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

.field private noticeState:Z

.field public packLst:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private password:Ljava/lang/String;

.field private player_download_url:Ljava/lang/String;

.field private player_name:Ljava/lang/String;

.field private player_update:Ljava/lang/String;

.field private player_zip_md5:Ljava/lang/String;

.field private rb_Internet:Landroid/widget/RadioButton;

.field private rb_bm_tvplay:Landroid/widget/RadioButton;

.field private rb_recommend:Landroid/widget/RadioButton;

.field private rb_settings:Landroid/widget/RadioButton;

.field private rb_video_type:Landroid/widget/RadioButton;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

.field private rg_video_type_bottom:Landroid/widget/RadioGroup;

.field private rl_bg:Landroid/widget/RelativeLayout;

.field private search:I

.field private searchport:I

.field private sf:Lcom/shenma/tvlauncher/fragment/SettingFragment;

.field protected technology:Ljava/lang/String;

.field private tf:Lcom/shenma/tvlauncher/fragment/TVFragment;

.field private time_colon:Landroid/widget/TextView;

.field private title_group:Landroid/widget/RadioGroup;

.field private tv_main_date:Landroid/widget/TextView;

.field private tv_time:Landroid/widget/TextView;

.field private tv_update_msg:Landroid/widget/TextView;

.field private username:Ljava/lang/String;

.field private vpager:Landroidx/viewpager/widget/ViewPager;

.field public whiteBorder:Landroid/widget/ImageView;


# direct methods
.method static bridge synthetic -$$Nest$fgetEn(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->En:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetMac(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->Mac:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetName(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->Name:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetPWD(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->PWD:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetapp_nshow(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->app_nshow:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetapp_nurl(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->app_nurl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcategorypwd(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->categorypwd:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfromXDelta(Lcom/shenma/tvlauncher/HomeActivity;)F
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->fromXDelta:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethomeHandler(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->homeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetiv_net_state(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->iv_net_state:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetiv_titile(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->iv_titile:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlive(Lcom/shenma/tvlauncher/HomeActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->live:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAnimationSet(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/view/animation/AnimationSet;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mAnimationSet:Landroid/view/animation/AnimationSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTranslateAnimation(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/view/animation/TranslateAnimation;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmf(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/TopicFragment;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplayer_download_url(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->player_download_url:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrf(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/RecommendFragment;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsf(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/SettingFragment;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->sf:Lcom/shenma/tvlauncher/fragment/SettingFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitle_group(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->title_group:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetusername(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvpager(Lcom/shenma/tvlauncher/HomeActivity;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity;->vpager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputEn(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity;->En:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputName(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity;->Name:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputPWD(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity;->PWD:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbitmap(Lcom/shenma/tvlauncher/HomeActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfromXDelta(Lcom/shenma/tvlauncher/HomeActivity;F)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/HomeActivity;->fromXDelta:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAnimationSet(Lcom/shenma/tvlauncher/HomeActivity;Landroid/view/animation/AnimationSet;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mAnimationSet:Landroid/view/animation/AnimationSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTranslateAnimation(Lcom/shenma/tvlauncher/HomeActivity;Landroid/view/animation/TranslateAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputusername(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mUpdateDialog(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/HomeActivity;->UpdateDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeBackImage(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/HomeActivity;->changeBackImage(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitAnimation(Lcom/shenma/tvlauncher/HomeActivity;Landroid/view/animation/AnimationSet;Landroid/view/animation/TranslateAnimation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/HomeActivity;->initAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/TranslateAnimation;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogoloadImg(Lcom/shenma/tvlauncher/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->logoloadImg()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotice(Lcom/shenma/tvlauncher/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->notice()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMessage(Lcom/shenma/tvlauncher/HomeActivity;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/HomeActivity;->onMessage(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowUserDialog(Lcom/shenma/tvlauncher/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->showUserDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputtitile_position(I)V
    .locals 0

    sput p0, Lcom/shenma/tvlauncher/HomeActivity;->titile_position:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 116
    const/4 v0, 0x0

    sput v0, Lcom/shenma/tvlauncher/HomeActivity;->titile_position:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 112
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 117
    const-string v0, "HomeActivity"

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->TAG:Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    .line 123
    const-string v1, ""

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->technology:Ljava/lang/String;

    .line 136
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->isRunning:Z

    .line 159
    new-instance v2, Lcom/shenma/tvlauncher/HomeActivity$1;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/HomeActivity$1;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->homeHandler:Landroid/os/Handler;

    .line 167
    new-instance v2, Lcom/shenma/tvlauncher/HomeActivity$2;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/HomeActivity$2;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->mediaHandler:Landroid/os/Handler;

    .line 219
    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->PWD:Ljava/lang/String;

    .line 223
    const-string v0, "live"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->live:I

    .line 224
    const-string v0, "search"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->search:I

    .line 225
    const-string v0, "searchport"

    const/16 v1, 0x26fa

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->searchport:I

    .line 234
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity$3;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/HomeActivity$3;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 263
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity$4;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/HomeActivity$4;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 270
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity$5;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/HomeActivity$5;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mWallReceiver:Landroid/content/BroadcastReceiver;

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->noticeState:Z

    return-void
.end method

.method private AutoMacRegister()V
    .locals 13

    .line 1159
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1160
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1161
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1162
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1163
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1164
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1165
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1166
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 1167
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity$23;

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

    const-string v3, "&act=user_reg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity$21;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/HomeActivity$21;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity$22;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity$22;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/HomeActivity$23;-><init>(Lcom/shenma/tvlauncher/HomeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1208
    return-void
.end method

.method private AutoRegister()V
    .locals 13

    .line 1018
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1019
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1020
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1021
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1022
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1023
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1024
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1025
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 1026
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity$17;

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

    const-string v3, "&act=user_reg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity$15;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/HomeActivity$15;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity$16;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity$16;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/HomeActivity$17;-><init>(Lcom/shenma/tvlauncher/HomeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1067
    return-void
.end method

.method private MacLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "rc4data"    # Ljava/lang/String;
    .param p3, "sign"    # Ljava/lang/String;

    .line 1089
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1090
    new-instance v1, Lcom/shenma/tvlauncher/HomeActivity$20;

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity$18;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity$18;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    new-instance v6, Lcom/shenma/tvlauncher/HomeActivity$19;

    invoke-direct {v6, p0}, Lcom/shenma/tvlauncher/HomeActivity$19;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    const/4 v3, 0x1

    move-object v2, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "rc4data":Ljava/lang/String;
    .end local p3    # "sign":Ljava/lang/String;
    .local v4, "url":Ljava/lang/String;
    .local v7, "rc4data":Ljava/lang/String;
    .local v8, "sign":Ljava/lang/String;
    invoke-direct/range {v1 .. v8}, Lcom/shenma/tvlauncher/HomeActivity$20;-><init>(Lcom/shenma/tvlauncher/HomeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    .local v1, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object p1, v2, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1117
    return-void
.end method

.method private UpdateDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "remark"    # Ljava/lang/String;
    .param p2, "updateurl"    # Ljava/lang/String;

    .line 2292
    new-instance v0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2293
    .local v0, "builder":Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
    sget v1, Lcom/shenma/tvlauncher/R$string;->Upgrade:I

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setTitle(I)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 2294
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2295
    .local v1, "remarks":[Ljava/lang/String;
    const-string v2, ""

    .line 2296
    .local v2, "str":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 2297
    array-length v4, v1

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    .line 2298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2299
    goto :goto_1

    .line 2301
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2296
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2305
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 2306
    iget v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->compel:I

    if-ne v3, v5, :cond_2

    .line 2307
    sget v3, Lcom/shenma/tvlauncher/R$string;->Update_Now:I

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity$53;

    invoke-direct {v4, p0, p2}, Lcom/shenma/tvlauncher/HomeActivity$53;-><init>(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 2315
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->create()Lcom/shenma/tvlauncher/view/HomeDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/view/HomeDialog;->show()V

    goto :goto_2

    .line 2317
    :cond_2
    sget v3, Lcom/shenma/tvlauncher/R$string;->Update_Now:I

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity$54;

    invoke-direct {v4, p0, p2}, Lcom/shenma/tvlauncher/HomeActivity$54;-><init>(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 2325
    sget v3, Lcom/shenma/tvlauncher/R$string;->Update_later:I

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity$55;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/HomeActivity$55;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v0, v3, v4}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 2332
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->creates()Lcom/shenma/tvlauncher/view/HomeDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/view/HomeDialog;->shows()V

    .line 2334
    :goto_2
    return-void
.end method

.method private accountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "rc4data"    # Ljava/lang/String;
    .param p3, "sign"    # Ljava/lang/String;

    .line 880
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 881
    new-instance v1, Lcom/shenma/tvlauncher/HomeActivity$11;

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity$9;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity$9;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    new-instance v6, Lcom/shenma/tvlauncher/HomeActivity$10;

    invoke-direct {v6, p0}, Lcom/shenma/tvlauncher/HomeActivity$10;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    const/4 v3, 0x1

    move-object v2, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "rc4data":Ljava/lang/String;
    .end local p3    # "sign":Ljava/lang/String;
    .local v4, "url":Ljava/lang/String;
    .local v7, "rc4data":Ljava/lang/String;
    .local v8, "sign":Ljava/lang/String;
    invoke-direct/range {v1 .. v8}, Lcom/shenma/tvlauncher/HomeActivity$11;-><init>(Lcom/shenma/tvlauncher/HomeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    .local v1, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object p1, v2, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 908
    return-void
.end method

.method private changeBackImage(Ljava/lang/String;)V
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    .line 2348
    if-nez p1, :cond_0

    .line 2349
    return-void

    .line 2350
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2351
    const/4 v0, 0x0

    .line 2352
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "open_blur"

    const-string/jumbo v3, "\u5173"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u5f00"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "/"

    if-eqz v1, :cond_4

    .line 2354
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    .line 2355
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_blur"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2356
    if-nez v0, :cond_3

    .line 2358
    const/4 v1, 0x0

    const/4 v3, 0x7

    :try_start_0
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    .line 2359
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2360
    .local v5, "tempBmp":Landroid/graphics/Bitmap;
    if-nez v5, :cond_1

    .line 2361
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    .line 2362
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v5, v6

    .line 2363
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2366
    :cond_1
    invoke-static {v5, v3, v1}, Lcom/shenma/tvlauncher/utils/BlurUtils;->doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    .line 2367
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    .line 2368
    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2367
    invoke-virtual {v6, v7, v0}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2382
    .end local v5    # "tempBmp":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 2369
    :catch_0
    move-exception v5

    .line 2370
    .local v5, "oom":Ljava/lang/OutOfMemoryError;
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    invoke-virtual {v6}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->clearAllImageCache()V

    .line 2371
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    .line 2372
    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2373
    .local v6, "tempBmp":Landroid/graphics/Bitmap;
    if-nez v6, :cond_2

    .line 2374
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    .line 2375
    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2376
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2379
    :cond_2
    invoke-static {v6, v3, v1}, Lcom/shenma/tvlauncher/utils/BlurUtils;->doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2380
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    .line 2381
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2380
    invoke-virtual {v1, v2, v0}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2384
    .end local v5    # "oom":Ljava/lang/OutOfMemoryError;
    .end local v6    # "tempBmp":Landroid/graphics/Bitmap;
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->rl_bg:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 2388
    :cond_4
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2389
    if-nez v0, :cond_5

    .line 2391
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, v1

    .line 2392
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 2399
    goto :goto_1

    .line 2394
    :catch_1
    move-exception v1

    .line 2395
    .local v1, "oom":Ljava/lang/OutOfMemoryError;
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->clearAllImageCache()V

    .line 2396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2397
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2401
    .end local v1    # "oom":Ljava/lang/OutOfMemoryError;
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->rl_bg:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2405
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_6
    :goto_2
    return-void
.end method

.method private checkUpdate()V
    .locals 13

    .line 1228
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1229
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1230
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1231
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1232
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1233
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1234
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1235
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 1236
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity$26;

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

    const-string v3, "&act=ini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity$24;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/HomeActivity$24;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity$25;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity$25;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/HomeActivity$26;-><init>(Lcom/shenma/tvlauncher/HomeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1277
    return-void
.end method

.method public static dp2px(F)I
    .locals 2
    .param p0, "dpValue"    # F

    .line 1676
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getGongGao()V
    .locals 13

    .line 409
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 410
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 411
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 412
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 413
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 414
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 415
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 416
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 417
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity$8;

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

    const-string v3, "&act=notices"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity$6;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/HomeActivity$6;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity$7;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity$7;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/HomeActivity$8;-><init>(Lcom/shenma/tvlauncher/HomeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 460
    return-void
.end method

.method public static getIsTV()Z
    .locals 1

    .line 286
    sget-object v0, Lcom/shenma/tvlauncher/HomeActivity;->ISTV:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/HomeActivity;->ISTV:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private initAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/TranslateAnimation;)V
    .locals 2
    .param p1, "_AnimationSet"    # Landroid/view/animation/AnimationSet;
    .param p2, "_TranslateAnimation"    # Landroid/view/animation/TranslateAnimation;

    .line 2101
    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2102
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 2103
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 2104
    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 2105
    return-void
.end method

.method private initData()V
    .locals 2

    .line 736
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->checkUpdate()V

    .line 737
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getGongGao()V

    .line 738
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->initLogin()V

    .line 739
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->initLogo()V

    .line 740
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->initNotice()V

    .line 741
    iget v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->search:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 742
    iget v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->searchport:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity;->start(I)V

    .line 744
    :cond_0
    return-void
.end method

.method private initLogin()V
    .locals 13

    .line 764
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "play_decode"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "play_ratio"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "play_core"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "live_core"

    aput-object v6, v1, v5

    const/4 v6, 0x4

    const-string v7, "play_jump"

    aput-object v7, v1, v6

    const/4 v7, 0x5

    const-string v8, "play_jump_end"

    aput-object v8, v1, v7

    .line 765
    .local v1, "keys":[Ljava/lang/String;
    new-array v8, v0, [Ljava/lang/String;

    const-string/jumbo v9, "\u786c\u89e3\u7801"

    aput-object v9, v8, v2

    const-string/jumbo v9, "\u5168\u5c4f\u62c9\u4f38"

    aput-object v9, v8, v3

    const-string v9, "IJK"

    aput-object v9, v8, v4

    const-string/jumbo v9, "\u81ea\u52a8"

    aput-object v9, v8, v5

    const-string v9, "0\u79d2"

    aput-object v9, v8, v6

    aput-object v9, v8, v7

    .line 766
    .local v8, "defaultValues":[Ljava/lang/String;
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 767
    .local v0, "sharedIntData":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v1

    const/4 v9, 0x0

    if-ge v6, v7, :cond_1

    .line 768
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    aget-object v10, v1, v6

    invoke-interface {v7, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 769
    .local v7, "value":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 770
    iget-object v9, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    aget-object v10, v1, v6

    aget-object v11, v1, v6

    aget-object v12, v8, v6

    .line 771
    invoke-static {p0, v11, v12}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 772
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 773
    if-nez v6, :cond_0

    .line 774
    iget-object v9, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    aget v10, v0, v6

    .line 775
    const-string v11, "mIsHwDecode"

    invoke-interface {v9, v11, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 776
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 767
    .end local v7    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 781
    .end local v6    # "i":I
    :cond_1
    const-string v6, "login_type"

    invoke-static {p0, v6, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 782
    .local v6, "login_type":I
    const-string v7, "passWord"

    const-string/jumbo v10, "userName"

    if-ne v6, v3, :cond_3

    .line 784
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    .line 785
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    .line 786
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 787
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    .line 788
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    .line 789
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v3}, Lcom/shenma/tvlauncher/HomeActivity;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 791
    :cond_2
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v3}, Lcom/shenma/tvlauncher/HomeActivity;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 793
    :cond_3
    if-eqz v6, :cond_6

    if-ne v6, v4, :cond_4

    goto :goto_1

    .line 800
    :cond_4
    if-ne v6, v5, :cond_7

    .line 802
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    .line 803
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    .line 804
    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/MacUtils;->getMac(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->Mac:Ljava/lang/String;

    .line 805
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 806
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->Mac:Ljava/lang/String;

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    .line 807
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->Mac:Ljava/lang/String;

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    .line 808
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/shenma/tvlauncher/HomeActivity;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 810
    :cond_5
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/shenma/tvlauncher/HomeActivity;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 795
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    .line 796
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    .line 797
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 798
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v2}, Lcom/shenma/tvlauncher/HomeActivity;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V

    .line 813
    :cond_7
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private initLogo()V
    .locals 3

    .line 748
    const-string v0, "Logo_url"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "logo_url":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 750
    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->Logo_url:Ljava/lang/String;

    .line 751
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 753
    :cond_0
    return-void
.end method

.method private initNotice()V
    .locals 13

    .line 2156
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 2157
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2158
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2159
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2160
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2161
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2162
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2163
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 2164
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity$50;

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

    const-string v3, "&act=notice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity$48;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/HomeActivity$48;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity$49;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity$49;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/HomeActivity$50;-><init>(Lcom/shenma/tvlauncher/HomeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 2206
    return-void
.end method

.method private initTitle(I)V
    .locals 4
    .param p1, "position"    # I

    .line 715
    if-eqz p1, :cond_0

    .line 716
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->title_group:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    .line 719
    .local v0, "toX":F
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 720
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->fromXDelta:F

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 721
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/HomeActivity;->initAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/TranslateAnimation;)V

    .line 722
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->iv_titile:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 723
    iput v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->fromXDelta:F

    .line 725
    .end local v0    # "toX":F
    :cond_0
    return-void
.end method

.method private logoloadImg()V
    .locals 2

    .line 757
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->Logo_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->logo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 758
    return-void
.end method

.method private markcodeLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "rc4data"    # Ljava/lang/String;
    .param p3, "sign"    # Ljava/lang/String;

    .line 948
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 949
    new-instance v1, Lcom/shenma/tvlauncher/HomeActivity$14;

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity$12;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity$12;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    new-instance v6, Lcom/shenma/tvlauncher/HomeActivity$13;

    invoke-direct {v6, p0}, Lcom/shenma/tvlauncher/HomeActivity$13;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    const/4 v3, 0x1

    move-object v2, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "rc4data":Ljava/lang/String;
    .end local p3    # "sign":Ljava/lang/String;
    .local v4, "url":Ljava/lang/String;
    .local v7, "rc4data":Ljava/lang/String;
    .local v8, "sign":Ljava/lang/String;
    invoke-direct/range {v1 .. v8}, Lcom/shenma/tvlauncher/HomeActivity$14;-><init>(Lcom/shenma/tvlauncher/HomeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    .local v1, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object p1, v2, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 976
    return-void
.end method

.method private notice()V
    .locals 3

    .line 2243
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2244
    sget v0, Lcom/shenma/tvlauncher/R$id;->notice_iamge_url:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2245
    .local v0, "imageView":Landroid/widget/ImageView;
    sget v1, Lcom/shenma/tvlauncher/R$id;->notice_button:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2246
    .local v1, "notice_button":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2247
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2248
    new-instance v2, Lcom/shenma/tvlauncher/HomeActivity$51;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/HomeActivity$51;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2258
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "notice_button":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private onMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 2113
    if-eqz p1, :cond_1

    .line 2114
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 2143
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->currentSize:F

    .line 2144
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->tv_update_msg:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6b63\u5728\u4e0b\u8f7d\u66f4\u65b0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->currentSize:F

    iget v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->countSize:F

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2145
    iget v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->currentSize:F

    iget v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->countSize:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    .line 2146
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->tv_update_msg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2140
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->countSize:F

    .line 2141
    goto :goto_1

    .line 2123
    :sswitch_2
    goto :goto_1

    .line 2126
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity;->installApk(Ljava/lang/String;)V

    .line 2127
    goto :goto_1

    .line 2119
    :sswitch_4
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2120
    goto :goto_1

    .line 2130
    :sswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->tv_time:Landroid/widget/TextView;

    const-string v2, " "

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->getStringTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2131
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->tv_main_date:Landroid/widget/TextView;

    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->getStringData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2132
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->time_colon:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->time_colon:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2135
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->time_colon:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2137
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->homeHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2138
    goto :goto_1

    .line 2116
    :sswitch_6
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u670d\u52a1\u5668\u5185\u90e8\u5f02\u5e38"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2117
    nop

    .line 2152
    :cond_1
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x5 -> :sswitch_5
        0x10 -> :sswitch_4
        0x12 -> :sswitch_3
        0x13 -> :sswitch_2
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_0
    .end sparse-switch
.end method

.method private registerNetworkReceiver()V
    .locals 2

    .line 699
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 700
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 701
    return-void
.end method

.method private registerPackageReceiver()V
    .locals 2

    .line 705
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 706
    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 707
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 708
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 709
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 710
    return-void
.end method

.method private registerWallpaperReceiver()V
    .locals 2

    .line 729
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 730
    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string v1, "com.hd.changewallpaper"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 731
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mWallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 732
    return-void
.end method

.method private requestlogin(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 21
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 817
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 818
    .local v6, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 819
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 820
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 821
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v10, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 822
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 824
    .local v5, "Appkey":Ljava/lang/String;
    const-string v12, "&t="

    const-string v13, "&markcode="

    const-string v14, "&password="

    const-string v15, "account="

    const-string v11, "&"

    const-string v4, "&act=user_logon"

    move-object/from16 v16, v9

    .end local v9    # "AESKEY":Ljava/lang/String;
    .local v16, "AESKEY":Ljava/lang/String;
    const-string v9, "/api.php?app="

    if-nez p3, :cond_3

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v17, v13

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 826
    .local v13, "logindate":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    move-object/from16 v18, v12

    const/4 v12, 0x1

    invoke-static {v1, v0, v12}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 827
    .local v3, "miType":I
    if-ne v3, v12, :cond_0

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v12, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v19, v7

    .end local v7    # "RC4KEY":Ljava/lang/String;
    .local v19, "RC4KEY":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v20, v14

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v12, v7}, Lcom/shenma/tvlauncher/HomeActivity;->accountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v16

    goto/16 :goto_1

    .line 829
    .end local v19    # "RC4KEY":Ljava/lang/String;
    .restart local v7    # "RC4KEY":Ljava/lang/String;
    :cond_0
    move-object/from16 v19, v7

    move-object/from16 v20, v14

    .end local v7    # "RC4KEY":Ljava/lang/String;
    .restart local v19    # "RC4KEY":Ljava/lang/String;
    const/4 v7, 0x2

    if-ne v3, v7, :cond_1

    .line 831
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v7, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v8}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v0, v7, v12}, Lcom/shenma/tvlauncher/HomeActivity;->accountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 834
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    move-object/from16 v7, v16

    goto :goto_1

    .line 835
    :cond_1
    const/4 v7, 0x3

    if-ne v3, v7, :cond_2

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v7, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v16

    .end local v16    # "AESKEY":Ljava/lang/String;
    .local v7, "AESKEY":Ljava/lang/String;
    invoke-static {v7, v13, v10}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    move/from16 v16, v3

    .end local v3    # "miType":I
    .local v16, "miType":I
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v12, v3}, Lcom/shenma/tvlauncher/HomeActivity;->accountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 835
    .end local v7    # "AESKEY":Ljava/lang/String;
    .restart local v3    # "miType":I
    .local v16, "AESKEY":Ljava/lang/String;
    :cond_2
    move-object/from16 v7, v16

    move/from16 v16, v3

    .end local v3    # "miType":I
    .restart local v7    # "AESKEY":Ljava/lang/String;
    .local v16, "miType":I
    goto :goto_1

    .line 824
    .end local v13    # "logindate":Ljava/lang/String;
    .end local v19    # "RC4KEY":Ljava/lang/String;
    .local v7, "RC4KEY":Ljava/lang/String;
    .local v16, "AESKEY":Ljava/lang/String;
    :cond_3
    move-object/from16 v19, v7

    move-object/from16 v18, v12

    move-object/from16 v17, v13

    move-object/from16 v20, v14

    move-object/from16 v7, v16

    .line 843
    .end local v16    # "AESKEY":Ljava/lang/String;
    .local v7, "AESKEY":Ljava/lang/String;
    .restart local v19    # "RC4KEY":Ljava/lang/String;
    :goto_1
    move/from16 v3, p3

    const/4 v12, 0x1

    if-ne v3, v12, :cond_6

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v12, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v13, p2

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v14, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v14, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 845
    .local v14, "logindate":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v1, v0, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    .line 846
    .local v12, "miType":I
    if-ne v12, v13, :cond_4

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v13, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, v19

    .end local v19    # "RC4KEY":Ljava/lang/String;
    .local v13, "RC4KEY":Ljava/lang/String;
    invoke-static {v14, v13}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local v13    # "RC4KEY":Ljava/lang/String;
    .restart local v19    # "RC4KEY":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v15

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v0, v2, v13}, Lcom/shenma/tvlauncher/HomeActivity;->markcodeLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 848
    :cond_4
    move-object/from16 v16, v15

    const/4 v2, 0x2

    if-ne v12, v2, :cond_5

    .line 850
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v8}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v0, v2, v13}, Lcom/shenma/tvlauncher/HomeActivity;->markcodeLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 851
    :catch_1
    move-exception v0

    .line 852
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 853
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    .line 854
    :cond_5
    const/4 v2, 0x3

    if-ne v12, v2, :cond_7

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v14, v10}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v0, v2, v13}, Lcom/shenma/tvlauncher/HomeActivity;->markcodeLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 843
    .end local v12    # "miType":I
    .end local v14    # "logindate":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v15

    .line 861
    :cond_7
    :goto_3
    const/4 v2, 0x2

    if-ne v3, v2, :cond_a

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v12, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v13, p2

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v14, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v14, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 863
    .local v12, "logindate":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-static {v1, v0, v14}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    .line 864
    .local v15, "miType":I
    if-ne v15, v14, :cond_8

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v9, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v14, v19

    .end local v19    # "RC4KEY":Ljava/lang/String;
    .local v14, "RC4KEY":Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v4, v2}, Lcom/shenma/tvlauncher/HomeActivity;->MacLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 866
    .end local v14    # "RC4KEY":Ljava/lang/String;
    .restart local v19    # "RC4KEY":Ljava/lang/String;
    :cond_8
    move-object/from16 v14, v19

    .end local v19    # "RC4KEY":Ljava/lang/String;
    .restart local v14    # "RC4KEY":Ljava/lang/String;
    const/4 v2, 0x2

    if-ne v15, v2, :cond_9

    .line 868
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v8}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v2, v4}, Lcom/shenma/tvlauncher/HomeActivity;->MacLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 869
    :catch_2
    move-exception v0

    .line 870
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 871
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    goto :goto_5

    .line 872
    :cond_9
    const/4 v2, 0x3

    if-ne v15, v2, :cond_b

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v12, v10}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v2, v4}, Lcom/shenma/tvlauncher/HomeActivity;->MacLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 861
    .end local v12    # "logindate":Ljava/lang/String;
    .end local v14    # "RC4KEY":Ljava/lang/String;
    .end local v15    # "miType":I
    .restart local v19    # "RC4KEY":Ljava/lang/String;
    :cond_a
    move-object/from16 v13, p2

    move-object/from16 v14, v19

    .line 876
    .end local v19    # "RC4KEY":Ljava/lang/String;
    .restart local v14    # "RC4KEY":Ljava/lang/String;
    :cond_b
    :goto_5
    return-void
.end method

.method private runTime()V
    .locals 2

    .line 396
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shenma/tvlauncher/view/MyServices;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 397
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shenma/tvlauncher/view/JSONService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 398
    return-void
.end method

.method private showUserDialog()V
    .locals 7

    .line 2431
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2432
    .local v0, "User_url":Ljava/lang/String;
    new-instance v2, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2433
    .local v2, "builder":Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    sget v4, Lcom/shenma/tvlauncher/R$layout;->user_pwd:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2434
    .local v3, "mView":Landroid/view/View;
    sget v4, Lcom/shenma/tvlauncher/R$id;->Categorypwd:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2435
    .local v4, "Categorypwd":Landroid/widget/TextView;
    const-string v5, "Pwd_text"

    invoke-static {p0, v5, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2436
    sget v1, Lcom/shenma/tvlauncher/R$id;->user_pwd_et:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2437
    .local v1, "user_pwd_et":Landroid/widget/EditText;
    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 2438
    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity$57;

    invoke-direct {v5, p0, v1}, Lcom/shenma/tvlauncher/HomeActivity$57;-><init>(Lcom/shenma/tvlauncher/HomeActivity;Landroid/widget/EditText;)V

    const-string/jumbo v6, "\u786e\u5b9a"

    invoke-virtual {v2, v6, v5}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 2486
    sget v5, Lcom/shenma/tvlauncher/R$string;->popup_confirmation_dialog_Negative:I

    new-instance v6, Lcom/shenma/tvlauncher/HomeActivity$58;

    invoke-direct {v6, p0}, Lcom/shenma/tvlauncher/HomeActivity$58;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v2, v5, v6}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 2492
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->create()Lcom/shenma/tvlauncher/view/WiFiDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->mDialog:Landroid/app/Dialog;

    .line 2493
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2494
    return-void
.end method


# virtual methods
.method public AccountResponse(Ljava/lang/String;)V
    .locals 22
    .param p1, "response"    # Ljava/lang/String;

    .line 913
    move-object/from16 v1, p0

    const-string v0, "Exit"

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 914
    .local v2, "RC4KEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v4, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 915
    .local v4, "RSAKEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v5, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 916
    .local v5, "AESKEY":Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v6, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 918
    .local v3, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object/from16 v7, p1

    :try_start_1
    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 919
    .local v6, "jo":Lorg/json/JSONObject;
    const-string v8, "code"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const/16 v9, 0xc8

    const-string v10, "ckinfo"

    const-string v11, "passWord"

    const-string/jumbo v12, "userName"

    const-string/jumbo v14, "vip"

    if-ne v8, v9, :cond_3

    .line 920
    :try_start_2
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v1, v8, v9}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 921
    .local v8, "miType":I
    const/4 v15, 0x0

    .line 922
    .local v15, "msg":Ljava/lang/String;
    const-string v13, "msg"

    if-ne v8, v9, :cond_0

    .line 923
    :try_start_3
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v15, v9

    goto :goto_0

    .line 940
    .end local v6    # "jo":Lorg/json/JSONObject;
    .end local v8    # "miType":I
    .end local v15    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    goto/16 :goto_2

    .line 924
    .restart local v6    # "jo":Lorg/json/JSONObject;
    .restart local v8    # "miType":I
    .restart local v15    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 925
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v15, v9

    goto :goto_0

    .line 926
    :cond_1
    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 927
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9, v3}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v15, v9

    .line 929
    :cond_2
    :goto_0
    :try_start_4
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 930
    .local v9, "jot":Lorg/json/JSONObject;
    new-instance v13, Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v17, v2

    .end local v2    # "RC4KEY":Ljava/lang/String;
    .local v17, "RC4KEY":Ljava/lang/String;
    :try_start_5
    const-string v2, "info"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 931
    .local v13, "job":Lorg/json/JSONObject;
    const-string/jumbo v2, "token"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 932
    .local v2, "ck":Ljava/lang/String;
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v18, v16

    .line 933
    .local v18, "vip":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move/from16 v19, v16

    .line 934
    .local v19, "Exit":I
    move-object/from16 v20, v3

    .end local v3    # "AESIV":Ljava/lang/String;
    .local v20, "AESIV":Ljava/lang/String;
    :try_start_6
    iget-object v3, v1, Lcom/shenma/tvlauncher/HomeActivity;->mediaHandler:Landroid/os/Handler;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v21, v4

    const/4 v4, 0x2

    .end local v4    # "RSAKEY":Ljava/lang/String;
    .local v21, "RSAKEY":Ljava/lang/String;
    :try_start_7
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 935
    iget-object v3, v1, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, v1, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    invoke-interface {v3, v12, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, v1, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    invoke-interface {v3, v11, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v10, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move-object/from16 v4, v18

    .end local v18    # "vip":Ljava/lang/String;
    .local v4, "vip":Ljava/lang/String;
    invoke-interface {v3, v14, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move/from16 v10, v19

    .end local v19    # "Exit":I
    .local v10, "Exit":I
    invoke-interface {v3, v0, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 936
    return-void

    .line 940
    .end local v2    # "ck":Ljava/lang/String;
    .end local v6    # "jo":Lorg/json/JSONObject;
    .end local v8    # "miType":I
    .end local v9    # "jot":Lorg/json/JSONObject;
    .end local v10    # "Exit":I
    .end local v13    # "job":Lorg/json/JSONObject;
    .end local v15    # "msg":Ljava/lang/String;
    .end local v21    # "RSAKEY":Ljava/lang/String;
    .local v4, "RSAKEY":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v21, v4

    .end local v4    # "RSAKEY":Ljava/lang/String;
    .restart local v21    # "RSAKEY":Ljava/lang/String;
    goto :goto_2

    .end local v20    # "AESIV":Ljava/lang/String;
    .end local v21    # "RSAKEY":Ljava/lang/String;
    .restart local v3    # "AESIV":Ljava/lang/String;
    .restart local v4    # "RSAKEY":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .end local v3    # "AESIV":Ljava/lang/String;
    .end local v4    # "RSAKEY":Ljava/lang/String;
    .restart local v20    # "AESIV":Ljava/lang/String;
    .restart local v21    # "RSAKEY":Ljava/lang/String;
    goto :goto_2

    .line 938
    .end local v17    # "RC4KEY":Ljava/lang/String;
    .end local v20    # "AESIV":Ljava/lang/String;
    .end local v21    # "RSAKEY":Ljava/lang/String;
    .local v2, "RC4KEY":Ljava/lang/String;
    .restart local v3    # "AESIV":Ljava/lang/String;
    .restart local v4    # "RSAKEY":Ljava/lang/String;
    .restart local v6    # "jo":Lorg/json/JSONObject;
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .end local v2    # "RC4KEY":Ljava/lang/String;
    .end local v3    # "AESIV":Ljava/lang/String;
    .end local v4    # "RSAKEY":Ljava/lang/String;
    .restart local v17    # "RC4KEY":Ljava/lang/String;
    .restart local v20    # "AESIV":Ljava/lang/String;
    .restart local v21    # "RSAKEY":Ljava/lang/String;
    iget-object v0, v1, Lcom/shenma/tvlauncher/HomeActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 939
    iget-object v0, v1, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v12, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v11, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v14, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "fen"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v10, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 942
    nop

    .end local v6    # "jo":Lorg/json/JSONObject;
    goto :goto_3

    .line 940
    :catch_3
    move-exception v0

    goto :goto_2

    .end local v17    # "RC4KEY":Ljava/lang/String;
    .end local v20    # "AESIV":Ljava/lang/String;
    .end local v21    # "RSAKEY":Ljava/lang/String;
    .restart local v2    # "RC4KEY":Ljava/lang/String;
    .restart local v3    # "AESIV":Ljava/lang/String;
    .restart local v4    # "RSAKEY":Ljava/lang/String;
    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    move-object/from16 v7, p1

    :goto_1
    move-object/from16 v17, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .line 941
    .end local v2    # "RC4KEY":Ljava/lang/String;
    .end local v3    # "AESIV":Ljava/lang/String;
    .end local v4    # "RSAKEY":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "RC4KEY":Ljava/lang/String;
    .restart local v20    # "AESIV":Ljava/lang/String;
    .restart local v21    # "RSAKEY":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 943
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public CheckUpdateResponse(Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .line 1283
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1284
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1285
    .local v1, "code":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1286
    .local v2, "jot":Lorg/json/JSONObject;
    const-string v3, "app_bb"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1287
    .local v3, "app_bb":Ljava/lang/Double;
    const-string v4, "app_nshow"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->app_nshow:Ljava/lang/String;

    .line 1288
    const-string v4, "app_nurl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->app_nurl:Ljava/lang/String;

    .line 1289
    const-string v4, "compel"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->compel:I

    .line 1292
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    .local v4, "value":D
    const-string v6, "200"

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpg-double v9, v4, v7

    if-gez v9, :cond_0

    .line 1296
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->app_nshow:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1297
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1312
    :cond_0
    new-instance v7, Lorg/json/JSONObject;

    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->f:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1313
    .local v7, "exten":Lorg/json/JSONObject;
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->u:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->player_name:Ljava/lang/String;

    .line 1314
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->ev:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->player_update:Ljava/lang/String;

    .line 1315
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->sr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->player_zip_md5:Ljava/lang/String;

    .line 1316
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->kw:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->player_download_url:Ljava/lang/String;

    .line 1318
    if-eqz p1, :cond_1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->player_update:Ljava/lang/String;

    const-string v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1319
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->player_download_url:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1320
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->player_zip_md5:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/data/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/files/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/shenma/tvlauncher/HomeActivity;->player_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/shenma/tvlauncher/utils/Utils;->getMD5Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1321
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v8, 0x7

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1327
    .end local v0    # "jo":Lorg/json/JSONObject;
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "jot":Lorg/json/JSONObject;
    .end local v3    # "app_bb":Ljava/lang/Double;
    .end local v4    # "value":D
    .end local v7    # "exten":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 1325
    :catch_0
    move-exception v0

    .line 1326
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1328
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public LoginResponse(Ljava/lang/String;)V
    .locals 9
    .param p1, "response"    # Ljava/lang/String;

    .line 2498
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2499
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2500
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2501
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2504
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2505
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 2506
    .local v5, "code":I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1

    .line 2507
    const-string v6, "200"

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->PWD:Ljava/lang/String;

    .line 2508
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->En:Ljava/lang/String;

    const-string v7, "LIVE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2509
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 2510
    .local v6, "mIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v8, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2511
    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2512
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 2513
    return-void

    .line 2515
    .end local v6    # "mIntent":Landroid/content/Intent;
    :cond_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2516
    .local v6, "pBundle":Landroid/os/Bundle;
    const-string v7, "TYPE"

    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->En:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2517
    const-string v7, "TYPENAME"

    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->Name:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2518
    const-class v7, Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-virtual {p0, v7, v6}, Lcom/shenma/tvlauncher/HomeActivity;->openActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 2519
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 2520
    .end local v6    # "pBundle":Landroid/os/Bundle;
    goto :goto_0

    .line 2521
    :cond_1
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->PWD:Ljava/lang/String;

    .line 2522
    sget v6, Lcom/shenma/tvlauncher/R$string;->network_setting_wireless_network_pager_list_item_link_state_wrong:I

    sget v7, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2527
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    :goto_0
    goto :goto_1

    .line 2525
    :catch_0
    move-exception v4

    .line 2526
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 2528
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public MacResponse(Ljava/lang/String;)V
    .locals 21
    .param p1, "response"    # Ljava/lang/String;

    .line 1122
    move-object/from16 v1, p0

    const-string v0, "Exit"

    const-string v2, "code"

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1123
    .local v3, "RC4KEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1124
    .local v5, "RSAKEY":Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v6, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1125
    .local v6, "AESKEY":Ljava/lang/String;
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v7, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1127
    .local v4, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v8, p1

    :try_start_1
    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1129
    .local v7, "jo":Lorg/json/JSONObject;
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v10, 0xc8

    const-string v11, "ckinfo"

    const-string v12, "passWord"

    const-string/jumbo v13, "userName"

    const-string/jumbo v14, "vip"

    if-ne v9, v10, :cond_3

    .line 1130
    :try_start_2
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v1, v2, v9}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1131
    .local v2, "miType":I
    const/4 v10, 0x0

    .line 1132
    .local v10, "msg":Ljava/lang/String;
    const-string v15, "msg"

    if-ne v2, v9, :cond_0

    .line 1133
    :try_start_3
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    goto :goto_0

    .line 1152
    .end local v2    # "miType":I
    .end local v7    # "jo":Lorg/json/JSONObject;
    .end local v10    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v20, v4

    goto/16 :goto_2

    .line 1134
    .restart local v2    # "miType":I
    .restart local v7    # "jo":Lorg/json/JSONObject;
    .restart local v10    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x2

    if-ne v2, v9, :cond_1

    .line 1135
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    goto :goto_0

    .line 1136
    :cond_1
    const/4 v9, 0x3

    if-ne v2, v9, :cond_2

    .line 1137
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v4}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v10, v9

    .line 1139
    :cond_2
    :goto_0
    :try_start_4
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1140
    .local v9, "jot":Lorg/json/JSONObject;
    new-instance v15, Lorg/json/JSONObject;

    move/from16 v16, v2

    .end local v2    # "miType":I
    .local v16, "miType":I
    const-string v2, "info"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1141
    .local v15, "job":Lorg/json/JSONObject;
    const-string/jumbo v2, "token"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1142
    .local v2, "ck":Ljava/lang/String;
    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    .line 1143
    .local v18, "vip":Ljava/lang/String;
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move/from16 v19, v17

    .line 1144
    .local v19, "Exit":I
    move-object/from16 v17, v3

    .end local v3    # "RC4KEY":Ljava/lang/String;
    .local v17, "RC4KEY":Ljava/lang/String;
    :try_start_5
    iget-object v3, v1, Lcom/shenma/tvlauncher/HomeActivity;->mediaHandler:Landroid/os/Handler;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v20, v4

    const/4 v4, 0x2

    .end local v4    # "AESIV":Ljava/lang/String;
    .local v20, "AESIV":Ljava/lang/String;
    :try_start_6
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1145
    iget-object v3, v1, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, v1, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    invoke-interface {v3, v13, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, v1, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    invoke-interface {v3, v12, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v11, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move-object/from16 v4, v18

    .end local v18    # "vip":Ljava/lang/String;
    .local v4, "vip":Ljava/lang/String;
    invoke-interface {v3, v14, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move/from16 v11, v19

    .end local v19    # "Exit":I
    .local v11, "Exit":I
    invoke-interface {v3, v0, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1146
    return-void

    .line 1152
    .end local v2    # "ck":Ljava/lang/String;
    .end local v7    # "jo":Lorg/json/JSONObject;
    .end local v9    # "jot":Lorg/json/JSONObject;
    .end local v10    # "msg":Ljava/lang/String;
    .end local v11    # "Exit":I
    .end local v15    # "job":Lorg/json/JSONObject;
    .end local v16    # "miType":I
    .end local v20    # "AESIV":Ljava/lang/String;
    .local v4, "AESIV":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v20, v4

    .end local v4    # "AESIV":Ljava/lang/String;
    .restart local v20    # "AESIV":Ljava/lang/String;
    goto :goto_2

    .line 1147
    .end local v17    # "RC4KEY":Ljava/lang/String;
    .end local v20    # "AESIV":Ljava/lang/String;
    .restart local v3    # "RC4KEY":Ljava/lang/String;
    .restart local v4    # "AESIV":Ljava/lang/String;
    .restart local v7    # "jo":Lorg/json/JSONObject;
    :cond_3
    move-object/from16 v17, v3

    move-object/from16 v20, v4

    .end local v3    # "RC4KEY":Ljava/lang/String;
    .end local v4    # "AESIV":Ljava/lang/String;
    .restart local v17    # "RC4KEY":Ljava/lang/String;
    .restart local v20    # "AESIV":Ljava/lang/String;
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x7a

    if-ne v0, v2, :cond_4

    .line 1149
    invoke-direct {v1}, Lcom/shenma/tvlauncher/HomeActivity;->AutoMacRegister()V

    .line 1151
    :cond_4
    iget-object v0, v1, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v13, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v12, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v14, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "fen"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v11, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1154
    nop

    .end local v7    # "jo":Lorg/json/JSONObject;
    goto :goto_3

    .line 1152
    :catch_2
    move-exception v0

    goto :goto_2

    .end local v17    # "RC4KEY":Ljava/lang/String;
    .end local v20    # "AESIV":Ljava/lang/String;
    .restart local v3    # "RC4KEY":Ljava/lang/String;
    .restart local v4    # "AESIV":Ljava/lang/String;
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    move-object/from16 v8, p1

    :goto_1
    move-object/from16 v17, v3

    move-object/from16 v20, v4

    .line 1153
    .end local v3    # "RC4KEY":Ljava/lang/String;
    .end local v4    # "AESIV":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "RC4KEY":Ljava/lang/String;
    .restart local v20    # "AESIV":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1155
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public MarkcodeResponse(Ljava/lang/String;)V
    .locals 21
    .param p1, "response"    # Ljava/lang/String;

    .line 981
    move-object/from16 v1, p0

    const-string v0, "Exit"

    const-string v2, "code"

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 982
    .local v3, "RC4KEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 983
    .local v5, "RSAKEY":Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v6, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 984
    .local v6, "AESKEY":Ljava/lang/String;
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v7, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 986
    .local v4, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v8, p1

    :try_start_1
    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 988
    .local v7, "jo":Lorg/json/JSONObject;
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v10, 0xc8

    const-string v11, "ckinfo"

    const-string v12, "passWord"

    const-string/jumbo v13, "userName"

    const-string/jumbo v14, "vip"

    if-ne v9, v10, :cond_3

    .line 989
    :try_start_2
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v1, v2, v9}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 990
    .local v2, "miType":I
    const/4 v10, 0x0

    .line 991
    .local v10, "msg":Ljava/lang/String;
    const-string v15, "msg"

    if-ne v2, v9, :cond_0

    .line 992
    :try_start_3
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    goto :goto_0

    .line 1011
    .end local v2    # "miType":I
    .end local v7    # "jo":Lorg/json/JSONObject;
    .end local v10    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v20, v4

    goto/16 :goto_2

    .line 993
    .restart local v2    # "miType":I
    .restart local v7    # "jo":Lorg/json/JSONObject;
    .restart local v10    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x2

    if-ne v2, v9, :cond_1

    .line 994
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    goto :goto_0

    .line 995
    :cond_1
    const/4 v9, 0x3

    if-ne v2, v9, :cond_2

    .line 996
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v4}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v10, v9

    .line 998
    :cond_2
    :goto_0
    :try_start_4
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 999
    .local v9, "jot":Lorg/json/JSONObject;
    new-instance v15, Lorg/json/JSONObject;

    move/from16 v16, v2

    .end local v2    # "miType":I
    .local v16, "miType":I
    const-string v2, "info"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v15, "job":Lorg/json/JSONObject;
    const-string/jumbo v2, "token"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1001
    .local v2, "ck":Ljava/lang/String;
    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    .line 1002
    .local v18, "vip":Ljava/lang/String;
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move/from16 v19, v17

    .line 1003
    .local v19, "Exit":I
    move-object/from16 v17, v3

    .end local v3    # "RC4KEY":Ljava/lang/String;
    .local v17, "RC4KEY":Ljava/lang/String;
    :try_start_5
    iget-object v3, v1, Lcom/shenma/tvlauncher/HomeActivity;->mediaHandler:Landroid/os/Handler;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v20, v4

    const/4 v4, 0x2

    .end local v4    # "AESIV":Ljava/lang/String;
    .local v20, "AESIV":Ljava/lang/String;
    :try_start_6
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1004
    iget-object v3, v1, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, v1, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    invoke-interface {v3, v13, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, v1, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    invoke-interface {v3, v12, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v11, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move-object/from16 v4, v18

    .end local v18    # "vip":Ljava/lang/String;
    .local v4, "vip":Ljava/lang/String;
    invoke-interface {v3, v14, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move/from16 v11, v19

    .end local v19    # "Exit":I
    .local v11, "Exit":I
    invoke-interface {v3, v0, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1005
    return-void

    .line 1011
    .end local v2    # "ck":Ljava/lang/String;
    .end local v7    # "jo":Lorg/json/JSONObject;
    .end local v9    # "jot":Lorg/json/JSONObject;
    .end local v10    # "msg":Ljava/lang/String;
    .end local v11    # "Exit":I
    .end local v15    # "job":Lorg/json/JSONObject;
    .end local v16    # "miType":I
    .end local v20    # "AESIV":Ljava/lang/String;
    .local v4, "AESIV":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v20, v4

    .end local v4    # "AESIV":Ljava/lang/String;
    .restart local v20    # "AESIV":Ljava/lang/String;
    goto :goto_2

    .line 1006
    .end local v17    # "RC4KEY":Ljava/lang/String;
    .end local v20    # "AESIV":Ljava/lang/String;
    .restart local v3    # "RC4KEY":Ljava/lang/String;
    .restart local v4    # "AESIV":Ljava/lang/String;
    .restart local v7    # "jo":Lorg/json/JSONObject;
    :cond_3
    move-object/from16 v17, v3

    move-object/from16 v20, v4

    .end local v3    # "RC4KEY":Ljava/lang/String;
    .end local v4    # "AESIV":Ljava/lang/String;
    .restart local v17    # "RC4KEY":Ljava/lang/String;
    .restart local v20    # "AESIV":Ljava/lang/String;
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x7a

    if-ne v0, v2, :cond_4

    .line 1008
    invoke-direct {v1}, Lcom/shenma/tvlauncher/HomeActivity;->AutoRegister()V

    .line 1010
    :cond_4
    iget-object v0, v1, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v13, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v12, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v14, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "fen"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v11, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1013
    nop

    .end local v7    # "jo":Lorg/json/JSONObject;
    goto :goto_3

    .line 1011
    :catch_2
    move-exception v0

    goto :goto_2

    .end local v17    # "RC4KEY":Ljava/lang/String;
    .end local v20    # "AESIV":Ljava/lang/String;
    .restart local v3    # "RC4KEY":Ljava/lang/String;
    .restart local v4    # "AESIV":Ljava/lang/String;
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    move-object/from16 v8, p1

    :goto_1
    move-object/from16 v17, v3

    move-object/from16 v20, v4

    .line 1012
    .end local v3    # "RC4KEY":Ljava/lang/String;
    .end local v4    # "AESIV":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "RC4KEY":Ljava/lang/String;
    .restart local v20    # "AESIV":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1014
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public NoticeResponse(Ljava/lang/String;)V
    .locals 14
    .param p1, "response"    # Ljava/lang/String;

    .line 2210
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2211
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2212
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2213
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2216
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2217
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 2218
    .local v5, "code":I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    .line 2219
    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2220
    .local v6, "msg":Ljava/lang/String;
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 2221
    .local v7, "miType":I
    const/4 v9, 0x0

    .line 2222
    .local v9, "jSON":Lorg/json/JSONObject;
    if-ne v7, v8, :cond_0

    .line 2223
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v6, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v9, v8

    goto :goto_0

    .line 2224
    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 2225
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v6, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v9, v8

    goto :goto_0

    .line 2226
    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 2227
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v3, v6, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v9, v8

    .line 2229
    :cond_2
    :goto_0
    const-string/jumbo v8, "url"

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2230
    .local v8, "url":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 2231
    invoke-virtual {p0, v8}, Lcom/shenma/tvlauncher/HomeActivity;->returnBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 2232
    iget-object v10, p0, Lcom/shenma/tvlauncher/HomeActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v11, 0x6

    const-wide/16 v12, 0xbb8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2238
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "miType":I
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "jSON":Lorg/json/JSONObject;
    :cond_3
    goto :goto_1

    .line 2236
    :catch_0
    move-exception v4

    .line 2237
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2239
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public RegisterMacResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .line 1215
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1216
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1217
    .local v1, "code":I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 1218
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {p0, v2, v3, v4}, Lcom/shenma/tvlauncher/HomeActivity;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v1    # "code":I
    :cond_0
    goto :goto_0

    .line 1221
    :catch_0
    move-exception v0

    .line 1222
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1224
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public RequestError(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 2533
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    .line 2536
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    .line 2539
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    .line 2542
    instance-of v0, p1, Lcom/android/volley/ServerError;

    .line 2546
    return-void
.end method

.method public RequestResponse(Ljava/lang/String;)V
    .locals 11
    .param p1, "response"    # Ljava/lang/String;

    .line 464
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 471
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 472
    .local v5, "code":I
    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 473
    .local v6, "msg":Ljava/lang/String;
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_3

    .line 474
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->gongGaoRoot:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 475
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .local v7, "miType":I
    const-string v9, "UTF-8"

    if-ne v7, v8, :cond_0

    .line 477
    :try_start_1
    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->gongGao:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-static {v6, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 478
    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 479
    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->gongGao:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-static {v6, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 480
    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 481
    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->gongGao:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-static {v3, v6, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->gongGao:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setMarqueeRepeatLimit(I)V

    .line 484
    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->gongGao:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-virtual {v8}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->startScroll()V

    .line 485
    .end local v7    # "miType":I
    goto :goto_1

    .line 486
    :cond_3
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->gongGaoRoot:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 491
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 489
    :catch_0
    move-exception v4

    .line 490
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 492
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public Response(Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .line 1074
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1075
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1076
    .local v1, "code":I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 1077
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/shenma/tvlauncher/HomeActivity;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v1    # "code":I
    :cond_0
    goto :goto_0

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1083
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method protected findViewById()V
    .locals 10

    .line 1337
    sget v0, Lcom/shenma/tvlauncher/R$id;->iv_persion:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->iv_persion:Landroid/widget/ImageView;

    .line 1338
    sget v0, Lcom/shenma/tvlauncher/R$id;->rl_bg:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->rl_bg:Landroid/widget/RelativeLayout;

    .line 1339
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->bg:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1340
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1341
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->bg:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1342
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->bg:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1344
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->rl_bg:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 1345
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->rl_bg:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1346
    :cond_1
    sget v1, Lcom/shenma/tvlauncher/R$id;->fl_main:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->fl_main:Landroid/widget/FrameLayout;

    .line 1347
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_main_time:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->tv_time:Landroid/widget/TextView;

    .line 1348
    sget v1, Lcom/shenma/tvlauncher/R$id;->time_colon:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->time_colon:Landroid/widget/TextView;

    .line 1349
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_net_state:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->iv_net_state:Landroid/widget/ImageView;

    .line 1350
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_titile:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->iv_titile:Landroid/widget/ImageView;

    .line 1351
    sget v1, Lcom/shenma/tvlauncher/R$id;->pager:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->vpager:Landroidx/viewpager/widget/ViewPager;

    .line 1352
    sget v1, Lcom/shenma/tvlauncher/R$id;->title_group:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->title_group:Landroid/widget/RadioGroup;

    .line 1353
    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_recommend:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->rb_recommend:Landroid/widget/RadioButton;

    .line 1354
    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_Internet:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->rb_Internet:Landroid/widget/RadioButton;

    .line 1355
    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_video_type:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->rb_video_type:Landroid/widget/RadioButton;

    .line 1356
    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_settings:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->rb_settings:Landroid/widget/RadioButton;

    .line 1357
    sget v1, Lcom/shenma/tvlauncher/R$id;->rg_video_type_bottom:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->rg_video_type_bottom:Landroid/widget/RadioGroup;

    .line 1358
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_main_date:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->tv_main_date:Landroid/widget/TextView;

    .line 1359
    sget v1, Lcom/shenma/tvlauncher/R$id;->ll_rb:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->ll_rb:Landroid/widget/LinearLayout;

    .line 1360
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_update_msg:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->tv_update_msg:Landroid/widget/TextView;

    .line 1361
    sget v1, Lcom/shenma/tvlauncher/R$id;->gonggao:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->gongGao:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    .line 1362
    sget v1, Lcom/shenma/tvlauncher/R$id;->gonggao_root:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->gongGaoRoot:Landroid/widget/LinearLayout;

    .line 1364
    sget v1, Lcom/shenma/tvlauncher/R$id;->logo:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->logo:Landroid/widget/ImageView;

    .line 1366
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-string v2, "Interface_Style"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1368
    .local v1, "Interface_Style":I
    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-ne v1, v2, :cond_2

    goto/16 :goto_0

    .line 1409
    :cond_2
    if-ne v1, v5, :cond_3

    .line 1411
    sget v6, Lcom/shenma/tvlauncher/R$id;->home_top_search:I

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_search:Landroid/widget/ImageView;

    .line 1412
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_search:Landroid/widget/ImageView;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$30;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$30;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1426
    sget v6, Lcom/shenma/tvlauncher/R$id;->home_top_record:I

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_record:Landroid/widget/ImageView;

    .line 1427
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_record:Landroid/widget/ImageView;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$31;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$31;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1444
    :cond_3
    if-ne v1, v4, :cond_5

    .line 1446
    sget v6, Lcom/shenma/tvlauncher/R$id;->home_top_searchs:I

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_searchs:Landroid/widget/LinearLayout;

    .line 1447
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_searchs:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$32;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$32;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1462
    sget v6, Lcom/shenma/tvlauncher/R$id;->home_top_records:I

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_records:Landroid/widget/LinearLayout;

    .line 1463
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_records:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$33;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$33;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1478
    sget v6, Lcom/shenma/tvlauncher/R$id;->home_user:I

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_user:Landroid/widget/LinearLayout;

    .line 1479
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_user:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$34;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$34;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1487
    sget v6, Lcom/shenma/tvlauncher/R$id;->home_collect:I

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_collect:Landroid/widget/LinearLayout;

    .line 1488
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_collect:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$35;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$35;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1496
    sget v6, Lcom/shenma/tvlauncher/R$id;->home_play_set:I

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_play_set:Landroid/widget/LinearLayout;

    .line 1497
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_play_set:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$36;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$36;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1505
    sget v6, Lcom/shenma/tvlauncher/R$id;->home_clear:I

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_clear:Landroid/widget/LinearLayout;

    .line 1506
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_clear:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$37;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$37;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1514
    sget v6, Lcom/shenma/tvlauncher/R$id;->home_wallpaper:I

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_wallpaper:Landroid/widget/LinearLayout;

    .line 1515
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_wallpaper:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$38;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$38;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1370
    :cond_4
    :goto_0
    sget v6, Lcom/shenma/tvlauncher/R$id;->home_top_search:I

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_search:Landroid/widget/ImageView;

    .line 1371
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_search:Landroid/widget/ImageView;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$27;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$27;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1385
    sget v6, Lcom/shenma/tvlauncher/R$id;->home_top_record:I

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_record:Landroid/widget/ImageView;

    .line 1386
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_record:Landroid/widget/ImageView;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$28;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$28;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1400
    sget v6, Lcom/shenma/tvlauncher/R$id;->home_user:I

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_user:Landroid/widget/LinearLayout;

    .line 1401
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_user:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$29;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$29;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1524
    :cond_5
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    .line 1525
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1527
    .local v6, "args":Landroid/os/Bundle;
    const-string v7, "Topic"

    const-string v8, "num"

    if-eqz v1, :cond_b

    if-ne v1, v2, :cond_6

    goto/16 :goto_3

    .line 1555
    :cond_6
    if-ne v1, v5, :cond_8

    .line 1577
    invoke-static {p0, v7, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 1578
    .local v2, "Topic":I
    if-nez v2, :cond_7

    .line 1580
    new-instance v4, Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;-><init>()V

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    .line 1581
    invoke-virtual {v6, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1582
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1583
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1586
    :cond_7
    new-instance v4, Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;-><init>()V

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    .line 1587
    invoke-virtual {v6, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1588
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1589
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1590
    new-instance v4, Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/fragment/TopicFragment;-><init>()V

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    .line 1591
    invoke-virtual {v6, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1592
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1593
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1596
    .end local v2    # "Topic":I
    :cond_8
    if-ne v1, v4, :cond_a

    .line 1598
    invoke-static {p0, v7, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 1599
    .restart local v2    # "Topic":I
    if-nez v2, :cond_9

    .line 1601
    new-instance v4, Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;-><init>()V

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    .line 1602
    invoke-virtual {v6, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1603
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1604
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1607
    :cond_9
    new-instance v4, Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;-><init>()V

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    .line 1608
    invoke-virtual {v6, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1609
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1610
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1611
    new-instance v4, Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/fragment/TopicFragment;-><init>()V

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    .line 1612
    invoke-virtual {v6, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1613
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1614
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1596
    .end local v2    # "Topic":I
    :cond_a
    :goto_2
    goto :goto_5

    .line 1529
    :cond_b
    :goto_3
    invoke-static {p0, v7, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 1530
    .restart local v2    # "Topic":I
    if-nez v2, :cond_c

    .line 1532
    new-instance v4, Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;-><init>()V

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    .line 1533
    invoke-virtual {v6, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1534
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1535
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1536
    new-instance v4, Lcom/shenma/tvlauncher/fragment/SettingFragment;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/fragment/SettingFragment;-><init>()V

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->sf:Lcom/shenma/tvlauncher/fragment/SettingFragment;

    .line 1537
    invoke-virtual {v6, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1538
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->sf:Lcom/shenma/tvlauncher/fragment/SettingFragment;

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1539
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->sf:Lcom/shenma/tvlauncher/fragment/SettingFragment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1542
    :cond_c
    new-instance v7, Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-direct {v7}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;-><init>()V

    iput-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    .line 1543
    invoke-virtual {v6, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1544
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-virtual {v7, v6}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1545
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v9, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1546
    new-instance v7, Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-direct {v7}, Lcom/shenma/tvlauncher/fragment/TopicFragment;-><init>()V

    iput-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    .line 1547
    invoke-virtual {v6, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1548
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-virtual {v7, v6}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1549
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v9, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1550
    new-instance v7, Lcom/shenma/tvlauncher/fragment/SettingFragment;

    invoke-direct {v7}, Lcom/shenma/tvlauncher/fragment/SettingFragment;-><init>()V

    iput-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->sf:Lcom/shenma/tvlauncher/fragment/SettingFragment;

    .line 1551
    invoke-virtual {v6, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1552
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->sf:Lcom/shenma/tvlauncher/fragment/SettingFragment;

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1553
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->sf:Lcom/shenma/tvlauncher/fragment/SettingFragment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    .end local v2    # "Topic":I
    :goto_4
    nop

    .line 1619
    :goto_5
    new-instance v2, Lcom/shenma/tvlauncher/adapter/FragAdapter;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    invoke-direct {v2, v4, v7}, Lcom/shenma/tvlauncher/adapter/FragAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->adapter:Lcom/shenma/tvlauncher/adapter/FragAdapter;

    .line 1621
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->vpager:Landroidx/viewpager/widget/ViewPager;

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->adapter:Lcom/shenma/tvlauncher/adapter/FragAdapter;

    invoke-virtual {v2, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 1622
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->vpager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 1623
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->vpager:Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Lcom/shenma/tvlauncher/ui/DepthPageTransformer;

    invoke-direct {v3}, Lcom/shenma/tvlauncher/ui/DepthPageTransformer;-><init>()V

    invoke-virtual {v2, v5, v3}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    .line 1625
    sget-object v2, Lcom/shenma/tvlauncher/HomeActivity;->ISTV:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1627
    :try_start_0
    const-class v2, Landroidx/viewpager/widget/ViewPager;

    const-string v3, "mScroller"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1628
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1629
    new-instance v3, Lcom/shenma/tvlauncher/ui/FixedSpeedScroller;

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->vpager:Landroidx/viewpager/widget/ViewPager;

    .line 1630
    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/shenma/tvlauncher/ui/FixedSpeedScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 1631
    .local v3, "scroller":Lcom/shenma/tvlauncher/ui/FixedSpeedScroller;
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->vpager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1632
    const/16 v4, 0x2bc

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/ui/FixedSpeedScroller;->setmDuration(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1636
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "scroller":Lcom/shenma/tvlauncher/ui/FixedSpeedScroller;
    goto :goto_6

    .line 1634
    :catch_0
    move-exception v2

    .line 1638
    :cond_d
    :goto_6
    return-void
.end method

.method public flyWhiteBorder(IIFF)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "paramFloat1"    # F
    .param p4, "paramFloat2"    # F

    .line 2416
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2417
    return-void

    .line 2418
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 2419
    .local v0, "mWidth":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 2420
    .local v1, "mheight":I
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 2421
    .local v2, "localViewPropertyAnimator":Landroid/view/ViewPropertyAnimator;
    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2422
    int-to-float v3, p1

    int-to-float v4, v0

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 2423
    int-to-float v3, p2

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 2424
    invoke-virtual {v2, p3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 2425
    invoke-virtual {v2, p4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 2426
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2427
    return-void
.end method

.method protected initView()V
    .locals 4

    .line 663
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->loadViewLayout()V

    .line 664
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById()V

    .line 665
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->setListener()V

    .line 668
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->rb_recommend:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 671
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->registerNetworkReceiver()V

    .line 672
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->registerPackageReceiver()V

    .line 673
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->registerWallpaperReceiver()V

    .line 674
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->homeHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 676
    return-void
.end method

.method public initwhiteBorder()V
    .locals 4

    .line 1647
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    .line 1648
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->fl_main:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1651
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-string v1, "Interface_Style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1652
    .local v0, "Interface_Style":I
    if-nez v0, :cond_0

    goto :goto_0

    .line 1655
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1657
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 1659
    :cond_2
    nop

    .line 1663
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x80

    const/16 v3, 0x82

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1664
    .local v1, "layoutparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x2a

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1665
    const/16 v2, 0xb7

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1666
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1667
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1671
    return-void
.end method

.method protected installApk(Ljava/lang/String;)V
    .locals 5
    .param p1, "file"    # Ljava/lang/String;

    .line 684
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 686
    .local v0, "updateFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "chmod"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "604"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 687
    .local v2, "args2":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    nop

    .end local v2    # "args2":[Ljava/lang/String;
    goto :goto_0

    .line 688
    :catch_0
    move-exception v1

    .line 689
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 691
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 693
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 695
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 1332
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 403
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onAttachedToWindow()V

    .line 404
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->rl_bg:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->AttachedToWindow()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 405
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 601
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onBackPressed()V

    .line 602
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 292
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 294
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "interface_style"

    const/4 v2, 0x0

    .line 328
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 294
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 295
    .local v0, "Interface_Style":I
    const/4 v1, 0x1

    .line 341
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 295
    if-eqz v0, :cond_2

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    if-ne v0, v1, :cond_1

    .line 309
    sget v1, Lcom/shenma/tvlauncher/R$layout;->activity_mainss:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->setContentView(I)V

    goto :goto_2

    .line 310
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 313
    sget v1, Lcom/shenma/tvlauncher/R$layout;->activity_mainsss:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->setContentView(I)V

    goto :goto_2

    .line 297
    :cond_2
    :goto_0
    const-string v1, "Topic"

    invoke-static {p0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 298
    .local v1, "Topic":I
    if-nez v1, :cond_3

    .line 300
    sget v5, Lcom/shenma/tvlauncher/R$layout;->activity_main:I

    invoke-virtual {p0, v5}, Lcom/shenma/tvlauncher/HomeActivity;->setContentView(I)V

    goto :goto_1

    .line 304
    :cond_3
    sget v5, Lcom/shenma/tvlauncher/R$layout;->activity_mains:I

    invoke-virtual {p0, v5}, Lcom/shenma/tvlauncher/HomeActivity;->setContentView(I)V

    .line 307
    .end local v1    # "Topic":I
    :goto_1
    nop

    .line 317
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/application/MyApplication;

    .line 318
    .local v1, "mApp":Lcom/shenma/tvlauncher/application/MyApplication;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/application/MyApplication;->getTechnology()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->technology:Ljava/lang/String;

    .line 319
    invoke-static {}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->getInstance()Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    move-result-object v5

    iput-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    .line 320
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->from:Ljava/lang/String;

    sput-object v5, Lcom/shenma/tvlauncher/HomeActivity;->homeFrom:Ljava/lang/String;

    .line 321
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->params:Ljava/lang/String;

    sput-object v5, Lcom/shenma/tvlauncher/HomeActivity;->homeParams:Ljava/lang/String;

    .line 323
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->technology:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "MOBILE"

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    const-string v10, "TV"

    if-eqz v5, :cond_6

    .line 324
    iget-wide v11, p0, Lcom/shenma/tvlauncher/HomeActivity;->screenSize:D

    cmpl-double v5, v11, v8

    if-lez v5, :cond_5

    .line 325
    sput-object v4, Lcom/shenma/tvlauncher/HomeActivity;->ISTV:Ljava/lang/Boolean;

    .line 326
    iput-object v10, p0, Lcom/shenma/tvlauncher/HomeActivity;->devicetype:Ljava/lang/String;

    goto :goto_3

    .line 328
    :cond_5
    sput-object v3, Lcom/shenma/tvlauncher/HomeActivity;->ISTV:Ljava/lang/Boolean;

    .line 329
    iput-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->devicetype:Ljava/lang/String;

    goto :goto_3

    .line 332
    :cond_6
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->technology:Ljava/lang/String;

    if-eqz v5, :cond_8

    const-string v5, "null"

    iget-object v11, p0, Lcom/shenma/tvlauncher/HomeActivity;->technology:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 333
    iget-wide v11, p0, Lcom/shenma/tvlauncher/HomeActivity;->screenSize:D

    cmpl-double v5, v11, v8

    if-lez v5, :cond_7

    .line 334
    sput-object v4, Lcom/shenma/tvlauncher/HomeActivity;->ISTV:Ljava/lang/Boolean;

    .line 335
    iput-object v10, p0, Lcom/shenma/tvlauncher/HomeActivity;->devicetype:Ljava/lang/String;

    goto :goto_3

    .line 337
    :cond_7
    sput-object v3, Lcom/shenma/tvlauncher/HomeActivity;->ISTV:Ljava/lang/Boolean;

    .line 338
    iput-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->devicetype:Ljava/lang/String;

    goto :goto_3

    .line 341
    :cond_8
    sput-object v4, Lcom/shenma/tvlauncher/HomeActivity;->ISTV:Ljava/lang/Boolean;

    .line 342
    iput-object v10, p0, Lcom/shenma/tvlauncher/HomeActivity;->devicetype:Ljava/lang/String;

    .line 345
    :goto_3
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 346
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "category"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->category:Ljava/lang/String;

    .line 347
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->initView()V

    .line 348
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->initData()V

    .line 349
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->runTime()V

    .line 351
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->initwhiteBorder()V

    .line 354
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 356
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/ComponentName;

    const-string v7, "com.shenma.tvlauncher.view.MyServices"

    invoke-direct {v5, p0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 358
    .local v5, "myServicesComponent":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 359
    .local v7, "myServicesInfo":Landroid/content/pm/ServiceInfo;
    iget-boolean v8, v7, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v8, :cond_b

    .line 366
    .end local v7    # "myServicesInfo":Landroid/content/pm/ServiceInfo;
    nop

    .line 368
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.shenma.tvlauncher.view.MyService"

    invoke-direct {v7, p0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 370
    .local v7, "myServiceComponent":Landroid/content/ComponentName;
    :try_start_1
    invoke-virtual {v4, v7, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    .line 371
    .local v8, "myServiceInfo":Landroid/content/pm/ServiceInfo;
    iget-boolean v9, v8, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v9, :cond_a

    .line 378
    .end local v8    # "myServiceInfo":Landroid/content/pm/ServiceInfo;
    nop

    .line 380
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.shenma.tvlauncher.view.JSONService"

    invoke-direct {v8, p0, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 382
    .local v8, "jsonServiceComponent":Landroid/content/ComponentName;
    :try_start_2
    invoke-virtual {v4, v8, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 383
    .local v2, "jsonServiceInfo":Landroid/content/pm/ServiceInfo;
    iget-boolean v9, v2, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v9, :cond_9

    .line 390
    .end local v2    # "jsonServiceInfo":Landroid/content/pm/ServiceInfo;
    nop

    .line 391
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/shenma/tvlauncher/HomeActivity;->lib:Ljava/lang/String;

    .line 392
    return-void

    .line 385
    .restart local v2    # "jsonServiceInfo":Landroid/content/pm/ServiceInfo;
    :cond_9
    :try_start_3
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "Interface_Style":I
    .end local v1    # "mApp":Lcom/shenma/tvlauncher/application/MyApplication;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "myServicesComponent":Landroid/content/ComponentName;
    .end local v7    # "myServiceComponent":Landroid/content/ComponentName;
    .end local v8    # "jsonServiceComponent":Landroid/content/ComponentName;
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    throw v9
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 387
    .end local v2    # "jsonServiceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v0    # "Interface_Style":I
    .restart local v1    # "mApp":Lcom/shenma/tvlauncher/application/MyApplication;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v5    # "myServicesComponent":Landroid/content/ComponentName;
    .restart local v7    # "myServiceComponent":Landroid/content/ComponentName;
    .restart local v8    # "jsonServiceComponent":Landroid/content/ComponentName;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 389
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 373
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v8, "myServiceInfo":Landroid/content/pm/ServiceInfo;
    :cond_a
    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "Interface_Style":I
    .end local v1    # "mApp":Lcom/shenma/tvlauncher/application/MyApplication;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "myServicesComponent":Landroid/content/ComponentName;
    .end local v7    # "myServiceComponent":Landroid/content/ComponentName;
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    throw v2
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 375
    .end local v8    # "myServiceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v0    # "Interface_Style":I
    .restart local v1    # "mApp":Lcom/shenma/tvlauncher/application/MyApplication;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v5    # "myServicesComponent":Landroid/content/ComponentName;
    .restart local v7    # "myServiceComponent":Landroid/content/ComponentName;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :catch_1
    move-exception v2

    .line 377
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 361
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v7, "myServicesInfo":Landroid/content/pm/ServiceInfo;
    :cond_b
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "Interface_Style":I
    .end local v1    # "mApp":Lcom/shenma/tvlauncher/application/MyApplication;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "myServicesComponent":Landroid/content/ComponentName;
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    throw v2
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 363
    .end local v7    # "myServicesInfo":Landroid/content/pm/ServiceInfo;
    .restart local v0    # "Interface_Style":I
    .restart local v1    # "mApp":Lcom/shenma/tvlauncher/application/MyApplication;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v5    # "myServicesComponent":Landroid/content/ComponentName;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :catch_2
    move-exception v2

    .line 365
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method protected onDestroy()V
    .locals 1

    .line 619
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 620
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 622
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 623
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mWallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 624
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 628
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 632
    packed-switch p1, :pswitch_data_0

    .line 657
    invoke-super {p0, p1, p2}, Lcom/shenma/tvlauncher/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 634
    :pswitch_0
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 635
    .local v0, "value":D
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/shenma/tvlauncher/R$string;->app_name:I

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, "bt":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->noticeState:Z

    if-eqz v3, :cond_2

    .line 637
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 638
    sget v3, Lcom/shenma/tvlauncher/R$id;->notice:I

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 639
    .local v3, "viewById":Landroid/view/View;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 640
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->noticeState:Z

    .end local v3    # "viewById":Landroid/view/View;
    goto :goto_0

    .line 641
    :cond_0
    iget-boolean v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->isRunning:Z

    if-eqz v3, :cond_1

    .line 642
    invoke-virtual {p0, v2, p0}, Lcom/shenma/tvlauncher/HomeActivity;->showExitDialog(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 641
    :cond_1
    :goto_0
    goto :goto_1

    .line 648
    :cond_2
    iget-boolean v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->isRunning:Z

    if-eqz v3, :cond_3

    .line 649
    invoke-virtual {p0, v2, p0}, Lcom/shenma/tvlauncher/HomeActivity;->showExitDialog(Ljava/lang/String;Landroid/content/Context;)V

    .line 655
    :cond_3
    :goto_1
    const/4 v3, 0x1

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .line 592
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onPause()V

    .line 593
    const-string v0, "HomeActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 594
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 596
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 520
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 522
    const-string/jumbo v0, "titile_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shenma/tvlauncher/HomeActivity;->titile_position:I

    .line 523
    const-string v0, "fromXDelta"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 524
    .local v0, "toX":F
    sget v1, Lcom/shenma/tvlauncher/HomeActivity;->titile_position:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 525
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 526
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->fromXDelta:F

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 528
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0, v1, v3}, Lcom/shenma/tvlauncher/HomeActivity;->initAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/TranslateAnimation;)V

    .line 529
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->iv_titile:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 530
    iput v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->fromXDelta:F

    .line 533
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 534
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 535
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->fl_main:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 536
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    .line 539
    :cond_1
    const-string/jumbo v1, "wWidth"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 540
    .local v1, "wWidth":I
    const-string/jumbo v3, "wHeight"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 541
    .local v3, "wHeight":I
    const-string/jumbo v4, "wX"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    .line 542
    .local v4, "wX":F
    const-string/jumbo v5, "wY"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    .line 543
    .local v5, "wY":F
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    .line 544
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->fl_main:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 545
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-string v7, "Interface_Style"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 546
    .local v6, "Interface_Style":I
    if-nez v6, :cond_2

    goto :goto_0

    .line 549
    :cond_2
    if-ne v6, v2, :cond_3

    goto :goto_0

    .line 552
    :cond_3
    const/4 v2, 0x2

    if-ne v6, v2, :cond_4

    goto :goto_0

    .line 555
    :cond_4
    nop

    .line 559
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 560
    .local v2, "layoutparams":Landroid/widget/FrameLayout$LayoutParams;
    float-to-int v7, v4

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 561
    float-to-int v7, v5

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 562
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 607
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onResume()V

    .line 608
    const-string v0, "HomeActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 609
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 611
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->queryInstalledApp()V

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->isRunning:Z

    .line 614
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 498
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 499
    const-string/jumbo v0, "titile_position"

    sget v1, Lcom/shenma/tvlauncher/HomeActivity;->titile_position:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 500
    const-string v0, "fromXDelta"

    iget v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->fromXDelta:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 501
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 503
    .local v0, "wWidth":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 504
    .local v1, "wHeight":I
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v2

    .line 505
    .local v2, "wX":F
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getY()F

    move-result v3

    .line 506
    .local v3, "wY":F
    const-string/jumbo v4, "wWidth"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 507
    const-string/jumbo v4, "wX"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 508
    const-string/jumbo v4, "wHeight"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 509
    const-string/jumbo v4, "wY"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 514
    .end local v0    # "wWidth":I
    .end local v1    # "wHeight":I
    .end local v2    # "wX":F
    .end local v3    # "wY":F
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 574
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStart()V

    .line 577
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 582
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStop()V

    .line 583
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 587
    :cond_0
    return-void
.end method

.method public queryInstalledApp()V
    .locals 2

    .line 2338
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shenma/tvlauncher/HomeActivity$56;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/HomeActivity$56;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2343
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2344
    return-void
.end method

.method public returnBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 2262
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shenma/tvlauncher/HomeActivity$52;

    invoke-direct {v1, p0, p1}, Lcom/shenma/tvlauncher/HomeActivity$52;-><init>(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2284
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2285
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected setListener()V
    .locals 19

    .line 1682
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "wallpaperFileName"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1683
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1684
    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->changeBackImage(Ljava/lang/String;)V

    .line 1687
    :cond_0
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity;->title_group:Landroid/widget/RadioGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iput v2, v0, Lcom/shenma/tvlauncher/HomeActivity;->fromXDelta:F

    .line 1688
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity;->title_group:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v2

    .line 1689
    .local v2, "j":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 1690
    move v6, v5

    .line 1691
    .local v6, "index":I
    iget-object v7, v0, Lcom/shenma/tvlauncher/HomeActivity;->title_group:Landroid/widget/RadioGroup;

    invoke-virtual {v7, v5}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1692
    .local v7, "v":Landroid/view/View;
    new-instance v8, Lcom/shenma/tvlauncher/HomeActivity$39;

    invoke-direct {v8, v0, v6}, Lcom/shenma/tvlauncher/HomeActivity$39;-><init>(Lcom/shenma/tvlauncher/HomeActivity;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1707
    new-instance v8, Lcom/shenma/tvlauncher/HomeActivity$40;

    invoke-direct {v8, v0, v6}, Lcom/shenma/tvlauncher/HomeActivity$40;-><init>(Lcom/shenma/tvlauncher/HomeActivity;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1689
    .end local v6    # "index":I
    .end local v7    # "v":Landroid/view/View;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1722
    .end local v5    # "i":I
    :cond_1
    iget-object v5, v0, Lcom/shenma/tvlauncher/HomeActivity;->category:Ljava/lang/String;

    .line 1723
    .local v5, "json":Ljava/lang/String;
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$41;

    invoke-direct {v7, v0}, Lcom/shenma/tvlauncher/HomeActivity$41;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v7}, Lcom/shenma/tvlauncher/HomeActivity$41;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1724
    .local v6, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    .local v7, "ii":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 1725
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 1726
    .local v8, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v9, "type_en"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1727
    .local v9, "typeEn":Ljava/lang/String;
    const-string/jumbo v10, "type_name"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1728
    .local v10, "typeName":Ljava/lang/String;
    const-string/jumbo v11, "type_status"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    .line 1729
    .local v11, "typestatus":Ljava/lang/Number;
    const-string v12, "categorypwd"

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v0, Lcom/shenma/tvlauncher/HomeActivity;->categorypwd:Ljava/lang/String;

    .line 1730
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 1731
    .local v12, "typeStatus":I
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/shenma/tvlauncher/R$dimen;->sm_100:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 1735
    .local v13, "width":I
    iget-object v14, v0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-string v15, "Interface_Style"

    invoke-static {v14, v15, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    .line 1736
    .local v14, "Interface_Style":I
    const/4 v15, 0x0

    .line 1738
    .local v15, "height":I
    const/4 v4, 0x3

    const/4 v3, 0x1

    if-eqz v14, :cond_4

    if-ne v14, v4, :cond_2

    goto :goto_2

    .line 1740
    :cond_2
    if-ne v14, v3, :cond_3

    .line 1742
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v3, Lcom/shenma/tvlauncher/R$dimen;->sm_40:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    goto :goto_3

    .line 1743
    :cond_3
    const/4 v3, 0x2

    if-ne v14, v3, :cond_5

    .line 1744
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$dimen;->sm_40:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    goto :goto_3

    .line 1739
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$dimen;->sm_40:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 1747
    :cond_5
    :goto_3
    new-instance v3, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v3, v13, v15}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 1749
    .local v3, "layoutParams":Landroid/widget/RadioGroup$LayoutParams;
    new-instance v4, Landroid/widget/RadioButton;

    invoke-direct {v4, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 1750
    .local v4, "radioButton":Landroid/widget/RadioButton;
    move-object/from16 v16, v1

    .end local v1    # "fileName":Ljava/lang/String;
    .local v16, "fileName":Ljava/lang/String;
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move/from16 v17, v2

    const/4 v2, 0x1

    .end local v2    # "j":I
    .local v17, "j":I
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 1751
    .local v1, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1752
    invoke-virtual {v4, v7}, Landroid/widget/RadioButton;->setId(I)V

    .line 1753
    invoke-virtual {v4, v10}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1754
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v18, v1

    .end local v1    # "typeface":Landroid/graphics/Typeface;
    .local v18, "typeface":Landroid/graphics/Typeface;
    sget v1, Lcom/shenma/tvlauncher/R$dimen;->sm_18:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v1}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 1755
    const v1, -0x33000001    # -1.3421772E8f

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1756
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1757
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1759
    const v1, 0x106000d

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 1760
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1761
    const/16 v1, 0x11

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setGravity(I)V

    .line 1762
    const v1, 0x7fffffff

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setMarqueeRepeatLimit(I)V

    .line 1763
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setSingleLine(Z)V

    .line 1766
    if-eqz v14, :cond_9

    const/4 v2, 0x3

    if-ne v14, v2, :cond_6

    goto :goto_5

    .line 1770
    :cond_6
    if-ne v14, v1, :cond_7

    .line 1772
    iget-object v1, v0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->home_top_item_bgs:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1773
    .local v1, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_4

    .line 1774
    :cond_7
    const/4 v1, 0x2

    if-ne v14, v1, :cond_8

    .line 1776
    iget-object v1, v0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->home_top_item_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1777
    .restart local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 1774
    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    :goto_4
    goto :goto_6

    .line 1768
    :cond_9
    :goto_5
    iget-object v1, v0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->home_top_item_bgs:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1769
    .restart local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1770
    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    nop

    .line 1779
    :goto_6
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 1787
    new-instance v1, Lcom/shenma/tvlauncher/HomeActivity$42;

    invoke-direct {v1, v0, v9, v10, v12}, Lcom/shenma/tvlauncher/HomeActivity$42;-><init>(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1892
    iget-object v1, v0, Lcom/shenma/tvlauncher/HomeActivity;->rg_video_type_bottom:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1724
    .end local v3    # "layoutParams":Landroid/widget/RadioGroup$LayoutParams;
    .end local v4    # "radioButton":Landroid/widget/RadioButton;
    .end local v8    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "typeEn":Ljava/lang/String;
    .end local v10    # "typeName":Ljava/lang/String;
    .end local v11    # "typestatus":Ljava/lang/Number;
    .end local v12    # "typeStatus":I
    .end local v13    # "width":I
    .end local v14    # "Interface_Style":I
    .end local v15    # "height":I
    .end local v18    # "typeface":Landroid/graphics/Typeface;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_1

    .end local v16    # "fileName":Ljava/lang/String;
    .end local v17    # "j":I
    .local v1, "fileName":Ljava/lang/String;
    .restart local v2    # "j":I
    :cond_a
    move-object/from16 v16, v1

    move/from16 v17, v2

    .line 1894
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "j":I
    .end local v7    # "ii":I
    .restart local v16    # "fileName":Ljava/lang/String;
    .restart local v17    # "j":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 1895
    .local v1, "k":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_b

    .line 1896
    move v3, v2

    .line 1898
    .local v3, "paramInt":I
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity;->rg_video_type_bottom:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$43;

    invoke-direct {v7, v0, v3}, Lcom/shenma/tvlauncher/HomeActivity$43;-><init>(Lcom/shenma/tvlauncher/HomeActivity;I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1895
    .end local v3    # "paramInt":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1982
    .end local v2    # "i":I
    :cond_b
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity;->title_group:Landroid/widget/RadioGroup;

    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity$44;

    invoke-direct {v3, v0}, Lcom/shenma/tvlauncher/HomeActivity$44;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1990
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity;->title_group:Landroid/widget/RadioGroup;

    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity$45;

    invoke-direct {v3, v0}, Lcom/shenma/tvlauncher/HomeActivity$45;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1998
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity;->vpager:Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity$46;

    invoke-direct {v3, v0}, Lcom/shenma/tvlauncher/HomeActivity$46;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2008
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity;->vpager:Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity$47;

    invoke-direct {v3, v0}, Lcom/shenma/tvlauncher/HomeActivity$47;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 2092
    return-void
.end method
