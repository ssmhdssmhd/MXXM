.class public Lcom/shenma/tvlauncher/fragment/RecommendFragment;
.super Lcom/shenma/tvlauncher/fragment/BaseFragment;
.source "RecommendFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyOnFocusAnimListenter;,
        Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyLooseFocusAnimListenter;,
        Lcom/shenma/tvlauncher/fragment/RecommendFragment$WindowMessageID;
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

.field private final TAG:Ljava/lang/String;

.field animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

.field private dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/RecommendInfo;",
            ">;"
        }
    .end annotation
.end field

.field home_top_records:Landroid/widget/LinearLayout;

.field private i:Landroid/content/Intent;

.field public imageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private jb_1:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

.field private jb_2:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

.field private jb_3:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

.field private jb_4:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

.field private jb_5:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

.field private jb_6:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private final mediaHandler:Landroid/os/Handler;

.field private re_fls:[Landroid/widget/FrameLayout;

.field public re_typeLogs:[Landroid/widget/ImageView;

.field private re_typebgs:[I

.field private rebgs:[Landroid/widget/ImageView;

.field protected sp:Landroid/content/SharedPreferences;

.field private trystate:I

.field private tv_intro:Landroid/widget/TextView;

.field private tvs:[Landroid/widget/TextView;

.field private view:Landroid/view/View;

.field private vipstate:I


# direct methods
.method static bridge synthetic -$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->data:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrebgs(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)[Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvs(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)[Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdata(Lcom/shenma/tvlauncher/fragment/RecommendFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->data:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTypeImage(Lcom/shenma/tvlauncher/fragment/RecommendFragment;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->setTypeImage(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 75
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;-><init>()V

    .line 76
    const-string v0, "RecommendFragment"

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->TAG:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->data:Ljava/util/List;

    .line 85
    new-instance v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;-><init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    .line 126
    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tv_intro:Landroid/widget/TextView;

    .line 130
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Trystate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->trystate:I

    .line 572
    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->Albumls:Ljava/util/List;

    return-void
.end method

.method private GetMotion(I)V
    .locals 16
    .param p1, "position"    # I

    .line 1374
    move-object/from16 v1, p0

    const-string/jumbo v11, "vip"

    const-string v12, ""

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 1377
    .local v13, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v0, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v0, v11, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v0, v2, v5

    if-ltz v0, :cond_1

    iget-object v0, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v11, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "999999999"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1380
    :cond_0
    const/4 v0, 0x0

    iput v0, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->vipstate:I

    goto :goto_2

    .line 1378
    :cond_1
    :goto_1
    const/4 v0, 0x1

    iput v0, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->vipstate:I

    .line 1382
    :goto_2
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v2}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v0, v2}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1383
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    invoke-static {v0, v2, v12}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 1384
    .local v14, "User_url":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v0, v2, v12}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1385
    .local v6, "RC4KEY":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v0, v2, v12}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1386
    .local v7, "RSAKEY":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v0, v2, v12}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1387
    .local v8, "AESKEY":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v0, v2, v12}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1388
    .local v9, "AESIV":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v0, v2, v12}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1389
    .local v10, "Appkey":Ljava/lang/String;
    new-instance v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$8;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    new-instance v4, Lcom/shenma/tvlauncher/fragment/RecommendFragment$6;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v15, p1

    :try_start_1
    invoke-direct {v4, v1, v15}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$6;-><init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;I)V

    new-instance v5, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;

    invoke-direct {v5, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;-><init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)V

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$8;-><init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1431
    return-void

    .line 1432
    .end local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    .end local v6    # "RC4KEY":Ljava/lang/String;
    .end local v7    # "RSAKEY":Ljava/lang/String;
    .end local v8    # "AESKEY":Ljava/lang/String;
    .end local v9    # "AESIV":Ljava/lang/String;
    .end local v10    # "Appkey":Ljava/lang/String;
    .end local v14    # "User_url":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move/from16 v15, p1

    .line 1433
    .local v0, "ex":Ljava/text/ParseException;
    :goto_3
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1434
    goto/16 :goto_0
.end method

.method private createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 339
    new-instance v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$5;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$5;-><init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)V

    return-object v0
.end method

.method private createMyReqSuccessListener()Lcom/android/volley/Response$Listener;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/domain/Recommend;",
            ">;"
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Home_text_shadow"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 303
    .local v0, "Home_text_shadow":I
    new-instance v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment$4;

    invoke-direct {v1, p0, v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$4;-><init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;I)V

    return-object v1
.end method

.method public static extractFirstUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "inputText"    # Ljava/lang/String;

    .line 1512
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1517
    :cond_0
    const-string v1, "\\$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1519
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1521
    .local v4, "part":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1522
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1519
    .end local v4    # "part":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1527
    :cond_2
    return-object v0

    .line 1513
    .end local v1    # "parts":[Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v0
.end method

.method private flyAnimation(I)V
    .locals 9
    .param p1, "paramInt"    # I

    .line 583
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 584
    .local v1, "location":[I
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 585
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    .line 586
    .local v2, "width":I
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    .line 587
    .local v3, "height":I
    const/4 v4, 0x0

    aget v4, v1, v4

    int-to-float v4, v4

    .line 588
    .local v4, "x":F
    const/4 v5, 0x1

    aget v6, v1, v5

    int-to-float v6, v6

    .line 589
    .local v6, "y":F
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "paramInt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..x="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "...y="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "joychang"

    invoke-static {v8, v7}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const/16 v7, 0x3e8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 693
    :pswitch_0
    iget v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mHeight:I

    if-le v5, v7, :cond_0

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mWidth:I

    if-le v5, v7, :cond_0

    .line 695
    add-int/lit8 v5, v2, 0x11

    add-int/lit8 v2, v5, 0xa

    .line 696
    add-int/lit8 v5, v3, 0xc

    add-int/lit8 v3, v5, 0x5

    .line 697
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/shenma/tvlauncher/R$dimen;->sm_1000:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x49

    int-to-float v4, v5

    .line 698
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/shenma/tvlauncher/R$dimen;->sm_435:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v6, v5

    goto/16 :goto_0

    .line 700
    :cond_0
    add-int/lit8 v2, v2, 0x11

    .line 701
    add-int/lit8 v3, v3, 0xe

    .line 702
    const v4, 0x44816000    # 1035.0f

    .line 703
    const/high16 v6, 0x43ce0000    # 412.0f

    goto/16 :goto_0

    .line 679
    :pswitch_1
    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mHeight:I

    if-le v0, v7, :cond_1

    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mWidth:I

    if-le v0, v7, :cond_1

    .line 681
    add-int/lit8 v0, v2, 0x11

    add-int/lit8 v2, v0, 0xa

    .line 682
    add-int/lit8 v0, v3, 0xc

    add-int/lit8 v3, v0, 0x5

    .line 683
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lcom/shenma/tvlauncher/R$dimen;->sm_1000:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x49

    int-to-float v4, v0

    .line 684
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lcom/shenma/tvlauncher/R$dimen;->sm_220:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v5

    int-to-float v6, v0

    goto/16 :goto_0

    .line 686
    :cond_1
    add-int/lit8 v2, v2, 0x11

    .line 687
    add-int/lit8 v3, v3, 0xe

    .line 688
    const v4, 0x44816000    # 1035.0f

    .line 689
    const/high16 v6, 0x43450000    # 197.0f

    .line 691
    goto/16 :goto_0

    .line 665
    :pswitch_2
    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mHeight:I

    if-le v0, v7, :cond_2

    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mWidth:I

    if-le v0, v7, :cond_2

    .line 667
    add-int/lit8 v0, v2, 0xf

    add-int/lit8 v2, v0, 0x8

    .line 668
    add-int/lit8 v0, v3, 0x16

    add-int/lit8 v3, v0, 0xd

    .line 669
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/shenma/tvlauncher/R$dimen;->sm_746:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    int-to-float v4, v0

    .line 670
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/shenma/tvlauncher/R$dimen;->sm_320:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    int-to-float v6, v0

    goto/16 :goto_0

    .line 672
    :cond_2
    add-int/lit8 v2, v2, 0x12

    .line 673
    add-int/lit8 v3, v3, 0x1a

    .line 674
    const v4, 0x44364000    # 729.0f

    .line 675
    const/high16 v6, 0x43980000    # 304.0f

    .line 677
    goto/16 :goto_0

    .line 651
    :pswitch_3
    iget v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mHeight:I

    if-le v5, v7, :cond_3

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mWidth:I

    if-le v5, v7, :cond_3

    .line 653
    add-int/lit8 v5, v2, 0xd

    add-int/lit8 v2, v5, 0x6

    .line 654
    add-int/lit8 v5, v3, 0x7

    add-int/lit8 v3, v5, 0x5

    .line 655
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/shenma/tvlauncher/R$dimen;->sm_481:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v4, v5

    .line 656
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/shenma/tvlauncher/R$dimen;->sm_456:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    int-to-float v6, v0

    goto/16 :goto_0

    .line 658
    :cond_3
    add-int/lit8 v2, v2, 0xd

    .line 659
    add-int/lit8 v3, v3, 0x8

    .line 660
    const/high16 v4, 0x43e50000    # 458.0f

    .line 661
    const/high16 v6, 0x43de0000    # 444.0f

    .line 663
    goto/16 :goto_0

    .line 637
    :pswitch_4
    iget v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mHeight:I

    if-le v5, v7, :cond_4

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mWidth:I

    if-le v5, v7, :cond_4

    .line 639
    add-int/lit8 v5, v2, 0xd

    add-int/lit8 v2, v5, 0x6

    .line 640
    add-int/lit8 v5, v3, 0x7

    add-int/lit8 v3, v5, 0x5

    .line 641
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/shenma/tvlauncher/R$dimen;->sm_246:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v4, v5

    .line 642
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/shenma/tvlauncher/R$dimen;->sm_456:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    int-to-float v6, v0

    goto/16 :goto_0

    .line 644
    :cond_4
    add-int/lit8 v2, v2, 0xd

    .line 645
    add-int/lit8 v3, v3, 0x8

    .line 646
    const/high16 v4, 0x43580000    # 216.0f

    .line 647
    const/high16 v6, 0x43de0000    # 444.0f

    .line 649
    goto/16 :goto_0

    .line 623
    :pswitch_5
    iget v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mHeight:I

    if-le v8, v7, :cond_5

    iget v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mWidth:I

    if-le v8, v7, :cond_5

    .line 625
    add-int/lit8 v7, v2, 0x18

    add-int/lit8 v2, v7, 0xe

    .line 626
    add-int/lit8 v7, v3, 0xd

    add-int/lit8 v3, v7, 0x8

    .line 627
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/shenma/tvlauncher/R$dimen;->sm_370:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v7, v0

    int-to-float v4, v7

    .line 628
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lcom/shenma/tvlauncher/R$dimen;->sm_252:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v5

    int-to-float v6, v0

    goto/16 :goto_0

    .line 630
    :cond_5
    add-int/lit8 v2, v2, 0x18

    .line 631
    add-int/lit8 v3, v3, 0x10

    .line 632
    const/high16 v4, 0x43ab0000    # 342.0f

    .line 633
    const/high16 v6, 0x43650000    # 229.0f

    .line 635
    goto/16 :goto_0

    .line 613
    :pswitch_6
    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mHeight:I

    if-le v0, v7, :cond_6

    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mWidth:I

    if-le v0, v7, :cond_6

    .line 615
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lcom/shenma/tvlauncher/R$dimen;->sm_49:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v4, v0

    .line 616
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lcom/shenma/tvlauncher/R$dimen;->sm_450:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v0, v5

    int-to-float v6, v0

    goto :goto_0

    .line 618
    :cond_6
    const/high16 v4, 0x41a80000    # 21.0f

    .line 619
    const v6, 0x43d68000    # 429.0f

    .line 621
    goto :goto_0

    .line 602
    :pswitch_7
    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mHeight:I

    if-le v0, v7, :cond_7

    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mWidth:I

    if-le v0, v7, :cond_7

    .line 604
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/shenma/tvlauncher/R$dimen;->sm_310:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    int-to-float v6, v0

    .line 605
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/shenma/tvlauncher/R$dimen;->sm_49:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v4, v0

    goto :goto_0

    .line 607
    :cond_7
    const/high16 v6, 0x43950000    # 298.0f

    .line 608
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/shenma/tvlauncher/R$dimen;->sm_21:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v4, v0

    .line 611
    goto :goto_0

    .line 592
    :pswitch_8
    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mHeight:I

    if-le v0, v7, :cond_8

    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mWidth:I

    if-le v0, v7, :cond_8

    .line 594
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/shenma/tvlauncher/R$dimen;->sm_49:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v4, v0

    .line 595
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/shenma/tvlauncher/R$dimen;->sm_190:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v6, v0

    goto :goto_0

    .line 597
    :cond_8
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/shenma/tvlauncher/R$dimen;->sm_21:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v4, v0

    .line 598
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/shenma/tvlauncher/R$dimen;->sm_164:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v6, v0

    .line 600
    nop

    .line 708
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "---Y="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "RecommendFragment"

    invoke-static {v5, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v0, v2, v3, v4, v6}, Lcom/shenma/tvlauncher/HomeActivity;->flyWhiteBorder(IIFF)V

    .line 710
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
.end method

.method private init()V
    .locals 11

    .line 225
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->loadViewLayout()V

    .line 226
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->findViewById()V

    .line 227
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->setListener()V

    .line 229
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Interface_Style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 230
    .local v0, "Interface_Style":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 231
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v3, Lcom/shenma/tvlauncher/R$id;->text_hist1:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 232
    .local v1, "text_hist1":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v4, Lcom/shenma/tvlauncher/R$id;->text_hist_time1:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 233
    .local v3, "text_hist_time1":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v5, Lcom/shenma/tvlauncher/R$id;->text_hist2:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 234
    .local v4, "text_hist2":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v6, Lcom/shenma/tvlauncher/R$id;->text_hist_time2:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 235
    .local v5, "text_hist_time2":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->Albumls:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 236
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->Albumls:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, ")"

    const-string v8, "("

    const/4 v9, 0x1

    if-ne v6, v9, :cond_0

    .line 237
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->Albumls:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v9}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->Albumls:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->Albumls:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v9, :cond_1

    .line 239
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->Albumls:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v10}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->Albumls:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->Albumls:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v6}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->Albumls:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v6}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v6, Lcom/shenma/tvlauncher/R$id;->home_top_records:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home_top_records:Landroid/widget/LinearLayout;

    .line 244
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home_top_records:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/shenma/tvlauncher/fragment/RecommendFragment$2;

    invoke-direct {v6, p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$2;-><init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    .end local v1    # "text_hist1":Landroid/widget/TextView;
    .end local v3    # "text_hist_time1":Landroid/widget/TextView;
    .end local v4    # "text_hist2":Landroid/widget/TextView;
    .end local v5    # "text_hist_time2":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method private initData()V
    .locals 10

    .line 265
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Api_url"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "Api_url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "BASE_HOST"

    invoke-static {v1, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "BASE_HOST":Ljava/lang/String;
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->context:Landroid/content/Context;

    new-instance v3, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v3}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v2, v3}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mQueue:Lcom/android/volley/RequestQueue;

    .line 268
    invoke-static {}, Lcom/shenma/tvlauncher/application/MyVolley;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 269
    new-instance v3, Lcom/shenma/tvlauncher/fragment/RecommendFragment$3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/api.php/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/top"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/shenma/tvlauncher/domain/Recommend;

    .line 270
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->createMyReqSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v8

    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v9

    const/4 v5, 0x1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$3;-><init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 297
    .local v3, "mRecommend":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/domain/Recommend;>;"
    iget-object v2, v4, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 298
    return-void
