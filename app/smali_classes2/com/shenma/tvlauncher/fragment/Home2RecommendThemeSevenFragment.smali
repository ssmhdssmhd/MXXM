.class public Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;
.super Landroidx/fragment/app/Fragment;
.source "Home2RecommendThemeSevenFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$OnZbClickListener;,
        Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$ItemSpacingDecoration;,
        Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;,
        Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;
    }
.end annotation


# instance fields
.field private collect:Landroid/view/View;

.field private history:Landroid/view/View;

.field private llZb:Landroid/view/View;

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private final mediaHandler:Landroid/os/Handler;

.field private mine:Landroid/view/View;

.field private onZbClickListener:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$OnZbClickListener;

.field private search:Landroid/view/View;

.field protected sp:Landroid/content/SharedPreferences;

.field private trystate:I

.field private tvTime:Landroid/widget/TextView;

.field private viewMovieList:Lcom/view/RecyclerViewAtViewPager2;

.field private vipstate:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->mediaHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonZbClickListener(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;)Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$OnZbClickListener;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->onZbClickListener:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$OnZbClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvTime(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->tvTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetviewMovieList(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;)Lcom/view/RecyclerViewAtViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->viewMovieList:Lcom/view/RecyclerViewAtViewPager2;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mGetMotion(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;Lcom/shenma/tvlauncher/domain/RecommendInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->GetMotion(Lcom/shenma/tvlauncher/domain/RecommendInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 86
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 79
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Trystate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->trystate:I

    .line 91
    new-instance v0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$1;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->mediaHandler:Landroid/os/Handler;

    .line 87
    return-void
.end method

.method private GetMotion(Lcom/shenma/tvlauncher/domain/RecommendInfo;)V
    .locals 13
    .param p1, "item"    # Lcom/shenma/tvlauncher/domain/RecommendInfo;

    .line 362
    const-string/jumbo v0, "vip"

    const-string v2, ""

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v11, v3

    .line 365
    .local v11, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->sp:Landroid/content/SharedPreferences;

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

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "999999999"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->vipstate:I

    goto :goto_1

    .line 366
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->vipstate:I

    .line 370
    :goto_1
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v3, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v3}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v0, v3}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->mQueue:Lcom/android/volley/RequestQueue;

    .line 371
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 372
    .local v12, "User_url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 373
    .local v6, "RC4KEY":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 374
    .local v7, "RSAKEY":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 375
    .local v8, "AESKEY":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 376
    .local v9, "AESIV":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 377
    .local v10, "Appkey":Ljava/lang/String;
    new-instance v0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$12;

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

    new-instance v4, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$10;

    invoke-direct {v4, p0, p1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$10;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;Lcom/shenma/tvlauncher/domain/RecommendInfo;)V

    new-instance v5, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$11;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$11;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$12;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    return-void

    .line 420
    .end local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    .end local v6    # "RC4KEY":Ljava/lang/String;
    .end local v7    # "RSAKEY":Ljava/lang/String;
    .end local v8    # "AESKEY":Ljava/lang/String;
    .end local v9    # "AESIV":Ljava/lang/String;
    .end local v10    # "Appkey":Ljava/lang/String;
    .end local v12    # "User_url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 421
    .local v0, "ex":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 422
    nop

    .line 426
    .end local v0    # "ex":Ljava/text/ParseException;
    return-void
.end method

.method private createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 457
    new-instance v0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$14;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$14;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;)V

    return-object v0
.end method

.method private createMyReqSuccessListener()Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/domain/Recommend;",
            ">;"
        }
    .end annotation

    .line 430
    new-instance v0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;)V

    return-object v0
.end method

.method public static extractFirstUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "inputText"    # Ljava/lang/String;

    .line 342
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 347
    :cond_0
    const-string v1, "\\$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 351
    .local v4, "part":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 352
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 349
    .end local v4    # "part":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 357
    :cond_2
    return-object v0

    .line 343
    .end local v1    # "parts":[Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v0
.end method

.method private initData()V
    .locals 12

    .line 210
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "shenma"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->sp:Landroid/content/SharedPreferences;

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 213
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$7;

    invoke-direct {v1, p0, v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$7;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;Landroid/os/Handler;)V

    .line 221
    .local v1, "timeRun":Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Api_url"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "Api_url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v5, "BASE_HOST"

    invoke-static {v3, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "BASE_HOST":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$8;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$8;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;)V

    invoke-static {v4, v5}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v4

    .line 232
    .local v4, "mQueue":Lcom/android/volley/RequestQueue;
    new-instance v5, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$9;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/api.php/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/top"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/shenma/tvlauncher/domain/Recommend;

    .line 233
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->createMyReqSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v10

    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v11

    const/4 v7, 0x1

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$9;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 259
    .local v5, "mRecommend":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/domain/Recommend;>;"
    invoke-virtual {v4, v5}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 260
    return-void
.end method


