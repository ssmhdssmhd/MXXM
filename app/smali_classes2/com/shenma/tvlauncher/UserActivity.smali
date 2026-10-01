.class public Lcom/shenma/tvlauncher/UserActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "UserActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/UserActivity$MyAdapter;,
        Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;
    }
.end annotation


# instance fields
.field private Albumls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/db/Album;",
            ">;"
        }
    .end annotation
.end field

.field private ISAPP:Ljava/lang/Boolean;

.field private Msg:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private USER_TYPE:I

.field private aboutUs:Landroid/view/View;

.field private accountInfo:Landroid/view/View;

.field private activityCenter:Landroid/view/View;

.field private advancedSettings:Landroid/view/View;

.field private backgroundSettings:Landroid/view/View;

.field private btLogin:Landroid/widget/Button;

.field private clearHistory:Landroid/view/View;

.field private dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

.field private data:Ljava/lang/String;

.field private dbtools:Lcom/shenma/tvlauncher/db/DatabaseOperator;

.field private empower_url:Ljava/lang/String;

.field private fromApp:Ljava/lang/Boolean;

.field private gv_user_type_details_grid:Landroid/widget/GridView;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private imgQrCode:Landroid/widget/ImageView;

.field private invitationRewards:Landroid/view/View;

.field private llQrCode:Landroid/view/View;

.field private logindata:Ljava/lang/String;

.field private mAdapter:Lcom/shenma/tvlauncher/UserActivity$MyAdapter;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogs:Landroid/app/Dialog;

.field private mPosition:I

.field private mQueue:Lcom/android/volley/RequestQueue;

.field private mediaHandler:Landroid/os/Handler;

.field private memberData:Landroid/widget/TextView;

.field private memberSetting:Landroid/view/View;

.field private menulist:Landroid/widget/ListView;

.field private menupopupWindow:Landroid/widget/PopupWindow;

.field private mineCollect:Landroid/view/View;

.field private myCountDownTimer:Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;

.field private notify:Ljava/lang/String;

.field private otherSettings:Landroid/view/View;

.field private playHistory:Landroid/view/View;

.field private rb_user:Landroid/widget/RadioButton;

.field private rb_user_alert:Landroid/widget/RadioButton;

.field private rb_user_app:Landroid/widget/RadioButton;

.field private rb_user_collect:Landroid/widget/RadioButton;

.field private rb_user_history:Landroid/widget/RadioButton;

.field private remoteInstallation:Landroid/view/View;

.field private rg_member:Landroid/widget/RadioGroup;

.field private send_code_bt:Landroid/widget/Button;

.field private sign:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private templovLst:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/dao/bean/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private tvAccount:Landroid/widget/TextView;

.field private tvJifen:Landroid/widget/TextView;

.field private tv_filter_content:Landroid/widget/TextView;

.field private tv_no_data:Landroid/widget/TextView;

.field private tv_user_name:Landroid/widget/TextView;

.field private type:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

.field private user_inv_et:Landroid/widget/EditText;

.field private user_type_details:Landroid/widget/LinearLayout;

.field private users_empower:Landroid/widget/ImageView;