.end method

.method private initHistoryData()V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAllAppsByType(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->Albumls:Ljava/util/List;

    .line 576
    return-void
.end method

.method private setTypeImage(ILjava/lang/String;)V
    .locals 4
    .param p1, "paramInt"    # I
    .param p2, "paramUrl"    # Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typebgs:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typebgs:[I

    aget v3, v3, p1

    .line 332
    invoke-static {v1, v2, v3}, Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v1

    .line 331
    invoke-virtual {v0, p2, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 335
    return-void
.end method

.method private showLooseFocusTranslAinimation(I)V
    .locals 13
    .param p1, "paramInt"    # I

    .line 858
    const/4 v0, 0x0

    .line 859
    .local v0, "mAnimation":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    .line 860
    .local v1, "mtAnimation":Landroid/view/animation/Animation;
    const/4 v2, 0x0

    .line 861
    .local v2, "msAnimation":Landroid/view/animation/Animation;
    const/4 v3, 0x0

    .line 862
    .local v3, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-string v5, "Interface_Style"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 863
    .local v4, "Interface_Style":I
    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    const/4 v8, 0x3

    if-ne v4, v8, :cond_0

    goto/16 :goto_0

    .line 898
    :cond_0
    if-ne v4, v5, :cond_1

    .line 900
    packed-switch p1, :pswitch_data_0

    .line 944
    goto/16 :goto_1

    .line 941
    :pswitch_0
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 942
    goto/16 :goto_1

    .line 938
    :pswitch_1
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 939
    goto/16 :goto_1

    .line 934
    :pswitch_2
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 936
    goto/16 :goto_1

    .line 930
    :pswitch_3
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 932
    goto/16 :goto_1

    .line 926
    :pswitch_4
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 928
    goto/16 :goto_1

    .line 922
    :pswitch_5
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 924
    goto/16 :goto_1

    .line 918
    :pswitch_6
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 920
    goto/16 :goto_1

    .line 914
    :pswitch_7
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 916
    goto/16 :goto_1

    .line 911
    :pswitch_8
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 912
    goto/16 :goto_1

    .line 907
    :pswitch_9
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 908
    goto/16 :goto_1

    .line 903
    :pswitch_a
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 904
    goto/16 :goto_1

    .line 947
    :cond_1
    const/4 v8, 0x2

    if-ne v4, v8, :cond_3

    .line 949
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    .line 990
    :pswitch_b
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 991
    goto/16 :goto_1

    .line 987
    :pswitch_c
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 988
    goto/16 :goto_1

    .line 983
    :pswitch_d
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 985
    goto/16 :goto_1

    .line 979
    :pswitch_e
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 981
    goto/16 :goto_1

    .line 975
    :pswitch_f
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 977
    goto/16 :goto_1

    .line 971
    :pswitch_10
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 973
    goto/16 :goto_1

    .line 967
    :pswitch_11
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 969
    goto/16 :goto_1

    .line 963
    :pswitch_12
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 965
    goto :goto_1

    .line 960
    :pswitch_13
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 961
    goto :goto_1

    .line 956
    :pswitch_14
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 957
    goto :goto_1

    .line 952
    :pswitch_15
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 953
    goto :goto_1

    .line 865
    :cond_2
    :goto_0
    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v9, -0x3ee00000    # -10.0f

    const/high16 v10, -0x3f600000    # -5.0f

    const/high16 v11, 0x40a00000    # 5.0f

    const/high16 v12, -0x3e600000    # -20.0f

    packed-switch p1, :pswitch_data_2

    .line 895
    goto :goto_1

    .line 891
    :pswitch_16
    iget-object v9, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v9, v8, v7, v11, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 892
    goto :goto_1

    .line 888
    :pswitch_17
    iget-object v9, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v9, v8, v7, v10, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 889
    goto :goto_1

    .line 885
    :pswitch_18
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const/high16 v9, 0x41200000    # 10.0f

    invoke-virtual {v8, v9, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 886
    goto :goto_1

    .line 882
    :pswitch_19
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v9, v7, v11, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 883
    goto :goto_1

    .line 879
    :pswitch_1a
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v12, v7, v11, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 880
    goto :goto_1

    .line 876
    :pswitch_1b
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v9, v7, v10, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 877
    goto :goto_1

    .line 873
    :pswitch_1c
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v12, v7, v11, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 874
    goto :goto_1

    .line 870
    :pswitch_1d
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v12, v7, v6, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 871
    goto :goto_1

    .line 867
    :pswitch_1e
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v12, v7, v10, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 868
    nop

    .line 998
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const v8, 0x3f866666    # 1.05f

    invoke-virtual {v7, v8, v6, v8, v6}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->ScaleAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    .line 999
    new-instance v6, Landroid/view/animation/AnimationSet;

    invoke-direct {v6, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1000
    .end local v3    # "set":Landroid/view/animation/AnimationSet;
    .local v6, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v6, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1001
    invoke-virtual {v6, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1002
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1004
    new-instance v3, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyLooseFocusAnimListenter;

    invoke-direct {v3, p0, p1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyLooseFocusAnimListenter;-><init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;I)V

    invoke-virtual {v6, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1009
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    aget-object v3, v3, p1

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1010
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    aget-object v3, v3, p1

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1011
    return-void

    :pswitch_data_0
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
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method

.method private showOnFocusTranslAnimation(I)V
    .locals 11
    .param p1, "paramInt"    # I

    .line 719
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "mtAnimation":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    .line 723
    .local v1, "msAnimation":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Interface_Style"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 724
    .local v2, "Interface_Style":I
    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_0

    goto/16 :goto_0

    .line 757
    :cond_0
    if-ne v2, v3, :cond_1

    .line 759
    packed-switch p1, :pswitch_data_0

    .line 794
    goto/16 :goto_1

    .line 791
    :pswitch_0
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 792
    goto/16 :goto_1

    .line 788
    :pswitch_1
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 789
    goto/16 :goto_1

    .line 785
    :pswitch_2
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 786
    goto/16 :goto_1

    .line 782
    :pswitch_3
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 783
    goto/16 :goto_1

    .line 779
    :pswitch_4
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 780
    goto/16 :goto_1

    .line 776
    :pswitch_5
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 777
    goto/16 :goto_1

    .line 773
    :pswitch_6
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 774
    goto/16 :goto_1

    .line 770
    :pswitch_7
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 771
    goto/16 :goto_1

    .line 767
    :pswitch_8
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 768
    goto/16 :goto_1

    .line 764
    :pswitch_9
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 765
    goto/16 :goto_1

    .line 761
    :pswitch_a
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 762
    goto/16 :goto_1

    .line 796
    :cond_1
    const/4 v6, 0x2

    if-ne v2, v6, :cond_3

    .line 798
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    .line 830
    :pswitch_b
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 831
    goto/16 :goto_1

    .line 827
    :pswitch_c
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 828
    goto/16 :goto_1

    .line 824
    :pswitch_d
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 825
    goto/16 :goto_1

    .line 821
    :pswitch_e
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 822
    goto/16 :goto_1

    .line 818
    :pswitch_f
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 819
    goto/16 :goto_1

    .line 815
    :pswitch_10
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 816
    goto/16 :goto_1

    .line 812
    :pswitch_11
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 813
    goto/16 :goto_1

    .line 809
    :pswitch_12
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 810
    goto :goto_1

    .line 806
    :pswitch_13
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 807
    goto :goto_1

    .line 803
    :pswitch_14
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 804
    goto :goto_1

    .line 800
    :pswitch_15
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 801
    goto :goto_1

    .line 726
    :cond_2
    :goto_0
    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v7, -0x3ee00000    # -10.0f

    const/high16 v8, -0x3f600000    # -5.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, -0x3e600000    # -20.0f

    packed-switch p1, :pswitch_data_2

    .line 755
    goto :goto_1

    .line 752
    :pswitch_16
    iget-object v7, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v7, v5, v6, v5, v9}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 753
    goto :goto_1

    .line 749
    :pswitch_17
    iget-object v7, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v7, v5, v6, v5, v8}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 750
    goto :goto_1

    .line 746
    :pswitch_18
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v6, v5, v7, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 747
    goto :goto_1

    .line 743
    :pswitch_19
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v7, v5, v9}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 744
    goto :goto_1

    .line 740
    :pswitch_1a
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v10, v5, v9}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 741
    goto :goto_1

    .line 737
    :pswitch_1b
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v7, v5, v8}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 738
    goto :goto_1

    .line 734
    :pswitch_1c
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v10, v5, v9}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 735
    goto :goto_1

    .line 731
    :pswitch_1d
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v10, v5, v4}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 732
    goto :goto_1

    .line 728
    :pswitch_1e
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v10, v5, v8}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 729
    nop

    .line 837
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const v6, 0x3f866666    # 1.05f

    invoke-virtual {v5, v4, v6, v4, v6}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->ScaleAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 838
    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 839
    .local v4, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 840
    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 841
    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 843
    new-instance v3, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyOnFocusAnimListenter;

    invoke-direct {v3, p0, p1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyOnFocusAnimListenter;-><init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;I)V

    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 847
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    aget-object v3, v3, p1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 850
    return-void

    :pswitch_data_0
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
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method

