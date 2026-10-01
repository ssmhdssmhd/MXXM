.class public Lcom/shenma/tvlauncher/vod/SearchActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static Sp:Landroid/content/SharedPreferences;


# instance fields
.field private Api_url:Ljava/lang/String;

.field private BASE_HOST:Ljava/lang/String;

.field private SearchText:Landroid/widget/TextView;

.field private final TAG:Ljava/lang/String;

.field private VOD_URL:Ljava/lang/String;

.field private Voice_text:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private gv_search_result:Landroid/widget/GridView;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private keyboard_view:Landroid/view/ViewGroup;

.field private mDialog:Landroid/app/Dialog;

.field private mQueue:Lcom/android/volley/RequestQueue;

.field private mediaHandler:Landroid/os/Handler;

.field private name:Ljava/lang/String;

.field private pageindex:I

.field private sb:Ljava/lang/StringBuilder;

.field private search_keybord_full_voice:Landroid/widget/ImageView;

.field private search_keybord_input:Landroid/widget/EditText;

.field private searchtypeAdapter:Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;

.field protected sp:Landroid/content/SharedPreferences;

.field private totalpage:I

.field private trystate:I

.field private tv_search:Landroid/widget/TextView;

.field private tv_search_empty_text:Landroid/widget/TextView;

.field private type:Ljava/lang/String;

.field private users_empower:Landroid/widget/ImageView;

.field private vipstate:I

.field private vodDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private vodpageindex:I

.field private vodtypeinfo:Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;


