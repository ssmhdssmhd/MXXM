.class public abstract Lcom/shenma/tvlauncher/BaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/BaseActivity$AutoStartReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field private BroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected Port:I

.field protected SP:Landroid/content/SharedPreferences;

.field private Search:I

.field protected breathingAnimation:Landroid/view/animation/Animation;

.field protected context:Landroid/content/Context;

.field protected devicetype:Ljava/lang/String;

.field private displayCutout:Landroid/view/DisplayCutout;

.field protected exitDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

.field protected exitfullDialog:Lcom/shenma/tvlauncher/view/ExitFullDialog;

.field protected from:Ljava/lang/String;

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mHeight:I

.field protected mToast:Landroid/widget/Toast;

.field protected mWidth:I

.field private mediaHandler:Landroid/os/Handler;

.field protected netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

.field protected params:Ljava/lang/String;

.field protected screenSize:D

.field private server:Lnet/sunniwell/android/httpserver/HttpServer;

.field protected sp:Landroid/content/SharedPreferences;

.field protected version:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetSearch(Lcom/shenma/tvlauncher/BaseActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/BaseActivity;->Search:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/BaseActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/BaseActivity;->mediaHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetserver(Lcom/shenma/tvlauncher/BaseActivity;)Lnet/sunniwell/android/httpserver/HttpServer;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->displayCutout:Landroid/view/DisplayCutout;

    .line 96
    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->exitfullDialog:Lcom/shenma/tvlauncher/view/ExitFullDialog;

    .line 97
    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->exitDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    .line 101
    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    .line 103
    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->mToast:Landroid/widget/Toast;

    .line 104
    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 106
    new-instance v0, Lcom/shenma/tvlauncher/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/BaseActivity$1;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->mediaHandler:Landroid/os/Handler;

    .line 126
    const/16 v0, 0x26fa

    iput v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->Port:I

    return-void
.end method

.method private showVolumeToast(III)V
    .locals 5
    .param p1, "resId"    # I
    .param p2, "max"    # I
    .param p3, "current"    # I

    .line 422
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 423
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->mToast:Landroid/widget/Toast;

    .line 425
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$layout;->mv_media_volume_controler:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 427
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/shenma/tvlauncher/R$id;->center_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 429
    .local v1, "center_image":Landroid/widget/ImageView;
    sget v3, Lcom/shenma/tvlauncher/R$id;->center_progress:I

    .line 430
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 431
    .local v3, "center_progress":Landroid/widget/ProgressBar;
    invoke-virtual {v3, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 432
    invoke-virtual {v3, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 433
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 434
    iget-object v4, p0, Lcom/shenma/tvlauncher/BaseActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 435
    .end local v1    # "center_image":Landroid/widget/ImageView;
    .end local v3    # "center_progress":Landroid/widget/ProgressBar;
    goto :goto_0

    .line 436
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 438
    .restart local v0    # "view":Landroid/view/View;
    sget v1, Lcom/shenma/tvlauncher/R$id;->center_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 439
    .restart local v1    # "center_image":Landroid/widget/ImageView;
    sget v3, Lcom/shenma/tvlauncher/R$id;->center_progress:I

    .line 440
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 441
    .restart local v3    # "center_progress":Landroid/widget/ProgressBar;
    invoke-virtual {v3, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 442
    invoke-virtual {v3, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 443
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 445
    .end local v1    # "center_image":Landroid/widget/ImageView;
    .end local v3    # "center_progress":Landroid/widget/ProgressBar;
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->mToast:Landroid/widget/Toast;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 446
    iget-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 447
    iget-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 448
    return-void
.end method


# virtual methods
.method public final AttachedToWindow()I
    .locals 5

    .line 218
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 219
    .local v0, "applicationContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "dimen"

    const-string v3, "android"

    const-string v4, "status_bar_height"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v2, v1

    .local v2, "identifier":I
    if-gtz v1, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    .line 220
    .end local v2    # "identifier":I
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public SearchIntent(Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    .line 677
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.example.MY_ACTION_FINISH_LIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    .local v0, "localIntent":Landroid/content/Intent;
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 680
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 681
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "TYPE"

    const-string v3, "ALL"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    const-string v2, "NAME"

    invoke-static {p1}, Lcom/shenma/tvlauncher/utils/Utils;->sanitizeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 684
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 685
    return-void
.end method

.method protected abstract findViewById()V
.end method

.method public finish()V
    .locals 2

    .line 482
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 483
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/BaseActivity;->overridePendingTransition(II)V

    .line 484
    return-void
.end method

.method protected handleFatalError()V
    .locals 1

    .line 454
    new-instance v0, Lcom/shenma/tvlauncher/BaseActivity$7;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/BaseActivity$7;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method

.method protected handleOutmemoryError()V
    .locals 1

    .line 468
    new-instance v0, Lcom/shenma/tvlauncher/BaseActivity$8;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/BaseActivity$8;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 476
    return-void
.end method

.method protected abstract initView()V
.end method

.method protected abstract loadViewLayout()V
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 228
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onAttachedToWindow()V

    .line 229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 231
    :try_start_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 232
    .local v0, "rootWindowInsets":Landroid/view/WindowInsets;
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->displayCutout:Landroid/view/DisplayCutout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v0    # "rootWindowInsets":Landroid/view/WindowInsets;
    :cond_0
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 240
    .local v0, "attributes":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 241
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 243
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 246
    .end local v0    # "attributes":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 134
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/BaseActivity;->requestWindowFeature(I)Z

    .line 136
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 138
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/BaseActivity;->setRequestedOrientation(I)V

    .line 139
    iput-object p0, p0, Lcom/shenma/tvlauncher/BaseActivity;->context:Landroid/content/Context;

    .line 140
    const-string v2, "shenma"

    invoke-virtual {p0, v2, v1}, Lcom/shenma/tvlauncher/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->sp:Landroid/content/SharedPreferences;

    .line 141
    const-string v2, "initData"

    invoke-virtual {p0, v2, v1}, Lcom/shenma/tvlauncher/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->SP:Landroid/content/SharedPreferences;

    .line 142
    iget-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->context:Landroid/content/Context;

    sget v3, Lcom/shenma/tvlauncher/R$anim;->breathing:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->breathingAnimation:Landroid/view/animation/Animation;

    .line 144
    iget-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->context:Landroid/content/Context;

    .line 145
    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 146
    .local v2, "manager":Landroid/view/WindowManager;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 147
    .local v3, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 148
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/shenma/tvlauncher/BaseActivity;->mWidth:I

    .line 149
    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/shenma/tvlauncher/BaseActivity;->mHeight:I

    .line 151
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v8, v8

    .line 152
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 151
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 153
    .local v4, "diagonalPixels":D
    const/high16 v6, 0x43200000    # 160.0f

    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v7, v7, v6

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, v4, v6

    iput-wide v6, p0, Lcom/shenma/tvlauncher/BaseActivity;->screenSize:D

    .line 156
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/shenma/tvlauncher/BaseActivity;->version:Ljava/lang/String;

    .line 158
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/shenma/tvlauncher/BaseActivity;->version:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&from="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/shenma/tvlauncher/BaseActivity;->from:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&devicetype="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/shenma/tvlauncher/BaseActivity;->devicetype:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/utils/Utils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/shenma/tvlauncher/BaseActivity;->params:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_0

    .line 159
    :catch_0
    move-exception v6

    .line 161
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 164
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    const-string v6, "Vpn_check"

    invoke-static {p0, v6, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v0, :cond_1

    .line 166
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->isVpnConnected()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/shenma/tvlauncher/BaseActivity;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/shenma/tvlauncher/utils/Utils;->isWifiProxy(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 167
    :cond_0
    iget-object v6, p0, Lcom/shenma/tvlauncher/BaseActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    :cond_1
    new-instance v6, Lcom/shenma/tvlauncher/BaseActivity$2;

    invoke-direct {v6, p0}, Lcom/shenma/tvlauncher/BaseActivity$2;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/BaseActivity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 185
    const-string v6, "Xp_check"

    invoke-static {p0, v6, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v0, :cond_3

    .line 187
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->checkXpFormMap()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->isHookByStack()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 188
    :cond_2
    iget-object v6, p0, Lcom/shenma/tvlauncher/BaseActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 193
    :cond_3
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 194
    .local v6, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/shenma/tvlauncher/view/MyServices;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v7, "serviceIntent1":Landroid/content/Intent;
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/shenma/tvlauncher/view/MyService;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v8, "serviceIntent2":Landroid/content/Intent;
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/shenma/tvlauncher/view/JSONService;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v9, "serviceIntent3":Landroid/content/Intent;
    invoke-virtual {v6, v7, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    .line 199
    .local v10, "isService1Exist":Z
    :goto_1
    invoke-virtual {v6, v8, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    .line 200
    .local v11, "isService2Exist":Z
    :goto_2
    invoke-virtual {v6, v9, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    if-eqz v12, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 202
    .local v0, "isService3Exist":Z
    :goto_3
    if-eqz v10, :cond_7

    if-eqz v11, :cond_7

    if-eqz v0, :cond_7

    .line 207
    new-instance v12, Lcom/shenma/tvlauncher/BaseActivity$AutoStartReceiver;

    invoke-direct {v12, p0}, Lcom/shenma/tvlauncher/BaseActivity$AutoStartReceiver;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    iput-object v12, p0, Lcom/shenma/tvlauncher/BaseActivity;->BroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 208
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 210
    .local v12, "filter":Landroid/content/IntentFilter;
    const-string v13, "android.content.movie.search.Action"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    iget-object v13, p0, Lcom/shenma/tvlauncher/BaseActivity;->BroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v13, v12}, Lcom/shenma/tvlauncher/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    const-string v13, "search"

    invoke-static {p0, v13, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->Search:I

    .line 213
    return-void

    .line 204
    .end local v12    # "filter":Landroid/content/IntentFilter;
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v12, "One of the services is missing"

    invoke-direct {v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onDestroy()V
    .locals 1

    .line 275
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 277
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->BroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->BroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->BroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 281
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 285
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 287
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 291
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 293
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 269
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 271
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 297
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 300
    return-void
.end method

.method protected openActivity(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 303
    .local p1, "pClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/shenma/tvlauncher/BaseActivity;->openActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 304
    return-void
.end method

.method protected openActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .param p2, "pBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 307
    .local p1, "pClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 309
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 311
    :cond_0
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 312
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/shenma/tvlauncher/BaseActivity;->overridePendingTransition(II)V

    .line 314
    return-void
.end method

.method protected openActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "pAction"    # Ljava/lang/String;

    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/shenma/tvlauncher/BaseActivity;->openActivity(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 318
    return-void
.end method

.method protected openActivity(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "pAction"    # Ljava/lang/String;
    .param p2, "pBundle"    # Landroid/os/Bundle;

    .line 321
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 323
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 325
    :cond_0
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 326
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/shenma/tvlauncher/BaseActivity;->overridePendingTransition(II)V

    .line 328
    return-void
.end method

.method protected abstract setListener()V
.end method

.method protected showExitDialog()V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->exitfullDialog:Lcom/shenma/tvlauncher/view/ExitFullDialog;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 358
    .local v0, "builder":Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;
    sget v1, Lcom/shenma/tvlauncher/R$string;->exitdialog_back:I

    new-instance v2, Lcom/shenma/tvlauncher/BaseActivity$3;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/BaseActivity$3;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;

    .line 364
    sget v1, Lcom/shenma/tvlauncher/R$string;->exitdialog_out:I

    new-instance v2, Lcom/shenma/tvlauncher/BaseActivity$4;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/BaseActivity$4;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;

    .line 371
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->create()Lcom/shenma/tvlauncher/view/ExitFullDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->exitfullDialog:Lcom/shenma/tvlauncher/view/ExitFullDialog;

    .line 375
    .end local v0    # "builder":Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->exitfullDialog:Lcom/shenma/tvlauncher/view/ExitFullDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/ExitFullDialog;->setCancelable(Z)V

    .line 376
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->exitfullDialog:Lcom/shenma/tvlauncher/view/ExitFullDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/ExitFullDialog;->setCanceledOnTouchOutside(Z)V

    .line 377
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->exitfullDialog:Lcom/shenma/tvlauncher/view/ExitFullDialog;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/ExitFullDialog;->show()V

    .line 378
    return-void
.end method

.method protected showExitDialog(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 387
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->SP:Landroid/content/SharedPreferences;

    const-string v1, "Exit_Message"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "Message":Ljava/lang/String;
    new-instance v1, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    invoke-direct {v1, p2}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 389
    .local v1, "builder":Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
    invoke-virtual {v1, p1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 390
    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 391
    sget v2, Lcom/shenma/tvlauncher/R$string;->exitdialog_out:I

    new-instance v3, Lcom/shenma/tvlauncher/BaseActivity$5;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/BaseActivity$5;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 401
    sget v2, Lcom/shenma/tvlauncher/R$string;->exitdialog_back:I

    new-instance v3, Lcom/shenma/tvlauncher/BaseActivity$6;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/BaseActivity$6;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 408
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->creates()Lcom/shenma/tvlauncher/view/HomeDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/HomeDialog;->shows()V

    .line 409
    return-void
.end method

.method protected showNetDialog(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 337
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Lcom/shenma/tvlauncher/view/ExitDialog;

    invoke-direct {v0, p1}, Lcom/shenma/tvlauncher/view/ExitDialog;-><init>(Landroid/content/Context;)V

    .line 339
    .local v0, "exitDialog":Lcom/shenma/tvlauncher/view/ExitDialog;
    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    .line 342
    .end local v0    # "exitDialog":Lcom/shenma/tvlauncher/view/ExitDialog;
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/ExitDialog;->setIsNet(Ljava/lang/Boolean;)V

    .line 343
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    sget v2, Lcom/shenma/tvlauncher/R$string;->Network_not_connected:I

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/ExitDialog;->setTitle(I)V

    .line 344
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    const-string v2, "\u5f53\u524d\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u73b0\u5728\u8bbe\u7f6e\u7f51\u7edc\uff1f"

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/ExitDialog;->setMessage(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    const-string v2, "\u597d\uff0c\u73b0\u5728\u8bbe\u7f6e"

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/ExitDialog;->setConfirm(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    const-string v2, "\u7b97\u4e86\uff0c\u73b0\u5728\u4e0d\u7ba1"

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/ExitDialog;->setCancle(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/ExitDialog;->setCancelable(Z)V

    .line 348
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/ExitDialog;->setCanceledOnTouchOutside(Z)V

    .line 349
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/ExitDialog;->show()V

    .line 350
    return-void
.end method

.method public start(I)V
    .locals 5
    .param p1, "startPort"    # I

    .line 490
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    invoke-virtual {v0}, Lnet/sunniwell/android/httpserver/HttpServer;->stop()V

    .line 493
    :cond_0
    const v0, 0xffff

    .line 494
    .local v0, "MAX_PORT":I
    move v1, p1

    .line 496
    .local v1, "port":I
    :goto_0
    const v2, 0xffff

    if-gt v1, v2, :cond_2

    .line 497
    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->isPortAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 498
    iput v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->Port:I

    .line 500
    :try_start_0
    new-instance v2, Lnet/sunniwell/android/httpserver/HttpServer;

    iget v3, p0, Lcom/shenma/tvlauncher/BaseActivity;->Port:I

    invoke-direct {v2, v3}, Lnet/sunniwell/android/httpserver/HttpServer;-><init>(I)V

    iput-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    goto :goto_1

    .line 502
    :catch_0
    move-exception v2

    .line 504
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 508
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    if-eqz v2, :cond_3

    .line 516
    iget-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    invoke-virtual {v2}, Lnet/sunniwell/android/httpserver/HttpServer;->getHttpRequestHandlerRegistry()Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    move-result-object v2

    .line 517
    .local v2, "registry":Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    new-instance v3, Lcom/shenma/tvlauncher/BaseActivity$9;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/BaseActivity$9;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    const-string v4, "/action"

    invoke-virtual {v2, v4, v3}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 567
    new-instance v3, Lcom/shenma/tvlauncher/utils/HttpStringHandler;

    iget-object v4, p0, Lcom/shenma/tvlauncher/BaseActivity;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/shenma/tvlauncher/utils/HttpStringHandler;-><init>(Landroid/content/Context;)V

    const-string v4, "*"

    invoke-virtual {v2, v4, v3}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 569
    iget-object v3, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    invoke-virtual {v3}, Lnet/sunniwell/android/httpserver/HttpServer;->start()V

    .line 572
    .end local v2    # "registry":Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    iget-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "port"

    iget v4, p0, Lcom/shenma/tvlauncher/BaseActivity;->Port:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 573
    return-void

    .line 514
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "No available ports found within the range."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public startA(I)V
    .locals 5
    .param p1, "port"    # I

    .line 577
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    invoke-virtual {v0}, Lnet/sunniwell/android/httpserver/HttpServer;->stop()V

    .line 583
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/shenma/tvlauncher/utils/Utils;->isPortAvailable(I)Z

    move-result v0

    .line 584
    .local v0, "portAvailable":Z
    if-eqz v0, :cond_1

    .line 585
    iput p1, p0, Lcom/shenma/tvlauncher/BaseActivity;->Port:I

    .line 586
    new-instance v1, Lnet/sunniwell/android/httpserver/HttpServer;

    iget v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->Port:I

    invoke-direct {v1, v2}, Lnet/sunniwell/android/httpserver/HttpServer;-><init>(I)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    goto :goto_0

    .line 588
    :cond_1
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->Port:I

    .line 589
    new-instance v1, Lnet/sunniwell/android/httpserver/HttpServer;

    iget v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->Port:I

    invoke-direct {v1, v2}, Lnet/sunniwell/android/httpserver/HttpServer;-><init>(I)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    .line 592
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    invoke-virtual {v1}, Lnet/sunniwell/android/httpserver/HttpServer;->getHttpRequestHandlerRegistry()Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    move-result-object v1

    .line 593
    .local v1, "registry":Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    const-string v2, "/action"

    new-instance v3, Lcom/shenma/tvlauncher/BaseActivity$10;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/BaseActivity$10;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 643
    const-string v2, "*"

    new-instance v3, Lcom/shenma/tvlauncher/utils/HttpStringHandler;

    iget-object v4, p0, Lcom/shenma/tvlauncher/BaseActivity;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/shenma/tvlauncher/utils/HttpStringHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 645
    iget-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    invoke-virtual {v2}, Lnet/sunniwell/android/httpserver/HttpServer;->start()V

    .line 647
    iget-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "port"

    iget v4, p0, Lcom/shenma/tvlauncher/BaseActivity;->Port:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    nop

    .end local v0    # "portAvailable":Z
    .end local v1    # "registry":Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    goto :goto_1

    .line 649
    :catch_0
    move-exception v0

    .line 652
    :goto_1
    return-void
.end method
