.class public Lcom/shenma/tvlauncher/HistoryAndCollectActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "HistoryAndCollectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/HistoryAndCollectActivity$MyAdapter;,
        Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;,
        Lcom/shenma/tvlauncher/HistoryAndCollectActivity$OnAdapterItemClickListener;,
        Lcom/shenma/tvlauncher/HistoryAndCollectActivity$GridSpacingItemDecoration;,
        Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;
    }
.end annotation


# static fields
.field public static Sp:Landroid/content/SharedPreferences;


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

.field final ITEM_MIN_WIDTH_DP:F

.field final ITEM_SPACING_DP:F

.field final PARENT_PADDING_DP:F

.field private final TAG:Ljava/lang/String;

.field private USER_TYPE:I

.field private adapter:Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;

.field private dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

.field private history_details_sum:Landroid/widget/TextView;

.field private history_grid:Landroidx/recyclerview/widget/RecyclerView;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private isDestroy:Ljava/lang/Boolean;

.field private ll_type_details:Landroid/widget/LinearLayout;

.field private mAdapter:Lcom/shenma/tvlauncher/HistoryAndCollectActivity$MyAdapter;

.field private mPosition:I

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private final mediaHandler:Landroid/os/Handler;

.field private menulist:Landroid/widget/ListView;

.field private menupopupWindow:Landroid/widget/PopupWindow;

.field protected sp:Landroid/content/SharedPreferences;

.field private trystate:I

.field private tv_no_data:Landroid/widget/TextView;

.field private type_details_sum:Landroid/widget/TextView;

.field private userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

.field private viewMovieList:Landroidx/recyclerview/widget/RecyclerView;