# direct methods
.method static bridge synthetic -$$Nest$fgetVoice_text(Lcom/shenma/tvlauncher/vod/SearchActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->Voice_text:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgv_search_result(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/widget/GridView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->gv_search_result:Landroid/widget/GridView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetkeyboard_view(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->keyboard_view:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsb(Lcom/shenma/tvlauncher/vod/SearchActivity;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearch_keybord_input(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->search_keybord_input:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchtypeAdapter(Lcom/shenma/tvlauncher/vod/SearchActivity;)Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->searchtypeAdapter:Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetusers_empower(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->users_empower:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvodDatas(Lcom/shenma/tvlauncher/vod/SearchActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodDatas:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvodpageindex(Lcom/shenma/tvlauncher/vod/SearchActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodpageindex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvodtypeinfo(Lcom/shenma/tvlauncher/vod/SearchActivity;)Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodtypeinfo:Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputpageindex(Lcom/shenma/tvlauncher/vod/SearchActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsb(Lcom/shenma/tvlauncher/vod/SearchActivity;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchtypeAdapter(Lcom/shenma/tvlauncher/vod/SearchActivity;Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->searchtypeAdapter:Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtotalpage(Lcom/shenma/tvlauncher/vod/SearchActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->totalpage:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtype(Lcom/shenma/tvlauncher/vod/SearchActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->type:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvodDatas(Lcom/shenma/tvlauncher/vod/SearchActivity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodDatas:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvodpageindex(Lcom/shenma/tvlauncher/vod/SearchActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodpageindex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvodtypeinfo(Lcom/shenma/tvlauncher/vod/SearchActivity;Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodtypeinfo:Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$mGetMotion(Lcom/shenma/tvlauncher/vod/SearchActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->GetMotion(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpageDown(Lcom/shenma/tvlauncher/vod/SearchActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageDown()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadyToSearch(Lcom/shenma/tvlauncher/vod/SearchActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->readyToSearch()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowvoice(Lcom/shenma/tvlauncher/vod/SearchActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->showvoice()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 95
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 96
    const-string v0, "SearchActivity"

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->TAG:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->VOD_URL:Ljava/lang/String;

    .line 105
    const/4 v1, 0x1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    .line 113
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->type:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->name:Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$1;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    .line 159
    const-string v0, "Trystate"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->trystate:I

    .line 174
    const-string v0, "Api_url"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->Api_url:Ljava/lang/String;

    .line 175
    const-string v0, "BASE_HOST"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->BASE_HOST:Ljava/lang/String;

    return-void
.end method

.method private GetMotion(I)V
    .locals 16
    .param p1, "position"    # I

    .line 686
    move-object/from16 v1, p0

    const-string v12, "vip"

    const-string v13, ""

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 689
    .local v14, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v0, v12, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v0, 0x1

    cmp-long v7, v2, v5

    if-ltz v7, :cond_1

    iget-object v2, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, v12, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "999999999"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 692
    :cond_0
    const/4 v2, 0x0

    iput v2, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->vipstate:I

    goto :goto_2

    .line 690
    :cond_1
    :goto_1
    iput v0, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->vipstate:I

    .line 694
    :goto_2
    new-instance v2, Lcom/shenma/tvlauncher/vod/SearchActivity$18;

    invoke-direct {v2, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity$18;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    invoke-static {v1, v2}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v2

    iput-object v2, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 701
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    invoke-static {v1, v2, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    .line 702
    .local v15, "User_url":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v1, v2, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 703
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v2, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 704
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v2, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 705
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v2, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 706
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v1, v2, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 707
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 708
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/vod/SearchActivity$21;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    new-instance v4, Lcom/shenma/tvlauncher/vod/SearchActivity$19;

    move/from16 v2, p1

    invoke-direct {v4, v1, v2}, Lcom/shenma/tvlauncher/vod/SearchActivity$19;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;I)V

    new-instance v5, Lcom/shenma/tvlauncher/vod/SearchActivity$20;

    invoke-direct {v5, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity$20;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/vod/SearchActivity$21;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    return-void

    .line 751
    .end local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    .end local v6    # "miType":I
    .end local v7    # "RC4KEY":Ljava/lang/String;
    .end local v8    # "RSAKEY":Ljava/lang/String;
    .end local v9    # "AESKEY":Ljava/lang/String;
    .end local v10    # "AESIV":Ljava/lang/String;
    .end local v11    # "Appkey":Ljava/lang/String;
    .end local v15    # "User_url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 752
    .local v0, "ex":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 753
    goto/16 :goto_0
.end method

.method private SearchText()V
    .locals 7

    .line 260
    new-instance v0, Lcom/shenma/tvlauncher/vod/SearchActivity$3;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$3;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 267
    new-instance v1, Lcom/shenma/tvlauncher/vod/SearchActivity$6;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->Api_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/api.php/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->BASE_HOST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/SearchText"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/shenma/tvlauncher/vod/SearchActivity$4;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$4;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    new-instance v6, Lcom/shenma/tvlauncher/vod/SearchActivity$5;

    invoke-direct {v6, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$5;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    const/4 v3, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/shenma/tvlauncher/vod/SearchActivity$6;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 293
    .local v1, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v0, v2, Lcom/shenma/tvlauncher/vod/SearchActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 295
    return-void
.end method

.method private createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 644
    new-instance v0, Lcom/shenma/tvlauncher/vod/SearchActivity$17;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$17;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    return-object v0
.end method

.method private createVodDataSuccessListener()Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;",
            ">;"
        }
    .end annotation

    .line 602
    new-instance v0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$16;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    return-object v0
.end method

.method public static extractFirstUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "inputText"    # Ljava/lang/String;

    .line 836
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 841
    :cond_0
    const-string v1, "\\$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 843
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 845
    .local v4, "part":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 846
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 843
    .end local v4    # "part":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 851
    :cond_2
    return-object v0

    .line 837
    .end local v1    # "parts":[Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v0
.end method

.method private getVoice()V
    .locals 13

    .line 895
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 896
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 897
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 898
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 899
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 900
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 901
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 902
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 903
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/vod/SearchActivity$25;

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

    const-string v3, "&act=voice_text"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/vod/SearchActivity$23;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$23;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/vod/SearchActivity$24;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$24;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/vod/SearchActivity$25;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 946
    return-void
.end method

.method private initIntent()V
    .locals 3

    .line 442
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->type:Ljava/lang/String;

    .line 444
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->name:Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->name:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->findLastIndexOfSeparators(Ljava/lang/String;[C)I

    move-result v0

    .line 447
    .local v0, "lastColonIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->name:Ljava/lang/String;

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->readyToSearch(Ljava/lang/String;)V

    .line 452
    .end local v0    # "lastColonIndex":I
    :cond_1
    return-void

    :array_0
    .array-data 2
        0x26s
        0x3as
        -0xe6s
        0x3bs
        -0xe5s
    .end array-data
.end method

.method private pageDown()V
    .locals 3

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pageindex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "....vodpageindex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodpageindex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "joychang"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    iget v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->totalpage:I

    if-ge v0, v2, :cond_1

    iget v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    iget v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodpageindex:I

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u6c42\u9875\u6570==="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->processLogic()V

    .line 531
    return-void

    .line 527
    :cond_1
    :goto_0
    return-void
.end method

.method private readyToSearch()V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->search_keybord_input:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 507
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->SearchDatas(Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method private readyToSearch(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 513
    sget v0, Lcom/shenma/tvlauncher/R$id;->search_keybord_input:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 514
    .local v0, "searchInput":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 517
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->SearchDatas(Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method private showUserDialogempower()V
    .locals 4

    .line 863
    new-instance v0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 864
    .local v0, "builder":Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    sget v2, Lcom/shenma/tvlauncher/R$layout;->forget_search_empower:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 865
    .local v1, "mView":Landroid/view/View;
    sget v2, Lcom/shenma/tvlauncher/R$id;->users_empower:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->users_empower:Landroid/widget/ImageView;

    .line 866
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 867
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 868
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->users_empower:Landroid/widget/ImageView;

    new-instance v3, Lcom/shenma/tvlauncher/vod/SearchActivity$22;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$22;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->creates()Lcom/shenma/tvlauncher/view/WiFiDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mDialog:Landroid/app/Dialog;

    .line 879
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 880
    return-void
.end method

.method private showvoice()V
    .locals 4

    .line 884
    new-instance v0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 885
    .local v0, "builder":Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    sget v2, Lcom/shenma/tvlauncher/R$layout;->forget_search_voice:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 886
    .local v1, "mView":Landroid/view/View;
    sget v2, Lcom/shenma/tvlauncher/R$id;->voice_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 887
    .local v2, "voice_text":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->Voice_text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 889
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->creates()Lcom/shenma/tvlauncher/view/WiFiDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mDialog:Landroid/app/Dialog;

    .line 890
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 891
    return-void
.end method


# virtual methods
.method public GetMotionResponse(Ljava/lang/String;I)V
    .locals 16
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 763
    move-object/from16 v1, p0

    move/from16 v2, p2

    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 764
    .local v4, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 765
    .local v5, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 766
    .local v6, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 769
    .local v3, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v7, p1

    :try_start_1
    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 770
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v8, "code"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 771
    .local v8, "code":I
    const/16 v9, 0xc8

    const/4 v10, 0x2

    const/4 v11, 0x1

    const-string v12, "vip"

    if-ne v8, v9, :cond_3

    .line 772
    :try_start_2
    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v1, v9, v11}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 773
    .local v9, "miType":I
    const/4 v13, 0x0

    .line 774
    .local v13, "msg":Lorg/json/JSONObject;
    const-string v14, "msg"

    if-ne v9, v11, :cond_0

    .line 775
    :try_start_3
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v15

    goto :goto_0

    .line 776
    :cond_0
    if-ne v9, v10, :cond_1

    .line 777
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v15

    goto :goto_0

    .line 778
    :cond_1
    const/4 v15, 0x3

    if-ne v9, v15, :cond_2

    .line 779
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14, v3}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v15

    .line 781
    :cond_2
    :goto_0
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 782
    .local v14, "vip":Ljava/lang/String;
    const-string v15, "Try"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 783
    .local v15, "Try":I
    const-string v10, "Clientmode"

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 784
    .local v10, "Clientmode":I
    iput v15, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->trystate:I

    .line 785
    iget-object v11, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11, v12, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 786
    sget-object v11, Lcom/shenma/tvlauncher/vod/SearchActivity;->Sp:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "Submission_method"

    .line 787
    invoke-interface {v11, v12, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "Trystate"

    .line 788
    invoke-interface {v11, v12, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 789
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 790
    nop

    .end local v9    # "miType":I
    .end local v10    # "Clientmode":I
    .end local v13    # "msg":Lorg/json/JSONObject;
    .end local v14    # "vip":Ljava/lang/String;
    .end local v15    # "Try":I
    goto/16 :goto_1

    :cond_3
    const/16 v9, 0x7f

    const-string v10, "ckinfo"

    const-string v11, "fen"

    const-string v13, "passWord"

    const-string v14, "userName"

    if-ne v8, v9, :cond_4

    .line 791
    :try_start_4
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v15, 0x6

    invoke-virtual {v9, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 792
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v11, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 793
    return-void

    .line 794
    :cond_4
    const/16 v15, 0x72

    if-ne v8, v15, :cond_5

    .line 795
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v15, 0x7

    invoke-virtual {v9, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 796
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v11, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 797
    return-void

    .line 798
    :cond_5
    const/16 v15, 0x7d

    if-ne v8, v15, :cond_6

    .line 799
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v15, 0x8

    invoke-virtual {v9, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 800
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v11, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 801
    return-void

    .line 802
    :cond_6
    if-ne v8, v9, :cond_7

    .line 803
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v15, 0x9

    invoke-virtual {v9, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 804
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v11, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 805
    return-void

    .line 806
    :cond_7
    const/16 v9, 0xc9

    const/16 v10, 0xa

    if-ne v8, v9, :cond_8

    .line 807
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 808
    return-void

    .line 809
    :cond_8
    const/16 v9, 0x6a

    if-ne v8, v9, :cond_9

    .line 810
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 811
    return-void

    .line 814
    :cond_9
    :goto_1
    iget v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->vipstate:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    iget v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->trystate:I

    if-ne v9, v10, :cond_a

    goto :goto_2

    .line 827
    :cond_a
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 815
    :cond_b
    :goto_2
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {v9, v1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 816
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v10, 0x4000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 817
    iget-object v10, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->type:Ljava/lang/String;

    const-string v11, "ALL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v11, "vodtype"

    if-eqz v10, :cond_c

    .line 818
    :try_start_5
    iget-object v10, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodDatas:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    invoke-virtual {v10}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 820
    :cond_c
    iget-object v10, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->type:Ljava/lang/String;

    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    :goto_3
    const-string v10, "vodPlayUrl"

    iget-object v11, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodDatas:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getVod_play_url()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/shenma/tvlauncher/vod/SearchActivity;->extractFirstUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    const-string v10, "nextlink"

    iget-object v11, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodDatas:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getNextlink()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    invoke-virtual {v1, v9}, Lcom/shenma/tvlauncher/vod/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 825
    const/high16 v10, 0x10a0000

    const v11, 0x10a0001

    invoke-virtual {v1, v10, v11}, Lcom/shenma/tvlauncher/vod/SearchActivity;->overridePendingTransition(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 826
    .end local v9    # "intent":Landroid/content/Intent;
    nop

    .line 832
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v8    # "code":I
    :goto_4
    goto :goto_6

    .line 830
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v7, p1

    .line 831
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 833
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method protected SearchDatas(Ljava/lang/String;)V
    .locals 3
    .param p1, "filter"    # Ljava/lang/String;

    .line 548
    new-instance v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/domain/RequestVo;-><init>()V

    .line 549
    .local v0, "vo":Lcom/shenma/tvlauncher/vod/domain/RequestVo;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->context:Landroid/content/Context;

    .line 550
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodDatas:Ljava/util/ArrayList;

    .line 551
    const/4 v1, 0x1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->Api_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/api.php/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->BASE_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/vod/?ac=list&zm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/shenma/tvlauncher/utils/Utils;->getEcodString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->VOD_URL:Ljava/lang/String;

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->VOD_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u641c\u7d22VOD_URL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->VOD_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "joychang"

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V

    .line 556
    return-void
.end method

.method public SearchTextResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .line 301
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 303
    .local v1, "code":I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 304
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "msg":Ljava/lang/String;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->SearchText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v1    # "code":I
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 310
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public VodGongGaoError(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 977
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    .line 980
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    .line 983
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    .line 986
    instance-of v0, p1, Lcom/android/volley/ServerError;

    .line 990
    return-void
.end method

.method public VodGongGaoResponse(Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .line 950
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 952
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 953
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 955
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 956
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 957
    .local v5, "code":I
    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 958
    .local v6, "msg":Ljava/lang/String;
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_2

    .line 959
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    .local v7, "miType":I
    const-string v9, "UTF-8"

    if-ne v7, v8, :cond_0

    .line 961
    :try_start_1
    invoke-static {v6, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->Voice_text:Ljava/lang/String;

    goto :goto_0

    .line 962
    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 963
    invoke-static {v6, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->Voice_text:Ljava/lang/String;

    goto :goto_0

    .line 964
    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 965
    invoke-static {v3, v6, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->Voice_text:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 971
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "miType":I
    :cond_2
    :goto_0
    goto :goto_1

    .line 969
    :catch_0
    move-exception v4

    .line 970
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 972
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method protected closeProgressDialog()V
    .locals 0

    .line 681
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 682
    return-void
.end method

.method public doClick(Landroid/view/View;)V
    .locals 5
    .param p1, "target"    # Landroid/view/View;

    .line 460
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 462
    .local v0, "tag":I
    sget v1, Lcom/shenma/tvlauncher/R$id;->search_keybord_full_clear:I

    if-ne v0, v1, :cond_0

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    .line 464
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->readyToSearch()V

    goto/16 :goto_2

    .line 466
    :cond_0
    sget v1, Lcom/shenma/tvlauncher/R$id;->search_keybord_full_del:I

    if-ne v0, v1, :cond_2

    .line 467
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 468
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 470
    :cond_1
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->readyToSearch()V

    goto/16 :goto_2

    .line 472
    :cond_2
    sget v1, Lcom/shenma/tvlauncher/R$id;->search_keybord_sp:I

    if-ne v0, v1, :cond_4

    .line 473
    const-string v1, "MOVIE"

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->type:Ljava/lang/String;

    .line 474
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->search_keybord_input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 475
    .local v1, "text":Landroid/text/Editable;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 476
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "search":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    .line 478
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .end local v2    # "search":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->readyToSearch()V

    .line 481
    .end local v1    # "text":Landroid/text/Editable;
    goto :goto_2

    :cond_4
    sget v1, Lcom/shenma/tvlauncher/R$id;->search_keybord_sj2:I

    const/16 v2, 0x26fa

    const-string v3, "port"

    if-eq v0, v1, :cond_8

    sget v1, Lcom/shenma/tvlauncher/R$id;->search_keybord_sj:I

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 490
    :cond_5
    sget v1, Lcom/shenma/tvlauncher/R$id;->search_keybord_full_voice:I

    if-ne v0, v1, :cond_7

    .line 491
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->isPortAvailable(I)Z

    move-result v1

    .line 492
    .local v1, "portAvailable":Z
    if-nez v1, :cond_6

    .line 493
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->Voice_text:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 494
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->showvoice()V

    .line 497
    .end local v1    # "portAvailable":Z
    :cond_6
    goto :goto_2

    .line 498
    :cond_7
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 499
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->readyToSearch()V

    goto :goto_2

    .line 482
    :cond_8
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->isPortAvailable(I)Z

    move-result v1

    .line 483
    .restart local v1    # "portAvailable":Z
    if-eqz v1, :cond_9

    .line 484
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    sget v3, Lcom/shenma/tvlauncher/R$string;->Not_yet_activated:I

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v2, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 488
    :cond_9
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->showUserDialogempower()V

    .line 490
    .end local v1    # "portAvailable":Z
    :goto_1
    nop

    .line 501
    :goto_2
    return-void
.end method

.method public findViewById()V
    .locals 5

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    .line 315
    sget v0, Lcom/shenma/tvlauncher/R$id;->SearchText:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->SearchText:Landroid/widget/TextView;

    .line 316
    sget v0, Lcom/shenma/tvlauncher/R$id;->search_keybord_input:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->search_keybord_input:Landroid/widget/EditText;

    .line 317
    sget v0, Lcom/shenma/tvlauncher/R$id;->search_keybord_hint:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->tv_search:Landroid/widget/TextView;

    .line 318
    sget v0, Lcom/shenma/tvlauncher/R$id;->search_empty_text:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->tv_search_empty_text:Landroid/widget/TextView;

    .line 320
    sget v0, Lcom/shenma/tvlauncher/R$id;->search_keybord_full_layout:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 321
    .local v0, "ScrollView":Landroid/view/View;
    sget v1, Lcom/shenma/tvlauncher/R$id;->search_result:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->gv_search_result:Landroid/widget/GridView;

    .line 322
    sget v1, Lcom/shenma/tvlauncher/R$id;->keyboard_view:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->keyboard_view:Landroid/view/ViewGroup;

    .line 323
    sget v1, Lcom/shenma/tvlauncher/R$id;->search_keybord_full_voice:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->search_keybord_full_voice:Landroid/widget/ImageView;

    .line 324
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 326
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->keyboard_view:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/shenma/tvlauncher/vod/SearchActivity$7;

    invoke-direct {v3, p0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity$7;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 339
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->gv_search_result:Landroid/widget/GridView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 342
    sget v2, Lcom/shenma/tvlauncher/R$id;->search_keybord_input:I

    invoke-virtual {p0, v2}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 343
    .local v2, "phoneEd":Landroid/widget/EditText;
    new-instance v3, Lcom/shenma/tvlauncher/vod/SearchActivity$8;

    invoke-direct {v3, p0, v2}, Lcom/shenma/tvlauncher/vod/SearchActivity$8;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 360
    new-instance v3, Lcom/shenma/tvlauncher/vod/SearchActivity$9;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$9;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 380
    return-void
.end method

.method protected getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V
    .locals 8
    .param p1, "reqVo"    # Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    .line 565
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->showProgressDialog()V

    .line 566
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    new-instance v1, Lcom/shenma/tvlauncher/vod/SearchActivity$14;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$14;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 573
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Utils;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/shenma/tvlauncher/vod/SearchActivity$15;

    iget-object v4, p1, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    const-class v5, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->createVodDataSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v6

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v7

    const/4 v3, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/shenma/tvlauncher/vod/SearchActivity$15;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 598
    :cond_0
    return-void
.end method

.method public initView()V
    .locals 0

    .line 249
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById()V

    .line 250
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->loadViewLayout()V

    .line 251
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->setListener()V

    .line 252
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->SearchText()V

    .line 253
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getVoice()V

    .line 254
    return-void
.end method

.method public loadViewLayout()V
    .locals 0

    .line 384
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 456
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 185
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->requestWindowFeature(I)Z

    .line 187
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 191
    sget v0, Lcom/shenma/tvlauncher/R$layout;->mv_search_new:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->setContentView(I)V

    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 198
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    .line 200
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    or-int/2addr v2, v3

    .line 199
    invoke-interface {v0, v2}, Landroid/view/WindowInsetsController;->hide(I)V

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x1006

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 212
    :goto_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 213
    new-instance v0, Lcom/shenma/tvlauncher/vod/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$2;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 229
    iput-object p0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    .line 230
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->initIntent()V

    .line 231
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->initView()V

    .line 232
    const-string v0, "shenma"

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    .line 233
    const-string v0, "initData"

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/vod/SearchActivity;->Sp:Landroid/content/SharedPreferences;

    .line 234
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 239
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStop()V

    .line 244
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->overridePendingTransition(II)V

    .line 245
    return-void
.end method

.method protected processLogic()V
    .locals 3

    .line 537
    new-instance v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/domain/RequestVo;-><init>()V

    .line 538
    .local v0, "vo":Lcom/shenma/tvlauncher/vod/domain/RequestVo;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->context:Landroid/content/Context;

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->VOD_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbf\u95ee:::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->VOD_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "joychang"

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V

    .line 542
    return-void
.end method

.method public setListener()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->search_keybord_full_voice:Landroid/widget/ImageView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/SearchActivity$10;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$10;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->gv_search_result:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/SearchActivity$11;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$11;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 412
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->gv_search_result:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/SearchActivity$12;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$12;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 428
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->gv_search_result:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/SearchActivity$13;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$13;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 437
    return-void
.end method

.method protected showProgressDialog()V
    .locals 1

    .line 674
    sget v0, Lcom/shenma/tvlauncher/R$string;->str_data_loading:I

    invoke-static {p0, v0}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 675
    return-void
.end method