.method private startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "apkurl"    # Ljava/lang/String;
    .param p2, "packName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 1022
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HomeActivity;->packLst:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1023
    .local v1, "pack":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1025
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1026
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 1027
    return-void

    .line 1029
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pack":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_0

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v0, p3}, Lcom/shenma/tvlauncher/utils/Utils;->startCheckLoaclApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1033
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/shenma/tvlauncher/utils/Utils;->startDownloadApk(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 1035
    :cond_2
    return-void
.end method


# virtual methods
.method public GetMotionResponse(Ljava/lang/String;I)V
    .locals 16
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 1444
    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1445
    .local v3, "RC4KEY":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v0, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1446
    .local v5, "RSAKEY":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v0, v6, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1447
    .local v6, "AESKEY":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v0, v7, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1450
    .local v4, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v7, p1

    :try_start_1
    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1451
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v8, "code"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1452
    .local v8, "code":I
    const/16 v9, 0xc8

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x1

    const-string/jumbo v13, "vip"

    if-ne v8, v9, :cond_3

    .line 1453
    :try_start_2
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v9, v14, v12}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1454
    .local v9, "miType":I
    const/4 v14, 0x0

    .line 1455
    .local v14, "msg":Lorg/json/JSONObject;
    const-string v15, "msg"

    if-ne v9, v12, :cond_0

    .line 1456
    :try_start_3
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v11

    goto :goto_0

    .line 1457
    :cond_0
    if-ne v9, v10, :cond_1

    .line 1458
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v11

    goto :goto_0

    .line 1459
    :cond_1
    if-ne v9, v11, :cond_2

    .line 1460
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v6, v15, v4}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v11

    .line 1462
    :cond_2
    :goto_0
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1463
    .local v11, "vip":Ljava/lang/String;
    const-string v15, "Try"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 1464
    .local v15, "Try":I
    const-string v10, "Clientmode"

    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 1465
    .local v10, "Clientmode":I
    iput v15, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->trystate:I

    .line 1466
    iget-object v12, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1467
    sget-object v12, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->Sp:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "Submission_method"

    .line 1468
    invoke-interface {v12, v13, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "Trystate"

    .line 1469
    invoke-interface {v12, v13, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 1470
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1471
    nop

    .end local v9    # "miType":I
    .end local v10    # "Clientmode":I
    .end local v11    # "vip":Ljava/lang/String;
    .end local v14    # "msg":Lorg/json/JSONObject;
    .end local v15    # "Try":I
    goto/16 :goto_1

    :cond_3
    const/16 v9, 0x7f

    const-string v10, "ckinfo"

    const-string v12, "fen"

    const-string v14, "passWord"

    const-string/jumbo v15, "userName"

    if-ne v8, v9, :cond_4

    .line 1472
    :try_start_4
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1473
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v9, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1474
    return-void

    .line 1475
    :cond_4
    const/16 v11, 0x72

    if-ne v8, v11, :cond_5

    .line 1476
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    const/4 v11, 0x4

    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1477
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v9, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1478
    return-void

    .line 1479
    :cond_5
    const/16 v11, 0x7d

    if-ne v8, v11, :cond_6

    .line 1480
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    const/4 v11, 0x7

    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1481
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v9, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1482
    return-void

    .line 1483
    :cond_6
    if-ne v8, v9, :cond_7

    .line 1484
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    const/4 v11, 0x6

    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1485
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v9, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1486
    return-void

    .line 1487
    :cond_7
    const/16 v9, 0xc9

    const/4 v10, 0x5

    if-ne v8, v9, :cond_8

    .line 1488
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1489
    return-void

    .line 1490
    :cond_8
    const/16 v9, 0x6a

    if-ne v8, v9, :cond_9

    .line 1491
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1492
    return-void

    .line 1494
    :cond_9
    :goto_1
    iget v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->vipstate:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    iget v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->trystate:I

    if-ne v9, v10, :cond_a

    goto :goto_2

    .line 1503
    :cond_a
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 1495
    :cond_b
    :goto_2
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iput-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->i:Landroid/content/Intent;

    .line 1496
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->i:Landroid/content/Intent;

    iget-object v10, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v11, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1497
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->i:Landroid/content/Intent;

    const-string v10, "nextlink"

    iget-object v11, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->data:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjurl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1498
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->i:Landroid/content/Intent;

    const-string/jumbo v10, "vodstate"

    iget-object v11, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->data:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getState()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1499
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->i:Landroid/content/Intent;

    const-string/jumbo v10, "vodtype"

    iget-object v11, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->data:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjtype()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1500
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->i:Landroid/content/Intent;

    const-string/jumbo v10, "vodPlayUrl"

    iget-object v11, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->data:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getVod_play_url()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->extractFirstUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1501
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->i:Landroid/content/Intent;

    invoke-virtual {v1, v9}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1508
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v8    # "code":I
    :goto_3
    goto :goto_5

    .line 1506
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v7, p1

    .line 1507
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1509
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method protected findViewById()V
    .locals 17

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v3, Lcom/shenma/tvlauncher/R$id;->fl_re_0:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 385
    iget-object v1, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v4, Lcom/shenma/tvlauncher/R$id;->fl_re_1:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 386
    iget-object v1, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v5, Lcom/shenma/tvlauncher/R$id;->fl_re_2:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 387
    iget-object v1, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v6, Lcom/shenma/tvlauncher/R$id;->fl_re_3:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 388
    iget-object v1, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v7, Lcom/shenma/tvlauncher/R$id;->fl_re_4:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 389
    iget-object v1, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->fl_re_5:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 391
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Interface_Style"

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 392
    .local v1, "Interface_Style":I
    const/4 v2, 0x7

    const/4 v9, 0x6

    const/16 v10, 0x8

    if-eqz v1, :cond_1

    if-eq v1, v4, :cond_1

    if-ne v1, v6, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    if-ne v1, v5, :cond_2

    .line 398
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->fl_re_6:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    aput-object v12, v11, v9

    .line 399
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->fl_re_7:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    aput-object v12, v11, v2

    .line 400
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->fl_re_8:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    aput-object v12, v11, v10

    goto :goto_1

    .line 393
    :cond_1
    :goto_0
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->fl_re_6:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    aput-object v12, v11, v9

    .line 394
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->fl_re_7:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    aput-object v12, v11, v2

    .line 395
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->fl_re_8:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    aput-object v12, v11, v10

    .line 407
    :cond_2
    :goto_1
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->iv_re_0:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v3

    .line 408
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->iv_re_1:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v4

    .line 409
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->iv_re_2:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v5

    .line 410
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->iv_re_3:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v6

    .line 411
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->iv_re_4:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v7

    .line 412
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->iv_re_5:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v8

    .line 414
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_4

    if-ne v1, v6, :cond_3

    goto :goto_2

    .line 418
    :cond_3
    if-ne v1, v5, :cond_5

    .line 420
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->iv_re_6:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v9

    .line 421
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->iv_re_7:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v2

    .line 422
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->iv_re_8:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v10

    goto :goto_3

    .line 415
    :cond_4
    :goto_2
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->iv_re_6:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v9

    .line 416
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->iv_re_7:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v2

    .line 417
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->iv_re_8:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v10

    .line 427
    :cond_5
    :goto_3
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v12, Lcom/shenma/tvlauncher/R$id;->jb_1:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    iput-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_1:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    .line 428
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v12, Lcom/shenma/tvlauncher/R$id;->jb_2:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    iput-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_2:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    .line 429
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v12, Lcom/shenma/tvlauncher/R$id;->jb_3:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    iput-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_3:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    .line 430
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v12, Lcom/shenma/tvlauncher/R$id;->jb_4:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    iput-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_4:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    .line 431
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v12, Lcom/shenma/tvlauncher/R$id;->jb_5:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    iput-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_5:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    .line 432
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v12, Lcom/shenma/tvlauncher/R$id;->jb_6:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    iput-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_6:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    .line 433
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    const-string v12, "CornerLabelView"

    invoke-static {v11, v12, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v11

    .line 434
    .local v11, "CornerLabelView":I
    if-ne v11, v4, :cond_6

    .line 435
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_1:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    invoke-virtual {v12, v10}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->setVisibility(I)V

    .line 436
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_2:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    invoke-virtual {v12, v10}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->setVisibility(I)V

    .line 437
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_3:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    invoke-virtual {v12, v10}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->setVisibility(I)V

    .line 438
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_4:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    invoke-virtual {v12, v10}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->setVisibility(I)V

    .line 439
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_5:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    invoke-virtual {v12, v10}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->setVisibility(I)V

    .line 440
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_6:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    invoke-virtual {v12, v10}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->setVisibility(I)V

    .line 442
    :cond_6
    if-ne v1, v4, :cond_7

    .line 444
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v13, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v14, Lcom/shenma/tvlauncher/R$id;->fl_re_9:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    const/16 v14, 0x9

    aput-object v13, v12, v14

    .line 445
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v13, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v15, Lcom/shenma/tvlauncher/R$id;->fl_re_10:I

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    const/16 v15, 0xa

    aput-object v13, v12, v15

    .line 446
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v13, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const/16 v16, 0x7

    sget v2, Lcom/shenma/tvlauncher/R$id;->iv_re_9:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v12, v14

    .line 447
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->iv_re_10:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v2, v15

    .line 448
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->re_bg_9:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v2, v14

    .line 449
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->re_bg_9:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v2, v15

    goto :goto_4

    .line 450
    :cond_7
    const/16 v16, 0x7

    .line 453
    :goto_4
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typebgs:[I

    sget v12, Lcom/shenma/tvlauncher/R$drawable;->fl_re_1:I

    aput v12, v2, v3

    .line 454
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typebgs:[I

    sget v12, Lcom/shenma/tvlauncher/R$drawable;->fl_re_1:I

    aput v12, v2, v4

    .line 455
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typebgs:[I

    sget v12, Lcom/shenma/tvlauncher/R$drawable;->fl_re_1:I

    aput v12, v2, v5

    .line 456
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typebgs:[I

    sget v12, Lcom/shenma/tvlauncher/R$drawable;->fl_re_1:I

    aput v12, v2, v6

    .line 457
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typebgs:[I

    sget v12, Lcom/shenma/tvlauncher/R$drawable;->fl_re_1:I

    aput v12, v2, v7

    .line 458
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typebgs:[I

    sget v12, Lcom/shenma/tvlauncher/R$drawable;->fl_re_1:I

    aput v12, v2, v8

    .line 459
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->re_bg_0:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v2, v3

    .line 460
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->re_bg_1:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v2, v4

    .line 461
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->re_bg_2:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v2, v5

    .line 462
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->re_bg_3:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v2, v6

    .line 463
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->re_bg_4:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v2, v7

    .line 464
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->re_bg_5:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v2, v8

    .line 466
    if-eqz v1, :cond_9

    if-eq v1, v4, :cond_9

    if-ne v1, v6, :cond_8

    goto :goto_5

    .line 470
    :cond_8
    if-ne v1, v5, :cond_a

    .line 472
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->re_bg_6:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v2, v9

    .line 473
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->re_bg_7:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v2, v16

    .line 474
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->re_bg_8:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v2, v10

    .line 477
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typebgs:[I

    sget v12, Lcom/shenma/tvlauncher/R$drawable;->fl_re_1:I

    aput v12, v2, v9

    .line 478
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typebgs:[I

    sget v12, Lcom/shenma/tvlauncher/R$drawable;->fl_re_1:I

    aput v12, v2, v16

    .line 479
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typebgs:[I

    sget v12, Lcom/shenma/tvlauncher/R$drawable;->fl_re_1:I

    aput v12, v2, v10

    goto :goto_6

    .line 467
    :cond_9
    :goto_5
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->re_bg_6:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v2, v9

    .line 468
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->re_bg_7:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v2, v16

    .line 469
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->re_bg_8:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v2, v10

    .line 486
    :cond_a
    :goto_6
    if-eqz v1, :cond_c

    if-eq v1, v4, :cond_c

    if-ne v1, v6, :cond_b

    goto/16 :goto_7

    .line 493
    :cond_b
    if-ne v1, v5, :cond_d

    .line 494
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->tv_re_0:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    aput-object v12, v2, v3

    .line 495
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v12, Lcom/shenma/tvlauncher/R$id;->tv_re_1:I

    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v4

    .line 496
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v4, Lcom/shenma/tvlauncher/R$id;->tv_re_2:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v5

    .line 497
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v4, Lcom/shenma/tvlauncher/R$id;->tv_re_3:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v6

    .line 498
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v4, Lcom/shenma/tvlauncher/R$id;->tv_re_4:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v7

    .line 499
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v4, Lcom/shenma/tvlauncher/R$id;->tv_re_5:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v8

    .line 500
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v4, Lcom/shenma/tvlauncher/R$id;->tv_re_6:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v9

    .line 501
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v4, Lcom/shenma/tvlauncher/R$id;->tv_re_7:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v16

    .line 502
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v4, Lcom/shenma/tvlauncher/R$id;->tv_re_8:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v10

    goto :goto_8

    .line 487
    :cond_c
    :goto_7
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v9, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v10, Lcom/shenma/tvlauncher/R$id;->tv_re_3:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v2, v3

    .line 488
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v9, Lcom/shenma/tvlauncher/R$id;->tv_re_4:I

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v4

    .line 489
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v4, Lcom/shenma/tvlauncher/R$id;->tv_re_5:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v5

    .line 490
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v4, Lcom/shenma/tvlauncher/R$id;->tv_re_6:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v6

    .line 491
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v4, Lcom/shenma/tvlauncher/R$id;->tv_re_7:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v7

    .line 492
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    sget v4, Lcom/shenma/tvlauncher/R$id;->tv_re_8:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v8

    .line 507
    :cond_d
    :goto_8
    return-void
.end method

.method protected loadViewLayout()V
    .locals 7

    .line 353
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Interface_Style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 354
    .local v0, "Interface_Style":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/16 v4, 0x9

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    if-ne v0, v2, :cond_1

    .line 362
    const/16 v5, 0xb

    new-array v6, v5, [Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    .line 363
    new-array v6, v5, [Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    .line 364
    new-array v6, v5, [I

    iput-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typebgs:[I

    .line 365
    new-array v5, v5, [Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    goto :goto_1

    .line 366
    :cond_1
    if-ne v0, v1, :cond_3

    .line 368
    new-array v5, v4, [Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    .line 369
    new-array v5, v4, [Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    .line 370
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typebgs:[I

    .line 371
    new-array v5, v4, [Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    goto :goto_1

    .line 356
    :cond_2
    :goto_0
    new-array v5, v4, [Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    .line 357
    new-array v5, v4, [Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    .line 358
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typebgs:[I

    .line 359
    new-array v5, v4, [Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    .line 373
    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_5

    if-ne v0, v3, :cond_4

    goto :goto_2

    .line 375
    :cond_4
    if-ne v0, v1, :cond_6

    .line 376
    new-array v1, v4, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    goto :goto_3

    .line 374
    :cond_5
    :goto_2
    const/4 v1, 0x6

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    .line 379
    :cond_6
    :goto_3
    new-instance v1, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-direct {v1}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;-><init>()V

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    .line 380
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .line 1040
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, "username":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/shenma/tvlauncher/R$id;->iv_re_0:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/16 v8, 0x8

    const-string v9, "Interface_Style"

    const/4 v10, 0x0

    if-ne v3, v4, :cond_5

    .line 1044
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_0

    goto :goto_0

    .line 1056
    :cond_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 1058
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1059
    .local v1, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1060
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1061
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_30

    .line 1063
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    if-nez v0, :cond_2

    if-nez v0, :cond_2

    .line 1065
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1066
    return-void

    .line 1068
    :cond_2
    invoke-direct {p0, v10}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1046
    :cond_3
    :goto_0
    if-nez v0, :cond_4

    if-nez v0, :cond_4

    .line 1047
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1048
    return-void

    .line 1050
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1051
    .restart local v1    # "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v3, Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1052
    const-string v2, "TYPE"

    const-string v3, "ALL"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1053
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1070
    .end local v1    # "i":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/shenma/tvlauncher/R$id;->iv_re_1:I

    if-ne v3, v4, :cond_a

    .line 1071
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_6

    goto :goto_1

    .line 1076
    :cond_6
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_7

    .line 1086
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1088
    .restart local v1    # "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v3, Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1089
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1090
    .end local v1    # "i":Landroid/content/Intent;
    :cond_7
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_30

    .line 1092
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1093
    if-nez v0, :cond_8

    if-nez v0, :cond_8

    .line 1094
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1095
    return-void

    .line 1097
    :cond_8
    invoke-direct {p0, v6}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1073
    :cond_9
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1074
    .restart local v1    # "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1075
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1099
    .end local v1    # "i":Landroid/content/Intent;
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/shenma/tvlauncher/R$id;->iv_re_2:I

    if-ne v3, v4, :cond_10

    .line 1100
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_b

    goto :goto_2

    .line 1110
    :cond_b
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_c

    .line 1112
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1113
    .restart local v1    # "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v3, Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1114
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1115
    .end local v1    # "i":Landroid/content/Intent;
    :cond_c
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_30

    .line 1117
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1118
    if-nez v0, :cond_d

    if-nez v0, :cond_d

    .line 1119
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1120
    return-void

    .line 1122
    :cond_d
    invoke-direct {p0, v7}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1102
    :cond_e
    :goto_2
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1103
    if-nez v0, :cond_f

    if-nez v0, :cond_f

    .line 1104
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1105
    return-void

    .line 1107
    :cond_f
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1108
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "from"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1109
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 1110
    .end local v1    # "intent":Landroid/content/Intent;
    goto/16 :goto_6

    .line 1125
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/shenma/tvlauncher/R$id;->iv_re_3:I

    if-ne v3, v4, :cond_17

    .line 1126
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1134
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_11

    goto :goto_3

    .line 1143
    :cond_11
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_13

    .line 1145
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1146
    if-nez v0, :cond_12

    if-nez v0, :cond_12

    .line 1147
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1148
    return-void

    .line 1151
    :cond_12
    invoke-direct {p0, v10}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1152
    :cond_13
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_30

    .line 1154
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1155
    if-nez v0, :cond_14

    if-nez v0, :cond_14

    .line 1156
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1157
    return-void

    .line 1159
    :cond_14
    invoke-direct {p0, v5}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1136
    :cond_15
    :goto_3
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    if-nez v0, :cond_16

    if-nez v0, :cond_16

    .line 1138
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1139
    return-void

    .line 1142
    :cond_16
    invoke-direct {p0, v10}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1161
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/shenma/tvlauncher/R$id;->iv_re_4:I

    const/4 v11, 0x4

    if-ne v3, v4, :cond_1e

    .line 1162
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1169
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_18

    goto :goto_4

    .line 1178
    :cond_18
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_1a

    .line 1179
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    if-nez v0, :cond_19

    if-nez v0, :cond_19

    .line 1181
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1182
    return-void

    .line 1185
    :cond_19
    invoke-direct {p0, v6}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1186
    :cond_1a
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_30

    .line 1188
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1189
    if-nez v0, :cond_1b

    if-nez v0, :cond_1b

    .line 1190
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1191
    return-void

    .line 1193
    :cond_1b
    invoke-direct {p0, v11}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1171
    :cond_1c
    :goto_4
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1172
    if-nez v0, :cond_1d

    if-nez v0, :cond_1d

    .line 1173
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1174
    return-void

    .line 1177
    :cond_1d
    invoke-direct {p0, v6}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1195
    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/shenma/tvlauncher/R$id;->iv_re_5:I

    const/4 v12, 0x5

    if-ne v3, v4, :cond_25

    .line 1196
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1203
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_1f

    goto :goto_5

    .line 1212
    :cond_1f
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_21

    .line 1213
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1214
    if-nez v0, :cond_20

    if-nez v0, :cond_20

    .line 1215
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1216
    return-void

    .line 1219
    :cond_20
    invoke-direct {p0, v7}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1220
    :cond_21
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_30

    .line 1222
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1223
    if-nez v0, :cond_22

    if-nez v0, :cond_22

    .line 1224
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1225
    return-void

    .line 1227
    :cond_22
    invoke-direct {p0, v12}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1205
    :cond_23
    :goto_5
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1206
    if-nez v0, :cond_24

    if-nez v0, :cond_24

    .line 1207
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1208
    return-void

    .line 1211
    :cond_24
    invoke-direct {p0, v7}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1229
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/shenma/tvlauncher/R$id;->iv_re_6:I

    if-ne v3, v4, :cond_28

    .line 1230
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1231
    if-nez v0, :cond_26

    if-nez v0, :cond_26

    .line 1232
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1233
    return-void

    .line 1235
    :cond_26
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_27

    .line 1237
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1240
    :cond_27
    invoke-direct {p0, v5}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1243
    :cond_28
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/shenma/tvlauncher/R$id;->iv_re_7:I

    if-ne v3, v4, :cond_2b

    .line 1244
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1245
    if-nez v0, :cond_29

    if-nez v0, :cond_29

    .line 1246
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1247
    return-void

    .line 1249
    :cond_29
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_2a

    .line 1251
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto :goto_6

    .line 1254
    :cond_2a
    invoke-direct {p0, v11}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto :goto_6

    .line 1257
    :cond_2b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/shenma/tvlauncher/R$id;->iv_re_8:I

    if-ne v3, v4, :cond_2e

    .line 1258
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1259
    if-nez v0, :cond_2c

    if-nez v0, :cond_2c

    .line 1260
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1261
    return-void

    .line 1263
    :cond_2c
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_2d

    .line 1265
    invoke-direct {p0, v8}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto :goto_6

    .line 1268
    :cond_2d
    invoke-direct {p0, v12}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto :goto_6

    .line 1271
    :cond_2e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->iv_re_9:I

    if-ne v1, v2, :cond_2f

    .line 1273
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1274
    .local v1, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v3, Lcom/shenma/tvlauncher/ClearActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1275
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 1276
    .end local v1    # "i":Landroid/content/Intent;
    :cond_2f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->iv_re_10:I

    if-ne v1, v2, :cond_30

    .line 1278
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1279
    .restart local v1    # "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v3, Lcom/shenma/tvlauncher/AboutActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1280
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 1283
    .end local v1    # "i":Landroid/content/Intent;
    :cond_30
    :goto_6
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/HomeActivity;->overridePendingTransition(II)V

    .line 1285
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 136
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const-string v0, "RecommendFragment"

    const-string v1, "onCreate()........"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "shenma"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    .line 139
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "initData"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->Sp:Landroid/content/SharedPreferences;

    .line 140
    new-instance v0, Lcom/shenma/tvlauncher/vod/dao/VodDao;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/vod/dao/VodDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    .line 141
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->initHistoryData()V

    .line 142
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 147
    const-string v0, "RecommendFragment"

    const-string v1, "onCreateView()........"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    if-nez p2, :cond_0

    .line 149
    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    if-nez v0, :cond_5

    .line 152
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Interface_Style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 153
    .local v0, "Interface_Style":I
    if-nez v0, :cond_1

    .line 155
    sget v1, Lcom/shenma/tvlauncher/R$layout;->layout_recommend:I

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    goto :goto_0

    .line 156
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 158
    sget v1, Lcom/shenma/tvlauncher/R$layout;->layout_recommends:I

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    goto :goto_0

    .line 159
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 161
    sget v1, Lcom/shenma/tvlauncher/R$layout;->layout_recommendss:I

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    goto :goto_0

    .line 162
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 164
    sget v1, Lcom/shenma/tvlauncher/R$layout;->layout_recommendsss:I

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    .line 166
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->init()V

    .line 167
    .end local v0    # "Interface_Style":I
    goto :goto_1

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 169
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_6

    .line 170
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 172
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->data:Ljava/util/List;

    if-nez v0, :cond_7

    .line 173
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->initData()V

    .line 175
    :cond_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 191
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onDestroy()V

    .line 192
    const-string v0, "RecommendFragment"

    const-string v1, "onDestroy()........"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 196
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 209
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onDetach()V

    .line 211
    :try_start_0
    const-class v0, Landroidx/fragment/app/Fragment;

    const-string v1, "mChildFragmentManager"

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 213
    .local v0, "childFragmentManager":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 214
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v0    # "childFragmentManager":Ljava/lang/reflect/Field;
    nop

    .line 221
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 216
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 529
    const/4 v0, 0x0

    .line 531
    .local v0, "paramInt":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->iv_re_0:I

    if-ne v1, v2, :cond_0

    .line 532
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 533
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->iv_re_1:I

    if-ne v1, v2, :cond_1

    .line 534
    const/4 v0, 0x1

    goto :goto_0

    .line 535
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->iv_re_2:I

    if-ne v1, v2, :cond_2

    .line 536
    const/4 v0, 0x2

    goto :goto_0

    .line 537
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->iv_re_3:I

    if-ne v1, v2, :cond_3

    .line 538
    const/4 v0, 0x3

    goto :goto_0

    .line 539
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->iv_re_4:I

    if-ne v1, v2, :cond_4

    .line 540
    const/4 v0, 0x4

    goto :goto_0

    .line 541
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->iv_re_5:I

    if-ne v1, v2, :cond_5

    .line 542
    const/4 v0, 0x5

    goto :goto_0

    .line 543
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->iv_re_6:I

    if-ne v1, v2, :cond_6

    .line 544
    const/4 v0, 0x6

    goto :goto_0

    .line 545
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->iv_re_7:I

    if-ne v1, v2, :cond_7

    .line 546
    const/4 v0, 0x7

    goto :goto_0

    .line 547
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->iv_re_8:I

    if-ne v1, v2, :cond_8

    .line 548
    const/16 v0, 0x8

    goto :goto_0

    .line 549
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->iv_re_9:I

    if-ne v1, v2, :cond_9

    .line 550
    const/16 v0, 0x9

    goto :goto_0

    .line 551
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->iv_re_10:I

    if-ne v1, v2, :cond_a

    .line 552
    const/16 v0, 0xa

    .line 556
    :cond_a
    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_c

    .line 557
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->showOnFocusTranslAnimation(I)V

    .line 558
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    .line 559
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    :cond_b
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->flyAnimation(I)V

    goto :goto_1

    .line 563
    :cond_c
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->showLooseFocusTranslAinimation(I)V

    .line 565
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_e

    aget-object v4, v2, v1

    .line 566
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_d

    .line 567
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 571
    :cond_e
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 201
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onResume()V

    .line 202
    const-string v0, "RecommendFragment"

    const-string v1, "onResume()........"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->initHistoryData()V

    .line 204
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 181
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onStop()V

    .line 182
    const-string v0, "RecommendFragment"

    const-string v1, "onStop()........"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 186
    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 516
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 522
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