.field private vipstate:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->mediaHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mGetMotion(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;Lcom/shenma/tvlauncher/vod/db/Album;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->GetMotion(Lcom/shenma/tvlauncher/vod/db/Album;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 68
    const-string v0, "HistoryActivity"

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->TAG:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->Albumls:Ljava/util/List;

    .line 73
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->ISAPP:Ljava/lang/Boolean;

    .line 78
    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->mAdapter:Lcom/shenma/tvlauncher/HistoryAndCollectActivity$MyAdapter;

    .line 79
    const/4 v1, -0x1

    iput v1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->mPosition:I

    .line 83
    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    .line 85
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->isDestroy:Ljava/lang/Boolean;

    .line 90
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->PARENT_PADDING_DP:F

    .line 91
    const/high16 v1, 0x41700000    # 15.0f

    iput v1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->ITEM_SPACING_DP:F

    .line 92
    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->ITEM_MIN_WIDTH_DP:F

    .line 93
    const-string v1, "Trystate"

    invoke-static {p0, v1, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->trystate:I

    .line 96
    new-instance v0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;-><init>(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->mediaHandler:Landroid/os/Handler;

    return-void
.end method

.method private GetMotion(Lcom/shenma/tvlauncher/vod/db/Album;)V
    .locals 13
    .param p1, "item"    # Lcom/shenma/tvlauncher/vod/db/Album;

    .line 658
    const-string/jumbo v0, "vip"

    const-string v2, ""

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v11, v3

    .line 661
    .local v11, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->sp:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v5, v3, v7

    if-ltz v5, :cond_1

    iget-object v3, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "999999999"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 664
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->vipstate:I

    goto :goto_1

    .line 662
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->vipstate:I

    .line 666
    :goto_1
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 667
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 668
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 669
    .local v6, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 670
    .local v7, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 671
    .local v8, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 672
    .local v9, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 673
    .local v10, "Appkey":Ljava/lang/String;
    new-instance v0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$5;

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

    const-string v3, "&act=motion"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$3;-><init>(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;Lcom/shenma/tvlauncher/vod/db/Album;)V

    new-instance v5, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$4;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$4;-><init>(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$5;-><init>(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    return-void

    .line 716
    .end local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    .end local v6    # "RC4KEY":Ljava/lang/String;
    .end local v7    # "RSAKEY":Ljava/lang/String;
    .end local v8    # "AESKEY":Ljava/lang/String;
    .end local v9    # "AESIV":Ljava/lang/String;
    .end local v10    # "Appkey":Ljava/lang/String;
    .end local v12    # "User_url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 717
    .local v0, "ex":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u51fa\u9519\u4e86==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "aa=="

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 719
    nop

    .line 723
    .end local v0    # "ex":Ljava/text/ParseException;
    return-void
.end method

.method private dpToPx(F)I
    .locals 2
    .param p1, "dp"    # F

    .line 286
    nop

    .line 289
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 286
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private hideMenu()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 273
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 7

    .line 168
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    const/4 v2, 0x0

    .line 171
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 169
    .local v0, "from":I
    const/4 v1, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 170
    iget-object v5, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->type_details_sum:Landroid/widget/TextView;

    const-string/jumbo v6, "\u6536\u85cf\u5217\u8868"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iput-object v3, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->ISAPP:Ljava/lang/Boolean;

    .line 172
    iput v4, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->USER_TYPE:I

    .line 173
    iget-object v3, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAllAppsByType(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->Albumls:Ljava/util/List;

    goto :goto_0

    .line 174
    :cond_0
    if-ne v0, v1, :cond_1

    .line 175
    iput-object v3, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->ISAPP:Ljava/lang/Boolean;

    .line 176
    iget-object v3, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    invoke-virtual {v3, v1}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAllAppsByType(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->Albumls:Ljava/util/List;

    .line 179
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->Albumls:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->Albumls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    goto :goto_1

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->history_details_sum:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/shenma/tvlauncher/R$string;->common:I

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->Albumls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$string;->Film:I

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->tv_no_data:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->adapter:Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->Albumls:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;->addData(Ljava/util/List;)V

    .line 213
    return-void

    .line 180
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->tv_no_data:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    if-ne v0, v1, :cond_4

    .line 182
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->tv_no_data:Landroid/widget/TextView;

    sget v2, Lcom/shenma/tvlauncher/R$string;->No_record:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 184
    :cond_4
    if-ne v0, v4, :cond_5

    .line 185
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->tv_no_data:Landroid/widget/TextView;

    sget v2, Lcom/shenma/tvlauncher/R$string;->No_collect:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 187
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    if-eqz v1, :cond_6

    .line 188
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->clearDatas()V

    .line 189
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->notifyDataSetChanged()V

    .line 190
    return-void

    .line 192
    :cond_6
    return-void
.end method

.method private showMenu()V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$MyAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getUserData(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p0, p0, v2}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$MyAdapter;-><init>(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->mAdapter:Lcom/shenma/tvlauncher/HistoryAndCollectActivity$MyAdapter;

    .line 261
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->menulist:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->mAdapter:Lcom/shenma/tvlauncher/HistoryAndCollectActivity$MyAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 262
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    sget v2, Lcom/shenma/tvlauncher/R$style;->AnimationMenu:I

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 263
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->ll_type_details:Landroid/widget/LinearLayout;

    const/16 v3, 0x35

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 264
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$dimen;->sm_350:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->mHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 266
    :cond_0
    return-void
.end method


# virtual methods
.method public GetMotionResponse(Ljava/lang/String;Lcom/shenma/tvlauncher/vod/db/Album;)V
    .locals 16
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/shenma/tvlauncher/vod/db/Album;

    .line 797
    move-object/from16 v1, p0

    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 798
    .local v3, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 799
    .local v4, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 800
    .local v5, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v6, p1

    :try_start_1
    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 804
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v7, "code"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 805
    .local v7, "code":I
    const/16 v8, 0xc8

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    const-string/jumbo v12, "vip"

    if-ne v7, v8, :cond_3

    .line 806
    :try_start_2
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v1, v8, v11}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 807
    .local v8, "miType":I
    const/4 v13, 0x0

    .line 808
    .local v13, "msg":Lorg/json/JSONObject;
    const-string v14, "msg"

    if-ne v8, v11, :cond_0

    .line 809
    :try_start_3
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v10

    goto :goto_0

    .line 810
    :cond_0
    if-ne v8, v9, :cond_1

    .line 811
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v10

    goto :goto_0

    .line 812
    :cond_1
    if-ne v8, v10, :cond_2

    .line 813
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14, v2}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v10

    .line 815
    :cond_2
    :goto_0
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 816
    .local v10, "vip":Ljava/lang/String;
    const-string v14, "Try"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    .line 817
    .local v14, "Try":I
    const-string v15, "Clientmode"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 818
    .local v15, "Clientmode":I
    iput v14, v1, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->trystate:I

    .line 819
    iget-object v9, v1, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 820
    iget-object v9, v1, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v12, "Submission_method"

    .line 821
    invoke-interface {v9, v12, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v12, "Trystate"

    .line 822
    invoke-interface {v9, v12, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 823
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 824
    nop

    .end local v8    # "miType":I
    .end local v10    # "vip":Ljava/lang/String;
    .end local v13    # "msg":Lorg/json/JSONObject;
    .end local v14    # "Try":I
    .end local v15    # "Clientmode":I
    goto/16 :goto_1

    :cond_3
    const/16 v8, 0x7f

    const-string v9, "ckinfo"

    const-string v13, "fen"

    const-string v14, "passWord"

    const-string/jumbo v15, "userName"

    const/4 v11, 0x0

    if-ne v7, v8, :cond_4

    .line 825
    :try_start_4
    iget-object v8, v1, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 826
    iget-object v8, v1, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 827
    return-void

    .line 828
    :cond_4
    const/16 v10, 0x72

    if-ne v7, v10, :cond_5

    .line 829
    iget-object v8, v1, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 830
    iget-object v8, v1, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 831
    return-void

    .line 832
    :cond_5
    const/16 v10, 0x7d

    if-ne v7, v10, :cond_6

    .line 833
    iget-object v8, v1, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x7

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 834
    iget-object v8, v1, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 835
    return-void

    .line 836
    :cond_6
    if-ne v7, v8, :cond_7

    .line 837
    iget-object v8, v1, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x6

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 838
    iget-object v8, v1, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 839
    return-void

    .line 840
    :cond_7
    const/16 v8, 0xc9

    const/4 v9, 0x5

    if-ne v7, v8, :cond_8

    .line 841
    iget-object v8, v1, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 842
    return-void

    .line 843
    :cond_8
    const/16 v8, 0x6a

    if-ne v7, v8, :cond_9

    .line 844
    iget-object v8, v1, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 845
    return-void

    .line 847
    :cond_9
    :goto_1
    iget v8, v1, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->vipstate:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_b

    iget v8, v1, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->trystate:I

    if-ne v8, v9, :cond_a

    goto :goto_2

    .line 858
    :cond_a
    iget-object v8, v1, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 848
    :cond_b
    :goto_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 849
    .local v8, "i":Landroid/content/Intent;
    const-class v9, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v8, v1, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 850
    const-string v9, "nextlink"

    invoke-virtual/range {p2 .. p2}, Lcom/shenma/tvlauncher/vod/db/Album;->getNextLink()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    const-string/jumbo v9, "vodstate"

    invoke-virtual/range {p2 .. p2}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumState()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    const-string/jumbo v9, "vodtype"

    invoke-virtual/range {p2 .. p2}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    const-string/jumbo v9, "vodPlayUrl"

    invoke-virtual/range {p2 .. p2}, Lcom/shenma/tvlauncher/vod/db/Album;->getVod_play_url()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 854
    invoke-virtual {v1, v8}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 857
    .end local v8    # "i":Landroid/content/Intent;
    nop

    .line 863
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v7    # "code":I
    :goto_3
    goto :goto_5

    .line 861
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v6, p1

    .line 862
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 864
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method protected findViewById()V
    .locals 12

    .line 295
    sget v0, Lcom/shenma/tvlauncher/R$id;->history_details_sum:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->history_details_sum:Landroid/widget/TextView;

    .line 296
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_no_data:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->tv_no_data:Landroid/widget/TextView;

    .line 297
    sget v0, Lcom/shenma/tvlauncher/R$id;->history_grid:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->history_grid:Landroidx/recyclerview/widget/RecyclerView;

    .line 299
    sget v0, Lcom/shenma/tvlauncher/R$id;->ll_type_details:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->ll_type_details:Landroid/widget/LinearLayout;

    .line 300
    sget v0, Lcom/shenma/tvlauncher/R$id;->type_details_sum:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->type_details_sum:Landroid/widget/TextView;

    .line 301
    sget v0, Lcom/shenma/tvlauncher/R$id;->history_grid:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->viewMovieList:Landroidx/recyclerview/widget/RecyclerView;

    .line 302
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 303
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 306
    .local v1, "screenWidthPx":I
    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->dpToPx(F)I

    move-result v2

    .line 307
    .local v2, "parentPaddingPx":I
    const/high16 v3, 0x41700000    # 15.0f

    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->dpToPx(F)I

    move-result v3

    .line 308
    .local v3, "itemSpacingPx":I
    const/high16 v4, 0x42c80000    # 100.0f

    invoke-direct {p0, v4}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->dpToPx(F)I

    move-result v4

    .line 311
    .local v4, "itemMinWidthPx":I
    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    .line 314
    .local v5, "availableWidthPx":I
    add-int v6, v5, v3

    add-int v7, v4, v3

    div-int/2addr v6, v7

    .line 317
    .local v6, "columnCount":I
    new-instance v7, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {v7, p0, v6, v8, v9}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 323
    .local v7, "gridLayoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    iget-object v8, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->viewMovieList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 324
    new-instance v8, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;

    new-instance v9, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$2;

    invoke-direct {v9, p0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$2;-><init>(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;)V

    invoke-direct {v8, p0, v9}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;-><init>(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;Lcom/shenma/tvlauncher/HistoryAndCollectActivity$OnAdapterItemClickListener;)V

    iput-object v8, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->adapter:Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;

    .line 337
    iget-object v8, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->viewMovieList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->adapter:Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 338
    iget-object v8, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->viewMovieList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v9, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$GridSpacingItemDecoration;

    const/16 v10, 0xf

    iget-object v11, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->adapter:Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;

    invoke-direct {v9, p0, v10, v11}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$GridSpacingItemDecoration;-><init>(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;ILcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;)V

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 339
    return-void
.end method

.method protected initView()V
    .locals 0

    .line 276
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->findViewById()V

    .line 279
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 283
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 154
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    sget v0, Lcom/shenma/tvlauncher/R$layout;->activity_history:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->setContentView(I)V

    .line 156
    new-instance v0, Lcom/shenma/tvlauncher/vod/dao/VodDao;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/dao/VodDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    .line 157
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->initView()V

    .line 158
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->initData()V

    .line 159
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->setListener()V

    .line 160
    const-string/jumbo v0, "shenma"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->sp:Landroid/content/SharedPreferences;

    .line 161
    const-string v0, "initData"

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->Sp:Landroid/content/SharedPreferences;

    .line 163
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 140
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 141
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->isDestroy:Ljava/lang/Boolean;

    .line 142
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->overridePendingTransition(II)V

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 148
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onResume()V

    .line 149
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->initData()V

    .line 150
    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 216
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 253
    .local v0, "lastView":[Landroid/view/View;
    return-void
.end method