# direct methods
.method static bridge synthetic -$$Nest$fgetAlbumls(Lcom/shenma/tvlauncher/UserActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->Albumls:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetISAPP(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->ISAPP:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetMsg(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetUSER_TYPE(Lcom/shenma/tvlauncher/UserActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/UserActivity;->USER_TYPE:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaccountInfo(Lcom/shenma/tvlauncher/UserActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->accountInfo:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbtLogin(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->btLogin:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdao(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdata(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetempower_url(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->empower_url:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgv_user_type_details_grid(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/GridView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->gv_user_type_details_grid:Landroid/widget/GridView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimgQrCode(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->imgQrCode:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetllQrCode(Lcom/shenma/tvlauncher/UserActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->llQrCode:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/shenma/tvlauncher/UserActivity;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPosition(Lcom/shenma/tvlauncher/UserActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/UserActivity;->mPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/UserActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmenupopupWindow(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmyCountDownTimer(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->myCountDownTimer:Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsend_code_bt(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->send_code_bt:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsign(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->sign:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_filter_content(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->tv_filter_content:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_no_data(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->tv_no_data:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->type:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuserTypeAdapter(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuser_inv_et(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/UserActivity;->user_inv_et:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputAlbumls(Lcom/shenma/tvlauncher/UserActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity;->Albumls:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputISAPP(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity;->ISAPP:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputUSER_TYPE(Lcom/shenma/tvlauncher/UserActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/UserActivity;->USER_TYPE:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfromApp(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity;->fromApp:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPosition(Lcom/shenma/tvlauncher/UserActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/UserActivity;->mPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmyCountDownTimer(Lcom/shenma/tvlauncher/UserActivity;Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity;->myCountDownTimer:Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputuserTypeAdapter(Lcom/shenma/tvlauncher/UserActivity;Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity;->userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    return-void
.end method

.method static bridge synthetic -$$Nest$mLogin(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/UserActivity;->Login(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mRegedit(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shenma/tvlauncher/UserActivity;->Regedit(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearTimer(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->clearTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$memail_bind(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/UserActivity;->email_bind(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideMenu(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->hideMenu()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogin_notify(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->login_notify()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mseek_empower(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->seek_empower()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mseek_pass(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shenma/tvlauncher/UserActivity;->seek_pass(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msend_code(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/UserActivity;->send_code(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowLogoutDialog(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->showLogoutDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowMenu(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->showMenu()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowUpdateDialog(Lcom/shenma/tvlauncher/UserActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/UserActivity;->showUpdateDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowUserDialog(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->showUserDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowUserDialogbinding(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/UserActivity;->showUserDialogbinding(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowUserDialogempower(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->showUserDialogempower()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowUserDialogpwd(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->showUserDialogpwd()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 101
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 102
    const-string v0, "UserActivity"

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->TAG:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->Albumls:Ljava/util/List;

    .line 114
    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    .line 116
    const/4 v1, -0x1

    iput v1, p0, Lcom/shenma/tvlauncher/UserActivity;->mPosition:I

    .line 119
    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mAdapter:Lcom/shenma/tvlauncher/UserActivity$MyAdapter;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->templovLst:Ljava/util/List;

    .line 123
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->ISAPP:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->fromApp:Ljava/lang/Boolean;

    .line 137
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/UserActivity$1;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    return-void
.end method

.method private GetInfo()V
    .locals 13

    .line 346
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 347
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 348
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 349
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 350
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 351
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 352
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 353
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 354
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$5;

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

    const-string v3, "&act=get_info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$3;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/UserActivity$3;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/UserActivity$4;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/UserActivity$4;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/UserActivity$5;-><init>(Lcom/shenma/tvlauncher/UserActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 396
    return-void
.end method

.method private Login(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 14
    .param p1, "uNameET"    # Landroid/widget/EditText;
    .param p2, "uPassET"    # Landroid/widget/EditText;
    .param p3, "requestUrl"    # Ljava/lang/String;

    .line 1044
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1045
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1046
    .local v6, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1047
    .local v7, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1048
    .local v8, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1049
    .local v9, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1050
    .local v10, "Appkey":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->userName:Ljava/lang/String;

    .line 1051
    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1052
    .local v11, "passWord":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->userName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&password="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&markcode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1055
    .local v12, "logindata":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    .line 1056
    .local v13, "miType":I
    if-ne v13, v2, :cond_0

    .line 1057
    invoke-static {v12, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    goto :goto_1

    .line 1058
    :cond_0
    const/4 v0, 0x2

    if-ne v13, v0, :cond_1

    .line 1060
    :try_start_0
    invoke-static {v12, v7}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1061
    :catch_0
    move-exception v0

    .line 1062
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1063
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 1064
    :cond_1
    const/4 v0, 0x3

    if-ne v13, v0, :cond_2

    .line 1065
    invoke-static {v8, v12, v9}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    .line 1068
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->sign:Ljava/lang/String;

    .line 1070
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->userName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1071
    sget v0, Lcom/shenma/tvlauncher/R$string;->No_account_entered:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_2

    .line 1072
    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1073
    sget v0, Lcom/shenma/tvlauncher/R$string;->No_password_entered:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_2

    .line 1075
    :cond_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    sget v2, Lcom/shenma/tvlauncher/R$string;->is_loading:I

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 1076
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$35;

    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$33;

    invoke-direct {v4, p0, v11}, Lcom/shenma/tvlauncher/UserActivity$33;-><init>(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/shenma/tvlauncher/UserActivity$34;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/UserActivity$34;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/shenma/tvlauncher/UserActivity$35;-><init>(Lcom/shenma/tvlauncher/UserActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1101
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1103
    .end local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    :goto_2
    return-void
.end method

.method private Login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "requestUrl"    # Ljava/lang/String;

    .line 1753
    move-object/from16 v6, p2

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1754
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1755
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1756
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1757
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1758
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1759
    .local v11, "Appkey":Ljava/lang/String;
    move-object/from16 v12, p1

    iput-object v12, p0, Lcom/shenma/tvlauncher/UserActivity;->userName:Ljava/lang/String;

    .line 1760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->userName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&password="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&markcode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1761
    .local v13, "logindata":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    .line 1762
    .local v14, "miType":I
    if-ne v14, v2, :cond_0

    .line 1763
    invoke-static {v13, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    goto :goto_1

    .line 1764
    :cond_0
    const/4 v0, 0x2

    if-ne v14, v0, :cond_1

    .line 1766
    :try_start_0
    invoke-static {v13, v8}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1767
    :catch_0
    move-exception v0

    .line 1768
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1769
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 1770
    :cond_1
    const/4 v0, 0x3

    if-ne v14, v0, :cond_2

    .line 1771
    invoke-static {v9, v13, v10}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    .line 1774
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->sign:Ljava/lang/String;

    .line 1775
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$57;

    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$55;

    invoke-direct {v4, p0, v6}, Lcom/shenma/tvlauncher/UserActivity$55;-><init>(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/shenma/tvlauncher/UserActivity$56;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/UserActivity$56;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/shenma/tvlauncher/UserActivity$57;-><init>(Lcom/shenma/tvlauncher/UserActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1800
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1802
    return-void
.end method

.method private Regedit(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 16
    .param p1, "uNameET"    # Landroid/widget/EditText;
    .param p2, "uPassET"    # Landroid/widget/EditText;
    .param p3, "uInvET"    # Landroid/widget/EditText;
    .param p4, "URL"    # Ljava/lang/String;

    .line 1205
    move-object/from16 v1, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v1, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1206
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1207
    .local v6, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1208
    .local v7, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1209
    .local v8, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1210
    .local v9, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1211
    .local v10, "Appkey":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1212
    .local v11, "user":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 1213
    .local v12, "passWord":Ljava/lang/String;
    const-string v0, "&t="

    const-string v2, "&markcode="

    const-string v3, "&password="

    const-string/jumbo v4, "user="

    if-eqz p3, :cond_1

    .line 1214
    invoke-virtual/range {p3 .. p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1215
    .local v5, "inv":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&inv="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->logindata:Ljava/lang/String;

    .line 1216
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    sget v0, Lcom/shenma/tvlauncher/R$string;->No_invitation_code:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1218
    return-void

    .line 1220
    .end local v5    # "inv":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1221
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->logindata:Ljava/lang/String;

    .line 1223
    :goto_0
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    .line 1224
    .local v13, "miType":I
    if-ne v13, v2, :cond_2

    .line 1225
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->logindata:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    goto :goto_2

    .line 1226
    :cond_2
    const/4 v0, 0x2

    if-ne v13, v0, :cond_3

    .line 1228
    :try_start_0
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->logindata:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1229
    :catch_0
    move-exception v0

    .line 1230
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1231
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 1232
    :cond_3
    const/4 v0, 0x3

    if-ne v13, v0, :cond_4

    .line 1233
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->logindata:Ljava/lang/String;

    invoke-static {v8, v0, v9}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    .line 1236
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->logindata:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->sign:Ljava/lang/String;

    .line 1238
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1239
    sget v0, Lcom/shenma/tvlauncher/R$string;->No_account_entered:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1240
    return-void

    .line 1242
    :cond_5
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1243
    sget v0, Lcom/shenma/tvlauncher/R$string;->No_password_entered:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1244
    return-void

    .line 1246
    :cond_6
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    sget v2, Lcom/shenma/tvlauncher/R$string;->is_registing:I

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 1247
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$38;

    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$36;

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-direct {v4, v1, v14, v15}, Lcom/shenma/tvlauncher/UserActivity$36;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    new-instance v5, Lcom/shenma/tvlauncher/UserActivity$37;

    invoke-direct {v5, v1}, Lcom/shenma/tvlauncher/UserActivity$37;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    const/4 v2, 0x1

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/shenma/tvlauncher/UserActivity$38;-><init>(Lcom/shenma/tvlauncher/UserActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1272
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1274
    .end local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    return-void
.end method

.method private clearTimer()V
    .locals 1

    .line 2132
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->myCountDownTimer:Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;

    if-eqz v0, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->myCountDownTimer:Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->cancel()V

    .line 2134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->myCountDownTimer:Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;

    .line 2136
    :cond_0
    return-void
.end method

.method private email_bind(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 15
    .param p1, "uNameET"    # Landroid/widget/EditText;
    .param p2, "bind_code_et"    # Landroid/widget/EditText;
    .param p3, "requestUrl"    # Ljava/lang/String;

    .line 1980
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1981
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1982
    .local v6, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1983
    .local v7, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1984
    .local v8, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1985
    .local v9, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1986
    .local v10, "Appkey":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1987
    .local v11, "email":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 1988
    .local v12, "crc":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, "ckinfo"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&email="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&crc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1989
    .local v13, "logindata":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    .line 1990
    .local v14, "miType":I
    if-ne v14, v2, :cond_0

    .line 1991
    invoke-static {v13, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    goto :goto_1

    .line 1992
    :cond_0
    const/4 v0, 0x2

    if-ne v14, v0, :cond_1

    .line 1994
    :try_start_0
    invoke-static {v13, v7}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1995
    :catch_0
    move-exception v0

    .line 1996
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1997
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 1998
    :cond_1
    const/4 v0, 0x3

    if-ne v14, v0, :cond_2

    .line 1999
    invoke-static {v8, v13, v9}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    .line 2001
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->sign:Ljava/lang/String;

    .line 2002
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    sget v2, Lcom/shenma/tvlauncher/R$string;->loading:I

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 2003
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$65;

    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$63;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/UserActivity$63;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/UserActivity$64;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/UserActivity$64;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/shenma/tvlauncher/UserActivity$65;-><init>(Lcom/shenma/tvlauncher/UserActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 2028
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 2029
    return-void
.end method

.method private hideMenu()V
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 908
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 11

    .line 291
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "uName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v1, :cond_4

    .line 303
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->llQrCode:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->accountInfo:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->btLogin:Landroid/widget/Button;

    const-string/jumbo v3, "\u9000\u51fa\u767b\u5f55"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->tvAccount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u8d26\u53f7\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, "fen"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "fen":Ljava/lang/String;
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->tvJifen:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u79ef\u5206\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd  HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 312
    .local v2, "format":Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "vip"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, "time":Ljava/lang/String;
    const/4 v4, 0x0

    .line 315
    .local v4, "vipstate":I
    :try_start_0
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v3, v5}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v10, v6, v8

    if-gez v10, :cond_0

    .line 316
    const/4 v4, 0x1

    goto :goto_0

    .line 318
    :cond_0
    const/4 v4, 0x0

    .line 322
    :goto_0
    goto :goto_1

    .line 320
    :catch_0
    move-exception v6

    .line 321
    .local v6, "e":Ljava/text/ParseException;
    invoke-virtual {v6}, Ljava/text/ParseException;->printStackTrace()V

    .line 323
    .end local v6    # "e":Ljava/text/ParseException;
    :goto_1
    const-string v6, "999999999"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string/jumbo v7, "\u4f1a\u5458\uff1a"

    if-eqz v6, :cond_1

    .line 324
    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity;->memberData:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/UserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/shenma/tvlauncher/R$string;->Lifetime_VIP:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 325
    :cond_1
    if-nez v4, :cond_2

    .line 326
    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity;->memberData:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/UserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/shenma/tvlauncher/R$string;->Expired:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 327
    :cond_2
    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 328
    iget-object v6, p0, Lcom/shenma/tvlauncher/UserActivity;->memberData:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3, v5}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->GetInfo()V

    .line 332
    .end local v1    # "fen":Ljava/lang/String;
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    .end local v3    # "time":Ljava/lang/String;
    .end local v4    # "vipstate":I
    goto :goto_3

    .line 333
    :cond_4
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->llQrCode:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->accountInfo:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->btLogin:Landroid/widget/Button;

    const-string/jumbo v2, "\u767b\u5f55"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->seek_empower()V

    .line 341
    :goto_3
    return-void
.end method

.method private login_notify()V
    .locals 15

    .line 1655
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1656
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1657
    .local v2, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1658
    .local v3, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1659
    .local v4, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1660
    .local v5, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1661
    .local v1, "Appkey":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oin="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&time="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/shenma/tvlauncher/UserActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&t="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1662
    .local v6, "logindata":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v0, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 1663
    .local v8, "miType":I
    if-ne v8, v7, :cond_0

    .line 1664
    invoke-static {v6, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    goto :goto_1

    .line 1665
    :cond_0
    const/4 v0, 0x2

    if-ne v8, v0, :cond_1

    .line 1667
    :try_start_0
    invoke-static {v6, v3}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1668
    :catch_0
    move-exception v0

    .line 1669
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1670
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 1671
    :cond_1
    const/4 v0, 0x3

    if-ne v8, v0, :cond_2

    .line 1672
    invoke-static {v4, v6, v5}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    .line 1674
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->sign:Ljava/lang/String;

    .line 1675
    new-instance v9, Lcom/shenma/tvlauncher/UserActivity$54;

    iget-object v12, p0, Lcom/shenma/tvlauncher/UserActivity;->notify:Ljava/lang/String;

    new-instance v13, Lcom/shenma/tvlauncher/UserActivity$52;

    invoke-direct {v13, p0}, Lcom/shenma/tvlauncher/UserActivity$52;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    new-instance v14, Lcom/shenma/tvlauncher/UserActivity$53;

    invoke-direct {v14, p0}, Lcom/shenma/tvlauncher/UserActivity$53;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    const/4 v11, 0x1

    move-object v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/shenma/tvlauncher/UserActivity$54;-><init>(Lcom/shenma/tvlauncher/UserActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1700
    .local v9, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v0, v10, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v9}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1701
    return-void
.end method

.method private seek_empower()V
    .locals 14

    .line 1563
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1564
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1565
    .local v6, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1566
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1567
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1568
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1569
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1570
    .local v11, "Appkey":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markcode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1571
    .local v12, "logindata":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    .line 1572
    .local v13, "miType":I
    if-ne v13, v2, :cond_0

    .line 1573
    invoke-static {v12, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    goto :goto_1

    .line 1574
    :cond_0
    const/4 v0, 0x2

    if-ne v13, v0, :cond_1

    .line 1576
    :try_start_0
    invoke-static {v12, v8}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1577
    :catch_0
    move-exception v0

    .line 1578
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1579
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 1580
    :cond_1
    const/4 v0, 0x3

    if-ne v13, v0, :cond_2

    .line 1581
    invoke-static {v9, v12, v10}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    .line 1584
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->sign:Ljava/lang/String;

    .line 1586
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$51;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api.php?app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&act=empower_logon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$49;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/UserActivity$49;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/UserActivity$50;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/UserActivity$50;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/shenma/tvlauncher/UserActivity$51;-><init>(Lcom/shenma/tvlauncher/UserActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1611
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1612
    return-void
.end method

.method private seek_pass(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 16
    .param p1, "NameET"    # Landroid/widget/EditText;
    .param p2, "codeET"    # Landroid/widget/EditText;
    .param p3, "passET"    # Landroid/widget/EditText;
    .param p4, "requestUrl"    # Ljava/lang/String;

    .line 1450
    move-object/from16 v1, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v1, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1451
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1452
    .local v6, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1453
    .local v7, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1454
    .local v8, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1455
    .local v9, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1456
    .local v10, "Appkey":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1457
    .local v11, "email":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 1458
    .local v12, "code":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 1459
    .local v13, "pass":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "email="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&crc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&newpassword="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1460
    .local v14, "logindata":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    .line 1461
    .local v15, "miType":I
    if-ne v15, v2, :cond_0

    .line 1462
    invoke-static {v14, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    goto :goto_1

    .line 1463
    :cond_0
    const/4 v0, 0x2

    if-ne v15, v0, :cond_1

    .line 1465
    :try_start_0
    invoke-static {v14, v7}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1466
    :catch_0
    move-exception v0

    .line 1467
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1468
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 1469
    :cond_1
    const/4 v0, 0x3

    if-ne v15, v0, :cond_2

    .line 1470
    invoke-static {v8, v14, v9}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    .line 1473
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->sign:Ljava/lang/String;

    .line 1474
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    sget v2, Lcom/shenma/tvlauncher/R$string;->loading:I

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 1475
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$47;

    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$45;

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct {v4, v1, v2, v3}, Lcom/shenma/tvlauncher/UserActivity$45;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    new-instance v5, Lcom/shenma/tvlauncher/UserActivity$46;

    invoke-direct {v5, v1}, Lcom/shenma/tvlauncher/UserActivity$46;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    const/4 v2, 0x1

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/shenma/tvlauncher/UserActivity$47;-><init>(Lcom/shenma/tvlauncher/UserActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1500
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1501
    return-void
.end method

.method private send_code(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "uNameET"    # Landroid/widget/EditText;
    .param p2, "requestUrl"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 1362
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1363
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1364
    .local v6, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1365
    .local v7, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1366
    .local v8, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1367
    .local v9, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1368
    .local v10, "Appkey":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1369
    .local v11, "email":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "email="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v12, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1370
    .local v13, "logindata":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    .line 1371
    .local v14, "miType":I
    if-ne v14, v2, :cond_0

    .line 1372
    invoke-static {v13, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    goto :goto_1

    .line 1373
    :cond_0
    const/4 v0, 0x2

    if-ne v14, v0, :cond_1

    .line 1375
    :try_start_0
    invoke-static {v13, v7}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1378
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 1379
    :cond_1
    const/4 v0, 0x3

    if-ne v14, v0, :cond_2

    .line 1380
    invoke-static {v8, v13, v9}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    .line 1383
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->sign:Ljava/lang/String;

    .line 1384
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    sget v2, Lcom/shenma/tvlauncher/R$string;->loading:I

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 1385
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$44;

    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$42;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/UserActivity$42;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/UserActivity$43;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/UserActivity$43;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/shenma/tvlauncher/UserActivity$44;-><init>(Lcom/shenma/tvlauncher/UserActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1410
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1411
    return-void
.end method

.method private showLogoutDialog()V
    .locals 5

    .line 999
    new-instance v0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1000
    .local v0, "builder":Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    sget v1, Lcom/shenma/tvlauncher/R$layout;->logout_dialog:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1002
    .local v1, "mView":Landroid/view/View;
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, "Exit"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1003
    .local v2, "Exit":I
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1004
    sget v3, Lcom/shenma/tvlauncher/R$string;->log_off:I

    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$31;

    invoke-direct {v4, p0, v2}, Lcom/shenma/tvlauncher/UserActivity$31;-><init>(Lcom/shenma/tvlauncher/UserActivity;I)V

    invoke-virtual {v0, v3, v4}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1024
    sget v3, Lcom/shenma/tvlauncher/R$string;->popup_confirmation_dialog_Negative:I

    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$32;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/UserActivity$32;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v3, v4}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1031
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->create()Lcom/shenma/tvlauncher/view/WiFiDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    .line 1032
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1033
    return-void
.end method

.method private showMenu()V
    .locals 4

    .line 894
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 895
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$MyAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getUserData(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p0, p0, v2}, Lcom/shenma/tvlauncher/UserActivity$MyAdapter;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mAdapter:Lcom/shenma/tvlauncher/UserActivity$MyAdapter;

    .line 896
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->menulist:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->mAdapter:Lcom/shenma/tvlauncher/UserActivity$MyAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 897
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    sget v2, Lcom/shenma/tvlauncher/R$style;->AnimationMenu:I

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 898
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->user_type_details:Landroid/widget/LinearLayout;

    const/16 v3, 0x35

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 899
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/UserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$dimen;->sm_350:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/shenma/tvlauncher/UserActivity;->mHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 901
    :cond_0
    return-void
.end method

.method private showUpdateDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "conetxt"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;

    .line 1895
    new-instance v0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    invoke-direct {v0, p1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1896
    .local v0, "builder":Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
    sget v1, Lcom/shenma/tvlauncher/R$string;->Tips:I

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setTitle(I)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 1897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/shenma/tvlauncher/R$string;->Detecting_accounts:I

    invoke-virtual {p0, v2}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$string;->blackspot:I

    invoke-virtual {p0, v2}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 1898
    sget v1, Lcom/shenma/tvlauncher/R$string;->binding:I

    new-instance v2, Lcom/shenma/tvlauncher/UserActivity$58;

    invoke-direct {v2, p0, p2}, Lcom/shenma/tvlauncher/UserActivity$58;-><init>(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 1906
    sget v1, Lcom/shenma/tvlauncher/R$string;->popup_confirmation_dialog_Negative:I

    new-instance v2, Lcom/shenma/tvlauncher/UserActivity$59;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/UserActivity$59;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 1914
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->creates()Lcom/shenma/tvlauncher/view/HomeDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/HomeDialog;->show()V

    .line 1915
    return-void
.end method

.method private showUserDialog()V
    .locals 8

    .line 912
    const-string v0, "aa="

    const-string/jumbo v1, "\u663e\u793a\u767b\u5f55\u5f39\u7a97"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 914
    .local v0, "User_url":Ljava/lang/String;
    new-instance v1, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 915
    .local v1, "builder":Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    const-string v2, "Login_control"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x2

    const-string v5, "login_type"

    const/4 v6, 0x0

    if-nez v2, :cond_1

    .line 916
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    sget v7, Lcom/shenma/tvlauncher/R$layout;->user_form_bak:I

    invoke-static {v2, v7, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 917
    .local v2, "mView":Landroid/view/View;
    sget v6, Lcom/shenma/tvlauncher/R$id;->user_name_et:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 918
    .local v6, "user_name_et":Landroid/widget/EditText;
    sget v7, Lcom/shenma/tvlauncher/R$id;->user_pass_et:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 920
    .local v7, "user_pass_et":Landroid/widget/EditText;
    invoke-static {p0, v5, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 921
    sget v4, Lcom/shenma/tvlauncher/R$id;->user_inv_et:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/shenma/tvlauncher/UserActivity;->user_inv_et:Landroid/widget/EditText;

    .line 922
    sget v4, Lcom/shenma/tvlauncher/R$id;->user_inv:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 923
    .local v4, "user_inv":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 926
    .end local v4    # "user_inv":Landroid/widget/LinearLayout;
    :cond_0
    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 928
    sget v3, Lcom/shenma/tvlauncher/R$string;->log_on:I

    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$25;

    invoke-direct {v4, p0, v6, v7, v0}, Lcom/shenma/tvlauncher/UserActivity$25;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 934
    sget v3, Lcom/shenma/tvlauncher/R$string;->register:I

    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$26;

    invoke-direct {v4, p0, v6, v7, v0}, Lcom/shenma/tvlauncher/UserActivity$26;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 946
    .end local v2    # "mView":Landroid/view/View;
    .end local v6    # "user_name_et":Landroid/widget/EditText;
    .end local v7    # "user_pass_et":Landroid/widget/EditText;
    goto :goto_0

    .line 947
    :cond_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    sget v7, Lcom/shenma/tvlauncher/R$layout;->user_form:I

    invoke-static {v2, v7, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 948
    .restart local v2    # "mView":Landroid/view/View;
    sget v6, Lcom/shenma/tvlauncher/R$id;->user_name_et:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 949
    .restart local v6    # "user_name_et":Landroid/widget/EditText;
    sget v7, Lcom/shenma/tvlauncher/R$id;->user_pass_et:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 951
    .restart local v7    # "user_pass_et":Landroid/widget/EditText;
    invoke-static {p0, v5, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 952
    sget v4, Lcom/shenma/tvlauncher/R$id;->user_inv_et:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/shenma/tvlauncher/UserActivity;->user_inv_et:Landroid/widget/EditText;

    .line 953
    sget v4, Lcom/shenma/tvlauncher/R$id;->user_inv:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 954
    .restart local v4    # "user_inv":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 956
    .end local v4    # "user_inv":Landroid/widget/LinearLayout;
    :cond_2
    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 958
    sget v3, Lcom/shenma/tvlauncher/R$string;->log_on:I

    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$27;

    invoke-direct {v4, p0, v6, v7, v0}, Lcom/shenma/tvlauncher/UserActivity$27;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 964
    sget v3, Lcom/shenma/tvlauncher/R$string;->register:I

    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$28;

    invoke-direct {v4, p0, v6, v7, v0}, Lcom/shenma/tvlauncher/UserActivity$28;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 976
    sget v3, Lcom/shenma/tvlauncher/R$id;->user_password:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 977
    .local v3, "user_password":Landroid/widget/Button;
    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$29;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/UserActivity$29;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 984
    sget v4, Lcom/shenma/tvlauncher/R$id;->user_empower:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 985
    .local v4, "user_empower":Landroid/widget/Button;
    new-instance v5, Lcom/shenma/tvlauncher/UserActivity$30;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/UserActivity$30;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 993
    .end local v2    # "mView":Landroid/view/View;
    .end local v3    # "user_password":Landroid/widget/Button;
    .end local v4    # "user_empower":Landroid/widget/Button;
    .end local v6    # "user_name_et":Landroid/widget/EditText;
    .end local v7    # "user_pass_et":Landroid/widget/EditText;
    :goto_0
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->create()Lcom/shenma/tvlauncher/view/WiFiDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    .line 994
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 995
    return-void
.end method

.method private showUserDialogbinding(Ljava/lang/String;)V
    .locals 11
    .param p1, "type"    # Ljava/lang/String;

    .line 1919
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1920
    .local v8, "User_url":Ljava/lang/String;
    new-instance v0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1921
    .local v0, "builder":Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    sget v3, Lcom/shenma/tvlauncher/R$layout;->binding_form:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1922
    .local v2, "mView":Landroid/view/View;
    sget v3, Lcom/shenma/tvlauncher/R$id;->bind_name_et:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/widget/TextView;

    .line 1923
    .local v5, "bind_name_et":Landroid/widget/TextView;
    sget v3, Lcom/shenma/tvlauncher/R$id;->bind_phone_et:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/widget/EditText;

    .line 1924
    .local v6, "bind_phone_et":Landroid/widget/EditText;
    sget v3, Lcom/shenma/tvlauncher/R$id;->bind_code_et:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/EditText;

    .line 1925
    .local v7, "bind_code_et":Landroid/widget/EditText;
    sget v3, Lcom/shenma/tvlauncher/R$id;->send_code_bt:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/shenma/tvlauncher/UserActivity;->send_code_bt:Landroid/widget/Button;

    .line 1926
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "userName"

    invoke-interface {v3, v9, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1927
    .local v10, "string":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1929
    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1930
    sget v1, Lcom/shenma/tvlauncher/R$string;->popup_confirmation_dialog_Positive:I

    new-instance v3, Lcom/shenma/tvlauncher/UserActivity$60;

    move-object v4, p0

    move-object v9, v8

    move-object v8, p1

    .end local p1    # "type":Ljava/lang/String;
    .local v8, "type":Ljava/lang/String;
    .local v9, "User_url":Ljava/lang/String;
    invoke-direct/range {v3 .. v9}, Lcom/shenma/tvlauncher/UserActivity$60;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v7

    move-object v7, v8

    move-object v8, v9

    .end local v9    # "User_url":Ljava/lang/String;
    .local v7, "type":Ljava/lang/String;
    .local v8, "User_url":Ljava/lang/String;
    .local p1, "bind_code_et":Landroid/widget/EditText;
    invoke-virtual {v0, v1, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1950
    sget v1, Lcom/shenma/tvlauncher/R$string;->popup_confirmation_dialog_Negative:I

    new-instance v3, Lcom/shenma/tvlauncher/UserActivity$61;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/UserActivity$61;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1957
    iget-object v1, v4, Lcom/shenma/tvlauncher/UserActivity;->send_code_bt:Landroid/widget/Button;

    new-instance v3, Lcom/shenma/tvlauncher/UserActivity$62;

    invoke-direct/range {v3 .. v8}, Lcom/shenma/tvlauncher/UserActivity$62;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/TextView;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1974
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->creates()Lcom/shenma/tvlauncher/view/WiFiDialog;

    move-result-object v1

    iput-object v1, v4, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    .line 1975
    iget-object v1, v4, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1976
    return-void
.end method

.method private showUserDialogempower()V
    .locals 4

    .line 1545
    new-instance v0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1546
    .local v0, "builder":Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    sget v2, Lcom/shenma/tvlauncher/R$layout;->forget_empower:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1547
    .local v1, "mView":Landroid/view/View;
    sget v2, Lcom/shenma/tvlauncher/R$id;->users_empower:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->users_empower:Landroid/widget/ImageView;

    .line 1548
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1549
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->seek_empower()V

    .line 1550
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->users_empower:Landroid/widget/ImageView;

    new-instance v3, Lcom/shenma/tvlauncher/UserActivity$48;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/UserActivity$48;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1557
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->creates()Lcom/shenma/tvlauncher/view/WiFiDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialogs:Landroid/app/Dialog;

    .line 1558
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialogs:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1559
    return-void
.end method

.method private showUserDialogpwd()V
    .locals 9

    .line 1310
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1311
    .local v7, "User_url":Ljava/lang/String;
    new-instance v0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1312
    .local v0, "builder":Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    sget v2, Lcom/shenma/tvlauncher/R$layout;->forget_form:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1313
    .local v1, "mView":Landroid/view/View;
    sget v2, Lcom/shenma/tvlauncher/R$id;->user_phone_et:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/EditText;

    .line 1314
    .local v4, "user_phone_et":Landroid/widget/EditText;
    sget v2, Lcom/shenma/tvlauncher/R$id;->user_code_et:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/EditText;

    .line 1315
    .local v5, "user_code_et":Landroid/widget/EditText;
    sget v2, Lcom/shenma/tvlauncher/R$id;->send_code_bt:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->send_code_bt:Landroid/widget/Button;

    .line 1316
    sget v2, Lcom/shenma/tvlauncher/R$id;->user_new_pass_et:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    .line 1317
    .local v6, "user_new_pass_et":Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1318
    sget v8, Lcom/shenma/tvlauncher/R$string;->popup_confirmation_dialog_Positive:I

    new-instance v2, Lcom/shenma/tvlauncher/UserActivity$39;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/shenma/tvlauncher/UserActivity$39;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v2}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1336
    sget v2, Lcom/shenma/tvlauncher/R$string;->popup_confirmation_dialog_Negative:I

    new-instance v8, Lcom/shenma/tvlauncher/UserActivity$40;

    invoke-direct {v8, p0}, Lcom/shenma/tvlauncher/UserActivity$40;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v2, v8}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1342
    iget-object v2, v3, Lcom/shenma/tvlauncher/UserActivity;->send_code_bt:Landroid/widget/Button;

    new-instance v8, Lcom/shenma/tvlauncher/UserActivity$41;

    invoke-direct {v8, p0, v4, v7}, Lcom/shenma/tvlauncher/UserActivity$41;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1356
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->creates()Lcom/shenma/tvlauncher/view/WiFiDialog;

    move-result-object v2

    iput-object v2, v3, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    .line 1357
    iget-object v2, v3, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1358
    return-void
.end method


# virtual methods
.method public BindResponse(Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .line 2033
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 2035
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2036
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2037
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2038
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2040
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2041
    .local v4, "jo":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 2042
    .local v5, "code":I
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2043
    .local v6, "miType":I
    const/4 v8, 0x0

    .line 2044
    .local v8, "msg":Ljava/lang/String;
    const-string v9, "msg"

    if-ne v6, v7, :cond_0

    .line 2045
    :try_start_1
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 2046
    :cond_0
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 2047
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 2048
    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 2049
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v7

    .line 2051
    :cond_2
    :goto_0
    const/16 v7, 0xc8

    const-string v9, "UTF-8"

    if-ne v5, v7, :cond_3

    .line 2052
    :try_start_2
    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    .line 2053
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->clearTimer()V

    .line 2054
    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2055
    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2056
    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 2059
    :cond_3
    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    .line 2060
    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v9, 0x9

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2064
    .end local v4    # "jo":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "miType":I
    .end local v8    # "msg":Ljava/lang/String;
    :cond_4
    :goto_1
    goto :goto_2

    .line 2062
    :catch_0
    move-exception v4

    .line 2063
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2065
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public CodeResponse(Ljava/lang/String;)V
    .locals 11
    .param p1, "response"    # Ljava/lang/String;

    .line 1415
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 1417
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1418
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1419
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1420
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1422
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1423
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 1424
    .local v5, "code":I
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    .local v6, "miType":I
    const/4 v8, 0x0

    .line 1426
    .local v8, "msg":Ljava/lang/String;
    const-string v9, "msg"

    if-ne v6, v7, :cond_0

    .line 1427
    :try_start_1
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 1428
    :cond_0
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1429
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 1430
    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 1431
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v7

    .line 1433
    :cond_2
    :goto_0
    const/16 v7, 0xc8

    const-string v9, "UTF-8"

    if-ne v5, v7, :cond_3

    .line 1434
    :try_start_2
    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1435
    .local v7, "keyWord":Ljava/lang/String;
    iput-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    .line 1436
    iget-object v9, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1437
    nop

    .end local v7    # "keyWord":Ljava/lang/String;
    goto :goto_1

    .line 1438
    :cond_3
    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1439
    .restart local v7    # "keyWord":Ljava/lang/String;
    iput-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    .line 1440
    iget-object v9, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1445
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "miType":I
    .end local v7    # "keyWord":Ljava/lang/String;
    .end local v8    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 1443
    :catch_0
    move-exception v4

    .line 1444
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1446
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public EmpowerResponse(Ljava/lang/String;)V
    .locals 14
    .param p1, "response"    # Ljava/lang/String;

    .line 1618
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1619
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1620
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1621
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1623
    .local v4, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1624
    .local v5, "jSONObject":Lorg/json/JSONObject;
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1625
    .local v6, "code":I
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1626
    .local v7, "miType":I
    const/4 v9, 0x0

    .line 1627
    .local v9, "msg":Ljava/lang/String;
    const-string v10, "msg"

    if-ne v7, v8, :cond_0

    .line 1628
    :try_start_1
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    goto :goto_0

    .line 1629
    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1630
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    goto :goto_0

    .line 1631
    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 1632
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v4}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .line 1634
    :cond_2
    :goto_0
    const/16 v8, 0xc8

    if-ne v6, v8, :cond_4

    .line 1635
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1636
    .local v8, "jSON":Lorg/json/JSONObject;
    new-instance v10, Lorg/json/JSONObject;

    const-string v11, "info"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1637
    .local v10, "jSONB":Lorg/json/JSONObject;
    const-string v11, "login_url"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/shenma/tvlauncher/UserActivity;->empower_url:Ljava/lang/String;

    .line 1638
    const-string/jumbo v11, "t"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/shenma/tvlauncher/UserActivity;->t:Ljava/lang/String;

    .line 1639
    const-string v11, "notify"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/shenma/tvlauncher/UserActivity;->notify:Ljava/lang/String;

    .line 1640
    iget-object v11, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1641
    iget-object v11, p0, Lcom/shenma/tvlauncher/UserActivity;->notify:Ljava/lang/String;

    if-eq v11, v1, :cond_3

    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->notify:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1642
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v11, 0x6

    const-wide/16 v12, 0xbb8

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1644
    .end local v8    # "jSON":Lorg/json/JSONObject;
    .end local v10    # "jSONB":Lorg/json/JSONObject;
    :cond_3
    goto :goto_1

    .line 1645
    :cond_4
    const-string v1, "UTF-8"

    invoke-static {v9, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    .line 1646
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v8, 0x9

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1650
    .end local v5    # "jSONObject":Lorg/json/JSONObject;
    .end local v6    # "code":I
    .end local v7    # "miType":I
    .end local v9    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 1648
    :catch_0
    move-exception v1

    .line 1649
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1651
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public Error(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 2069
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 2071
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    .line 2075
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    .line 2079
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    .line 2083
    instance-of v0, p1, Lcom/android/volley/ServerError;

    .line 2088
    return-void
.end method

.method public InfoResponse(Ljava/lang/String;)V
    .locals 22
    .param p1, "response"    # Ljava/lang/String;

    .line 400
    move-object/from16 v1, p0

    const-string v0, "fen"

    const-string/jumbo v2, "vip"

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, "RC4KEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, "RSAKEY":Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v6, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 403
    .local v6, "AESKEY":Ljava/lang/String;
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v7, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 406
    .local v7, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v9, p1

    :try_start_1
    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 407
    .local v8, "jSONObject":Lorg/json/JSONObject;
    const-string v10, "code"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 408
    .local v10, "code":I
    const-string v11, "msg"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 409
    .local v11, "msg":Ljava/lang/String;
    sget-object v12, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v1, v12, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 410
    .local v12, "miType":I
    const/4 v14, 0x0

    .line 411
    .local v14, "jSON":Lorg/json/JSONObject;
    if-ne v12, v13, :cond_0

    .line 412
    :try_start_2
    new-instance v15, Lorg/json/JSONObject;

    invoke-static {v11, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v15

    goto :goto_0

    .line 449
    .end local v8    # "jSONObject":Lorg/json/JSONObject;
    .end local v10    # "code":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "miType":I
    .end local v14    # "jSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    goto/16 :goto_7

    .line 413
    .restart local v8    # "jSONObject":Lorg/json/JSONObject;
    .restart local v10    # "code":I
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "miType":I
    .restart local v14    # "jSON":Lorg/json/JSONObject;
    :cond_0
    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 414
    new-instance v13, Lorg/json/JSONObject;

    invoke-static {v11, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v13

    goto :goto_0

    .line 415
    :cond_1
    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    .line 416
    new-instance v13, Lorg/json/JSONObject;

    invoke-static {v6, v11, v7}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v14, v13

    .line 418
    :cond_2
    :goto_0
    :try_start_3
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 419
    .local v13, "vip":Ljava/lang/String;
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 420
    .local v15, "fen":Ljava/lang/String;
    move-object/from16 v16, v3

    .end local v3    # "RC4KEY":Ljava/lang/String;
    .local v16, "RC4KEY":Ljava/lang/String;
    const/16 v3, 0xc8

    if-ne v10, v3, :cond_7

    .line 422
    :try_start_4
    iget-object v3, v1, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 423
    invoke-interface {v3, v2, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 424
    invoke-interface {v3, v0, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 425
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd  HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 428
    .local v3, "format":Ljava/text/SimpleDateFormat;
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v2, v0

    .line 429
    .local v2, "time":Ljava/lang/String;
    const/16 v17, 0x0

    .line 431
    .local v17, "vipstate":I
    :try_start_5
    new-instance v0, Ljava/util/Date;
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .end local v5    # "RSAKEY":Ljava/lang/String;
    .end local v6    # "AESKEY":Ljava/lang/String;
    .local v18, "RSAKEY":Ljava/lang/String;
    .local v19, "AESKEY":Ljava/lang/String;
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v20
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    cmp-long v0, v5, v20

    if-gez v0, :cond_3

    .line 432
    const/4 v0, 0x1

    move/from16 v17, v0

    .end local v17    # "vipstate":I
    .local v0, "vipstate":I
    goto :goto_1

    .line 434
    .end local v0    # "vipstate":I
    .restart local v17    # "vipstate":I
    :cond_3
    const/4 v0, 0x0

    move/from16 v17, v0

    .line 438
    :goto_1
    move/from16 v0, v17

    goto :goto_3

    .line 449
    .end local v2    # "time":Ljava/lang/String;
    .end local v3    # "format":Ljava/text/SimpleDateFormat;
    .end local v8    # "jSONObject":Lorg/json/JSONObject;
    .end local v10    # "code":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "miType":I
    .end local v13    # "vip":Ljava/lang/String;
    .end local v14    # "jSON":Lorg/json/JSONObject;
    .end local v15    # "fen":Ljava/lang/String;
    .end local v17    # "vipstate":I
    :catch_1
    move-exception v0

    goto/16 :goto_7

    .line 436
    .restart local v2    # "time":Ljava/lang/String;
    .restart local v3    # "format":Ljava/text/SimpleDateFormat;
    .restart local v8    # "jSONObject":Lorg/json/JSONObject;
    .restart local v10    # "code":I
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "miType":I
    .restart local v13    # "vip":Ljava/lang/String;
    .restart local v14    # "jSON":Lorg/json/JSONObject;
    .restart local v15    # "fen":Ljava/lang/String;
    .restart local v17    # "vipstate":I
    :catch_2
    move-exception v0

    goto :goto_2

    .end local v18    # "RSAKEY":Ljava/lang/String;
    .end local v19    # "AESKEY":Ljava/lang/String;
    .restart local v5    # "RSAKEY":Ljava/lang/String;
    .restart local v6    # "AESKEY":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 437
    .end local v5    # "RSAKEY":Ljava/lang/String;
    .end local v6    # "AESKEY":Ljava/lang/String;
    .local v0, "e":Ljava/text/ParseException;
    .restart local v18    # "RSAKEY":Ljava/lang/String;
    .restart local v19    # "AESKEY":Ljava/lang/String;
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move/from16 v0, v17

    .line 439
    .end local v17    # "vipstate":I
    .local v0, "vipstate":I
    :goto_3
    const-string v5, "999999999"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    const-string/jumbo v6, "\u4f1a\u5458\uff1a"

    if-eqz v5, :cond_4

    .line 440
    :try_start_8
    iget-object v4, v1, Lcom/shenma/tvlauncher/UserActivity;->memberData:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/UserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v17, v3

    .end local v3    # "format":Ljava/text/SimpleDateFormat;
    .local v17, "format":Ljava/text/SimpleDateFormat;
    sget v3, Lcom/shenma/tvlauncher/R$string;->Lifetime_VIP:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 441
    .end local v17    # "format":Ljava/text/SimpleDateFormat;
    .restart local v3    # "format":Ljava/text/SimpleDateFormat;
    :cond_4
    move-object/from16 v17, v3

    .end local v3    # "format":Ljava/text/SimpleDateFormat;
    .restart local v17    # "format":Ljava/text/SimpleDateFormat;
    if-nez v0, :cond_5

    .line 442
    iget-object v3, v1, Lcom/shenma/tvlauncher/UserActivity;->memberData:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/UserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/shenma/tvlauncher/R$string;->Expired:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 443
    :cond_5
    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    .line 444
    iget-object v3, v1, Lcom/shenma/tvlauncher/UserActivity;->memberData:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    :cond_6
    :goto_4
    iget-object v3, v1, Lcom/shenma/tvlauncher/UserActivity;->tvJifen:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u79ef\u5206\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_5

    .line 449
    .end local v0    # "vipstate":I
    .end local v2    # "time":Ljava/lang/String;
    .end local v8    # "jSONObject":Lorg/json/JSONObject;
    .end local v10    # "code":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "miType":I
    .end local v13    # "vip":Ljava/lang/String;
    .end local v14    # "jSON":Lorg/json/JSONObject;
    .end local v15    # "fen":Ljava/lang/String;
    .end local v17    # "format":Ljava/text/SimpleDateFormat;
    .end local v18    # "RSAKEY":Ljava/lang/String;
    .end local v19    # "AESKEY":Ljava/lang/String;
    .restart local v5    # "RSAKEY":Ljava/lang/String;
    .restart local v6    # "AESKEY":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .end local v5    # "RSAKEY":Ljava/lang/String;
    .end local v6    # "AESKEY":Ljava/lang/String;
    .restart local v18    # "RSAKEY":Ljava/lang/String;
    .restart local v19    # "AESKEY":Ljava/lang/String;
    goto :goto_7

    .line 420
    .end local v18    # "RSAKEY":Ljava/lang/String;
    .end local v19    # "AESKEY":Ljava/lang/String;
    .restart local v5    # "RSAKEY":Ljava/lang/String;
    .restart local v6    # "AESKEY":Ljava/lang/String;
    .restart local v8    # "jSONObject":Lorg/json/JSONObject;
    .restart local v10    # "code":I
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "miType":I
    .restart local v13    # "vip":Ljava/lang/String;
    .restart local v14    # "jSON":Lorg/json/JSONObject;
    .restart local v15    # "fen":Ljava/lang/String;
    :cond_7
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 451
    .end local v5    # "RSAKEY":Ljava/lang/String;
    .end local v6    # "AESKEY":Ljava/lang/String;
    .end local v8    # "jSONObject":Lorg/json/JSONObject;
    .end local v10    # "code":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "miType":I
    .end local v13    # "vip":Ljava/lang/String;
    .end local v14    # "jSON":Lorg/json/JSONObject;
    .end local v15    # "fen":Ljava/lang/String;
    .restart local v18    # "RSAKEY":Ljava/lang/String;
    .restart local v19    # "AESKEY":Ljava/lang/String;
    :goto_5
    goto :goto_8

    .line 449
    .end local v16    # "RC4KEY":Ljava/lang/String;
    .end local v18    # "RSAKEY":Ljava/lang/String;
    .end local v19    # "AESKEY":Ljava/lang/String;
    .local v3, "RC4KEY":Ljava/lang/String;
    .restart local v5    # "RSAKEY":Ljava/lang/String;
    .restart local v6    # "AESKEY":Ljava/lang/String;
    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v9, p1

    :goto_6
    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 450
    .end local v3    # "RC4KEY":Ljava/lang/String;
    .end local v5    # "RSAKEY":Ljava/lang/String;
    .end local v6    # "AESKEY":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "RC4KEY":Ljava/lang/String;
    .restart local v18    # "RSAKEY":Ljava/lang/String;
    .restart local v19    # "AESKEY":Ljava/lang/String;
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 452
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    return-void
.end method

.method public LoginResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 35
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "passWord"    # Ljava/lang/String;

    .line 1108
    move-object/from16 v1, p0

    const-string v2, "Exit"

    const-string v3, "fen"

    const-string/jumbo v4, "vip"

    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1109
    .local v6, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1110
    .local v7, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1111
    .local v8, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1112
    .local v9, "AESIV":Ljava/lang/String;
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 1114
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v10, p1

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 1115
    .local v11, "jSONObject":Lorg/json/JSONObject;
    const-string v0, "code"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    move v12, v0

    .line 1116
    .local v12, "code":I
    const/16 v0, 0xc8

    const/4 v15, 0x1

    const-string v13, "msg"

    if-ne v12, v0, :cond_a

    .line 1117
    :try_start_1
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v1, v0, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move/from16 v17, v0

    .line 1118
    .local v17, "miType":I
    const/4 v0, 0x0

    .line 1119
    .local v0, "msg":Lorg/json/JSONObject;
    move/from16 v14, v17

    .end local v17    # "miType":I
    .local v14, "miType":I
    if-ne v14, v15, :cond_0

    .line 1120
    :try_start_2
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v15

    move-object v13, v0

    goto :goto_0

    .line 1193
    .end local v0    # "msg":Lorg/json/JSONObject;
    .end local v11    # "jSONObject":Lorg/json/JSONObject;
    .end local v12    # "code":I
    .end local v14    # "miType":I
    :catch_0
    move-exception v0

    move-object/from16 v14, p2

    move-object v4, v7

    move-object v5, v8

    move-object v7, v9

    goto/16 :goto_8

    .line 1121
    .restart local v0    # "msg":Lorg/json/JSONObject;
    .restart local v11    # "jSONObject":Lorg/json/JSONObject;
    .restart local v12    # "code":I
    .restart local v14    # "miType":I
    :cond_0
    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    .line 1122
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v7}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v15

    move-object v13, v0

    goto :goto_0

    .line 1123
    :cond_1
    const/4 v15, 0x3

    if-ne v14, v15, :cond_2

    .line 1124
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13, v9}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v15

    move-object v13, v0

    goto :goto_0

    .line 1123
    :cond_2
    move-object v13, v0

    .line 1126
    .end local v0    # "msg":Lorg/json/JSONObject;
    .local v13, "msg":Lorg/json/JSONObject;
    :goto_0
    :try_start_3
    const-string/jumbo v0, "token"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 1127
    .local v15, "token":Ljava/lang/String;
    const-string v0, "info"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v16, v0

    .line 1128
    .local v16, "info":Lorg/json/JSONObject;
    const-string v0, "id"

    move-object/from16 v10, v16

    .end local v16    # "info":Lorg/json/JSONObject;
    .local v10, "info":Lorg/json/JSONObject;
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 1129
    .local v16, "id":Ljava/lang/String;
    const-string v0, "pic"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    .line 1130
    .local v18, "pic":Ljava/lang/String;
    const-string v0, "name"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    .line 1131
    .local v19, "name":Ljava/lang/String;
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    .line 1132
    .local v20, "vip":Ljava/lang/String;
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 1133
    .local v21, "fen":Ljava/lang/String;
    const-string v0, "email"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    .line 1134
    .local v22, "email":Ljava/lang/String;
    const-string/jumbo v0, "user"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    .line 1135
    .local v23, "user":Ljava/lang/String;
    const-string v0, "phone"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    .line 1136
    .local v24, "phone":I
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    .line 1137
    .local v25, "Exit":I
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->llQrCode:Landroid/view/View;

    move-object/from16 v26, v10

    .end local v10    # "info":Lorg/json/JSONObject;
    .local v26, "info":Lorg/json/JSONObject;
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->accountInfo:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1139
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->tvAccount:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v12

    .end local v12    # "code":I
    .local v27, "code":I
    const-string/jumbo v12, "\u8d26\u53f7\uff1a"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v12, v23

    .end local v23    # "user":Ljava/lang/String;
    .local v12, "user":Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->btLogin:Landroid/widget/Button;

    const-string/jumbo v10, "\u9000\u51fa\u767b\u5f55"

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyy-MM-dd  HH:mm:ss"

    invoke-direct {v0, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 1142
    .local v10, "format":Ljava/text/SimpleDateFormat;
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    move-object/from16 v23, v0

    .line 1143
    .local v23, "time":Ljava/lang/String;
    const/16 v28, 0x0

    .line 1145
    .local v28, "vipstate":I
    :try_start_4
    new-instance v0, Ljava/util/Date;
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v30, v13

    move/from16 v29, v14

    .end local v13    # "msg":Lorg/json/JSONObject;
    .end local v14    # "miType":I
    .local v29, "miType":I
    .local v30, "msg":Lorg/json/JSONObject;
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-direct {v0, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v13
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-wide/from16 v31, v13

    move-object/from16 v13, v23

    .end local v23    # "time":Ljava/lang/String;
    .local v13, "time":Ljava/lang/String;
    :try_start_6
    invoke-static {v13, v5}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v33
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    cmp-long v0, v31, v33

    if-gez v0, :cond_3

    .line 1146
    const/4 v0, 0x1

    move/from16 v28, v0

    .end local v28    # "vipstate":I
    .local v0, "vipstate":I
    goto :goto_1

    .line 1148
    .end local v0    # "vipstate":I
    .restart local v28    # "vipstate":I
    :cond_3
    const/4 v0, 0x0

    move/from16 v28, v0

    .line 1152
    :goto_1
    move/from16 v0, v28

    goto :goto_3

    .line 1150
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v13    # "time":Ljava/lang/String;
    .restart local v23    # "time":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v13, v23

    .end local v23    # "time":Ljava/lang/String;
    .restart local v13    # "time":Ljava/lang/String;
    goto :goto_2

    .end local v29    # "miType":I
    .end local v30    # "msg":Lorg/json/JSONObject;
    .local v13, "msg":Lorg/json/JSONObject;
    .restart local v14    # "miType":I
    .restart local v23    # "time":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v30, v13

    move/from16 v29, v14

    move-object/from16 v13, v23

    .line 1151
    .end local v14    # "miType":I
    .end local v23    # "time":Ljava/lang/String;
    .local v0, "e":Ljava/text/ParseException;
    .local v13, "time":Ljava/lang/String;
    .restart local v29    # "miType":I
    .restart local v30    # "msg":Lorg/json/JSONObject;
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move/from16 v0, v28

    .line 1153
    .end local v28    # "vipstate":I
    .local v0, "vipstate":I
    :goto_3
    const-string v14, "999999999"

    move-object/from16 v23, v10

    move-object/from16 v10, v20

    .end local v20    # "vip":Ljava/lang/String;
    .local v10, "vip":Ljava/lang/String;
    .local v23, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move/from16 v20, v14

    const-string/jumbo v14, "\u4f1a\u5458\uff1a"

    if-eqz v20, :cond_4

    .line 1154
    move-object/from16 v20, v8

    .end local v8    # "AESKEY":Ljava/lang/String;
    .local v20, "AESKEY":Ljava/lang/String;
    :try_start_8
    iget-object v8, v1, Lcom/shenma/tvlauncher/UserActivity;->memberData:Landroid/widget/TextView;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-object/from16 v28, v9

    .end local v9    # "AESIV":Ljava/lang/String;
    .local v28, "AESIV":Ljava/lang/String;
    :try_start_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/UserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-object/from16 v31, v7

    .end local v7    # "RSAKEY":Ljava/lang/String;
    .local v31, "RSAKEY":Ljava/lang/String;
    :try_start_a
    sget v7, Lcom/shenma/tvlauncher/R$string;->Lifetime_VIP:I

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1193
    .end local v0    # "vipstate":I
    .end local v10    # "vip":Ljava/lang/String;
    .end local v11    # "jSONObject":Lorg/json/JSONObject;
    .end local v12    # "user":Ljava/lang/String;
    .end local v13    # "time":Ljava/lang/String;
    .end local v15    # "token":Ljava/lang/String;
    .end local v16    # "id":Ljava/lang/String;
    .end local v18    # "pic":Ljava/lang/String;
    .end local v19    # "name":Ljava/lang/String;
    .end local v21    # "fen":Ljava/lang/String;
    .end local v22    # "email":Ljava/lang/String;
    .end local v23    # "format":Ljava/text/SimpleDateFormat;
    .end local v24    # "phone":I
    .end local v25    # "Exit":I
    .end local v26    # "info":Lorg/json/JSONObject;
    .end local v27    # "code":I
    .end local v29    # "miType":I
    .end local v30    # "msg":Lorg/json/JSONObject;
    .end local v31    # "RSAKEY":Ljava/lang/String;
    .restart local v7    # "RSAKEY":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v14, p2

    move-object/from16 v5, v20

    move-object/from16 v7, v28

    move-object/from16 v4, v31

    .end local v7    # "RSAKEY":Ljava/lang/String;
    .restart local v31    # "RSAKEY":Ljava/lang/String;
    goto/16 :goto_8

    .end local v28    # "AESIV":Ljava/lang/String;
    .end local v31    # "RSAKEY":Ljava/lang/String;
    .restart local v7    # "RSAKEY":Ljava/lang/String;
    .restart local v9    # "AESIV":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v28, v9

    move-object/from16 v14, p2

    move-object/from16 v5, v20

    move-object/from16 v7, v28

    move-object/from16 v4, v31

    .end local v7    # "RSAKEY":Ljava/lang/String;
    .end local v9    # "AESIV":Ljava/lang/String;
    .restart local v28    # "AESIV":Ljava/lang/String;
    .restart local v31    # "RSAKEY":Ljava/lang/String;
    goto/16 :goto_8

    .line 1155
    .end local v20    # "AESKEY":Ljava/lang/String;
    .end local v28    # "AESIV":Ljava/lang/String;
    .end local v31    # "RSAKEY":Ljava/lang/String;
    .restart local v0    # "vipstate":I
    .restart local v7    # "RSAKEY":Ljava/lang/String;
    .restart local v8    # "AESKEY":Ljava/lang/String;
    .restart local v9    # "AESIV":Ljava/lang/String;
    .restart local v10    # "vip":Ljava/lang/String;
    .restart local v11    # "jSONObject":Lorg/json/JSONObject;
    .restart local v12    # "user":Ljava/lang/String;
    .restart local v13    # "time":Ljava/lang/String;
    .restart local v15    # "token":Ljava/lang/String;
    .restart local v16    # "id":Ljava/lang/String;
    .restart local v18    # "pic":Ljava/lang/String;
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v21    # "fen":Ljava/lang/String;
    .restart local v22    # "email":Ljava/lang/String;
    .restart local v23    # "format":Ljava/text/SimpleDateFormat;
    .restart local v24    # "phone":I
    .restart local v25    # "Exit":I
    .restart local v26    # "info":Lorg/json/JSONObject;
    .restart local v27    # "code":I
    .restart local v29    # "miType":I
    .restart local v30    # "msg":Lorg/json/JSONObject;
    :cond_4
    move-object/from16 v31, v7

    move-object/from16 v20, v8

    move-object/from16 v28, v9

    .end local v7    # "RSAKEY":Ljava/lang/String;
    .end local v8    # "AESKEY":Ljava/lang/String;
    .end local v9    # "AESIV":Ljava/lang/String;
    .restart local v20    # "AESKEY":Ljava/lang/String;
    .restart local v28    # "AESIV":Ljava/lang/String;
    .restart local v31    # "RSAKEY":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 1156
    iget-object v7, v1, Lcom/shenma/tvlauncher/UserActivity;->memberData:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/UserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v14, Lcom/shenma/tvlauncher/R$string;->Expired:I

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1193
    .end local v0    # "vipstate":I
    .end local v10    # "vip":Ljava/lang/String;
    .end local v11    # "jSONObject":Lorg/json/JSONObject;
    .end local v12    # "user":Ljava/lang/String;
    .end local v13    # "time":Ljava/lang/String;
    .end local v15    # "token":Ljava/lang/String;
    .end local v16    # "id":Ljava/lang/String;
    .end local v18    # "pic":Ljava/lang/String;
    .end local v19    # "name":Ljava/lang/String;
    .end local v21    # "fen":Ljava/lang/String;
    .end local v22    # "email":Ljava/lang/String;
    .end local v23    # "format":Ljava/text/SimpleDateFormat;
    .end local v24    # "phone":I
    .end local v25    # "Exit":I
    .end local v26    # "info":Lorg/json/JSONObject;
    .end local v27    # "code":I
    .end local v29    # "miType":I
    .end local v30    # "msg":Lorg/json/JSONObject;
    :catch_6
    move-exception v0

    move-object/from16 v14, p2

    goto/16 :goto_5

    .line 1157
    .restart local v0    # "vipstate":I
    .restart local v10    # "vip":Ljava/lang/String;
    .restart local v11    # "jSONObject":Lorg/json/JSONObject;
    .restart local v12    # "user":Ljava/lang/String;
    .restart local v13    # "time":Ljava/lang/String;
    .restart local v15    # "token":Ljava/lang/String;
    .restart local v16    # "id":Ljava/lang/String;
    .restart local v18    # "pic":Ljava/lang/String;
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v21    # "fen":Ljava/lang/String;
    .restart local v22    # "email":Ljava/lang/String;
    .restart local v23    # "format":Ljava/text/SimpleDateFormat;
    .restart local v24    # "phone":I
    .restart local v25    # "Exit":I
    .restart local v26    # "info":Lorg/json/JSONObject;
    .restart local v27    # "code":I
    .restart local v29    # "miType":I
    .restart local v30    # "msg":Lorg/json/JSONObject;
    :cond_5
    const/4 v7, 0x1

    if-ne v0, v7, :cond_6

    .line 1158
    iget-object v7, v1, Lcom/shenma/tvlauncher/UserActivity;->memberData:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v13, v5}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1160
    :cond_6
    :goto_4
    iget-object v7, v1, Lcom/shenma/tvlauncher/UserActivity;->tvJifen:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u79ef\u5206\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v9, v21

    .end local v21    # "fen":Ljava/lang/String;
    .local v9, "fen":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    iget-object v7, v1, Lcom/shenma/tvlauncher/UserActivity;->tv_no_data:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v14, Lcom/shenma/tvlauncher/R$string;->user:I

    invoke-virtual {v1, v14}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, ":"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v14, Lcom/shenma/tvlauncher/R$string;->Logged_in:I

    invoke-virtual {v1, v14}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1162
    move-object/from16 v7, v22

    .end local v22    # "email":Ljava/lang/String;
    .local v7, "email":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v8, 0x5

    if-eqz v5, :cond_7

    .line 1163
    const-string/jumbo v5, "\u90ae\u7bb1"

    iput-object v5, v1, Lcom/shenma/tvlauncher/UserActivity;->type:Ljava/lang/String;

    .line 1164
    iget-object v5, v1, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1166
    :cond_7
    if-nez v24, :cond_8

    .line 1167
    const-string/jumbo v5, "\u624b\u673a"

    iput-object v5, v1, Lcom/shenma/tvlauncher/UserActivity;->type:Ljava/lang/String;

    .line 1168
    iget-object v5, v1, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1170
    :cond_8
    iget-object v5, v1, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1171
    move/from16 v8, v25

    .end local v25    # "Exit":I
    .local v8, "Exit":I
    invoke-interface {v5, v2, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v5, "userName"

    .line 1172
    invoke-interface {v2, v5, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "passWord"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 1173
    move-object/from16 v14, p2

    :try_start_b
    invoke-interface {v2, v5, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "ckinfo"

    .line 1174
    invoke-interface {v2, v5, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1175
    invoke-interface {v2, v4, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1176
    invoke-interface {v2, v3, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1177
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1178
    iget-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1179
    iget-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 1181
    .end local v0    # "vipstate":I
    .end local v7    # "email":Ljava/lang/String;
    .end local v8    # "Exit":I
    .end local v9    # "fen":Ljava/lang/String;
    .end local v10    # "vip":Ljava/lang/String;
    .end local v12    # "user":Ljava/lang/String;
    .end local v13    # "time":Ljava/lang/String;
    .end local v15    # "token":Ljava/lang/String;
    .end local v16    # "id":Ljava/lang/String;
    .end local v18    # "pic":Ljava/lang/String;
    .end local v19    # "name":Ljava/lang/String;
    .end local v23    # "format":Ljava/text/SimpleDateFormat;
    .end local v24    # "phone":I
    .end local v26    # "info":Lorg/json/JSONObject;
    .end local v29    # "miType":I
    .end local v30    # "msg":Lorg/json/JSONObject;
    :cond_9
    move-object/from16 v5, v20

    move-object/from16 v7, v28

    move-object/from16 v4, v31

    goto/16 :goto_7

    .line 1193
    .end local v11    # "jSONObject":Lorg/json/JSONObject;
    .end local v20    # "AESKEY":Ljava/lang/String;
    .end local v27    # "code":I
    .end local v28    # "AESIV":Ljava/lang/String;
    .end local v31    # "RSAKEY":Ljava/lang/String;
    .local v7, "RSAKEY":Ljava/lang/String;
    .local v8, "AESKEY":Ljava/lang/String;
    .local v9, "AESIV":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object/from16 v14, p2

    move-object/from16 v31, v7

    move-object/from16 v20, v8

    move-object/from16 v28, v9

    move-object/from16 v5, v20

    move-object/from16 v7, v28

    move-object/from16 v4, v31

    .end local v7    # "RSAKEY":Ljava/lang/String;
    .end local v8    # "AESKEY":Ljava/lang/String;
    .end local v9    # "AESIV":Ljava/lang/String;
    .restart local v20    # "AESKEY":Ljava/lang/String;
    .restart local v28    # "AESIV":Ljava/lang/String;
    .restart local v31    # "RSAKEY":Ljava/lang/String;
    goto/16 :goto_8

    .line 1182
    .end local v20    # "AESKEY":Ljava/lang/String;
    .end local v28    # "AESIV":Ljava/lang/String;
    .end local v31    # "RSAKEY":Ljava/lang/String;
    .restart local v7    # "RSAKEY":Ljava/lang/String;
    .restart local v8    # "AESKEY":Ljava/lang/String;
    .restart local v9    # "AESIV":Ljava/lang/String;
    .restart local v11    # "jSONObject":Lorg/json/JSONObject;
    .local v12, "code":I
    :cond_a
    move-object/from16 v14, p2

    move-object/from16 v31, v7

    move-object/from16 v20, v8

    move-object/from16 v28, v9

    move/from16 v27, v12

    .end local v7    # "RSAKEY":Ljava/lang/String;
    .end local v8    # "AESKEY":Ljava/lang/String;
    .end local v9    # "AESIV":Ljava/lang/String;
    .end local v12    # "code":I
    .restart local v20    # "AESKEY":Ljava/lang/String;
    .restart local v27    # "code":I
    .restart local v28    # "AESIV":Ljava/lang/String;
    .restart local v31    # "RSAKEY":Ljava/lang/String;
    :try_start_c
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v1, v0, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    .line 1183
    .local v0, "miType":I
    const-string v2, "UTF-8"

    if-ne v0, v7, :cond_b

    .line 1184
    :try_start_d
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    move-object/from16 v5, v20

    move-object/from16 v7, v28

    move-object/from16 v4, v31

    goto :goto_6

    .line 1193
    .end local v0    # "miType":I
    .end local v11    # "jSONObject":Lorg/json/JSONObject;
    .end local v27    # "code":I
    :catch_8
    move-exception v0

    :goto_5
    move-object/from16 v5, v20

    move-object/from16 v7, v28

    move-object/from16 v4, v31

    goto/16 :goto_8

    .line 1185
    .restart local v0    # "miType":I
    .restart local v11    # "jSONObject":Lorg/json/JSONObject;
    .restart local v27    # "code":I
    :cond_b
    const/4 v15, 0x2

    if-ne v0, v15, :cond_c

    .line 1186
    :try_start_e
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    move-object/from16 v4, v31

    .end local v31    # "RSAKEY":Ljava/lang/String;
    .local v4, "RSAKEY":Ljava/lang/String;
    :try_start_f
    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    move-object/from16 v5, v20

    move-object/from16 v7, v28

    goto :goto_6

    .line 1193
    .end local v0    # "miType":I
    .end local v11    # "jSONObject":Lorg/json/JSONObject;
    .end local v27    # "code":I
    :catch_9
    move-exception v0

    move-object/from16 v5, v20

    move-object/from16 v7, v28

    goto :goto_8

    .end local v4    # "RSAKEY":Ljava/lang/String;
    .restart local v31    # "RSAKEY":Ljava/lang/String;
    :catch_a
    move-exception v0

    move-object/from16 v4, v31

    move-object/from16 v5, v20

    move-object/from16 v7, v28

    .end local v31    # "RSAKEY":Ljava/lang/String;
    .restart local v4    # "RSAKEY":Ljava/lang/String;
    goto :goto_8

    .line 1187
    .end local v4    # "RSAKEY":Ljava/lang/String;
    .restart local v0    # "miType":I
    .restart local v11    # "jSONObject":Lorg/json/JSONObject;
    .restart local v27    # "code":I
    .restart local v31    # "RSAKEY":Ljava/lang/String;
    :cond_c
    move-object/from16 v4, v31

    .end local v31    # "RSAKEY":Ljava/lang/String;
    .restart local v4    # "RSAKEY":Ljava/lang/String;
    const/4 v15, 0x3

    if-ne v0, v15, :cond_d

    .line 1188
    :try_start_10
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    move-object/from16 v5, v20

    move-object/from16 v7, v28

    .end local v20    # "AESKEY":Ljava/lang/String;
    .end local v28    # "AESIV":Ljava/lang/String;
    .local v5, "AESKEY":Ljava/lang/String;
    .local v7, "AESIV":Ljava/lang/String;
    :try_start_11
    invoke-static {v5, v3, v7}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    goto :goto_6

    .line 1193
    .end local v0    # "miType":I
    .end local v5    # "AESKEY":Ljava/lang/String;
    .end local v7    # "AESIV":Ljava/lang/String;
    .end local v11    # "jSONObject":Lorg/json/JSONObject;
    .end local v27    # "code":I
    .restart local v20    # "AESKEY":Ljava/lang/String;
    .restart local v28    # "AESIV":Ljava/lang/String;
    :catch_b
    move-exception v0

    move-object/from16 v5, v20

    move-object/from16 v7, v28

    .end local v20    # "AESKEY":Ljava/lang/String;
    .end local v28    # "AESIV":Ljava/lang/String;
    .restart local v5    # "AESKEY":Ljava/lang/String;
    .restart local v7    # "AESIV":Ljava/lang/String;
    goto :goto_8

    .line 1187
    .end local v5    # "AESKEY":Ljava/lang/String;
    .end local v7    # "AESIV":Ljava/lang/String;
    .restart local v0    # "miType":I
    .restart local v11    # "jSONObject":Lorg/json/JSONObject;
    .restart local v20    # "AESKEY":Ljava/lang/String;
    .restart local v27    # "code":I
    .restart local v28    # "AESIV":Ljava/lang/String;
    :cond_d
    move-object/from16 v5, v20

    move-object/from16 v7, v28

    .line 1190
    .end local v20    # "AESKEY":Ljava/lang/String;
    .end local v28    # "AESIV":Ljava/lang/String;
    .restart local v5    # "AESKEY":Ljava/lang/String;
    .restart local v7    # "AESIV":Ljava/lang/String;
    :goto_6
    iget-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    .line 1195
    .end local v0    # "miType":I
    .end local v11    # "jSONObject":Lorg/json/JSONObject;
    .end local v27    # "code":I
    :goto_7
    goto :goto_9

    .line 1193
    :catch_c
    move-exception v0

    goto :goto_8

    .end local v4    # "RSAKEY":Ljava/lang/String;
    .end local v5    # "AESKEY":Ljava/lang/String;
    .end local v7    # "AESIV":Ljava/lang/String;
    .restart local v20    # "AESKEY":Ljava/lang/String;
    .restart local v28    # "AESIV":Ljava/lang/String;
    .restart local v31    # "RSAKEY":Ljava/lang/String;
    :catch_d
    move-exception v0

    move-object/from16 v5, v20

    move-object/from16 v7, v28

    move-object/from16 v4, v31

    .end local v20    # "AESKEY":Ljava/lang/String;
    .end local v28    # "AESIV":Ljava/lang/String;
    .end local v31    # "RSAKEY":Ljava/lang/String;
    .restart local v4    # "RSAKEY":Ljava/lang/String;
    .restart local v5    # "AESKEY":Ljava/lang/String;
    .restart local v7    # "AESIV":Ljava/lang/String;
    goto :goto_8

    .end local v4    # "RSAKEY":Ljava/lang/String;
    .end local v5    # "AESKEY":Ljava/lang/String;
    .local v7, "RSAKEY":Ljava/lang/String;
    .restart local v8    # "AESKEY":Ljava/lang/String;
    .restart local v9    # "AESIV":Ljava/lang/String;
    :catch_e
    move-exception v0

    move-object/from16 v14, p2

    move-object v4, v7

    move-object v5, v8

    move-object v7, v9

    .line 1194
    .end local v8    # "AESKEY":Ljava/lang/String;
    .end local v9    # "AESIV":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "RSAKEY":Ljava/lang/String;
    .restart local v5    # "AESKEY":Ljava/lang/String;
    .local v7, "AESIV":Ljava/lang/String;
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1196
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    return-void
.end method

.method public NotifyResponse(Ljava/lang/String;)V
    .locals 18
    .param p1, "response"    # Ljava/lang/String;

    .line 1706
    move-object/from16 v1, p0

    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1707
    .local v3, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1708
    .local v4, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1709
    .local v5, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1710
    .local v6, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1712
    .local v2, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v7, p1

    :try_start_1
    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1713
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v8, "code"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 1714
    .local v8, "code":I
    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-static {v1, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1715
    .local v9, "miType":I
    const/4 v11, 0x0

    .line 1716
    .local v11, "msg":Ljava/lang/String;
    const-string v12, "msg"

    if-ne v9, v10, :cond_0

    .line 1717
    :try_start_2
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    goto :goto_0

    .line 1745
    .end local v0    # "jo":Lorg/json/JSONObject;
    .end local v8    # "code":I
    .end local v9    # "miType":I
    .end local v11    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    goto/16 :goto_4

    .line 1718
    .restart local v0    # "jo":Lorg/json/JSONObject;
    .restart local v8    # "code":I
    .restart local v9    # "miType":I
    .restart local v11    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 1719
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    goto :goto_0

    .line 1720
    :cond_1
    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    .line 1721
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10, v2}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v11, v10

    .line 1723
    :cond_2
    :goto_0
    const/16 v10, 0xc8

    if-ne v8, v10, :cond_5

    .line 1724
    :try_start_3
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1725
    .local v10, "jot":Lorg/json/JSONObject;
    const-string/jumbo v12, "user"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1726
    .local v12, "user":Ljava/lang/String;
    const-string v13, "pwd"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1727
    .local v13, "pwd":Ljava/lang/String;
    iget-object v14, v1, Lcom/shenma/tvlauncher/UserActivity;->llQrCode:Landroid/view/View;

    if-eqz v14, :cond_4

    iget-object v14, v1, Lcom/shenma/tvlauncher/UserActivity;->llQrCode:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v14, :cond_4

    .line 1728
    const-string v14, "null"

    if-eq v12, v14, :cond_3

    if-eq v13, v14, :cond_3

    .line 1730
    :try_start_4
    iget-object v14, v1, Lcom/shenma/tvlauncher/UserActivity;->llQrCode:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1731
    iget-object v14, v1, Lcom/shenma/tvlauncher/UserActivity;->accountInfo:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1732
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/api.php?app="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&act=user_logon"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v12, v13, v14}, Lcom/shenma/tvlauncher/UserActivity;->Login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    goto :goto_1

    .line 1734
    :cond_3
    :try_start_5
    iget-object v14, v1, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v15, 0x6

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    .end local v2    # "AESIV":Ljava/lang/String;
    .end local v3    # "User_url":Ljava/lang/String;
    .local v16, "User_url":Ljava/lang/String;
    .local v17, "AESIV":Ljava/lang/String;
    const-wide/16 v2, 0xbb8

    :try_start_6
    invoke-virtual {v14, v15, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1727
    .end local v16    # "User_url":Ljava/lang/String;
    .end local v17    # "AESIV":Ljava/lang/String;
    .restart local v2    # "AESIV":Ljava/lang/String;
    .restart local v3    # "User_url":Ljava/lang/String;
    :cond_4
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    .line 1737
    .end local v2    # "AESIV":Ljava/lang/String;
    .end local v3    # "User_url":Ljava/lang/String;
    .end local v10    # "jot":Lorg/json/JSONObject;
    .end local v12    # "user":Ljava/lang/String;
    .end local v13    # "pwd":Ljava/lang/String;
    .restart local v16    # "User_url":Ljava/lang/String;
    .restart local v17    # "AESIV":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 1738
    .end local v16    # "User_url":Ljava/lang/String;
    .end local v17    # "AESIV":Ljava/lang/String;
    .restart local v2    # "AESIV":Ljava/lang/String;
    .restart local v3    # "User_url":Ljava/lang/String;
    :cond_5
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    .end local v2    # "AESIV":Ljava/lang/String;
    .end local v3    # "User_url":Ljava/lang/String;
    .restart local v16    # "User_url":Ljava/lang/String;
    .restart local v17    # "AESIV":Ljava/lang/String;
    const-string v2, "UTF-8"

    invoke-static {v11, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    .line 1739
    iget-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1747
    .end local v0    # "jo":Lorg/json/JSONObject;
    .end local v8    # "code":I
    .end local v9    # "miType":I
    .end local v11    # "msg":Ljava/lang/String;
    :goto_2
    goto :goto_5

    .line 1745
    :catch_1
    move-exception v0

    goto :goto_4

    .end local v16    # "User_url":Ljava/lang/String;
    .end local v17    # "AESIV":Ljava/lang/String;
    .restart local v2    # "AESIV":Ljava/lang/String;
    .restart local v3    # "User_url":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v7, p1

    :goto_3
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    .line 1746
    .end local v2    # "AESIV":Ljava/lang/String;
    .end local v3    # "User_url":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "User_url":Ljava/lang/String;
    .restart local v17    # "AESIV":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1749
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method public PassResponse(Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 12
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "NameET"    # Landroid/widget/EditText;
    .param p3, "passET"    # Landroid/widget/EditText;

    .line 1505
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 1507
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1508
    .local v0, "User_url":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1509
    .local v2, "RC4KEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1510
    .local v3, "RSAKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1511
    .local v4, "AESKEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v5, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1513
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1514
    .local v5, "jSONObject":Lorg/json/JSONObject;
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1515
    .local v6, "code":I
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1516
    .local v7, "miType":I
    const/4 v9, 0x0

    .line 1517
    .local v9, "msg":Ljava/lang/String;
    const-string v10, "msg"

    if-ne v7, v8, :cond_0

    .line 1518
    :try_start_1
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    goto :goto_0

    .line 1519
    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1520
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    goto :goto_0

    .line 1521
    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 1522
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v9, v8

    .line 1524
    :cond_2
    :goto_0
    const/16 v8, 0xc8

    const-string v10, "UTF-8"

    if-ne v6, v8, :cond_4

    .line 1525
    :try_start_2
    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1526
    .local v8, "keyWord":Ljava/lang/String;
    iput-object v8, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    .line 1527
    iget-object v10, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1528
    iget-object v10, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1529
    iget-object v10, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->dismiss()V

    .line 1532
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/api.php?app="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&act=user_logon"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p2, p3, v10}, Lcom/shenma/tvlauncher/UserActivity;->Login(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 1533
    .end local v8    # "keyWord":Ljava/lang/String;
    goto :goto_1

    .line 1534
    :cond_4
    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1535
    .restart local v8    # "keyWord":Ljava/lang/String;
    iput-object v8, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    .line 1536
    iget-object v10, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1540
    .end local v5    # "jSONObject":Lorg/json/JSONObject;
    .end local v6    # "code":I
    .end local v7    # "miType":I
    .end local v8    # "keyWord":Ljava/lang/String;
    .end local v9    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 1538
    :catch_0
    move-exception v5

    .line 1539
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1541
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public RegeditResponse(Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 11
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "uNameET"    # Landroid/widget/EditText;
    .param p3, "uPassET"    # Landroid/widget/EditText;

    .line 1279
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1280
    .local v0, "User_url":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1281
    .local v2, "RC4KEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1282
    .local v3, "RSAKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1283
    .local v4, "AESKEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v5, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1284
    .local v1, "AESIV":Ljava/lang/String;
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 1286
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1287
    .local v5, "jSONObject":Lorg/json/JSONObject;
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1288
    .local v6, "code":I
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    .line 1289
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/api.php?app="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&act=user_logon"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p2, p3, v7}, Lcom/shenma/tvlauncher/UserActivity;->Login(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_1

    .line 1291
    :cond_0
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1292
    .local v7, "miType":I
    const-string v9, "UTF-8"

    const-string v10, "msg"

    if-ne v7, v8, :cond_1

    .line 1293
    :try_start_1
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    goto :goto_0

    .line 1294
    :cond_1
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 1295
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    goto :goto_0

    .line 1297
    :cond_2
    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 1298
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    .line 1300
    :cond_3
    :goto_0
    iget-object v8, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1305
    .end local v5    # "jSONObject":Lorg/json/JSONObject;
    .end local v6    # "code":I
    .end local v7    # "miType":I
    :goto_1
    goto :goto_2

    .line 1303
    :catch_0
    move-exception v5

    .line 1304
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1306
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 458
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 459
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 461
    :sswitch_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->ISAPP:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->showMenu()V

    goto :goto_0

    .line 472
    :sswitch_1
    goto :goto_0

    .line 469
    :sswitch_2
    goto :goto_0

    .line 474
    :sswitch_3
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->hideMenu()V

    .line 475
    nop

    .line 479
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x17 -> :sswitch_2
        0x42 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public empowerResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 30
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "passWord"    # Ljava/lang/String;

    .line 1807
    move-object/from16 v1, p0

    const-string v2, "fen"

    const-string/jumbo v3, "vip"

    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, v0, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1808
    .local v5, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1809
    .local v6, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1810
    .local v7, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1811
    .local v8, "AESIV":Ljava/lang/String;
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 1813
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v9, p1

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 1814
    .local v10, "jSONObject":Lorg/json/JSONObject;
    const-string v0, "code"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f

    move v11, v0

    .line 1815
    .local v11, "code":I
    const/16 v0, 0xc8

    const/4 v13, 0x2

    const/4 v14, 0x1

    const-string v15, "msg"

    if-ne v11, v0, :cond_a

    .line 1816
    :try_start_1
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v1, v0, v14}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    move/from16 v16, v0

    .line 1817
    .local v16, "miType":I
    const/4 v0, 0x0

    .line 1818
    .local v0, "msg":Lorg/json/JSONObject;
    move/from16 v12, v16

    .end local v16    # "miType":I
    .local v12, "miType":I
    if-ne v12, v14, :cond_0

    .line 1819
    :try_start_2
    new-instance v13, Lorg/json/JSONObject;

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    goto :goto_0

    .line 1888
    .end local v0    # "msg":Lorg/json/JSONObject;
    .end local v10    # "jSONObject":Lorg/json/JSONObject;
    .end local v11    # "code":I
    .end local v12    # "miType":I
    :catch_0
    move-exception v0

    move-object/from16 v14, p2

    move-object v4, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_9

    .line 1820
    .restart local v0    # "msg":Lorg/json/JSONObject;
    .restart local v10    # "jSONObject":Lorg/json/JSONObject;
    .restart local v11    # "code":I
    .restart local v12    # "miType":I
    :cond_0
    if-ne v12, v13, :cond_1

    .line 1821
    new-instance v13, Lorg/json/JSONObject;

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v6}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    goto :goto_0

    .line 1822
    :cond_1
    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    .line 1823
    new-instance v13, Lorg/json/JSONObject;

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v15, v8}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v13

    goto :goto_0

    .line 1822
    :cond_2
    move-object v13, v0

    .line 1825
    .end local v0    # "msg":Lorg/json/JSONObject;
    .local v13, "msg":Lorg/json/JSONObject;
    :goto_0
    :try_start_3
    const-string/jumbo v0, "token"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 1826
    .local v15, "token":Ljava/lang/String;
    const-string v0, "info"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v16, v0

    .line 1827
    .local v16, "info":Lorg/json/JSONObject;
    const-string v0, "id"

    move-object/from16 v14, v16

    .end local v16    # "info":Lorg/json/JSONObject;
    .local v14, "info":Lorg/json/JSONObject;
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 1828
    .local v16, "id":Ljava/lang/String;
    const-string v0, "pic"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 1829
    .local v17, "pic":Ljava/lang/String;
    const-string v0, "name"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    .line 1830
    .local v18, "name":Ljava/lang/String;
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    .line 1831
    .local v19, "vip":Ljava/lang/String;
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    .line 1832
    .local v20, "fen":Ljava/lang/String;
    const-string v0, "email"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 1833
    .local v21, "email":Ljava/lang/String;
    const-string/jumbo v0, "user"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    .line 1834
    .local v22, "user":Ljava/lang/String;
    const-string v0, "phone"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    .line 1835
    .local v23, "phone":I
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->tvAccount:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v11

    .end local v11    # "code":I
    .local v24, "code":I
    const-string/jumbo v11, "\u8d26\u53f7\uff1a"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v11, v22

    .end local v22    # "user":Ljava/lang/String;
    .local v11, "user":Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1836
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->tvJifen:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v12

    .end local v12    # "miType":I
    .local v22, "miType":I
    const-string/jumbo v12, "\u79ef\u5206\uff1a"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v12, v20

    .end local v20    # "fen":Ljava/lang/String;
    .local v12, "fen":Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1837
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->tv_no_data:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v13

    .end local v13    # "msg":Lorg/json/JSONObject;
    .local v20, "msg":Lorg/json/JSONObject;
    sget v13, Lcom/shenma/tvlauncher/R$string;->user:I

    invoke-virtual {v1, v13}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, ":"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v13, Lcom/shenma/tvlauncher/R$string;->Logged_in:I

    invoke-virtual {v1, v13}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1838
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->btLogin:Landroid/widget/Button;

    const-string/jumbo v9, "\u9000\u51fa\u767b\u5f55"

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1839
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 1840
    .local v9, "time":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v13, "yyyy-MM-dd  HH:mm:ss"

    invoke-direct {v0, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    move-object v13, v0

    .line 1841
    .local v13, "format":Ljava/text/SimpleDateFormat;
    const/16 v25, 0x0

    .line 1843
    .local v25, "vipstate":I
    :try_start_4
    new-instance v0, Ljava/util/Date;
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    .end local v7    # "AESKEY":Ljava/lang/String;
    .end local v8    # "AESIV":Ljava/lang/String;
    .local v26, "AESKEY":Ljava/lang/String;
    .local v27, "AESIV":Ljava/lang/String;
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v9, v4}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v28
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    cmp-long v0, v7, v28

    if-gez v0, :cond_3

    .line 1844
    const/4 v0, 0x1

    move/from16 v25, v0

    .end local v25    # "vipstate":I
    .local v0, "vipstate":I
    goto :goto_1

    .line 1846
    .end local v0    # "vipstate":I
    .restart local v25    # "vipstate":I
    :cond_3
    const/4 v0, 0x0

    move/from16 v25, v0

    .line 1850
    :goto_1
    move/from16 v0, v25

    goto :goto_3

    .line 1888
    .end local v9    # "time":Ljava/lang/String;
    .end local v10    # "jSONObject":Lorg/json/JSONObject;
    .end local v11    # "user":Ljava/lang/String;
    .end local v12    # "fen":Ljava/lang/String;
    .end local v13    # "format":Ljava/text/SimpleDateFormat;
    .end local v14    # "info":Lorg/json/JSONObject;
    .end local v15    # "token":Ljava/lang/String;
    .end local v16    # "id":Ljava/lang/String;
    .end local v17    # "pic":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "vip":Ljava/lang/String;
    .end local v20    # "msg":Lorg/json/JSONObject;
    .end local v21    # "email":Ljava/lang/String;
    .end local v22    # "miType":I
    .end local v23    # "phone":I
    .end local v24    # "code":I
    .end local v25    # "vipstate":I
    :catch_1
    move-exception v0

    move-object/from16 v14, p2

    move-object v4, v6

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    goto/16 :goto_9

    .line 1848
    .restart local v9    # "time":Ljava/lang/String;
    .restart local v10    # "jSONObject":Lorg/json/JSONObject;
    .restart local v11    # "user":Ljava/lang/String;
    .restart local v12    # "fen":Ljava/lang/String;
    .restart local v13    # "format":Ljava/text/SimpleDateFormat;
    .restart local v14    # "info":Lorg/json/JSONObject;
    .restart local v15    # "token":Ljava/lang/String;
    .restart local v16    # "id":Ljava/lang/String;
    .restart local v17    # "pic":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "vip":Ljava/lang/String;
    .restart local v20    # "msg":Lorg/json/JSONObject;
    .restart local v21    # "email":Ljava/lang/String;
    .restart local v22    # "miType":I
    .restart local v23    # "phone":I
    .restart local v24    # "code":I
    .restart local v25    # "vipstate":I
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1888
    .end local v9    # "time":Ljava/lang/String;
    .end local v10    # "jSONObject":Lorg/json/JSONObject;
    .end local v11    # "user":Ljava/lang/String;
    .end local v12    # "fen":Ljava/lang/String;
    .end local v13    # "format":Ljava/text/SimpleDateFormat;
    .end local v14    # "info":Lorg/json/JSONObject;
    .end local v15    # "token":Ljava/lang/String;
    .end local v16    # "id":Ljava/lang/String;
    .end local v17    # "pic":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "vip":Ljava/lang/String;
    .end local v20    # "msg":Lorg/json/JSONObject;
    .end local v21    # "email":Ljava/lang/String;
    .end local v22    # "miType":I
    .end local v23    # "phone":I
    .end local v24    # "code":I
    .end local v25    # "vipstate":I
    .end local v26    # "AESKEY":Ljava/lang/String;
    .end local v27    # "AESIV":Ljava/lang/String;
    .restart local v7    # "AESKEY":Ljava/lang/String;
    .restart local v8    # "AESIV":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v14, p2

    move-object v4, v6

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    .end local v7    # "AESKEY":Ljava/lang/String;
    .end local v8    # "AESIV":Ljava/lang/String;
    .restart local v26    # "AESKEY":Ljava/lang/String;
    .restart local v27    # "AESIV":Ljava/lang/String;
    goto/16 :goto_9

    .line 1848
    .end local v26    # "AESKEY":Ljava/lang/String;
    .end local v27    # "AESIV":Ljava/lang/String;
    .restart local v7    # "AESKEY":Ljava/lang/String;
    .restart local v8    # "AESIV":Ljava/lang/String;
    .restart local v9    # "time":Ljava/lang/String;
    .restart local v10    # "jSONObject":Lorg/json/JSONObject;
    .restart local v11    # "user":Ljava/lang/String;
    .restart local v12    # "fen":Ljava/lang/String;
    .restart local v13    # "format":Ljava/text/SimpleDateFormat;
    .restart local v14    # "info":Lorg/json/JSONObject;
    .restart local v15    # "token":Ljava/lang/String;
    .restart local v16    # "id":Ljava/lang/String;
    .restart local v17    # "pic":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "vip":Ljava/lang/String;
    .restart local v20    # "msg":Lorg/json/JSONObject;
    .restart local v21    # "email":Ljava/lang/String;
    .restart local v22    # "miType":I
    .restart local v23    # "phone":I
    .restart local v24    # "code":I
    .restart local v25    # "vipstate":I
    :catch_4
    move-exception v0

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    .line 1849
    .end local v7    # "AESKEY":Ljava/lang/String;
    .end local v8    # "AESIV":Ljava/lang/String;
    .local v0, "e":Ljava/text/ParseException;
    .restart local v26    # "AESKEY":Ljava/lang/String;
    .restart local v27    # "AESIV":Ljava/lang/String;
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move/from16 v0, v25

    .line 1851
    .end local v25    # "vipstate":I
    .local v0, "vipstate":I
    :goto_3
    const-string v7, "999999999"

    move-object/from16 v8, v19

    .end local v19    # "vip":Ljava/lang/String;
    .local v8, "vip":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move/from16 v19, v7

    const-string/jumbo v7, "\u4f1a\u5458\uff1a"

    if-eqz v19, :cond_4

    .line 1852
    move-object/from16 v19, v13

    .end local v13    # "format":Ljava/text/SimpleDateFormat;
    .local v19, "format":Ljava/text/SimpleDateFormat;
    :try_start_7
    iget-object v13, v1, Lcom/shenma/tvlauncher/UserActivity;->memberData:Landroid/widget/TextView;

    move-object/from16 v25, v14

    .end local v14    # "info":Lorg/json/JSONObject;
    .local v25, "info":Lorg/json/JSONObject;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/UserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-object/from16 v28, v6

    .end local v6    # "RSAKEY":Ljava/lang/String;
    .local v28, "RSAKEY":Ljava/lang/String;
    :try_start_8
    sget v6, Lcom/shenma/tvlauncher/R$string;->Lifetime_VIP:I

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1888
    .end local v0    # "vipstate":I
    .end local v8    # "vip":Ljava/lang/String;
    .end local v9    # "time":Ljava/lang/String;
    .end local v10    # "jSONObject":Lorg/json/JSONObject;
    .end local v11    # "user":Ljava/lang/String;
    .end local v12    # "fen":Ljava/lang/String;
    .end local v15    # "token":Ljava/lang/String;
    .end local v16    # "id":Ljava/lang/String;
    .end local v17    # "pic":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "format":Ljava/text/SimpleDateFormat;
    .end local v20    # "msg":Lorg/json/JSONObject;
    .end local v21    # "email":Ljava/lang/String;
    .end local v22    # "miType":I
    .end local v23    # "phone":I
    .end local v24    # "code":I
    .end local v25    # "info":Lorg/json/JSONObject;
    .end local v28    # "RSAKEY":Ljava/lang/String;
    .restart local v6    # "RSAKEY":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v28, v6

    move-object/from16 v14, p2

    goto/16 :goto_5

    .line 1853
    .restart local v0    # "vipstate":I
    .restart local v8    # "vip":Ljava/lang/String;
    .restart local v9    # "time":Ljava/lang/String;
    .restart local v10    # "jSONObject":Lorg/json/JSONObject;
    .restart local v11    # "user":Ljava/lang/String;
    .restart local v12    # "fen":Ljava/lang/String;
    .restart local v13    # "format":Ljava/text/SimpleDateFormat;
    .restart local v14    # "info":Lorg/json/JSONObject;
    .restart local v15    # "token":Ljava/lang/String;
    .restart local v16    # "id":Ljava/lang/String;
    .restart local v17    # "pic":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v20    # "msg":Lorg/json/JSONObject;
    .restart local v21    # "email":Ljava/lang/String;
    .restart local v22    # "miType":I
    .restart local v23    # "phone":I
    .restart local v24    # "code":I
    :cond_4
    move-object/from16 v28, v6

    move-object/from16 v19, v13

    move-object/from16 v25, v14

    .end local v6    # "RSAKEY":Ljava/lang/String;
    .end local v13    # "format":Ljava/text/SimpleDateFormat;
    .end local v14    # "info":Lorg/json/JSONObject;
    .restart local v19    # "format":Ljava/text/SimpleDateFormat;
    .restart local v25    # "info":Lorg/json/JSONObject;
    .restart local v28    # "RSAKEY":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 1854
    iget-object v6, v1, Lcom/shenma/tvlauncher/UserActivity;->memberData:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/UserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/shenma/tvlauncher/R$string;->Expired:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1888
    .end local v0    # "vipstate":I
    .end local v8    # "vip":Ljava/lang/String;
    .end local v9    # "time":Ljava/lang/String;
    .end local v10    # "jSONObject":Lorg/json/JSONObject;
    .end local v11    # "user":Ljava/lang/String;
    .end local v12    # "fen":Ljava/lang/String;
    .end local v15    # "token":Ljava/lang/String;
    .end local v16    # "id":Ljava/lang/String;
    .end local v17    # "pic":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "format":Ljava/text/SimpleDateFormat;
    .end local v20    # "msg":Lorg/json/JSONObject;
    .end local v21    # "email":Ljava/lang/String;
    .end local v22    # "miType":I
    .end local v23    # "phone":I
    .end local v24    # "code":I
    .end local v25    # "info":Lorg/json/JSONObject;
    :catch_6
    move-exception v0

    move-object/from16 v14, p2

    goto/16 :goto_6

    .line 1855
    .restart local v0    # "vipstate":I
    .restart local v8    # "vip":Ljava/lang/String;
    .restart local v9    # "time":Ljava/lang/String;
    .restart local v10    # "jSONObject":Lorg/json/JSONObject;
    .restart local v11    # "user":Ljava/lang/String;
    .restart local v12    # "fen":Ljava/lang/String;
    .restart local v15    # "token":Ljava/lang/String;
    .restart local v16    # "id":Ljava/lang/String;
    .restart local v17    # "pic":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "format":Ljava/text/SimpleDateFormat;
    .restart local v20    # "msg":Lorg/json/JSONObject;
    .restart local v21    # "email":Ljava/lang/String;
    .restart local v22    # "miType":I
    .restart local v23    # "phone":I
    .restart local v24    # "code":I
    .restart local v25    # "info":Lorg/json/JSONObject;
    :cond_5
    const/4 v6, 0x1

    if-ne v0, v6, :cond_6

    .line 1856
    iget-object v6, v1, Lcom/shenma/tvlauncher/UserActivity;->memberData:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v9, v4}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1858
    :cond_6
    :goto_4
    move-object/from16 v6, v21

    .end local v21    # "email":Ljava/lang/String;
    .local v6, "email":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x5

    if-eqz v4, :cond_7

    .line 1859
    const-string/jumbo v4, "\u90ae\u7bb1"

    iput-object v4, v1, Lcom/shenma/tvlauncher/UserActivity;->type:Ljava/lang/String;

    .line 1860
    iget-object v4, v1, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1862
    :cond_7
    if-nez v23, :cond_8

    .line 1863
    const-string/jumbo v4, "\u624b\u673a"

    iput-object v4, v1, Lcom/shenma/tvlauncher/UserActivity;->type:Ljava/lang/String;

    .line 1864
    iget-object v4, v1, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1866
    :cond_8
    iget-object v4, v1, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v7, "userName"

    .line 1867
    invoke-interface {v4, v7, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v7, "passWord"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 1868
    move-object/from16 v14, p2

    :try_start_9
    invoke-interface {v4, v7, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v7, "ckinfo"

    .line 1869
    invoke-interface {v4, v7, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1870
    invoke-interface {v4, v3, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1871
    invoke-interface {v3, v2, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1872
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1873
    iget-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1874
    iget-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 1876
    .end local v0    # "vipstate":I
    .end local v6    # "email":Ljava/lang/String;
    .end local v8    # "vip":Ljava/lang/String;
    .end local v9    # "time":Ljava/lang/String;
    .end local v11    # "user":Ljava/lang/String;
    .end local v12    # "fen":Ljava/lang/String;
    .end local v15    # "token":Ljava/lang/String;
    .end local v16    # "id":Ljava/lang/String;
    .end local v17    # "pic":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "format":Ljava/text/SimpleDateFormat;
    .end local v20    # "msg":Lorg/json/JSONObject;
    .end local v22    # "miType":I
    .end local v23    # "phone":I
    .end local v25    # "info":Lorg/json/JSONObject;
    :cond_9
    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v4, v28

    goto/16 :goto_8

    .line 1888
    .end local v10    # "jSONObject":Lorg/json/JSONObject;
    .end local v24    # "code":I
    .end local v28    # "RSAKEY":Ljava/lang/String;
    .local v6, "RSAKEY":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object/from16 v14, p2

    move-object/from16 v28, v6

    :goto_5
    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v4, v28

    .end local v6    # "RSAKEY":Ljava/lang/String;
    .restart local v28    # "RSAKEY":Ljava/lang/String;
    goto/16 :goto_9

    .end local v26    # "AESKEY":Ljava/lang/String;
    .end local v27    # "AESIV":Ljava/lang/String;
    .end local v28    # "RSAKEY":Ljava/lang/String;
    .restart local v6    # "RSAKEY":Ljava/lang/String;
    .restart local v7    # "AESKEY":Ljava/lang/String;
    .local v8, "AESIV":Ljava/lang/String;
    :catch_8
    move-exception v0

    move-object/from16 v14, p2

    move-object/from16 v28, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v4, v28

    .end local v6    # "RSAKEY":Ljava/lang/String;
    .end local v7    # "AESKEY":Ljava/lang/String;
    .end local v8    # "AESIV":Ljava/lang/String;
    .restart local v26    # "AESKEY":Ljava/lang/String;
    .restart local v27    # "AESIV":Ljava/lang/String;
    .restart local v28    # "RSAKEY":Ljava/lang/String;
    goto/16 :goto_9

    .line 1877
    .end local v26    # "AESKEY":Ljava/lang/String;
    .end local v27    # "AESIV":Ljava/lang/String;
    .end local v28    # "RSAKEY":Ljava/lang/String;
    .restart local v6    # "RSAKEY":Ljava/lang/String;
    .restart local v7    # "AESKEY":Ljava/lang/String;
    .restart local v8    # "AESIV":Ljava/lang/String;
    .restart local v10    # "jSONObject":Lorg/json/JSONObject;
    .local v11, "code":I
    :cond_a
    move-object/from16 v14, p2

    move-object/from16 v28, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move/from16 v24, v11

    .end local v6    # "RSAKEY":Ljava/lang/String;
    .end local v7    # "AESKEY":Ljava/lang/String;
    .end local v8    # "AESIV":Ljava/lang/String;
    .end local v11    # "code":I
    .restart local v24    # "code":I
    .restart local v26    # "AESKEY":Ljava/lang/String;
    .restart local v27    # "AESIV":Ljava/lang/String;
    .restart local v28    # "RSAKEY":Ljava/lang/String;
    :try_start_a
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v1, v0, v6}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e

    .line 1878
    .local v0, "miType":I
    const-string v2, "UTF-8"

    if-ne v0, v6, :cond_b

    .line 1879
    :try_start_b
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v4, v28

    goto :goto_7

    .line 1888
    .end local v0    # "miType":I
    .end local v10    # "jSONObject":Lorg/json/JSONObject;
    .end local v24    # "code":I
    :catch_9
    move-exception v0

    :goto_6
    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v4, v28

    goto/16 :goto_9

    .line 1880
    .restart local v0    # "miType":I
    .restart local v10    # "jSONObject":Lorg/json/JSONObject;
    .restart local v24    # "code":I
    :cond_b
    if-ne v0, v13, :cond_c

    .line 1881
    :try_start_c
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    move-object/from16 v4, v28

    .end local v28    # "RSAKEY":Ljava/lang/String;
    .local v4, "RSAKEY":Ljava/lang/String;
    :try_start_d
    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    goto :goto_7

    .line 1888
    .end local v0    # "miType":I
    .end local v10    # "jSONObject":Lorg/json/JSONObject;
    .end local v24    # "code":I
    :catch_a
    move-exception v0

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    goto :goto_9

    .end local v4    # "RSAKEY":Ljava/lang/String;
    .restart local v28    # "RSAKEY":Ljava/lang/String;
    :catch_b
    move-exception v0

    move-object/from16 v4, v28

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    .end local v28    # "RSAKEY":Ljava/lang/String;
    .restart local v4    # "RSAKEY":Ljava/lang/String;
    goto :goto_9

    .line 1882
    .end local v4    # "RSAKEY":Ljava/lang/String;
    .restart local v0    # "miType":I
    .restart local v10    # "jSONObject":Lorg/json/JSONObject;
    .restart local v24    # "code":I
    .restart local v28    # "RSAKEY":Ljava/lang/String;
    :cond_c
    move-object/from16 v4, v28

    .end local v28    # "RSAKEY":Ljava/lang/String;
    .restart local v4    # "RSAKEY":Ljava/lang/String;
    const/4 v13, 0x3

    if-ne v0, v13, :cond_d

    .line 1883
    :try_start_e
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    .end local v26    # "AESKEY":Ljava/lang/String;
    .end local v27    # "AESIV":Ljava/lang/String;
    .local v6, "AESKEY":Ljava/lang/String;
    .local v7, "AESIV":Ljava/lang/String;
    :try_start_f
    invoke-static {v6, v3, v7}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    goto :goto_7

    .line 1888
    .end local v0    # "miType":I
    .end local v6    # "AESKEY":Ljava/lang/String;
    .end local v7    # "AESIV":Ljava/lang/String;
    .end local v10    # "jSONObject":Lorg/json/JSONObject;
    .end local v24    # "code":I
    .restart local v26    # "AESKEY":Ljava/lang/String;
    .restart local v27    # "AESIV":Ljava/lang/String;
    :catch_c
    move-exception v0

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    .end local v26    # "AESKEY":Ljava/lang/String;
    .end local v27    # "AESIV":Ljava/lang/String;
    .restart local v6    # "AESKEY":Ljava/lang/String;
    .restart local v7    # "AESIV":Ljava/lang/String;
    goto :goto_9

    .line 1882
    .end local v6    # "AESKEY":Ljava/lang/String;
    .end local v7    # "AESIV":Ljava/lang/String;
    .restart local v0    # "miType":I
    .restart local v10    # "jSONObject":Lorg/json/JSONObject;
    .restart local v24    # "code":I
    .restart local v26    # "AESKEY":Ljava/lang/String;
    .restart local v27    # "AESIV":Ljava/lang/String;
    :cond_d
    move-object/from16 v6, v26

    move-object/from16 v7, v27

    .line 1885
    .end local v26    # "AESKEY":Ljava/lang/String;
    .end local v27    # "AESIV":Ljava/lang/String;
    .restart local v6    # "AESKEY":Ljava/lang/String;
    .restart local v7    # "AESIV":Ljava/lang/String;
    :goto_7
    iget-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 1890
    .end local v0    # "miType":I
    .end local v10    # "jSONObject":Lorg/json/JSONObject;
    .end local v24    # "code":I
    :goto_8
    goto :goto_a

    .line 1888
    :catch_d
    move-exception v0

    goto :goto_9

    .end local v4    # "RSAKEY":Ljava/lang/String;
    .end local v6    # "AESKEY":Ljava/lang/String;
    .end local v7    # "AESIV":Ljava/lang/String;
    .restart local v26    # "AESKEY":Ljava/lang/String;
    .restart local v27    # "AESIV":Ljava/lang/String;
    .restart local v28    # "RSAKEY":Ljava/lang/String;
    :catch_e
    move-exception v0

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v4, v28

    .end local v26    # "AESKEY":Ljava/lang/String;
    .end local v27    # "AESIV":Ljava/lang/String;
    .end local v28    # "RSAKEY":Ljava/lang/String;
    .restart local v4    # "RSAKEY":Ljava/lang/String;
    .restart local v6    # "AESKEY":Ljava/lang/String;
    .restart local v7    # "AESIV":Ljava/lang/String;
    goto :goto_9

    .end local v4    # "RSAKEY":Ljava/lang/String;
    .local v6, "RSAKEY":Ljava/lang/String;
    .local v7, "AESKEY":Ljava/lang/String;
    .restart local v8    # "AESIV":Ljava/lang/String;
    :catch_f
    move-exception v0

    move-object/from16 v14, p2

    move-object v4, v6

    move-object v6, v7

    move-object v7, v8

    .line 1889
    .end local v8    # "AESIV":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "RSAKEY":Ljava/lang/String;
    .local v6, "AESKEY":Ljava/lang/String;
    .local v7, "AESIV":Ljava/lang/String;
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1891
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    return-void
.end method

.method protected findViewById()V
    .locals 3

    .line 491
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_user_name:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->tv_user_name:Landroid/widget/TextView;

    .line 492
    sget v0, Lcom/shenma/tvlauncher/R$id;->rg_member:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->rg_member:Landroid/widget/RadioGroup;

    .line 493
    sget v0, Lcom/shenma/tvlauncher/R$id;->rb_user:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->rb_user:Landroid/widget/RadioButton;

    .line 494
    sget v0, Lcom/shenma/tvlauncher/R$id;->rb_user_alert:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->rb_user_alert:Landroid/widget/RadioButton;

    .line 495
    sget v0, Lcom/shenma/tvlauncher/R$id;->rb_user_history:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->rb_user_history:Landroid/widget/RadioButton;

    .line 496
    sget v0, Lcom/shenma/tvlauncher/R$id;->rb_user_app:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->rb_user_app:Landroid/widget/RadioButton;

    .line 497
    sget v0, Lcom/shenma/tvlauncher/R$id;->rb_user_collect:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->rb_user_collect:Landroid/widget/RadioButton;

    .line 498
    sget v0, Lcom/shenma/tvlauncher/R$id;->user_type_details_grid:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->gv_user_type_details_grid:Landroid/widget/GridView;

    .line 499
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->gv_user_type_details_grid:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 500
    sget v0, Lcom/shenma/tvlauncher/R$id;->user_type_details:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->user_type_details:Landroid/widget/LinearLayout;

    .line 501
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_no_data:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->tv_no_data:Landroid/widget/TextView;

    .line 502
    sget v0, Lcom/shenma/tvlauncher/R$id;->filter_content:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->tv_filter_content:Landroid/widget/TextView;

    .line 503
    sget v0, Lcom/shenma/tvlauncher/R$id;->clear_history:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->clearHistory:Landroid/view/View;

    .line 504
    sget v0, Lcom/shenma/tvlauncher/R$id;->background_settings:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->backgroundSettings:Landroid/view/View;

    .line 505
    sget v0, Lcom/shenma/tvlauncher/R$id;->advanced_settings:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->advancedSettings:Landroid/view/View;

    .line 506
    sget v0, Lcom/shenma/tvlauncher/R$id;->member_setting:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->memberSetting:Landroid/view/View;

    .line 507
    sget v0, Lcom/shenma/tvlauncher/R$id;->remote_installation:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->remoteInstallation:Landroid/view/View;

    .line 508
    sget v0, Lcom/shenma/tvlauncher/R$id;->activity_center:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->activityCenter:Landroid/view/View;

    .line 509
    sget v0, Lcom/shenma/tvlauncher/R$id;->other_settings:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->otherSettings:Landroid/view/View;

    .line 510
    sget v0, Lcom/shenma/tvlauncher/R$id;->about_us:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->aboutUs:Landroid/view/View;

    .line 511
    sget v0, Lcom/shenma/tvlauncher/R$id;->bt_login:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->btLogin:Landroid/widget/Button;

    .line 512
    sget v0, Lcom/shenma/tvlauncher/R$id;->ll_qr_code:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->llQrCode:Landroid/view/View;

    .line 514
    sget v0, Lcom/shenma/tvlauncher/R$id;->play_history:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->playHistory:Landroid/view/View;

    .line 515
    sget v0, Lcom/shenma/tvlauncher/R$id;->mine_collect:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mineCollect:Landroid/view/View;

    .line 516
    sget v0, Lcom/shenma/tvlauncher/R$id;->invitation_rewards:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->invitationRewards:Landroid/view/View;

    .line 517
    sget v0, Lcom/shenma/tvlauncher/R$id;->img_qr_code:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->imgQrCode:Landroid/widget/ImageView;

    .line 518
    sget v0, Lcom/shenma/tvlauncher/R$id;->account_info:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->accountInfo:Landroid/view/View;

    .line 519
    sget v0, Lcom/shenma/tvlauncher/R$id;->member_data:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->memberData:Landroid/widget/TextView;

    .line 520
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_account:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->tvAccount:Landroid/widget/TextView;

    .line 521
    sget v0, Lcom/shenma/tvlauncher/R$id;->jifen_data:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->tvJifen:Landroid/widget/TextView;

    .line 522
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->rb_user:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 524
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->playHistory:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 525
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mineCollect:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 526
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->invitationRewards:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 527
    return-void
.end method

.method protected initView()V
    .locals 0

    .line 282
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/UserActivity;->loadViewLayout()V

    .line 283
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById()V

    .line 284
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/UserActivity;->setListener()V

    .line 285
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 485
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/UserActivity;->onCreateMenu()V

    .line 486
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 196
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->requestWindowFeature(I)Z

    .line 198
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/UserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 202
    sget v0, Lcom/shenma/tvlauncher/R$layout;->activity_member:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->setContentView(I)V

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/UserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 209
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/UserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    .line 211
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    .line 210
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/UserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 223
    :goto_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/UserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 224
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$2;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/UserActivity$2;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 241
    new-instance v0, Lcom/shenma/tvlauncher/vod/dao/VodDao;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/dao/VodDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    .line 242
    new-instance v0, Lcom/shenma/tvlauncher/db/DatabaseOperator;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/db/DatabaseOperator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->dbtools:Lcom/shenma/tvlauncher/db/DatabaseOperator;

    .line 243
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/UserActivity;->initView()V

    .line 244
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->initData()V

    .line 245
    const/16 v0, 0x352

    invoke-static {p0, v0}, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->apply(Landroid/app/Activity;I)V

    .line 246
    return-void
.end method

.method public onCreateMenu()V
    .locals 3

    .line 826
    sget v0, Lcom/shenma/tvlauncher/R$layout;->mv_controler_menu:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 827
    .local v0, "menuView":Landroid/view/View;
    sget v1, Lcom/shenma/tvlauncher/R$id;->media_controler_menu:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->menulist:Landroid/widget/ListView;

    .line 828
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    .line 829
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 830
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 831
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 832
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/UserActivity$23;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/UserActivity$23;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 847
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/UserActivity$24;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/UserActivity$24;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 890
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 250
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->revert(Landroid/app/Activity;)V

    .line 251
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 252
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "b"    # Z

    .line 2092
    const-wide/16 v0, 0xc8

    if-eqz p2, :cond_0

    .line 2094
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 2095
    const v3, 0x3f8ccccd    # 1.1f

    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationZ(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 2096
    invoke-virtual {v2, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 2099
    :cond_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 2100
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationZ(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 2101
    invoke-virtual {v2, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 2103
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 264
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onPause()V

    .line 265
    const-string v0, "onPause()..."

    const-string v1, "UserActivity"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {v1}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 267
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 268
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 273
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onResume()V

    .line 274
    const-string v0, "onResume()..."

    const-string v1, "UserActivity"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {v1}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 276
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 277
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 257
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStart()V

    .line 258
    const-string v0, "UserActivity"

    const-string v1, "onStart()..."

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 534
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->rg_member:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$6;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$6;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 539
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->rg_member:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->rg_member:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/shenma/tvlauncher/UserActivity$7;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/UserActivity$7;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 648
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->gv_user_type_details_grid:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$8;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$8;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 663
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->gv_user_type_details_grid:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$9;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$9;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 674
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->gv_user_type_details_grid:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$10;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$10;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 700
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->clearHistory:Landroid/view/View;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$11;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$11;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->backgroundSettings:Landroid/view/View;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$12;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$12;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->advancedSettings:Landroid/view/View;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$13;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$13;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->memberSetting:Landroid/view/View;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$14;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$14;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->remoteInstallation:Landroid/view/View;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$15;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$15;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->activityCenter:Landroid/view/View;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$16;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$16;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->otherSettings:Landroid/view/View;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$17;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$17;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->aboutUs:Landroid/view/View;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$18;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$18;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->playHistory:Landroid/view/View;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$19;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$19;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mineCollect:Landroid/view/View;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$20;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$20;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->invitationRewards:Landroid/view/View;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$21;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$21;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 811
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->btLogin:Landroid/widget/Button;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$22;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$22;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    return-void
.end method
