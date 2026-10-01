.class public Lcom/shenma/tvlauncher/SettingWallpaperActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "SettingWallpaperActivity.java"


# instance fields
.field private Api_url:Ljava/lang/String;

.field private BASE_HOST:Ljava/lang/String;

.field adapter:Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/WallpaperInfo;",
            ">;"
        }
    .end annotation
.end field

.field private errorListener:Lcom/android/volley/Response$ErrorListener;

.field private listener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/domain/Wallpaper;",
            ">;"
        }
    .end annotation
.end field

.field private mQueue:Lcom/android/volley/RequestQueue;

.field private pageindex:I

.field private position:I

.field private totalpage:I

.field private vodpageindex:I

.field private wallpaper_gv:Landroid/widget/GridView;


# direct methods
.method static bridge synthetic -$$Nest$fgetdata(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->data:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwallpaper_gv(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)Landroid/widget/GridView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->wallpaper_gv:Landroid/widget/GridView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdata(Lcom/shenma/tvlauncher/SettingWallpaperActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->data:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputposition(Lcom/shenma/tvlauncher/SettingWallpaperActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->position:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mpageDown(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->pageDown()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBroadcast(Lcom/shenma/tvlauncher/SettingWallpaperActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 68
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->position:I

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->pageindex:I

    .line 78
    new-instance v0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity$1;-><init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->listener:Lcom/android/volley/Response$Listener;

    .line 89
    new-instance v0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$2;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity$2;-><init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->errorListener:Lcom/android/volley/Response$ErrorListener;

    .line 100
    const-string v0, "Api_url"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->Api_url:Ljava/lang/String;

    .line 101
    const-string v0, "BASE_HOST"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->BASE_HOST:Ljava/lang/String;

    return-void
.end method

.method private initData()V
    .locals 8

    .line 169
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->context:Landroid/content/Context;

    new-instance v1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 170
    new-instance v1, Lcom/shenma/tvlauncher/SettingWallpaperActivity$4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->Api_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/api.php/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->BASE_HOST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/wallpaper/?page="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->pageindex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/shenma/tvlauncher/domain/Wallpaper;

    iget-object v6, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->listener:Lcom/android/volley/Response$Listener;

    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->errorListener:Lcom/android/volley/Response$ErrorListener;

    const/4 v3, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/shenma/tvlauncher/SettingWallpaperActivity$4;-><init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 192
    .local v1, "mWallpaper":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/domain/Wallpaper;>;"
    iget-object v0, v2, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 193
    return-void
.end method

.method private pageDown()V
    .locals 2

    .line 283
    iget v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->pageindex:I

    iget v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->totalpage:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->pageindex:I

    iget v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->vodpageindex:I

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->pageindex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->pageindex:I

    .line 287
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->initData()V

    .line 288
    return-void

    .line 284
    :cond_1
    :goto_0
    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 378
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 379
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "com.hd.changewallpaper"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string/jumbo v1, "wallpaperFileName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 382
    return-void
.end method

.method private startCheckLoaclFile(Ljava/lang/String;)Z
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 311
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 313
    .local v2, "files":[Ljava/io/File;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 314
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 315
    .local v6, "fName":Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 317
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->sendBroadcast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    const/4 v1, 0x1

    return v1

    .line 313
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "fName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 324
    .end local v2    # "files":[Ljava/io/File;
    :cond_1
    goto :goto_1

    .line 322
    :catch_0
    move-exception v2

    .line 323
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method

.method private startDownload(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 335
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shenma/tvlauncher/SettingWallpaperActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/shenma/tvlauncher/SettingWallpaperActivity$8;-><init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 373
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 374
    return-void
.end method


# virtual methods
.method protected findViewById()V
    .locals 1

    .line 202
    sget v0, Lcom/shenma/tvlauncher/R$id;->wallpaper_gv:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->wallpaper_gv:Landroid/widget/GridView;

    .line 203
    return-void
.end method

.method protected initView()V
    .locals 5

    .line 154
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->findViewById()V

    .line 155
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->setListener()V

    .line 156
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->initData()V

    .line 158
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 160
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 161
    .local v1, "screenWidth":I
    const/high16 v2, 0x43020000    # 130.0f

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    .line 162
    .local v2, "columnWidth":I
    div-int v3, v1, v2

    .line 164
    .local v3, "numCColumns":I
    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->wallpaper_gv:Landroid/widget/GridView;

    invoke-virtual {v4, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 166
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 198
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 105
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->requestWindowFeature(I)Z

    .line 107
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 111
    sget v0, Lcom/shenma/tvlauncher/R$layout;->layout_setting_wallpaper:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->setContentView(I)V

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 118
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    .line 120
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    .line 119
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 133
    new-instance v0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$3;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity$3;-><init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)V

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 149
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->initView()V

    .line 150
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 292
    iget v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->position:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 293
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->data:Ljava/util/List;

    iget v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/domain/WallpaperInfo;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->getSkinpath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->data:Ljava/util/List;

    iget v2, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/WallpaperInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->getSkinpath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "wallpaperFileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->data:Ljava/util/List;

    iget v2, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/WallpaperInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->getSkinpath()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "wallpaperPath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->startCheckLoaclFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->startDownload(Ljava/lang/String;)V

    .line 299
    .end local v0    # "wallpaperFileName":Ljava/lang/String;
    .end local v1    # "wallpaperPath":Ljava/lang/String;
    :cond_1
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 300
    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 207
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->context:Landroid/content/Context;

    sget v2, Lcom/shenma/tvlauncher/R$anim;->setbig2:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 208
    .local v0, "lac":Landroid/view/animation/LayoutAnimationController;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    .line 209
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 210
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->wallpaper_gv:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 211
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->wallpaper_gv:Landroid/widget/GridView;

    new-instance v2, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;-><init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 226
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->wallpaper_gv:Landroid/widget/GridView;

    new-instance v2, Lcom/shenma/tvlauncher/SettingWallpaperActivity$6;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity$6;-><init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 267
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->wallpaper_gv:Landroid/widget/GridView;

    new-instance v2, Lcom/shenma/tvlauncher/SettingWallpaperActivity$7;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity$7;-><init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 276
    return-void
.end method
