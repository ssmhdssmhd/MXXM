.class public Lcom/shenma/tvlauncher/HomeActivity2;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "HomeActivity2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;,
        Lcom/shenma/tvlauncher/HomeActivity2$WindowMessageID;
    }
.end annotation


# static fields
.field private static final EXIT_INTERVAL:I = 0x7d0

.field public static LANDSCAPE_MODE:I

.field public static PORTRAIT_MODE:I


# instance fields
.field private En:Ljava/lang/String;

.field private ISAPP:Ljava/lang/Boolean;

.field private Logo_url:Ljava/lang/String;

.field private Mac:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private PWD:Ljava/lang/String;

.field private USER_TYPE:I

.field adapter:Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;

.field private app_nshow:Ljava/lang/String;

.field private app_nurl:Ljava/lang/String;

.field private bgImageView:Landroid/widget/ImageView;

.field private bitmap:Landroid/graphics/Bitmap;

.field private categorypwd:Ljava/lang/String;

.field private compel:I

.field private countSize:F

.field private currentSize:F

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private fromApp:Ljava/lang/Boolean;

.field private homeHandler:Landroid/os/Handler;

.field private interface_style:I

.field private isMenuItemClick:Z

.field private isProgrammaticSelection:Z

.field private isShowSiftMenu:Z

.field private lastBackPressedTime:J

.field private lastPosition:I

.field private logo:Landroid/widget/ImageView;

.field private mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

.field private mDialog:Landroid/app/Dialog;

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private mWallReceiver:Landroid/content/BroadcastReceiver;

.field private mediaHandler:Landroid/os/Handler;

.field menuView:Lcom/view/SingleChoiceMenuView;

.field private noticeView:Landroid/view/View;

.field private overlayer:Landroid/view/View;

.field private password:Ljava/lang/String;

.field private player_download_url:Ljava/lang/String;

.field private player_name:Ljava/lang/String;

.field private player_update:Ljava/lang/String;

.field private player_zip_md5:Ljava/lang/String;

.field private rootview:Landroid/view/ViewGroup;

.field protected sp:Landroid/content/SharedPreferences;

.field private temperature:Landroid/widget/TextView;

.field private tvTimeHome2:Landroid/widget/TextView;

.field private tv_main_date:Landroid/widget/TextView;

.field private tv_time:Landroid/widget/TextView;

.field private tv_update_msg:Landroid/widget/TextView;

.field private username:Ljava/lang/String;

.field private viewPager2:Landroidx/viewpager2/widget/ViewPager2;

.field private zb:Ljava/util/Map;


