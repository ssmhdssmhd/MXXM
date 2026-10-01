.class public Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;
.super Landroidx/fragment/app/Fragment;
.source "Home2VodListFragment.java"

# interfaces
.implements Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;,
        Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$OnAdapterItemClickListener;,
        Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$GridSpacingItemDecoration;,
        Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;,
        Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$HeaderViewHolder;
    }
.end annotation


# instance fields
.field final ITEM_MIN_WIDTH_DP:F

.field final ITEM_SPACING_DP:F

.field final PARENT_PADDING_DP:F

.field private VOD_DATA:Ljava/lang/String;

.field private VOD_FILTER:Ljava/lang/String;

.field private VOD_TYPE:Ljava/lang/String;

.field private adapter:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;

.field private areas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field areasMenu:Lcom/view/SingleChoiceMenuView;

.field private headerView:Landroid/view/View;

.field private isLastPage:Z

.field private isLoading:Z

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private final mediaHandler:Landroid/os/Handler;

.field private pageindex:I

.field sortMenu:Lcom/view/SingleChoiceMenuView;

.field sorts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected sp:Landroid/content/SharedPreferences;

.field private trystate:I

.field private type:Ljava/lang/String;

.field private types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field typesMenu:Lcom/view/SingleChoiceMenuView;

.field private viewMovieList:Landroidx/recyclerview/widget/RecyclerView;

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

.field private vodFilter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private vodpageindex:I

.field private vodtypeinfo:Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

.field private years:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field yearsMenu:Lcom/view/SingleChoiceMenuView;


