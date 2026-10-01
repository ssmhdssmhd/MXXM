.class public Lcom/shenma/tvlauncher/TopicActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "TopicActivity.java"


# static fields
.field public static Sp:Landroid/content/SharedPreferences; = null

.field protected static final TAG:Ljava/lang/String; = "TopicActivity"


# instance fields
.field private bigpic:Ljava/lang/String;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private iv_topic_poster:Landroid/widget/ImageView;

.field private linkurl:Ljava/lang/String;

.field private mAdapter:Lcom/shenma/tvlauncher/adapter/TopicAdapter;

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private final mediaHandler:Landroid/os/Handler;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field protected sp:Landroid/content/SharedPreferences;

.field private topic_bg:Landroid/widget/ImageView;

.field private topic_detail_gl:Landroid/widget/Gallery;

.field private topic_detail_msg_tv:Landroid/widget/TextView;

.field private trystate:I

.field private tv_topic_name:Landroid/widget/TextView;

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

.field private vodtype:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetiv_topic_poster(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/TopicActivity;->iv_topic_poster:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/shenma/tvlauncher/TopicActivity;)Lcom/shenma/tvlauncher/adapter/TopicAdapter;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/TopicActivity;->mAdapter:Lcom/shenma/tvlauncher/adapter/TopicAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/TopicActivity;->mediaHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopic_bg(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/TopicActivity;->topic_bg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopic_detail_gl(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/Gallery;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/TopicActivity;->topic_detail_gl:Landroid/widget/Gallery;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopic_detail_msg_tv(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/TopicActivity;->topic_detail_msg_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_topic_name(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/TopicActivity;->tv_topic_name:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvodDatas(Lcom/shenma/tvlauncher/TopicActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/TopicActivity;->vodDatas:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAdapter(Lcom/shenma/tvlauncher/TopicActivity;Lcom/shenma/tvlauncher/adapter/TopicAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/TopicActivity;->mAdapter:Lcom/shenma/tvlauncher/adapter/TopicAdapter;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvodDatas(Lcom/shenma/tvlauncher/TopicActivity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/TopicActivity;->vodDatas:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$mGetMotion(Lcom/shenma/tvlauncher/TopicActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/TopicActivity;->GetMotion(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTopicPoster(Lcom/shenma/tvlauncher/TopicActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/TopicActivity;->setTopicPoster(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 72
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 85
    const-string v0, "Trystate"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/TopicActivity;->trystate:I

    .line 86
    new-instance v0, Lcom/shenma/tvlauncher/TopicActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/TopicActivity$1;-><init>(Lcom/shenma/tvlauncher/TopicActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity;->mediaHandler:Landroid/os/Handler;

    return-void
.end method

.method private GetMotion(I)V
    .locals 16
    .param p1, "position"    # I

    .line 389
    move-object/from16 v1, p0

    const-string/jumbo v12, "vip"

    const-string v13, ""

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 392
    .local v14, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v0, v1, Lcom/shenma/tvlauncher/TopicActivity;->sp:Landroid/content/SharedPreferences;

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

    iget-object v2, v1, Lcom/shenma/tvlauncher/TopicActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, v12, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "999999999"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 395
    :cond_0
    const/4 v2, 0x0

    iput v2, v1, Lcom/shenma/tvlauncher/TopicActivity;->vipstate:I

    goto :goto_2

    .line 393
    :cond_1
    :goto_1
    iput v0, v1, Lcom/shenma/tvlauncher/TopicActivity;->vipstate:I

    .line 397
    :goto_2
    new-instance v2, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v2}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v1, v2}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v2

    iput-object v2, v1, Lcom/shenma/tvlauncher/TopicActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 398
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    invoke-static {v1, v2, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    .line 399
    .local v15, "User_url":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v1, v2, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 400
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v2, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 401
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v1, v2, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 402
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v2, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 403
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v2, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 404
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 405
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/TopicActivity$11;

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

    new-instance v4, Lcom/shenma/tvlauncher/TopicActivity$9;

    move/from16 v2, p1

    invoke-direct {v4, v1, v2}, Lcom/shenma/tvlauncher/TopicActivity$9;-><init>(Lcom/shenma/tvlauncher/TopicActivity;I)V

    new-instance v5, Lcom/shenma/tvlauncher/TopicActivity$10;

    invoke-direct {v5, v1}, Lcom/shenma/tvlauncher/TopicActivity$10;-><init>(Lcom/shenma/tvlauncher/TopicActivity;)V

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/TopicActivity$11;-><init>(Lcom/shenma/tvlauncher/TopicActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, v1, Lcom/shenma/tvlauncher/TopicActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    return-void

    .line 448
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

    .line 449
    .local v0, "ex":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 450
    goto/16 :goto_0
.end method

.method private createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 288
    new-instance v0, Lcom/shenma/tvlauncher/TopicActivity$6;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/TopicActivity$6;-><init>(Lcom/shenma/tvlauncher/TopicActivity;)V

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

    .line 271
    new-instance v0, Lcom/shenma/tvlauncher/TopicActivity$5;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/TopicActivity$5;-><init>(Lcom/shenma/tvlauncher/TopicActivity;)V

    return-object v0
.end method

.method public static extractFirstUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "inputText"    # Ljava/lang/String;

    .line 535
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 540
    :cond_0
    const-string v1, "\\$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 544
    .local v4, "part":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 545
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 542
    .end local v4    # "part":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 550
    :cond_2
    return-object v0

    .line 536
    .end local v1    # "parts":[Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v0
.end method

.method private initData()V
    .locals 0

    .line 263
    invoke-direct {p0}, Lcom/shenma/tvlauncher/TopicActivity;->initIntent()V

    .line 267
    return-void
.end method

.method private initIntent()V
    .locals 11

    .line 156
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/TopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/TopicActivity;->vodtype:Ljava/lang/String;

    .line 159
    const-string v1, "bigpic"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/TopicActivity;->bigpic:Ljava/lang/String;

    .line 160
    const-string v1, "linkurl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/TopicActivity;->linkurl:Ljava/lang/String;

    .line 161
    const-string v1, "Api_url"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "Api_url":Ljava/lang/String;
    const-string v3, "BASE_HOST"

    invoke-static {p0, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "BASE_HOST":Ljava/lang/String;
    new-instance v3, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v3}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v3}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/TopicActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 164
    new-instance v4, Lcom/shenma/tvlauncher/TopicActivity$2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/api.php/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/topic/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/TopicActivity;->linkurl:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    .line 165
    invoke-direct {p0}, Lcom/shenma/tvlauncher/TopicActivity;->createVodDataSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v9

    invoke-direct {p0}, Lcom/shenma/tvlauncher/TopicActivity;->createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v10

    const/4 v6, 0x1

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/shenma/tvlauncher/TopicActivity$2;-><init>(Lcom/shenma/tvlauncher/TopicActivity;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 188
    .local v4, "mVodData":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;>;"
    iget-object v3, v5, Lcom/shenma/tvlauncher/TopicActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v4}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 189
    return-void
.end method

.method private setTopicPoster(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "slideurl"    # Ljava/lang/String;
    .param p3, "describe"    # Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/shenma/tvlauncher/TopicActivity;->iv_topic_poster:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/TopicActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    new-instance v3, Lcom/shenma/tvlauncher/TopicActivity$7;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/TopicActivity$7;-><init>(Lcom/shenma/tvlauncher/TopicActivity;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 341
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/shenma/tvlauncher/TopicActivity;->topic_bg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/TopicActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    new-instance v3, Lcom/shenma/tvlauncher/TopicActivity$8;

    invoke-direct {v3, p0, p3}, Lcom/shenma/tvlauncher/TopicActivity$8;-><init>(Lcom/shenma/tvlauncher/TopicActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 384
    return-void
.end method


# virtual methods
.method public GetMotionResponse(Ljava/lang/String;I)V
    .locals 16
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 460
    move-object/from16 v1, p0

    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 462
    .local v4, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 463
    .local v5, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v6, p1

    :try_start_1
    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 467
    .local v7, "jSONObject":Lorg/json/JSONObject;
    const-string v0, "code"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v8, v0

    .line 468
    .local v8, "code":I
    const/16 v0, 0xc8

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    const-string/jumbo v12, "vip"

    if-ne v8, v0, :cond_3

    .line 469
    const/4 v13, 0x0

    .line 470
    .local v13, "msg":Lorg/json/JSONObject;
    :try_start_2
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v1, v0, v11}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v14, v0

    .line 471
    .local v14, "miType":I
    const-string v0, "msg"

    if-ne v14, v11, :cond_0

    .line 472
    :try_start_3
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v13, v10

    goto :goto_1

    .line 473
    :cond_0
    if-ne v14, v9, :cond_1

    .line 475
    :try_start_4
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v13, v10

    .line 478
    :goto_0
    goto :goto_1

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 479
    :cond_1
    if-ne v14, v10, :cond_2

    .line 480
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v2}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v10

    .line 483
    :cond_2
    :goto_1
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "vip":Ljava/lang/String;
    const-string v10, "Try"

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 485
    .local v10, "Try":I
    const-string v15, "Clientmode"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 486
    .local v15, "Clientmode":I
    iput v10, v1, Lcom/shenma/tvlauncher/TopicActivity;->trystate:I

    .line 487
    iget-object v9, v1, Lcom/shenma/tvlauncher/TopicActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 488
    sget-object v9, Lcom/shenma/tvlauncher/TopicActivity;->Sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v12, "Submission_method"

    .line 489
    invoke-interface {v9, v12, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v12, "Trystate"

    .line 490
    invoke-interface {v9, v12, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 491
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 492
    nop

    .end local v0    # "vip":Ljava/lang/String;
    .end local v10    # "Try":I
    .end local v13    # "msg":Lorg/json/JSONObject;
    .end local v14    # "miType":I
    .end local v15    # "Clientmode":I
    goto/16 :goto_2

    :cond_3
    const/16 v0, 0x7f

    const-string v9, "ckinfo"

    const-string v13, "fen"

    const-string v14, "passWord"

    const-string/jumbo v15, "userName"

    const/4 v11, 0x0

    if-ne v8, v0, :cond_4

    .line 493
    :try_start_6
    iget-object v0, v1, Lcom/shenma/tvlauncher/TopicActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 494
    iget-object v0, v1, Lcom/shenma/tvlauncher/TopicActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v9, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 495
    return-void

    .line 496
    :cond_4
    const/16 v10, 0x72

    if-ne v8, v10, :cond_5

    .line 497
    iget-object v0, v1, Lcom/shenma/tvlauncher/TopicActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 498
    iget-object v0, v1, Lcom/shenma/tvlauncher/TopicActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v9, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 499
    return-void

    .line 500
    :cond_5
    const/16 v10, 0x7d

    if-ne v8, v10, :cond_6

    .line 501
    iget-object v0, v1, Lcom/shenma/tvlauncher/TopicActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x7

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 502
    iget-object v0, v1, Lcom/shenma/tvlauncher/TopicActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v9, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 503
    return-void

    .line 504
    :cond_6
    if-ne v8, v0, :cond_7

    .line 505
    iget-object v0, v1, Lcom/shenma/tvlauncher/TopicActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x6

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 506
    iget-object v0, v1, Lcom/shenma/tvlauncher/TopicActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v9, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 507
    return-void

    .line 508
    :cond_7
    const/16 v0, 0xc9

    const/4 v9, 0x5

    if-ne v8, v0, :cond_8

    .line 509
    iget-object v0, v1, Lcom/shenma/tvlauncher/TopicActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 510
    return-void

    .line 511
    :cond_8
    const/16 v0, 0x6a

    if-ne v8, v0, :cond_9

    .line 512
    iget-object v0, v1, Lcom/shenma/tvlauncher/TopicActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 513
    return-void

    .line 515
    :cond_9
    :goto_2
    iget v0, v1, Lcom/shenma/tvlauncher/TopicActivity;->vipstate:I

    const/4 v9, 0x1

    if-eq v0, v9, :cond_b

    iget v0, v1, Lcom/shenma/tvlauncher/TopicActivity;->trystate:I

    if-ne v0, v9, :cond_a

    goto :goto_3

    .line 526
    :cond_a
    iget-object v0, v1, Lcom/shenma/tvlauncher/TopicActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move/from16 v9, p2

    goto :goto_4

    .line 516
    :cond_b
    :goto_3
    iget-object v0, v1, Lcom/shenma/tvlauncher/TopicActivity;->vodDatas:Ljava/util/ArrayList;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move/from16 v9, p2

    :try_start_7
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    .line 517
    .local v0, "vod":Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 518
    .local v10, "pBundle":Landroid/os/Bundle;
    const-string/jumbo v11, "vodtype"

    iget-object v12, v1, Lcom/shenma/tvlauncher/TopicActivity;->vodtype:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string/jumbo v11, "vodstate"

    const-string/jumbo v12, "\u4e13\u9898"

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v11, "nextlink"

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getNextlink()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string/jumbo v11, "vodPlayUrl"

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getVod_play_url()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/shenma/tvlauncher/TopicActivity;->extractFirstUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-class v11, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v1, v11, v10}, Lcom/shenma/tvlauncher/TopicActivity;->openActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 524
    const/high16 v11, 0x10a0000

    const v12, 0x10a0001

    invoke-virtual {v1, v11, v12}, Lcom/shenma/tvlauncher/TopicActivity;->overridePendingTransition(II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 525
    .end local v0    # "vod":Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;
    .end local v10    # "pBundle":Landroid/os/Bundle;
    nop

    .line 531
    .end local v7    # "jSONObject":Lorg/json/JSONObject;
    .end local v8    # "code":I
    :goto_4
    goto :goto_7

    .line 529
    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v6, p1

    :goto_5
    move/from16 v9, p2

    .line 530
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 532
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    return-void
.end method

.method protected findViewById()V
    .locals 1

    .line 217
    sget v0, Lcom/shenma/tvlauncher/R$id;->topic_detail_gl:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/TopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity;->topic_detail_gl:Landroid/widget/Gallery;

    .line 218
    sget v0, Lcom/shenma/tvlauncher/R$id;->topic_detail_msg_tv:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/TopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity;->topic_detail_msg_tv:Landroid/widget/TextView;

    .line 219
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_topic_name:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/TopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity;->tv_topic_name:Landroid/widget/TextView;

    .line 220
    sget v0, Lcom/shenma/tvlauncher/R$id;->iv_topic_poster:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/TopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity;->iv_topic_poster:Landroid/widget/ImageView;

    .line 221
    sget v0, Lcom/shenma/tvlauncher/R$id;->topic_bg:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/TopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity;->topic_bg:Landroid/widget/ImageView;

    .line 222
    return-void
.end method

.method protected initView()V
    .locals 3

    .line 194
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/TopicActivity;->loadViewLayout()V

    .line 195
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/TopicActivity;->findViewById()V

    .line 196
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/TopicActivity;->setListener()V

    .line 197
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->hao260x366:I

    .line 201
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 202
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 204
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;

    const/16 v2, 0x12c

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;-><init>(I)V

    .line 205
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 206
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 212
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 128
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    sget v0, Lcom/shenma/tvlauncher/R$layout;->topic_detail:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/TopicActivity;->setContentView(I)V

    .line 130
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/TopicActivity;->initView()V

    .line 131
    invoke-direct {p0}, Lcom/shenma/tvlauncher/TopicActivity;->initData()V

    .line 132
    const-string/jumbo v0, "shenma"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/TopicActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity;->sp:Landroid/content/SharedPreferences;

    .line 133
    const-string v0, "initData"

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/TopicActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/TopicActivity;->Sp:Landroid/content/SharedPreferences;

    .line 134
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 152
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStop()V

    .line 140
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 143
    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity;->topic_detail_gl:Landroid/widget/Gallery;

    new-instance v1, Lcom/shenma/tvlauncher/TopicActivity$3;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/TopicActivity$3;-><init>(Lcom/shenma/tvlauncher/TopicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 242
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity;->topic_detail_gl:Landroid/widget/Gallery;

    new-instance v1, Lcom/shenma/tvlauncher/TopicActivity$4;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/TopicActivity$4;-><init>(Lcom/shenma/tvlauncher/TopicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 259
    return-void
.end method
