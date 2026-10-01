.class public Lcom/shenma/tvlauncher/AboutActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "AboutActivity.java"


# instance fields
.field private Api_url:Ljava/lang/String;

.field private BASE_HOST:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private about:Landroid/widget/ImageView;

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private final mediaHandler:Landroid/os/Handler;

.field private url:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mloadImg(Lcom/shenma/tvlauncher/AboutActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/AboutActivity;->loadImg()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 31
    const-string v0, "SearchActivity"

    iput-object v0, p0, Lcom/shenma/tvlauncher/AboutActivity;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/shenma/tvlauncher/AboutActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/AboutActivity$1;-><init>(Lcom/shenma/tvlauncher/AboutActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/AboutActivity;->mediaHandler:Landroid/os/Handler;

    .line 46
    const-string v0, "Api_url"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/AboutActivity;->Api_url:Ljava/lang/String;

    .line 47
    const-string v0, "BASE_HOST"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/AboutActivity;->BASE_HOST:Ljava/lang/String;

    return-void
.end method

.method private GetAbout()V
    .locals 7

    .line 83
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/AboutActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 84
    new-instance v1, Lcom/shenma/tvlauncher/AboutActivity$4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/AboutActivity;->Api_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/api.php/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/AboutActivity;->BASE_HOST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/about?app="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/shenma/tvlauncher/AboutActivity$2;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/AboutActivity$2;-><init>(Lcom/shenma/tvlauncher/AboutActivity;)V

    new-instance v6, Lcom/shenma/tvlauncher/AboutActivity$3;

    invoke-direct {v6, p0}, Lcom/shenma/tvlauncher/AboutActivity$3;-><init>(Lcom/shenma/tvlauncher/AboutActivity;)V

    const/4 v3, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/shenma/tvlauncher/AboutActivity$4;-><init>(Lcom/shenma/tvlauncher/AboutActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 109
    .local v1, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v0, v2, Lcom/shenma/tvlauncher/AboutActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 111
    return-void
.end method

.method private initData()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/shenma/tvlauncher/AboutActivity;->GetAbout()V

    .line 79
    return-void
.end method

.method private loadImg()V
    .locals 2

    .line 130
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/AboutActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/AboutActivity;->about:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 131
    return-void
.end method


# virtual methods
.method public GetAboutResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .line 117
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 119
    .local v1, "code":I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 120
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/AboutActivity;->url:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/shenma/tvlauncher/AboutActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v1    # "code":I
    :cond_0
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 126
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method protected findViewById()V
    .locals 1

    .line 69
    sget v0, Lcom/shenma/tvlauncher/R$id;->about_iv:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/AboutActivity;->about:Landroid/widget/ImageView;

    .line 70
    return-void
.end method

.method protected initView()V
    .locals 0

    .line 60
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 64
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 136
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onBackPressed()V

    .line 137
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AboutActivity;->finish()V

    .line 138
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v0, Lcom/shenma/tvlauncher/R$layout;->layout_setting_about:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/AboutActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/AboutActivity;->findViewById()V

    .line 55
    invoke-direct {p0}, Lcom/shenma/tvlauncher/AboutActivity;->initData()V

    .line 56
    return-void
.end method

.method protected setListener()V
    .locals 0

    .line 74
    return-void
.end method