# direct methods
.method static bridge synthetic -$$Nest$fgetEn(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->En:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetMac(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->Mac:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetName(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->Name:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetapp_nshow(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->app_nshow:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetapp_nurl(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->app_nurl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbgImageView(Lcom/shenma/tvlauncher/HomeActivity2;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->bgImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcategorypwd(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->categorypwd:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdataList(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->dataList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethomeHandler(Lcom/shenma/tvlauncher/HomeActivity2;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->homeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinterface_style(Lcom/shenma/tvlauncher/HomeActivity2;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->interface_style:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisMenuItemClick(Lcom/shenma/tvlauncher/HomeActivity2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->isMenuItemClick:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisProgrammaticSelection(Lcom/shenma/tvlauncher/HomeActivity2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->isProgrammaticSelection:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisShowSiftMenu(Lcom/shenma/tvlauncher/HomeActivity2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->isShowSiftMenu:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastPosition(Lcom/shenma/tvlauncher/HomeActivity2;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->lastPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/shenma/tvlauncher/HomeActivity2;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoverlayer(Lcom/shenma/tvlauncher/HomeActivity2;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->overlayer:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplayer_download_url(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->player_download_url:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrootview(Lcom/shenma/tvlauncher/HomeActivity2;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->rootview:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvTimeHome2(Lcom/shenma/tvlauncher/HomeActivity2;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->tvTimeHome2:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetusername(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetviewPager2(Lcom/shenma/tvlauncher/HomeActivity2;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputPWD(Lcom/shenma/tvlauncher/HomeActivity2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->PWD:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbitmap(Lcom/shenma/tvlauncher/HomeActivity2;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisMenuItemClick(Lcom/shenma/tvlauncher/HomeActivity2;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->isMenuItemClick:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisProgrammaticSelection(Lcom/shenma/tvlauncher/HomeActivity2;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->isProgrammaticSelection:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisShowSiftMenu(Lcom/shenma/tvlauncher/HomeActivity2;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->isShowSiftMenu:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastPosition(Lcom/shenma/tvlauncher/HomeActivity2;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->lastPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputusername(Lcom/shenma/tvlauncher/HomeActivity2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mUpdateDialog(Lcom/shenma/tvlauncher/HomeActivity2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/HomeActivity2;->UpdateDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeBackImage(Lcom/shenma/tvlauncher/HomeActivity2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/HomeActivity2;->changeBackImage(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogoloadImg(Lcom/shenma/tvlauncher/HomeActivity2;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity2;->logoloadImg()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotice(Lcom/shenma/tvlauncher/HomeActivity2;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity2;->notice()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMessage(Lcom/shenma/tvlauncher/HomeActivity2;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/HomeActivity2;->onMessage(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowPasswordDialog(Lcom/shenma/tvlauncher/HomeActivity2;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity2;->showPasswordDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoSearch(Lcom/shenma/tvlauncher/HomeActivity2;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity2;->toSearch()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 110
    const/4 v0, 0x4

    sput v0, Lcom/shenma/tvlauncher/HomeActivity2;->LANDSCAPE_MODE:I

    .line 111
    const/4 v0, 0x5

    sput v0, Lcom/shenma/tvlauncher/HomeActivity2;->PORTRAIT_MODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 104
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->isProgrammaticSelection:Z

    .line 114
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->isMenuItemClick:Z

    .line 126
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->PWD:Ljava/lang/String;

    .line 134
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->lastBackPressedTime:J

    .line 157
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->ISAPP:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->fromApp:Ljava/lang/Boolean;

    .line 162
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->isShowSiftMenu:Z

    .line 163
    iput v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->lastPosition:I

    .line 175
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity2$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/HomeActivity2$1;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->homeHandler:Landroid/os/Handler;

    .line 183
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity2$2;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/HomeActivity2$2;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mediaHandler:Landroid/os/Handler;

    .line 465
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity2$15;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/HomeActivity2$15;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mWallReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private AutoMacRegister()V
    .locals 13

    .line 1455
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1456
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1457
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1458
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1459
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1460
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1461
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1462
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 1463
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity2$38;

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

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity2$36;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/HomeActivity2$36;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity2$37;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity2$37;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/HomeActivity2$38;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1505
    return-void
.end method

.method private AutoRegister()V
    .locals 13

    .line 1664
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1665
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1666
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1667
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1668
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1669
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1670
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1671
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 1672
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity2$47;

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

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity2$45;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/HomeActivity2$45;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity2$46;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity2$46;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/HomeActivity2$47;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1714
    return-void
.end method

.method private MacLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "rc4data"    # Ljava/lang/String;
    .param p3, "sign"    # Ljava/lang/String;

    .line 1367
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1368
    new-instance v1, Lcom/shenma/tvlauncher/HomeActivity2$35;

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity2$33;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity2$33;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    new-instance v6, Lcom/shenma/tvlauncher/HomeActivity2$34;

    invoke-direct {v6, p0}, Lcom/shenma/tvlauncher/HomeActivity2$34;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

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
    invoke-direct/range {v1 .. v8}, Lcom/shenma/tvlauncher/HomeActivity2$35;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    .local v1, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object p1, v2, Lcom/shenma/tvlauncher/HomeActivity2;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1395
    return-void
.end method

.method private UpdateDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "remark"    # Ljava/lang/String;
    .param p2, "updateurl"    # Ljava/lang/String;

    .line 883
    new-instance v0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 884
    .local v0, "builder":Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
    sget v1, Lcom/shenma/tvlauncher/R$string;->Upgrade:I

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setTitle(I)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 885
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 886
    .local v1, "remarks":[Ljava/lang/String;
    const-string v2, ""

    .line 887
    .local v2, "str":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 888
    array-length v4, v1

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    .line 889
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 890
    goto :goto_1

    .line 892
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

    .line 887
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 896
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 897
    iget v3, p0, Lcom/shenma/tvlauncher/HomeActivity2;->compel:I

    if-ne v3, v5, :cond_2

    .line 898
    sget v3, Lcom/shenma/tvlauncher/R$string;->Update_Now:I

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity2$27;

    invoke-direct {v4, p0, p2}, Lcom/shenma/tvlauncher/HomeActivity2$27;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 906
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->create()Lcom/shenma/tvlauncher/view/HomeDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/view/HomeDialog;->show()V

    goto :goto_2

    .line 908
    :cond_2
    sget v3, Lcom/shenma/tvlauncher/R$string;->Update_Now:I

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity2$28;

    invoke-direct {v4, p0, p2}, Lcom/shenma/tvlauncher/HomeActivity2$28;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 916
    sget v3, Lcom/shenma/tvlauncher/R$string;->Update_later:I

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity2$29;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/HomeActivity2$29;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    invoke-virtual {v0, v3, v4}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 923
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->creates()Lcom/shenma/tvlauncher/view/HomeDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/view/HomeDialog;->shows()V

    .line 925
    :goto_2
    return-void
.end method

.method private accountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "rc4data"    # Ljava/lang/String;
    .param p3, "sign"    # Ljava/lang/String;

    .line 1525
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1526
    new-instance v1, Lcom/shenma/tvlauncher/HomeActivity2$41;

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity2$39;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity2$39;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    new-instance v6, Lcom/shenma/tvlauncher/HomeActivity2$40;

    invoke-direct {v6, p0}, Lcom/shenma/tvlauncher/HomeActivity2$40;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

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
    invoke-direct/range {v1 .. v8}, Lcom/shenma/tvlauncher/HomeActivity2$41;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    .local v1, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object p1, v2, Lcom/shenma/tvlauncher/HomeActivity2;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1553
    return-void
.end method

.method private changeBackImage(Ljava/lang/String;)V
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    .line 482
    if-nez p1, :cond_0

    .line 483
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    const-string v2, "open_blur"

    const-string/jumbo v3, "\u5173"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u5f00"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "/"

    if-eqz v1, :cond_4

    .line 488
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity2;->context:Landroid/content/Context;

    .line 489
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

    .line 490
    if-nez v0, :cond_3

    .line 492
    const/4 v1, 0x0

    const/4 v3, 0x7

    :try_start_0
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity2;->context:Landroid/content/Context;

    .line 493
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

    .line 494
    .local v5, "tempBmp":Landroid/graphics/Bitmap;
    if-nez v5, :cond_1

    .line 495
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity2;->context:Landroid/content/Context;

    .line 496
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

    .line 497
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity2;->context:Landroid/content/Context;

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

    .line 500
    :cond_1
    invoke-static {v5, v3, v1}, Lcom/shenma/tvlauncher/utils/BlurUtils;->doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    .line 501
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity2;->context:Landroid/content/Context;

    .line 502
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

    .line 501
    invoke-virtual {v6, v7, v0}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .end local v5    # "tempBmp":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 503
    :catch_0
    move-exception v5

    .line 504
    .local v5, "oom":Ljava/lang/OutOfMemoryError;
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    invoke-virtual {v6}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->clearAllImageCache()V

    .line 505
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity2;->context:Landroid/content/Context;

    .line 506
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

    .line 507
    .local v6, "tempBmp":Landroid/graphics/Bitmap;
    if-nez v6, :cond_2

    .line 508
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity2;->context:Landroid/content/Context;

    .line 509
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

    .line 510
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/shenma/tvlauncher/HomeActivity2;->context:Landroid/content/Context;

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

    .line 513
    :cond_2
    invoke-static {v6, v3, v1}, Lcom/shenma/tvlauncher/utils/BlurUtils;->doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity2;->context:Landroid/content/Context;

    .line 515
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

    .line 514
    invoke-virtual {v1, v2, v0}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 518
    .end local v5    # "oom":Ljava/lang/OutOfMemoryError;
    .end local v6    # "tempBmp":Landroid/graphics/Bitmap;
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->rootview:Landroid/view/ViewGroup;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 522
    :cond_4
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity2;->context:Landroid/content/Context;

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

    .line 523
    if-nez v0, :cond_5

    .line 525
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2;->context:Landroid/content/Context;

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

    .line 526
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity2;->context:Landroid/content/Context;

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

    .line 533
    goto :goto_1

    .line 528
    :catch_1
    move-exception v1

    .line 529
    .local v1, "oom":Ljava/lang/OutOfMemoryError;
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->clearAllImageCache()V

    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity2;->context:Landroid/content/Context;

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

    .line 531
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity2;->context:Landroid/content/Context;

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

    .line 535
    .end local v1    # "oom":Ljava/lang/OutOfMemoryError;
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->rootview:Landroid/view/ViewGroup;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 539
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_6
    :goto_2
    return-void
.end method

.method private checkUpdate()V
    .locals 13

    .line 1032
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1033
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1034
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1035
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1036
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1037
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1038
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1039
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 1040
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity2$32;

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

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity2$30;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/HomeActivity2$30;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity2$31;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity2$31;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/HomeActivity2$32;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1082
    return-void
.end method

.method public static extractWeatherInfo(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "weatherText"    # Ljava/lang/String;

    .line 541
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 544
    .local v0, "result":[Ljava/lang/String;
    const-string/jumbo v1, "\u661f\u671f[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u65e5\u5929]\\s*(\\p{Script=Han}+)"

    .line 545
    .local v1, "regionPattern":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 546
    .local v2, "regionRegex":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 548
    .local v3, "regionMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 549
    const/4 v4, 0x0

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    .line 553
    :cond_0
    const-string/jumbo v4, "\u5f53\u524d(\\d+\\.?\\d*\u2103)"

    .line 554
    .local v4, "tempPattern":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 555
    .local v6, "tempRegex":Ljava/util/regex/Pattern;
    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 557
    .local v7, "tempMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 558
    invoke-virtual {v7, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v5

    .line 561
    :cond_1
    return-object v0
.end method

.method private getGongGao()V
    .locals 13

    .line 566
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity2$16;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/HomeActivity2$16;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mQueue:Lcom/android/volley/RequestQueue;

    .line 573
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 574
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 575
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 576
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 577
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 578
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 579
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 580
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity2$19;

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

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity2$17;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/HomeActivity2$17;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity2$18;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity2$18;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/HomeActivity2$19;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 623
    return-void
.end method

.method private initLogin()V
    .locals 13

    .line 1249
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

    .line 1250
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

    .line 1251
    .local v8, "defaultValues":[Ljava/lang/String;
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1252
    .local v0, "sharedIntData":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v1

    const/4 v9, 0x0

    if-ge v6, v7, :cond_1

    .line 1253
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    aget-object v10, v1, v6

    invoke-interface {v7, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1254
    .local v7, "value":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 1255
    iget-object v9, p0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    aget-object v10, v1, v6

    aget-object v11, v1, v6

    aget-object v12, v8, v6

    .line 1256
    invoke-static {p0, v11, v12}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 1257
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1258
    if-nez v6, :cond_0

    .line 1259
    iget-object v9, p0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    aget v10, v0, v6

    .line 1260
    const-string v11, "mIsHwDecode"

    invoke-interface {v9, v11, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 1261
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1252
    .end local v7    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1266
    .end local v6    # "i":I
    :cond_1
    const-string v6, "login_type"

    invoke-static {p0, v6, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 1267
    .local v6, "login_type":I
    const-string v7, "passWord"

    const-string/jumbo v10, "userName"

    if-ne v6, v3, :cond_3

    .line 1269
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    .line 1270
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->password:Ljava/lang/String;

    .line 1271
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->password:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1272
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    .line 1273
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->password:Ljava/lang/String;

    .line 1274
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity2;->password:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v3}, Lcom/shenma/tvlauncher/HomeActivity2;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1276
    :cond_2
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity2;->password:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v3}, Lcom/shenma/tvlauncher/HomeActivity2;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 1278
    :cond_3
    if-eqz v6, :cond_6

    if-ne v6, v4, :cond_4

    goto :goto_1

    .line 1285
    :cond_4
    if-ne v6, v5, :cond_7

    .line 1287
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    .line 1288
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->password:Ljava/lang/String;

    .line 1289
    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/MacUtils;->getMac(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->Mac:Ljava/lang/String;

    .line 1290
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->password:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 1291
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->Mac:Ljava/lang/String;

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    .line 1292
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->Mac:Ljava/lang/String;

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->password:Ljava/lang/String;

    .line 1293
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2;->password:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/shenma/tvlauncher/HomeActivity2;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 1295
    :cond_5
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2;->password:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/shenma/tvlauncher/HomeActivity2;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 1280
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    .line 1281
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2;->password:Ljava/lang/String;

    .line 1282
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2;->password:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 1283
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity2;->password:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v2}, Lcom/shenma/tvlauncher/HomeActivity2;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1298
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

    .line 930
    const-string v0, "Logo_url"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 931
    .local v0, "logo_url":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 932
    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->Logo_url:Ljava/lang/String;

    .line 933
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mediaHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 935
    :cond_0
    return-void
.end method

.method private initNotice()V
    .locals 13

    .line 799
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mQueue:Lcom/android/volley/RequestQueue;

    .line 800
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 801
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 802
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 803
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 804
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 805
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 806
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 807
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity2$25;

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

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity2$23;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/HomeActivity2$23;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity2$24;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity2$24;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/HomeActivity2$25;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 849
    return-void
.end method

.method private logoloadImg()V
    .locals 2

    .line 761
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->Logo_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->logo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 762
    return-void
.end method

.method private markcodeLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "rc4data"    # Ljava/lang/String;
    .param p3, "sign"    # Ljava/lang/String;

    .line 1593
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1594
    new-instance v1, Lcom/shenma/tvlauncher/HomeActivity2$44;

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity2$42;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity2$42;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    new-instance v6, Lcom/shenma/tvlauncher/HomeActivity2$43;

    invoke-direct {v6, p0}, Lcom/shenma/tvlauncher/HomeActivity2$43;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

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
    invoke-direct/range {v1 .. v8}, Lcom/shenma/tvlauncher/HomeActivity2$44;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    .local v1, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object p1, v2, Lcom/shenma/tvlauncher/HomeActivity2;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1621
    return-void
.end method

.method private notice()V
    .locals 3

    .line 739
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->noticeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 741
    sget v0, Lcom/shenma/tvlauncher/R$id;->notice_iamge_url:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 742
    .local v0, "imageView":Landroid/widget/ImageView;
    sget v2, Lcom/shenma/tvlauncher/R$id;->notice_button:I

    invoke-virtual {p0, v2}, Lcom/shenma/tvlauncher/HomeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 743
    .local v2, "notice_button":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 744
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 746
    new-instance v1, Lcom/shenma/tvlauncher/HomeActivity2$22;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/HomeActivity2$22;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "notice_button":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private onMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 955
    if-eqz p1, :cond_0

    .line 956
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 985
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->currentSize:F

    .line 986
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->tv_update_msg:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6b63\u5728\u4e0b\u8f7d\u66f4\u65b0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->currentSize:F

    iget v3, p0, Lcom/shenma/tvlauncher/HomeActivity2;->countSize:F

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    iget v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->currentSize:F

    iget v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->countSize:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->tv_update_msg:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 982
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->countSize:F

    .line 983
    goto :goto_0

    .line 965
    :sswitch_2
    goto :goto_0

    .line 968
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity2;->installApk(Ljava/lang/String;)V

    .line 969
    goto :goto_0

    .line 961
    :sswitch_4
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 962
    goto :goto_0

    .line 972
    :sswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->tv_time:Landroid/widget/TextView;

    const-string v1, " "

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getStringTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 973
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->tv_main_date:Landroid/widget/TextView;

    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->getStringData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->homeHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 980
    goto :goto_0

    .line 958
    :sswitch_6
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "\u670d\u52a1\u5668\u5185\u90e8\u5f02\u5e38"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 959
    nop

    .line 994
    :cond_0
    :goto_0
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

.method private registerWallpaperReceiver()V
    .locals 2

    .line 460
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 461
    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string v1, "com.hd.changewallpaper"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mWallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/HomeActivity2;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 463
    return-void
.end method

.method private requestlogin(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 21
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 1303
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

    .line 1304
    .local v6, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1305
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1306
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1307
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v10, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1308
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1310
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

    .line 1311
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

    .line 1312
    .local v13, "logindate":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    move-object/from16 v18, v12

    const/4 v12, 0x1

    invoke-static {v1, v0, v12}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 1313
    .local v3, "miType":I
    if-ne v3, v12, :cond_0

    .line 1314
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

    invoke-direct {v1, v0, v12, v7}, Lcom/shenma/tvlauncher/HomeActivity2;->accountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v16

    goto/16 :goto_1

    .line 1315
    .end local v19    # "RC4KEY":Ljava/lang/String;
    .restart local v7    # "RC4KEY":Ljava/lang/String;
    :cond_0
    move-object/from16 v19, v7

    move-object/from16 v20, v14

    .end local v7    # "RC4KEY":Ljava/lang/String;
    .restart local v19    # "RC4KEY":Ljava/lang/String;
    const/4 v7, 0x2

    if-ne v3, v7, :cond_1

    .line 1317
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

    invoke-direct {v1, v0, v7, v12}, Lcom/shenma/tvlauncher/HomeActivity2;->accountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1318
    :catch_0
    move-exception v0

    .line 1319
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1320
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    move-object/from16 v7, v16

    goto :goto_1

    .line 1321
    :cond_1
    const/4 v7, 0x3

    if-ne v3, v7, :cond_2

    .line 1322
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

    invoke-direct {v1, v0, v12, v3}, Lcom/shenma/tvlauncher/HomeActivity2;->accountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1321
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

    .line 1310
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

    .line 1328
    .end local v16    # "AESKEY":Ljava/lang/String;
    .local v7, "AESKEY":Ljava/lang/String;
    .restart local v19    # "RC4KEY":Ljava/lang/String;
    :goto_1
    move/from16 v3, p3

    const/4 v12, 0x1

    if-ne v3, v12, :cond_6

    .line 1329
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

    .line 1330
    .local v14, "logindate":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v1, v0, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    .line 1331
    .local v12, "miType":I
    if-ne v12, v13, :cond_4

    .line 1332
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

    invoke-direct {v1, v0, v2, v13}, Lcom/shenma/tvlauncher/HomeActivity2;->markcodeLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1333
    :cond_4
    move-object/from16 v16, v15

    const/4 v2, 0x2

    if-ne v12, v2, :cond_5

    .line 1335
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

    invoke-direct {v1, v0, v2, v13}, Lcom/shenma/tvlauncher/HomeActivity2;->markcodeLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1336
    :catch_1
    move-exception v0

    .line 1337
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1338
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    .line 1339
    :cond_5
    const/4 v2, 0x3

    if-ne v12, v2, :cond_7

    .line 1340
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

    invoke-direct {v1, v0, v2, v13}, Lcom/shenma/tvlauncher/HomeActivity2;->markcodeLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1328
    .end local v12    # "miType":I
    .end local v14    # "logindate":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v15

    .line 1346
    :cond_7
    :goto_3
    const/4 v2, 0x2

    if-ne v3, v2, :cond_a

    .line 1347
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

    .line 1348
    .local v12, "logindate":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-static {v1, v0, v14}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    .line 1349
    .local v15, "miType":I
    if-ne v15, v14, :cond_8

    .line 1350
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

    invoke-direct {v1, v0, v4, v2}, Lcom/shenma/tvlauncher/HomeActivity2;->MacLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1351
    .end local v14    # "RC4KEY":Ljava/lang/String;
    .restart local v19    # "RC4KEY":Ljava/lang/String;
    :cond_8
    move-object/from16 v14, v19

    .end local v19    # "RC4KEY":Ljava/lang/String;
    .restart local v14    # "RC4KEY":Ljava/lang/String;
    const/4 v2, 0x2

    if-ne v15, v2, :cond_9

    .line 1353
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

    invoke-direct {v1, v0, v2, v4}, Lcom/shenma/tvlauncher/HomeActivity2;->MacLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 1354
    :catch_2
    move-exception v0

    .line 1355
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1356
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    goto :goto_5

    .line 1357
    :cond_9
    const/4 v2, 0x3

    if-ne v15, v2, :cond_b

    .line 1358
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

    invoke-direct {v1, v0, v2, v4}, Lcom/shenma/tvlauncher/HomeActivity2;->MacLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1346
    .end local v12    # "logindate":Ljava/lang/String;
    .end local v14    # "RC4KEY":Ljava/lang/String;
    .end local v15    # "miType":I
    .restart local v19    # "RC4KEY":Ljava/lang/String;
    :cond_a
    move-object/from16 v13, p2

    move-object/from16 v14, v19

    .line 1361
    .end local v19    # "RC4KEY":Ljava/lang/String;
    .restart local v14    # "RC4KEY":Ljava/lang/String;
    :cond_b
    :goto_5
    return-void
.end method

.method private showPasswordDialog()V
    .locals 18

    .line 1137
    move-object/from16 v0, p0

    const-string v1, "live"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1138
    .local v1, "live":I
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity2;->zb:Ljava/util/Map;

    const-string/jumbo v3, "type_en"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1139
    .local v2, "typeEn":Ljava/lang/String;
    iget-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity2;->zb:Ljava/util/Map;

    const-string/jumbo v4, "type_name"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1140
    .local v3, "typeName":Ljava/lang/String;
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity2;->zb:Ljava/util/Map;

    const-string/jumbo v5, "type_status"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    .line 1141
    .local v4, "typestatus":Ljava/lang/Number;
    iget-object v5, v0, Lcom/shenma/tvlauncher/HomeActivity2;->zb:Ljava/util/Map;

    const-string v6, "categorypwd"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v0, Lcom/shenma/tvlauncher/HomeActivity2;->categorypwd:Ljava/lang/String;

    .line 1142
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 1143
    .local v5, "typeStatus":I
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1144
    .local v6, "pBundle":Landroid/os/Bundle;
    const-string v7, "TYPE"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const-string v7, "TYPENAME"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const-string v7, "999999999"

    const-string v10, "EMPOWER"

    const-string v11, "USER"

    const-string v12, "LIVE"

    const-string v13, ""

    const-string/jumbo v14, "vip"

    const/4 v15, 0x0

    const-wide/16 v16, 0x3e8

    const-string/jumbo v8, "userName"

    const/4 v9, 0x1

    if-eq v5, v9, :cond_8

    .line 1147
    iput-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity2;->En:Ljava/lang/String;

    .line 1148
    iput-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity2;->Name:Ljava/lang/String;

    .line 1149
    iget-object v9, v0, Lcom/shenma/tvlauncher/HomeActivity2;->PWD:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 1150
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1151
    iget-object v9, v0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9, v8, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1152
    .local v8, "username":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1153
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1154
    .local v7, "mIntent":Landroid/content/Intent;
    const-class v9, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1155
    invoke-virtual {v0, v7}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1156
    .end local v7    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1157
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long v9, v9, v16

    .line 1158
    .local v9, "time":J
    iget-object v11, v0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v11, v14, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1159
    .local v11, "vip":J
    cmp-long v15, v9, v11

    if-lez v15, :cond_1

    iget-object v15, v0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v15, v14, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1160
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1161
    .restart local v7    # "mIntent":Landroid/content/Intent;
    const-class v13, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-virtual {v7, v0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1162
    invoke-virtual {v0, v7}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1163
    .end local v7    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1164
    :cond_1
    const/4 v7, 0x1

    if-ne v1, v7, :cond_2

    .line 1165
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1166
    .restart local v7    # "mIntent":Landroid/content/Intent;
    const-class v13, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v7, v0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1167
    invoke-virtual {v0, v7}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1168
    .end local v7    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1169
    :cond_2
    sget v7, Lcom/shenma/tvlauncher/R$string;->Not_yet_activated:I

    sget v13, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v0, v7, v13}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1173
    .end local v9    # "time":J
    .end local v11    # "vip":J
    :goto_0
    return-void

    .line 1175
    .end local v8    # "username":Ljava/lang/String;
    :cond_3
    const-class v7, Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-virtual {v0, v7, v6}, Lcom/shenma/tvlauncher/HomeActivity2;->openActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 1177
    :cond_4
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1178
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1179
    .restart local v7    # "mIntent":Landroid/content/Intent;
    const-class v8, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1180
    invoke-virtual {v0, v7}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1181
    return-void

    .line 1182
    .end local v7    # "mIntent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1183
    iget-object v7, v0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v7, v8, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1184
    .local v7, "username":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1185
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1186
    .local v8, "mIntent":Landroid/content/Intent;
    const-class v9, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1187
    invoke-virtual {v0, v8}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1188
    .end local v8    # "mIntent":Landroid/content/Intent;
    goto :goto_1

    .line 1189
    :cond_6
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1190
    .restart local v8    # "mIntent":Landroid/content/Intent;
    const-class v9, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1191
    invoke-virtual {v0, v8}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1193
    .end local v8    # "mIntent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 1195
    .end local v7    # "username":Ljava/lang/String;
    :cond_7
    invoke-direct {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->showUserDialog()V

    goto/16 :goto_4

    .line 1199
    :cond_8
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1200
    iget-object v9, v0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9, v8, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1201
    .local v8, "username":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1202
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1203
    .local v7, "mIntent":Landroid/content/Intent;
    const-class v9, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1204
    invoke-virtual {v0, v7}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1205
    .end local v7    # "mIntent":Landroid/content/Intent;
    goto :goto_2

    .line 1206
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long v9, v9, v16

    .line 1207
    .restart local v9    # "time":J
    iget-object v11, v0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v11, v14, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1208
    .restart local v11    # "vip":J
    cmp-long v15, v9, v11

    if-lez v15, :cond_a

    iget-object v15, v0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v15, v14, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1209
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1210
    .restart local v7    # "mIntent":Landroid/content/Intent;
    const-class v13, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-virtual {v7, v0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1211
    invoke-virtual {v0, v7}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1212
    .end local v7    # "mIntent":Landroid/content/Intent;
    goto :goto_2

    .line 1213
    :cond_a
    const/4 v7, 0x1

    if-ne v1, v7, :cond_b

    .line 1214
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1215
    .restart local v7    # "mIntent":Landroid/content/Intent;
    const-class v13, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v7, v0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1216
    invoke-virtual {v0, v7}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1217
    .end local v7    # "mIntent":Landroid/content/Intent;
    goto :goto_2

    .line 1218
    :cond_b
    sget v7, Lcom/shenma/tvlauncher/R$string;->Not_yet_activated:I

    sget v13, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v0, v7, v13}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1222
    .end local v9    # "time":J
    .end local v11    # "vip":J
    :goto_2
    return-void

    .line 1223
    .end local v8    # "username":Ljava/lang/String;
    :cond_c
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1224
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1225
    .restart local v7    # "mIntent":Landroid/content/Intent;
    const-class v8, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1226
    invoke-virtual {v0, v7}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1227
    return-void

    .line 1228
    .end local v7    # "mIntent":Landroid/content/Intent;
    :cond_d
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1229
    iget-object v7, v0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v7, v8, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1230
    .local v7, "username":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1231
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1232
    .local v8, "mIntent":Landroid/content/Intent;
    const-class v9, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1233
    invoke-virtual {v0, v8}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1234
    .end local v8    # "mIntent":Landroid/content/Intent;
    goto :goto_3

    .line 1235
    :cond_e
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1236
    .restart local v8    # "mIntent":Landroid/content/Intent;
    const-class v9, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1237
    invoke-virtual {v0, v8}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1239
    .end local v8    # "mIntent":Landroid/content/Intent;
    :goto_3
    return-void

    .line 1241
    .end local v7    # "username":Ljava/lang/String;
    :cond_f
    const-class v7, Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-virtual {v0, v7, v6}, Lcom/shenma/tvlauncher/HomeActivity2;->openActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1243
    :goto_4
    return-void
.end method

.method private showUserDialog()V
    .locals 8

    .line 1872
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1873
    .local v0, "User_url":Ljava/lang/String;
    new-instance v2, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1874
    .local v2, "builder":Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    sget v3, Lcom/shenma/tvlauncher/R$layout;->user_pwd:I

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1875
    .local v3, "mView":Landroid/view/View;
    sget v4, Lcom/shenma/tvlauncher/R$id;->Categorypwd:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1876
    .local v4, "Categorypwd":Landroid/widget/TextView;
    const-string v5, "Pwd_text"

    invoke-static {p0, v5, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1877
    .local v6, "tips":Ljava/lang/String;
    invoke-static {p0, v5, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1878
    sget v1, Lcom/shenma/tvlauncher/R$id;->user_pwd_et:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1879
    .local v1, "user_pwd_et":Landroid/widget/EditText;
    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1880
    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity2$48;

    invoke-direct {v5, p0, v1}, Lcom/shenma/tvlauncher/HomeActivity2$48;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;Landroid/widget/EditText;)V

    const-string/jumbo v7, "\u786e\u5b9a"

    invoke-virtual {v2, v7, v5}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1927
    sget v5, Lcom/shenma/tvlauncher/R$string;->popup_confirmation_dialog_Negative:I

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity2$49;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity2$49;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    invoke-virtual {v2, v5, v7}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1933
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->create()Lcom/shenma/tvlauncher/view/WiFiDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mDialog:Landroid/app/Dialog;

    .line 1934
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1935
    return-void
.end method

.method private toSearch()V
    .locals 3

    .line 1018
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    .line 1019
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1020
    sget v0, Lcom/shenma/tvlauncher/R$string;->Please_log_in_to_your_account_first:I

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1021
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1022
    return-void

    .line 1024
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1025
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TYPE"

    const-string v2, "ALL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1026
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1027
    return-void
.end method


# virtual methods
.method public AccountResponse(Ljava/lang/String;)V
    .locals 22
    .param p1, "response"    # Ljava/lang/String;

    .line 1558
    move-object/from16 v1, p0

    const-string v0, "Exit"

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1559
    .local v2, "RC4KEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v4, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1560
    .local v4, "RSAKEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v5, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1561
    .local v5, "AESKEY":Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v6, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1563
    .local v3, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object/from16 v7, p1

    :try_start_1
    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1564
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

    .line 1565
    :try_start_2
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v1, v8, v9}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1566
    .local v8, "miType":I
    const/4 v15, 0x0

    .line 1567
    .local v15, "msg":Ljava/lang/String;
    const-string v13, "msg"

    if-ne v8, v9, :cond_0

    .line 1568
    :try_start_3
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v15, v9

    goto :goto_0

    .line 1585
    .end local v6    # "jo":Lorg/json/JSONObject;
    .end local v8    # "miType":I
    .end local v15    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    goto/16 :goto_2

    .line 1569
    .restart local v6    # "jo":Lorg/json/JSONObject;
    .restart local v8    # "miType":I
    .restart local v15    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 1570
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v15, v9

    goto :goto_0

    .line 1571
    :cond_1
    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 1572
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9, v3}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v15, v9

    .line 1574
    :cond_2
    :goto_0
    :try_start_4
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1575
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

    .line 1576
    .local v13, "job":Lorg/json/JSONObject;
    const-string/jumbo v2, "token"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1577
    .local v2, "ck":Ljava/lang/String;
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v18, v16

    .line 1578
    .local v18, "vip":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move/from16 v19, v16

    .line 1579
    .local v19, "Exit":I
    move-object/from16 v20, v3

    .end local v3    # "AESIV":Ljava/lang/String;
    .local v20, "AESIV":Ljava/lang/String;
    :try_start_6
    iget-object v3, v1, Lcom/shenma/tvlauncher/HomeActivity2;->mediaHandler:Landroid/os/Handler;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v21, v4

    const/4 v4, 0x2

    .end local v4    # "RSAKEY":Ljava/lang/String;
    .local v21, "RSAKEY":Ljava/lang/String;
    :try_start_7
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1580
    iget-object v3, v1, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, v1, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    invoke-interface {v3, v12, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, v1, Lcom/shenma/tvlauncher/HomeActivity2;->password:Ljava/lang/String;

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

    .line 1581
    return-void

    .line 1585
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

    .line 1583
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
    iget-object v0, v1, Lcom/shenma/tvlauncher/HomeActivity2;->mediaHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1584
    iget-object v0, v1, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

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

    .line 1587
    nop

    .end local v6    # "jo":Lorg/json/JSONObject;
    goto :goto_3

    .line 1585
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

    .line 1586
    .end local v2    # "RC4KEY":Ljava/lang/String;
    .end local v3    # "AESIV":Ljava/lang/String;
    .end local v4    # "RSAKEY":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "RC4KEY":Ljava/lang/String;
    .restart local v20    # "AESIV":Ljava/lang/String;
    .restart local v21    # "RSAKEY":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1588
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public CheckUpdateResponse(Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .line 1088
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1089
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1090
    .local v1, "code":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v2, "jot":Lorg/json/JSONObject;
    const-string v3, "app_bb"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1092
    .local v3, "app_bb":Ljava/lang/Double;
    const-string v4, "app_nshow"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity2;->app_nshow:Ljava/lang/String;

    .line 1093
    const-string v4, "app_nurl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity2;->app_nurl:Ljava/lang/String;

    .line 1094
    const-string v4, "compel"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/HomeActivity2;->compel:I

    .line 1097
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

    .line 1098
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

    .line 1101
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity2;->app_nshow:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1102
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mediaHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1117
    :cond_0
    new-instance v7, Lorg/json/JSONObject;

    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->f:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1118
    .local v7, "exten":Lorg/json/JSONObject;
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->u:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity2;->player_name:Ljava/lang/String;

    .line 1119
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->ev:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity2;->player_update:Ljava/lang/String;

    .line 1120
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->sr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity2;->player_zip_md5:Ljava/lang/String;

    .line 1121
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->kw:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity2;->player_download_url:Ljava/lang/String;

    .line 1123
    if-eqz p1, :cond_1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity2;->player_update:Ljava/lang/String;

    const-string v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1124
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity2;->player_download_url:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1125
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity2;->player_zip_md5:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/data/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity2;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/files/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/shenma/tvlauncher/HomeActivity2;->player_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/shenma/tvlauncher/utils/Utils;->getMD5Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1126
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mediaHandler:Landroid/os/Handler;

    const/4 v8, 0x7

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1132
    .end local v0    # "jo":Lorg/json/JSONObject;
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "jot":Lorg/json/JSONObject;
    .end local v3    # "app_bb":Ljava/lang/Double;
    .end local v4    # "value":D
    .end local v7    # "exten":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 1130
    :catch_0
    move-exception v0

    .line 1131
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1133
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public MacResponse(Ljava/lang/String;)V
    .locals 21
    .param p1, "response"    # Ljava/lang/String;

    .line 1418
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

    .line 1419
    .local v3, "RC4KEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1420
    .local v5, "RSAKEY":Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v6, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1421
    .local v6, "AESKEY":Ljava/lang/String;
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v7, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1423
    .local v4, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v8, p1

    :try_start_1
    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1425
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

    .line 1426
    :try_start_2
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v1, v2, v9}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1427
    .local v2, "miType":I
    const/4 v10, 0x0

    .line 1428
    .local v10, "msg":Ljava/lang/String;
    const-string v15, "msg"

    if-ne v2, v9, :cond_0

    .line 1429
    :try_start_3
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    goto :goto_0

    .line 1448
    .end local v2    # "miType":I
    .end local v7    # "jo":Lorg/json/JSONObject;
    .end local v10    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v20, v4

    goto/16 :goto_2

    .line 1430
    .restart local v2    # "miType":I
    .restart local v7    # "jo":Lorg/json/JSONObject;
    .restart local v10    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x2

    if-ne v2, v9, :cond_1

    .line 1431
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    goto :goto_0

    .line 1432
    :cond_1
    const/4 v9, 0x3

    if-ne v2, v9, :cond_2

    .line 1433
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v4}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v10, v9

    .line 1435
    :cond_2
    :goto_0
    :try_start_4
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1436
    .local v9, "jot":Lorg/json/JSONObject;
    new-instance v15, Lorg/json/JSONObject;

    move/from16 v16, v2

    .end local v2    # "miType":I
    .local v16, "miType":I
    const-string v2, "info"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1437
    .local v15, "job":Lorg/json/JSONObject;
    const-string/jumbo v2, "token"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1438
    .local v2, "ck":Ljava/lang/String;
    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    .line 1439
    .local v18, "vip":Ljava/lang/String;
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move/from16 v19, v17

    .line 1440
    .local v19, "Exit":I
    move-object/from16 v17, v3

    .end local v3    # "RC4KEY":Ljava/lang/String;
    .local v17, "RC4KEY":Ljava/lang/String;
    :try_start_5
    iget-object v3, v1, Lcom/shenma/tvlauncher/HomeActivity2;->mediaHandler:Landroid/os/Handler;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v20, v4

    const/4 v4, 0x2

    .end local v4    # "AESIV":Ljava/lang/String;
    .local v20, "AESIV":Ljava/lang/String;
    :try_start_6
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1441
    iget-object v3, v1, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, v1, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    invoke-interface {v3, v13, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, v1, Lcom/shenma/tvlauncher/HomeActivity2;->password:Ljava/lang/String;

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

    .line 1442
    return-void

    .line 1448
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

    .line 1443
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

    .line 1445
    invoke-direct {v1}, Lcom/shenma/tvlauncher/HomeActivity2;->AutoMacRegister()V

    .line 1447
    :cond_4
    iget-object v0, v1, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

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

    .line 1450
    nop

    .end local v7    # "jo":Lorg/json/JSONObject;
    goto :goto_3

    .line 1448
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

    .line 1449
    .end local v3    # "RC4KEY":Ljava/lang/String;
    .end local v4    # "AESIV":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "RC4KEY":Ljava/lang/String;
    .restart local v20    # "AESIV":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1451
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public MarkcodeResponse(Ljava/lang/String;)V
    .locals 21
    .param p1, "response"    # Ljava/lang/String;

    .line 1626
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

    .line 1627
    .local v3, "RC4KEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1628
    .local v5, "RSAKEY":Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v6, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1629
    .local v6, "AESKEY":Ljava/lang/String;
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v7, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1631
    .local v4, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v8, p1

    :try_start_1
    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1633
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

    .line 1634
    :try_start_2
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v1, v2, v9}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1635
    .local v2, "miType":I
    const/4 v10, 0x0

    .line 1636
    .local v10, "msg":Ljava/lang/String;
    const-string v15, "msg"

    if-ne v2, v9, :cond_0

    .line 1637
    :try_start_3
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    goto :goto_0

    .line 1656
    .end local v2    # "miType":I
    .end local v7    # "jo":Lorg/json/JSONObject;
    .end local v10    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v20, v4

    goto/16 :goto_2

    .line 1638
    .restart local v2    # "miType":I
    .restart local v7    # "jo":Lorg/json/JSONObject;
    .restart local v10    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x2

    if-ne v2, v9, :cond_1

    .line 1639
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    goto :goto_0

    .line 1640
    :cond_1
    const/4 v9, 0x3

    if-ne v2, v9, :cond_2

    .line 1641
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v4}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v10, v9

    .line 1643
    :cond_2
    :goto_0
    :try_start_4
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1644
    .local v9, "jot":Lorg/json/JSONObject;
    new-instance v15, Lorg/json/JSONObject;

    move/from16 v16, v2

    .end local v2    # "miType":I
    .local v16, "miType":I
    const-string v2, "info"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1645
    .local v15, "job":Lorg/json/JSONObject;
    const-string/jumbo v2, "token"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1646
    .local v2, "ck":Ljava/lang/String;
    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    .line 1647
    .local v18, "vip":Ljava/lang/String;
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move/from16 v19, v17

    .line 1648
    .local v19, "Exit":I
    move-object/from16 v17, v3

    .end local v3    # "RC4KEY":Ljava/lang/String;
    .local v17, "RC4KEY":Ljava/lang/String;
    :try_start_5
    iget-object v3, v1, Lcom/shenma/tvlauncher/HomeActivity2;->mediaHandler:Landroid/os/Handler;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v20, v4

    const/4 v4, 0x2

    .end local v4    # "AESIV":Ljava/lang/String;
    .local v20, "AESIV":Ljava/lang/String;
    :try_start_6
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1649
    iget-object v3, v1, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, v1, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    invoke-interface {v3, v13, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, v1, Lcom/shenma/tvlauncher/HomeActivity2;->password:Ljava/lang/String;

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

    .line 1650
    return-void

    .line 1656
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

    .line 1651
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

    .line 1653
    invoke-direct {v1}, Lcom/shenma/tvlauncher/HomeActivity2;->AutoRegister()V

    .line 1655
    :cond_4
    iget-object v0, v1, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

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

    .line 1658
    nop

    .end local v7    # "jo":Lorg/json/JSONObject;
    goto :goto_3

    .line 1656
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

    .line 1657
    .end local v3    # "RC4KEY":Ljava/lang/String;
    .end local v4    # "AESIV":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "RC4KEY":Ljava/lang/String;
    .restart local v20    # "AESIV":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1659
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public NoticeResponse(Ljava/lang/String;)V
    .locals 14
    .param p1, "response"    # Ljava/lang/String;

    .line 766
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 768
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 769
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 772
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 773
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 774
    .local v5, "code":I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    .line 775
    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 776
    .local v6, "msg":Ljava/lang/String;
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 777
    .local v7, "miType":I
    const/4 v9, 0x0

    .line 778
    .local v9, "jSON":Lorg/json/JSONObject;
    if-ne v7, v8, :cond_0

    .line 779
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v6, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v9, v8

    goto :goto_0

    .line 780
    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 781
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v6, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v9, v8

    goto :goto_0

    .line 782
    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 783
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v3, v6, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v9, v8

    .line 785
    :cond_2
    :goto_0
    const-string/jumbo v8, "url"

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 786
    .local v8, "url":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 787
    invoke-virtual {p0, v8}, Lcom/shenma/tvlauncher/HomeActivity2;->returnBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 788
    iget-object v10, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mediaHandler:Landroid/os/Handler;

    const/4 v11, 0x6

    const-wide/16 v12, 0xbb8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "miType":I
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "jSON":Lorg/json/JSONObject;
    :cond_3
    goto :goto_1

    .line 792
    :catch_0
    move-exception v4

    .line 793
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 795
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public RegisterMacResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .line 1512
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1513
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1514
    .local v1, "code":I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 1515
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2;->password:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {p0, v2, v3, v4}, Lcom/shenma/tvlauncher/HomeActivity2;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1520
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v1    # "code":I
    :cond_0
    goto :goto_0

    .line 1518
    :catch_0
    move-exception v0

    .line 1519
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1521
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public RequestError(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 1400
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    .line 1403
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    .line 1406
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    .line 1409
    instance-of v0, p1, Lcom/android/volley/ServerError;

    .line 1413
    return-void
.end method

.method public RequestResponse(Ljava/lang/String;)V
    .locals 11
    .param p1, "response"    # Ljava/lang/String;

    .line 627
    const-string v0, "UTF-8"

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "RC4KEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 629
    .local v3, "RSAKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v4, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 630
    .local v4, "AESKEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v5, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 633
    .local v2, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 634
    .local v5, "jSONObject":Lorg/json/JSONObject;
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 635
    .local v6, "code":I
    const-string v7, "msg"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 637
    .local v7, "msg":Ljava/lang/String;
    const/16 v8, 0xc8

    if-ne v6, v8, :cond_0

    .line 638
    const-string v8, "aa=="

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   ====="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-static {v7, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->extractWeatherInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, "strs":[Ljava/lang/String;
    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity2;->temperature:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .end local v0    # "strs":[Ljava/lang/String;
    .end local v5    # "jSONObject":Lorg/json/JSONObject;
    .end local v6    # "code":I
    .end local v7    # "msg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 646
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public Response(Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .line 1721
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1722
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1723
    .local v1, "code":I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 1724
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2;->password:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/shenma/tvlauncher/HomeActivity2;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1729
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v1    # "code":I
    :cond_0
    goto :goto_0

    .line 1727
    :catch_0
    move-exception v0

    .line 1728
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1730
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method protected findViewById()V
    .locals 0

    .line 729
    return-void
.end method

.method protected initView()V
    .locals 0

    .line 719
    return-void
.end method

.method protected installApk(Ljava/lang/String;)V
    .locals 5
    .param p1, "file"    # Ljava/lang/String;

    .line 1003
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1005
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

    .line 1006
    .local v2, "args2":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    nop

    .end local v2    # "args2":[Ljava/lang/String;
    goto :goto_0

    .line 1007
    :catch_0
    move-exception v1

    .line 1008
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1010
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1012
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1013
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1014
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 724
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 650
    invoke-super {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 651
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 652
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->overlayer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 653
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->bgImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 655
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "wallpaperFileName"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 656
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 657
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity2;->changeBackImage(Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2;->rootview:Landroid/view/ViewGroup;

    const-string v4, "#3b4b73"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 661
    :goto_0
    const-string v2, "Interface_Style"

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 662
    .local v2, "mode":I
    if-eq v2, v0, :cond_5

    .line 664
    const/4 v0, 0x0

    .line 665
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    goto :goto_1

    .line 691
    :cond_1
    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    .line 692
    new-instance v4, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;-><init>()V

    move-object v0, v4

    .line 693
    move-object v4, v0

    check-cast v4, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity2$21;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity2$21;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    invoke-virtual {v4, v5}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->setOnZbClickListener(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$OnZbClickListener;)V

    goto :goto_2

    .line 699
    :cond_2
    const/4 v4, 0x7

    if-ne v2, v4, :cond_4

    .line 700
    new-instance v4, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;-><init>()V

    move-object v0, v4

    goto :goto_2

    .line 666
    :cond_3
    :goto_1
    new-instance v4, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-direct {v4, v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;-><init>(I)V

    move-object v0, v4

    .line 667
    move-object v4, v0

    check-cast v4, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity2$20;

    invoke-direct {v5, p0, v2}, Lcom/shenma/tvlauncher/HomeActivity2$20;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;I)V

    invoke-virtual {v4, v5}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->setOnItemPickerShow(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$OnItemPickerShow;)V

    .line 702
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity2;->adapter:Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->updateFragment(ILandroidx/fragment/app/Fragment;)V

    .line 703
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity2;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v4, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 704
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity2;->adapter:Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;

    invoke-virtual {v3, v4}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 705
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 708
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v3, v4}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 711
    .end local v0    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "mode":I
    :cond_5
    nop

    .line 714
    return-void

    .line 712
    :cond_6
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1953
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->noticeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->noticeView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1956
    :cond_0
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 1957
    .local v0, "value":D
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/shenma/tvlauncher/R$string;->app_name:I

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/HomeActivity2;->getString(I)Ljava/lang/String;

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

    .line 1958
    .local v2, "bt":Ljava/lang/String;
    invoke-virtual {p0, v2, p0}, Lcom/shenma/tvlauncher/HomeActivity2;->showExitDialog(Ljava/lang/String;Landroid/content/Context;)V

    .line 1960
    .end local v0    # "value":D
    .end local v2    # "bt":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 219
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 220
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/HomeActivity2;->requestWindowFeature(I)Z

    .line 221
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 225
    sget v2, Lcom/shenma/tvlauncher/R$layout;->homeactivity2:I

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/HomeActivity2;->setContentView(I)V

    .line 227
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x1e

    if-lt v2, v4, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 232
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_1

    .line 233
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v2

    .line 234
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    or-int/2addr v4, v5

    .line 233
    invoke-interface {v2, v4}, Landroid/view/WindowInsetsController;->hide(I)V

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x1006

    invoke-virtual {v2, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 246
    :goto_0
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 247
    new-instance v2, Lcom/shenma/tvlauncher/HomeActivity2$3;

    invoke-direct {v2, v0}, Lcom/shenma/tvlauncher/HomeActivity2$3;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/HomeActivity2;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 263
    sget v2, Lcom/shenma/tvlauncher/R$id;->notice:I

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/HomeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity2;->noticeView:Landroid/view/View;

    .line 264
    invoke-direct {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->registerWallpaperReceiver()V

    .line 265
    sget v2, Lcom/shenma/tvlauncher/R$id;->temperature:I

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/HomeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity2;->temperature:Landroid/widget/TextView;

    .line 266
    sget v2, Lcom/shenma/tvlauncher/R$id;->ll_search_home2:I

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/HomeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 267
    .local v2, "llSearchHome2":Landroid/widget/LinearLayout;
    sget v4, Lcom/shenma/tvlauncher/R$id;->ll_history_home2:I

    invoke-virtual {v0, v4}, Lcom/shenma/tvlauncher/HomeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 268
    .local v4, "llHistoryHome2":Landroid/widget/LinearLayout;
    sget v5, Lcom/shenma/tvlauncher/R$id;->ll_collection_home2:I

    invoke-virtual {v0, v5}, Lcom/shenma/tvlauncher/HomeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 269
    .local v5, "llCollectHome2":Landroid/widget/LinearLayout;
    sget v6, Lcom/shenma/tvlauncher/R$id;->ll_mine_home2:I

    invoke-virtual {v0, v6}, Lcom/shenma/tvlauncher/HomeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 270
    .local v6, "llMineHome2":Landroid/widget/LinearLayout;
    sget v7, Lcom/shenma/tvlauncher/R$id;->ll_live_home2:I

    invoke-virtual {v0, v7}, Lcom/shenma/tvlauncher/HomeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 272
    .local v7, "llLiveHome2":Landroid/widget/LinearLayout;
    sget v8, Lcom/shenma/tvlauncher/R$id;->ll_tv_home:I

    invoke-virtual {v0, v8}, Lcom/shenma/tvlauncher/HomeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 273
    .local v8, "llTvHome":Landroid/widget/LinearLayout;
    const-string v10, "Allow_changing_styles"

    const/4 v11, 0x0

    invoke-static {v0, v10, v11}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_2

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    sget v9, Lcom/shenma/tvlauncher/R$id;->ll_customer_home:I

    invoke-virtual {v0, v9}, Lcom/shenma/tvlauncher/HomeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 274
    .local v9, "llCustomerHome":Landroid/widget/LinearLayout;
    sget v10, Lcom/shenma/tvlauncher/R$id;->menu_view:I

    invoke-virtual {v0, v10}, Lcom/shenma/tvlauncher/HomeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/view/SingleChoiceMenuView;

    iput-object v10, v0, Lcom/shenma/tvlauncher/HomeActivity2;->menuView:Lcom/view/SingleChoiceMenuView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/view/SingleChoiceMenuView;->setFocusSwitchEnabled(Z)V

    .line 276
    sget v10, Lcom/shenma/tvlauncher/R$id;->tv_time_home2:I

    invoke-virtual {v0, v10}, Lcom/shenma/tvlauncher/HomeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v0, Lcom/shenma/tvlauncher/HomeActivity2;->tvTimeHome2:Landroid/widget/TextView;

    .line 278
    sget v10, Lcom/shenma/tvlauncher/R$id;->imageView:I

    invoke-virtual {v0, v10}, Lcom/shenma/tvlauncher/HomeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v0, Lcom/shenma/tvlauncher/HomeActivity2;->bgImageView:Landroid/widget/ImageView;

    .line 279
    sget v10, Lcom/shenma/tvlauncher/R$id;->rootview:I

    invoke-virtual {v0, v10}, Lcom/shenma/tvlauncher/HomeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, v0, Lcom/shenma/tvlauncher/HomeActivity2;->rootview:Landroid/view/ViewGroup;

    .line 280
    sget v10, Lcom/shenma/tvlauncher/R$id;->overlayer:I

    invoke-virtual {v0, v10}, Lcom/shenma/tvlauncher/HomeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v0, Lcom/shenma/tvlauncher/HomeActivity2;->overlayer:Landroid/view/View;

    .line 281
    sget v10, Lcom/shenma/tvlauncher/R$id;->logo11:I

    invoke-virtual {v0, v10}, Lcom/shenma/tvlauncher/HomeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v0, Lcom/shenma/tvlauncher/HomeActivity2;->logo:Landroid/widget/ImageView;

    .line 282
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "category"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 283
    .local v10, "category":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "interface_style"

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Lcom/shenma/tvlauncher/HomeActivity2;->interface_style:I

    .line 284
    const-string/jumbo v11, "shenma"

    invoke-virtual {v0, v11, v3}, Lcom/shenma/tvlauncher/HomeActivity2;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    iput-object v11, v0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    .line 285
    sget v11, Lcom/shenma/tvlauncher/R$id;->videosPager:I

    invoke-virtual {v0, v11}, Lcom/shenma/tvlauncher/HomeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v11, v0, Lcom/shenma/tvlauncher/HomeActivity2;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 286
    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    new-instance v12, Lcom/shenma/tvlauncher/HomeActivity2$4;

    invoke-direct {v12, v0}, Lcom/shenma/tvlauncher/HomeActivity2$4;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    .line 287
    invoke-virtual {v12}, Lcom/shenma/tvlauncher/HomeActivity2$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v12

    .line 286
    invoke-virtual {v11, v10, v12}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    iput-object v11, v0, Lcom/shenma/tvlauncher/HomeActivity2;->dataList:Ljava/util/List;

    .line 288
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 289
    .local v11, "itemHomeRecommend":Ljava/util/Map;
    const-string/jumbo v12, "type_en"

    const-string v13, "homeRecomment"

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string/jumbo v12, "\u9996\u9875"

    const-string/jumbo v13, "type_name"

    invoke-interface {v11, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string/jumbo v12, "type_status"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v12, v0, Lcom/shenma/tvlauncher/HomeActivity2;->dataList:Ljava/util/List;

    invoke-interface {v12, v3, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 295
    iget-object v12, v0, Lcom/shenma/tvlauncher/HomeActivity2;->dataList:Ljava/util/List;

    iget-object v14, v0, Lcom/shenma/tvlauncher/HomeActivity2;->dataList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v1

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/shenma/tvlauncher/HomeActivity2;->zb:Ljava/util/Map;

    .line 296
    iget-object v1, v0, Lcom/shenma/tvlauncher/HomeActivity2;->dataList:Ljava/util/List;

    iget-object v12, v0, Lcom/shenma/tvlauncher/HomeActivity2;->zb:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 298
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v12, v0, Lcom/shenma/tvlauncher/HomeActivity2;->dataList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v1, v12, :cond_3

    .line 299
    iget-object v12, v0, Lcom/shenma/tvlauncher/HomeActivity2;->dataList:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 300
    .local v12, "itemData":Ljava/util/Map;
    iget-object v14, v0, Lcom/shenma/tvlauncher/HomeActivity2;->menuView:Lcom/view/SingleChoiceMenuView;

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/view/SingleChoiceMenuView;->addMenuItem(Ljava/lang/String;)V

    .line 298
    .end local v12    # "itemData":Ljava/util/Map;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 302
    .end local v1    # "i":I
    :cond_3
    iget-object v1, v0, Lcom/shenma/tvlauncher/HomeActivity2;->menuView:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v1, v3}, Lcom/view/SingleChoiceMenuView;->setSelectedPosition(I)V

    .line 303
    invoke-static {}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->getInstance()Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/HomeActivity2;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    .line 305
    iget-object v1, v0, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v12, "wallpaperFileName"

    const/4 v13, 0x0

    invoke-interface {v1, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v12, ""

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 307
    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/HomeActivity2;->changeBackImage(Ljava/lang/String;)V

    .line 309
    :cond_4
    new-instance v12, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;

    invoke-direct {v12, v0, v0}, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;Landroidx/fragment/app/FragmentActivity;)V

    iput-object v12, v0, Lcom/shenma/tvlauncher/HomeActivity2;->adapter:Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;

    .line 310
    iget-object v12, v0, Lcom/shenma/tvlauncher/HomeActivity2;->adapter:Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;

    invoke-virtual {v12}, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->createFragments()Ljava/util/List;

    .line 311
    iget-object v12, v0, Lcom/shenma/tvlauncher/HomeActivity2;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v13, v0, Lcom/shenma/tvlauncher/HomeActivity2;->adapter:Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;

    invoke-virtual {v12, v13}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 314
    iget-object v12, v0, Lcom/shenma/tvlauncher/HomeActivity2;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v12, v3}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    .line 315
    iget-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity2;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v12, Lcom/shenma/tvlauncher/HomeActivity2$5;

    invoke-direct {v12, v0}, Lcom/shenma/tvlauncher/HomeActivity2$5;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    invoke-virtual {v3, v12}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 328
    iget-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity2;->menuView:Lcom/view/SingleChoiceMenuView;

    new-instance v12, Lcom/shenma/tvlauncher/HomeActivity2$6;

    invoke-direct {v12, v0}, Lcom/shenma/tvlauncher/HomeActivity2$6;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    invoke-virtual {v3, v12}, Lcom/view/SingleChoiceMenuView;->setOnItemSelectedListener(Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;)V

    .line 361
    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity2$7;

    invoke-direct {v3, v0}, Lcom/shenma/tvlauncher/HomeActivity2$7;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity2$8;

    invoke-direct {v3, v0}, Lcom/shenma/tvlauncher/HomeActivity2$8;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity2$9;

    invoke-direct {v3, v0}, Lcom/shenma/tvlauncher/HomeActivity2$9;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity2$10;

    invoke-direct {v3, v0}, Lcom/shenma/tvlauncher/HomeActivity2$10;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity2$11;

    invoke-direct {v3, v0}, Lcom/shenma/tvlauncher/HomeActivity2$11;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity2$12;

    invoke-direct {v3, v0}, Lcom/shenma/tvlauncher/HomeActivity2$12;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity2$13;

    invoke-direct {v3, v0}, Lcom/shenma/tvlauncher/HomeActivity2$13;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v3, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 440
    .local v3, "handler":Landroid/os/Handler;
    new-instance v12, Lcom/shenma/tvlauncher/HomeActivity2$14;

    invoke-direct {v12, v0, v3}, Lcom/shenma/tvlauncher/HomeActivity2$14;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;Landroid/os/Handler;)V

    .line 448
    .local v12, "timeRun":Ljava/lang/Runnable;
    invoke-virtual {v3, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 450
    const/16 v13, 0x352

    invoke-static {v0, v13}, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->apply(Landroid/app/Activity;I)V

    .line 451
    invoke-direct {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->checkUpdate()V

    .line 452
    invoke-direct {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->initLogin()V

    .line 453
    invoke-direct {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->initLogo()V

    .line 454
    invoke-direct {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->initNotice()V

    .line 455
    invoke-direct {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->getGongGao()V

    .line 456
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1939
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->revert(Landroid/app/Activity;)V

    .line 1940
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->mWallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity2;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1941
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 1942
    return-void
.end method

.method public returnBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 853
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shenma/tvlauncher/HomeActivity2$26;

    invoke-direct {v1, p0, p1}, Lcom/shenma/tvlauncher/HomeActivity2$26;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 875
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 876
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setBackgroundImage(Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "imageUrl"    # Ljava/lang/String;

    .line 1735
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1736
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1739
    .local v1, "index":I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1742
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1743
    .local v2, "container":Landroid/widget/FrameLayout;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1746
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1747
    .local v3, "bgImage":Landroid/widget/ImageView;
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1748
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    .line 1749
    invoke-virtual {v4, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    .line 1750
    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    .line 1751
    invoke-virtual {v4, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1754
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1758
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1764
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1765
    return-void
.end method

.method protected setListener()V
    .locals 0

    .line 734
    return-void
.end method

.method protected showExitDialog(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 1970
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2;->SP:Landroid/content/SharedPreferences;

    const-string v1, "Exit_Message"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1971
    .local v0, "Message":Ljava/lang/String;
    new-instance v1, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    invoke-direct {v1, p2}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1972
    .local v1, "builder":Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
    invoke-virtual {v1, p1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 1973
    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 1974
    sget v2, Lcom/shenma/tvlauncher/R$string;->exitdialog_out:I

    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity2$50;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/HomeActivity2$50;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 1985
    sget v2, Lcom/shenma/tvlauncher/R$string;->exitdialog_back:I

    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity2$51;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/HomeActivity2$51;-><init>(Lcom/shenma/tvlauncher/HomeActivity2;)V

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 1992
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->creates()Lcom/shenma/tvlauncher/view/HomeDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/HomeDialog;->shows()V

    .line 1993
    return-void
.end method