# virtual methods
.method public GetMotionResponse(Ljava/lang/String;Lcom/shenma/tvlauncher/domain/RecommendInfo;)V
    .locals 16
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/shenma/tvlauncher/domain/RecommendInfo;

    .line 264
    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "RC4KEY":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, "RSAKEY":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v0, v5, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, "AESKEY":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v0, v6, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v6, p1

    :try_start_1
    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v7, "code"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    .local v7, "code":I
    const/16 v8, 0xc8

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    const-string/jumbo v12, "vip"

    if-ne v7, v8, :cond_3

    .line 273
    :try_start_2
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    sget-object v13, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v8, v13, v11}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 274
    .local v8, "miType":I
    const/4 v13, 0x0

    .line 275
    .local v13, "msg":Lorg/json/JSONObject;
    const-string v14, "msg"

    if-ne v8, v11, :cond_0

    .line 276
    :try_start_3
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v10

    goto :goto_0

    .line 277
    :cond_0
    if-ne v8, v9, :cond_1

    .line 278
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v10

    goto :goto_0

    .line 279
    :cond_1
    if-ne v8, v10, :cond_2

    .line 280
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14, v3}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v10

    .line 282
    :cond_2
    :goto_0
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 283
    .local v10, "vip":Ljava/lang/String;
    const-string v14, "Try"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    .line 284
    .local v14, "Try":I
    const-string v15, "Clientmode"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 285
    .local v15, "Clientmode":I
    iput v14, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->trystate:I

    .line 286
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 287
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v12, "Submission_method"

    .line 288
    invoke-interface {v9, v12, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v12, "Trystate"

    .line 289
    invoke-interface {v9, v12, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 290
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 291
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

    .line 292
    :try_start_4
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 293
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->sp:Landroid/content/SharedPreferences;

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

    .line 294
    return-void

    .line 295
    :cond_4
    const/16 v10, 0x72

    if-ne v7, v10, :cond_5

    .line 296
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 297
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->sp:Landroid/content/SharedPreferences;

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

    .line 298
    return-void

    .line 299
    :cond_5
    const/16 v10, 0x7d

    if-ne v7, v10, :cond_6

    .line 300
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x7

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 301
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->sp:Landroid/content/SharedPreferences;

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

    .line 302
    return-void

    .line 303
    :cond_6
    if-ne v7, v8, :cond_7

    .line 304
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x6

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 305
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->sp:Landroid/content/SharedPreferences;

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

    .line 306
    return-void

    .line 307
    :cond_7
    const/16 v8, 0xc9

    const/4 v9, 0x5

    if-ne v7, v8, :cond_8

    .line 308
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 309
    return-void

    .line 310
    :cond_8
    const/16 v8, 0x6a

    if-ne v7, v8, :cond_9

    .line 311
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 312
    return-void

    .line 314
    :cond_9
    :goto_1
    iget v8, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->vipstate:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_b

    iget v8, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->trystate:I

    if-ne v8, v9, :cond_a

    goto :goto_2

    .line 326
    :cond_a
    iget-object v8, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->mediaHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 315
    :cond_b
    :goto_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 316
    .local v8, "i":Landroid/content/Intent;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    const-class v10, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 317
    const-string v9, "nextlink"

    invoke-virtual/range {p2 .. p2}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjurl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string/jumbo v9, "vodstate"

    invoke-virtual/range {p2 .. p2}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getState()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const-string/jumbo v9, "vodtype"

    invoke-virtual/range {p2 .. p2}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjtype()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string/jumbo v9, "vodPlayUrl"

    invoke-virtual/range {p2 .. p2}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getVod_play_url()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->extractFirstUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    invoke-virtual {v1, v8}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 325
    .end local v8    # "i":Landroid/content/Intent;
    nop

    .line 331
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v7    # "code":I
    :goto_3
    goto :goto_5

    .line 329
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v6, p1

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 134
    sget v0, Lcom/shenma/tvlauncher/R$layout;->home2_recommend_theme_seven_fragment:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/shenma/tvlauncher/R$id;->view_movie_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/view/RecyclerViewAtViewPager2;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->viewMovieList:Lcom/view/RecyclerViewAtViewPager2;

    .line 136
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->tvTime:Landroid/widget/TextView;

    .line 137
    sget v1, Lcom/shenma/tvlauncher/R$id;->ll_zb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->llZb:Landroid/view/View;

    .line 138
    sget v1, Lcom/shenma/tvlauncher/R$id;->history:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->history:Landroid/view/View;

    .line 139
    sget v1, Lcom/shenma/tvlauncher/R$id;->collect:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->collect:Landroid/view/View;

    .line 140
    sget v1, Lcom/shenma/tvlauncher/R$id;->search:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->search:Landroid/view/View;

    .line 141
    sget v1, Lcom/shenma/tvlauncher/R$id;->mine:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->mine:Landroid/view/View;

    .line 142
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 143
    .local v1, "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->viewMovieList:Lcom/view/RecyclerViewAtViewPager2;

    invoke-virtual {v2, v1}, Lcom/view/RecyclerViewAtViewPager2;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 144
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    const-string/jumbo v4, "shenma"

    invoke-virtual {v2, v4, v3}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->sp:Landroid/content/SharedPreferences;

    .line 145
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "userName"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "username":Ljava/lang/String;
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->llZb:Landroid/view/View;

    new-instance v4, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$2;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$2;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->history:Landroid/view/View;

    new-instance v4, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$3;

    invoke-direct {v4, p0, v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$3;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->collect:Landroid/view/View;

    new-instance v4, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$4;

    invoke-direct {v4, p0, v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$4;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->search:Landroid/view/View;

    new-instance v4, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$5;

    invoke-direct {v4, p0, v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$5;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->mine:Landroid/view/View;

    new-instance v4, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$6;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$6;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->initData()V

    .line 205
    return-object v0
.end method

.method public setOnZbClickListener(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$OnZbClickListener;)V
    .locals 0
    .param p1, "onZbClickListener"    # Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$OnZbClickListener;

    .line 89
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->onZbClickListener:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$OnZbClickListener;

    .line 90
    return-void
.end method