# direct methods
.method static bridge synthetic -$$Nest$fgetadapter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->adapter:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetareas(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->areas:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisLastPage(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->isLastPage:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisLoading(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->isLoading:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->mediaHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpageindex(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->pageindex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettypes(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->types:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetviewMovieList(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->viewMovieList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->vodFilter:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyears(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->years:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputareas(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->areas:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisLoading(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->isLoading:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpageindex(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->pageindex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtypes(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->types:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvodFilter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->vodFilter:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputyears(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->years:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$mGetMotion(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->GetMotion(Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 118
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 81
    const-string v0, "VOD_FILTER"

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->VOD_FILTER:Ljava/lang/String;

    .line 84
    const-string v0, "VOD_DATA"

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->VOD_DATA:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Trystate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->trystate:I

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->pageindex:I

    .line 98
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->PARENT_PADDING_DP:F

    .line 99
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->ITEM_SPACING_DP:F

    .line 100
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->ITEM_MIN_WIDTH_DP:F

    .line 102
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->isLoading:Z

    .line 103
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->isLastPage:Z

    .line 136
    new-instance v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->mediaHandler:Landroid/os/Handler;

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 81
    const-string v0, "VOD_FILTER"

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->VOD_FILTER:Ljava/lang/String;

    .line 84
    const-string v0, "VOD_DATA"

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->VOD_DATA:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Trystate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->trystate:I

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->pageindex:I

    .line 98
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->PARENT_PADDING_DP:F

    .line 99
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->ITEM_SPACING_DP:F

    .line 100
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->ITEM_MIN_WIDTH_DP:F

    .line 102
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->isLoading:Z

    .line 103
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->isLastPage:Z

    .line 136
    new-instance v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->mediaHandler:Landroid/os/Handler;

    .line 120
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->type:Ljava/lang/String;

    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Api_url"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "Api_url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "BASE_HOST"

    invoke-static {v1, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "BASE_HOST":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api.php/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/vod/?ac=list&class="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->VOD_TYPE:Ljava/lang/String;

    .line 126
    .end local v0    # "Api_url":Ljava/lang/String;
    .end local v1    # "BASE_HOST":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private GetMotion(Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;)V
    .locals 13
    .param p1, "item"    # Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    .line 344
    const-string/jumbo v0, "vip"

    const-string v2, ""

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v11, v3

    .line 347
    .local v11, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sp:Landroid/content/SharedPreferences;

    const-string v6, "999999999"

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

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "999999999"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->vipstate:I

    goto :goto_1

    .line 348
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->vipstate:I

    .line 352
    :goto_1
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v3, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v3}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v0, v3}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->mQueue:Lcom/android/volley/RequestQueue;

    .line 353
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 354
    .local v12, "User_url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "RC4KEY":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 356
    .local v7, "RSAKEY":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 357
    .local v8, "AESKEY":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 358
    .local v9, "AESIV":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 359
    .local v10, "Appkey":Ljava/lang/String;
    new-instance v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$6;

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

    new-instance v4, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$4;

    invoke-direct {v4, p0, p1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$4;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;)V

    new-instance v5, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$5;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$5;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$6;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    return-void

    .line 402
    .end local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    .end local v6    # "RC4KEY":Ljava/lang/String;
    .end local v7    # "RSAKEY":Ljava/lang/String;
    .end local v8    # "AESKEY":Ljava/lang/String;
    .end local v9    # "AESIV":Ljava/lang/String;
    .end local v10    # "Appkey":Ljava/lang/String;
    .end local v12    # "User_url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 403
    .local v0, "ex":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 404
    nop

    .line 408
    .end local v0    # "ex":Ljava/text/ParseException;
    return-void
.end method

.method private createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 560
    new-instance v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$8;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$8;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)V

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

    .line 474
    new-instance v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)V

    return-object v0
.end method

.method private createVodFilterErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 727
    new-instance v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$12;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$12;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)V

    return-object v0
.end method

.method private createVodFilterSuccessListener()Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/vod/domain/VodFilter;",
            ">;"
        }
    .end annotation

    .line 642
    new-instance v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)V

    return-object v0
.end method

.method private dpToPx(F)I
    .locals 2
    .param p1, "dp"    # F

    .line 129
    nop

    .line 132
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 129
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static extractFirstUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "inputText"    # Ljava/lang/String;

    .line 324
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 329
    :cond_0
    const-string v1, "\\$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 333
    .local v4, "part":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 334
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 331
    .end local v4    # "part":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 339
    :cond_2
    return-object v0

    .line 325
    .end local v1    # "parts":[Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v0
.end method

.method private initData()V
    .locals 3

    .line 234
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "shenma"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sp:Landroid/content/SharedPreferences;

    .line 235
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$3;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$3;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)V

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->mQueue:Lcom/android/volley/RequestQueue;

    .line 242
    const/4 v0, 0x0

    iget v1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->pageindex:I

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->processLogic(Ljava/lang/String;I)V

    .line 243
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getFilterDataFromServer()V

    .line 244
    return-void
.end method

.method private requestFilterData()V
    .locals 11

    .line 412
    const-string v0, ""

    .line 413
    .local v0, "filterString":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->vodDatas:Ljava/util/ArrayList;

    .line 414
    const/4 v1, 0x1

    iput v1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->pageindex:I

    .line 415
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sortMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v1}, Lcom/view/SingleChoiceMenuView;->getSelectedPosition()I

    move-result v1

    .line 416
    .local v1, "sortSelection":I
    const-string v2, ""

    .line 417
    .local v2, "sort":Ljava/lang/String;
    if-lez v1, :cond_0

    .line 418
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sorts:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 420
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&sort="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->getEcodString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->areasMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v3}, Lcom/view/SingleChoiceMenuView;->getSelectedPosition()I

    move-result v3

    .line 423
    .local v3, "areaSelection":I
    const-string v4, ""

    .line 424
    .local v4, "area":Ljava/lang/String;
    if-lez v3, :cond_1

    .line 425
    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->areas:Ljava/util/List;

    add-int/lit8 v6, v3, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    .line 428
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "&area="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/Utils;->getEcodString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->typesMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v5}, Lcom/view/SingleChoiceMenuView;->getSelectedPosition()I

    move-result v5

    .line 431
    .local v5, "typeSelection":I
    const-string v6, ""

    .line 432
    .local v6, "type":Ljava/lang/String;
    if-lez v5, :cond_2

    .line 433
    iget-object v7, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->types:Ljava/util/List;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Ljava/lang/String;

    .line 435
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lcom/shenma/tvlauncher/utils/Utils;->getEcodString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    iget-object v7, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->yearsMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v7}, Lcom/view/SingleChoiceMenuView;->getSelectedPosition()I

    move-result v7

    .line 438
    .local v7, "yearSelection":I
    const-string v8, ""

    .line 439
    .local v8, "year":Ljava/lang/String;
    if-lez v7, :cond_3

    .line 440
    iget-object v9, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->years:Ljava/util/List;

    add-int/lit8 v10, v7, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    check-cast v8, Ljava/lang/String;

    .line 442
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "&year="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Lcom/shenma/tvlauncher/utils/Utils;->getEcodString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    iget v9, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->pageindex:I

    invoke-virtual {p0, v0, v9}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->processLogic(Ljava/lang/String;I)V

    .line 444
    return-void
.end method


# virtual methods
.method public GetMotionResponse(Ljava/lang/String;Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;)V
    .locals 16
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    .line 254
    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "RC4KEY":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "RSAKEY":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v0, v5, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "AESKEY":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v0, v6, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v6, p1

    :try_start_1
    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v7, "code"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 262
    .local v7, "code":I
    const/16 v8, 0xc8

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    const-string/jumbo v12, "vip"

    if-ne v7, v8, :cond_3

    .line 263
    :try_start_2
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    sget-object v13, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v8, v13, v11}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 264
    .local v8, "miType":I
    const/4 v13, 0x0

    .line 265
    .local v13, "msg":Lorg/json/JSONObject;
    const-string v14, "msg"

    if-ne v8, v11, :cond_0

    .line 266
    :try_start_3
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v10

    goto :goto_0

    .line 267
    :cond_0
    if-ne v8, v9, :cond_1

    .line 268
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v10

    goto :goto_0

    .line 269
    :cond_1
    if-ne v8, v10, :cond_2

    .line 270
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14, v3}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v10

    .line 272
    :cond_2
    :goto_0
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 273
    .local v10, "vip":Ljava/lang/String;
    const-string v14, "Try"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    .line 274
    .local v14, "Try":I
    const-string v15, "Clientmode"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 275
    .local v15, "Clientmode":I
    iput v14, v1, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->trystate:I

    .line 276
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 277
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v12, "Submission_method"

    .line 278
    invoke-interface {v9, v12, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v12, "Trystate"

    .line 279
    invoke-interface {v9, v12, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 280
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 281
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

    .line 282
    :try_start_4
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 283
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sp:Landroid/content/SharedPreferences;

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

    .line 284
    return-void

    .line 285
    :cond_4
    const/16 v10, 0x72

    if-ne v7, v10, :cond_5

    .line 286
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 287
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sp:Landroid/content/SharedPreferences;

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

    .line 288
    return-void

    .line 289
    :cond_5
    const/16 v10, 0x7d

    if-ne v7, v10, :cond_6

    .line 290
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x7

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 291
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sp:Landroid/content/SharedPreferences;

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

    .line 292
    return-void

    .line 293
    :cond_6
    if-ne v7, v8, :cond_7

    .line 294
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x6

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 295
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sp:Landroid/content/SharedPreferences;

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

    .line 296
    return-void

    .line 297
    :cond_7
    const/16 v8, 0xc9

    const/4 v9, 0x5

    if-ne v7, v8, :cond_8

    .line 298
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 299
    return-void

    .line 300
    :cond_8
    const/16 v8, 0x6a

    if-ne v7, v8, :cond_9

    .line 301
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 302
    return-void

    .line 304
    :cond_9
    :goto_1
    iget v8, v1, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->vipstate:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_b

    iget v8, v1, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->trystate:I

    if-ne v8, v9, :cond_a

    goto :goto_2

    .line 315
    :cond_a
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->mediaHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 305
    :cond_b
    :goto_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v8, "i":Landroid/content/Intent;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    const-class v10, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 307
    const-string v9, "nextlink"

    invoke-virtual/range {p2 .. p2}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getNextlink()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string/jumbo v9, "vodstate"

    invoke-virtual/range {p2 .. p2}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getState()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string/jumbo v9, "vodtype"

    invoke-virtual/range {p2 .. p2}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string/jumbo v9, "vodPlayUrl"

    invoke-virtual/range {p2 .. p2}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getVod_play_url()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->extractFirstUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    invoke-virtual {v1, v8}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 314
    .end local v8    # "i":Landroid/content/Intent;
    nop

    .line 320
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v7    # "code":I
    :goto_3
    goto :goto_5

    .line 318
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v6, p1

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method protected closeProgressDialog()V
    .locals 0

    .line 469
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 470
    return-void
.end method

.method protected getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V
    .locals 7
    .param p1, "reqVo"    # Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    .line 578
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->showProgressDialog()V

    .line 579
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Utils;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    iget-object v0, p1, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->VOD_DATA:Ljava/lang/String;

    if-ne v0, v2, :cond_0

    .line 581
    new-instance v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$9;

    iget-object v3, p1, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    const-class v4, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    .line 582
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->createVodDataSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v5

    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v6

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$9;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 607
    .local v0, "mVodData":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;>;"
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .end local v0    # "mVodData":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;>;"
    goto :goto_0

    .line 608
    :cond_0
    iget-object v0, p1, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->VOD_FILTER:Ljava/lang/String;

    if-ne v0, v2, :cond_1

    .line 609
    new-instance v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$10;

    iget-object v3, p1, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    const-class v4, Lcom/shenma/tvlauncher/vod/domain/VodFilter;

    .line 610
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->createVodFilterSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v5

    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v6

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$10;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 633
    .local v0, "mVodData":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/vod/domain/VodFilter;>;"
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_1

    .line 608
    .end local v0    # "mVodData":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/vod/domain/VodFilter;>;"
    :cond_1
    :goto_0
    nop

    .line 637
    :cond_2
    :goto_1
    return-void
.end method

.method protected getFilterDataFromServer()V
    .locals 5

    .line 459
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Api_url"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "Api_url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "BASE_HOST"

    invoke-static {v1, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "BASE_HOST":Ljava/lang/String;
    new-instance v2, Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    invoke-direct {v2}, Lcom/shenma/tvlauncher/vod/domain/RequestVo;-><init>()V

    .line 462
    .local v2, "vo":Lcom/shenma/tvlauncher/vod/domain/RequestVo;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iput-object v3, v2, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->context:Landroid/content/Context;

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/api.php/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/vod/?&ac=flitter&class="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    .line 464
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->VOD_FILTER:Ljava/lang/String;

    iput-object v3, v2, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->type:Ljava/lang/String;

    .line 465
    invoke-virtual {p0, v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V

    .line 466
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 177
    move-object/from16 v0, p0

    sget v1, Lcom/shenma/tvlauncher/R$layout;->home2_vodlistfragment:I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 178
    .local v1, "view":Landroid/view/View;
    sget v4, Lcom/shenma/tvlauncher/R$id;->home2_vodlist:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->viewMovieList:Landroidx/recyclerview/widget/RecyclerView;

    .line 180
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 181
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 184
    .local v5, "screenWidthPx":I
    const/high16 v6, 0x41200000    # 10.0f

    invoke-direct {v0, v6}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->dpToPx(F)I

    move-result v6

    .line 185
    .local v6, "parentPaddingPx":I
    const/high16 v7, 0x41700000    # 15.0f

    invoke-direct {v0, v7}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->dpToPx(F)I

    move-result v7

    .line 186
    .local v7, "itemSpacingPx":I
    const/high16 v8, 0x43340000    # 180.0f

    invoke-direct {v0, v8}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->dpToPx(F)I

    move-result v8

    .line 189
    .local v8, "itemMinWidthPx":I
    mul-int/lit8 v9, v6, 0x2

    sub-int v9, v5, v9

    .line 192
    .local v9, "availableWidthPx":I
    add-int v10, v9, v7

    add-int v11, v8, v7

    const/16 v10, 0x6

    .line 195
    .local v10, "columnCount":I
    new-instance v11, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 196
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct {v11, v12, v10, v13, v14}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 201
    .local v11, "gridLayoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->viewMovieList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 202
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    sget v13, Lcom/shenma/tvlauncher/R$layout;->layout_film_list_headerview:I

    iget-object v15, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->viewMovieList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v12, v13, v15, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    iput-object v12, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->headerView:Landroid/view/View;

    .line 203
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->headerView:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->years_menu:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/view/SingleChoiceMenuView;

    iput-object v12, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->yearsMenu:Lcom/view/SingleChoiceMenuView;

    .line 204
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->headerView:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->areas_menu:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/view/SingleChoiceMenuView;

    iput-object v12, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->areasMenu:Lcom/view/SingleChoiceMenuView;

    .line 205
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->headerView:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->types_menu:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/view/SingleChoiceMenuView;

    iput-object v12, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->typesMenu:Lcom/view/SingleChoiceMenuView;

    .line 206
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->headerView:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->sort_menu:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/view/SingleChoiceMenuView;

    iput-object v12, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sortMenu:Lcom/view/SingleChoiceMenuView;

    .line 207
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->yearsMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v12, v0}, Lcom/view/SingleChoiceMenuView;->setOnItemSelectedListener(Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;)V

    .line 208
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->areasMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v12, v0}, Lcom/view/SingleChoiceMenuView;->setOnItemSelectedListener(Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;)V

    .line 209
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->typesMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v12, v0}, Lcom/view/SingleChoiceMenuView;->setOnItemSelectedListener(Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;)V

    .line 210
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sortMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v12, v0}, Lcom/view/SingleChoiceMenuView;->setOnItemSelectedListener(Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;)V

    .line 211
    new-instance v12, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;

    new-instance v13, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$2;

    invoke-direct {v13, v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$2;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)V

    iget-object v14, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->headerView:Landroid/view/View;

    invoke-direct {v12, v0, v13, v14}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$OnAdapterItemClickListener;Landroid/view/View;)V

    iput-object v12, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->adapter:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;

    .line 224
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->viewMovieList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v13, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->adapter:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 225
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->viewMovieList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v13, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$GridSpacingItemDecoration;

    const/16 v14, 0xf

    iget-object v15, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->adapter:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;

    invoke-direct {v13, v0, v14, v15}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$GridSpacingItemDecoration;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;ILcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;)V

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 227
    invoke-direct {v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->initData()V

    .line 229
    return-object v1
.end method

.method public onItemSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .line 735
    if-eqz p1, :cond_0

    .line 736
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->requestFilterData()V

    .line 738
    :cond_0
    return-void
.end method

.method protected processLogic(Ljava/lang/String;I)V
    .locals 3
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "pageindex"    # I

    .line 450
    new-instance v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/domain/RequestVo;-><init>()V

    .line 451
    .local v0, "vo":Lcom/shenma/tvlauncher/vod/domain/RequestVo;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->context:Landroid/content/Context;

    .line 452
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->VOD_DATA:Ljava/lang/String;

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->type:Ljava/lang/String;

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->VOD_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    .line 455
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V

    .line 456
    return-void
.end method

.method public setHeaderViewVisible(I)V
    .locals 2
    .param p1, "visible"    # I

    .line 247
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->adapter:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->setHeaderVisible(Z)V

    .line 249
    return-void
.end method

.method protected showProgressDialog()V
    .locals 2

    .line 575
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->str_data_loading:I

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 576
    return-void
.end method
