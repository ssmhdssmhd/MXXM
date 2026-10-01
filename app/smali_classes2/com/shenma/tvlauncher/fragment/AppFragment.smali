.class public Lcom/shenma/tvlauncher/fragment/AppFragment;
.super Lcom/shenma/tvlauncher/fragment/BaseFragment;
.source "AppFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final SHOW_NEXT_IMG:I

.field animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

.field private app_fls:[Landroid/widget/FrameLayout;

.field private app_iv_0:Landroid/widget/ImageSwitcher;

.field public app_typeLogs:[Landroid/widget/ImageView;

.field private appbgs:[Landroid/widget/ImageView;

.field private bigImageIndexDef:I

.field private currentIndex:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/RecAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private imageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private imgurls:[Ljava/lang/String;

.field private mErrListener:Lcom/android/volley/Response$ErrorListener;

.field private mFactory:Landroid/widget/ViewSwitcher$ViewFactory;

.field private mHandler:Landroid/os/Handler;

.field private mQueue:Lcom/android/volley/RequestQueue;

.field private mScrollTask:Ljava/lang/Runnable;

.field private mSucListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/domain/Upload;",
            ">;"
        }
    .end annotation
.end field

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/shenma/tvlauncher/domain/RecAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private smallImageIndexDef:I

.field private view:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetapp_iv_0(Lcom/shenma/tvlauncher/fragment/AppFragment;)Landroid/widget/ImageSwitcher;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_iv_0:Landroid/widget/ImageSwitcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetappbgs(Lcom/shenma/tvlauncher/fragment/AppFragment;)[Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbigImageIndexDef(Lcom/shenma/tvlauncher/fragment/AppFragment;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->bigImageIndexDef:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentIndex(Lcom/shenma/tvlauncher/fragment/AppFragment;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/AppFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->data:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageLoader(Lcom/shenma/tvlauncher/fragment/AppFragment;)Lcom/android/volley/toolbox/ImageLoader;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimgurls(Lcom/shenma/tvlauncher/fragment/AppFragment;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->imgurls:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/shenma/tvlauncher/fragment/AppFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmap(Lcom/shenma/tvlauncher/fragment/AppFragment;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsmallImageIndexDef(Lcom/shenma/tvlauncher/fragment/AppFragment;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->smallImageIndexDef:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputbigImageIndexDef(Lcom/shenma/tvlauncher/fragment/AppFragment;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->bigImageIndexDef:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentIndex(Lcom/shenma/tvlauncher/fragment/AppFragment;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdata(Lcom/shenma/tvlauncher/fragment/AppFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->data:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsmallImageIndexDef(Lcom/shenma/tvlauncher/fragment/AppFragment;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->smallImageIndexDef:I

    return-void
.end method

.method static bridge synthetic -$$Nest$minstallApk(Lcom/shenma/tvlauncher/fragment/AppFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->installApk(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$muploadInfo(Lcom/shenma/tvlauncher/fragment/AppFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->uploadInfo(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;-><init>()V

    .line 82
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->SHOW_NEXT_IMG:I

    .line 85
    new-instance v0, Lcom/shenma/tvlauncher/fragment/AppFragment$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/AppFragment$1;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mErrListener:Lcom/android/volley/Response$ErrorListener;

    .line 96
    new-instance v0, Lcom/shenma/tvlauncher/fragment/AppFragment$2;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/AppFragment$2;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mSucListener:Lcom/android/volley/Response$Listener;

    .line 104
    new-instance v0, Lcom/shenma/tvlauncher/fragment/AppFragment$3;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/AppFragment$3;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->bigImageIndexDef:I

    .line 122
    const/4 v1, 0x6

    iput v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->smallImageIndexDef:I

    .line 125
    iput v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    .line 126
    new-instance v0, Lcom/shenma/tvlauncher/fragment/AppFragment$4;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/AppFragment$4;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mHandler:Landroid/os/Handler;

    .line 146
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->imgurls:[Ljava/lang/String;

    .line 147
    new-instance v0, Lcom/shenma/tvlauncher/fragment/AppFragment$5;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/AppFragment$5;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mScrollTask:Ljava/lang/Runnable;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    return-void
.end method

.method private createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 289
    new-instance v0, Lcom/shenma/tvlauncher/fragment/AppFragment$8;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/AppFragment$8;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V

    return-object v0
.end method

.method private createMyReqSuccessListener()Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/domain/RecApp;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/AppFragment$9;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V

    return-object v0
.end method

.method private init()V
    .locals 0

    .line 362
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->loadViewLayout()V

    .line 363
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->findViewById()V

    .line 364
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->setListener()V

    .line 365
    return-void
.end method

.method private initData()V
    .locals 8

    .line 226
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->context:Landroid/content/Context;

    new-instance v1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mQueue:Lcom/android/volley/RequestQueue;

    .line 227
    invoke-static {}, Lcom/shenma/tvlauncher/application/MyVolley;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 228
    new-instance v1, Lcom/shenma/tvlauncher/fragment/AppFragment$7;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->RECAPPS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->params:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/shenma/tvlauncher/domain/RecApp;

    .line 230
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->createMyReqSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v6

    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v7

    const/4 v3, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/shenma/tvlauncher/fragment/AppFragment$7;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 252
    .local v1, "mRecApps":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/domain/RecApp;>;"
    iget-object v0, v2, Lcom/shenma/tvlauncher/fragment/AppFragment;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 253
    return-void
.end method

.method private initscheduledExecutorService()V
    .locals 8

    .line 871
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 873
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mScrollTask:Ljava/lang/Runnable;

    const-wide/16 v5, 0xa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 875
    return-void
.end method

.method private installApk(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .line 689
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/utils/Utils;->getUninatllApkInfo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 691
    .local v0, "file":Ljava/io/File;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 692
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 693
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    const-string v2, "application/vnd.android.package-archive"

    .line 695
    .local v2, "type":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startActivity(Landroid/content/Intent;)V

    .line 697
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "type":Ljava/lang/String;
    goto :goto_0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    sget v1, Lcom/shenma/tvlauncher/R$string;->app_downlond_no_ok:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 700
    :goto_0
    return-void
.end method

.method private showLoseFocusAinimation(I)V
    .locals 7
    .param p1, "paramInt"    # I

    .line 840
    const v3, 0x3f8ccccd    # 1.1f

    .line 841
    .local v3, "f1":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 842
    .local v4, "f2":F
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v5, 0xc8

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual/range {v0 .. v6}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->setAttributs(FFFFJ)V

    .line 843
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->createAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 844
    .local v0, "mAnimation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 855
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 856
    return-void
.end method

.method private showOnFocusAnimation(I)V
    .locals 8
    .param p1, "paramInt"    # I

    .line 809
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 810
    const/high16 v4, 0x3f800000    # 1.0f

    .line 811
    .local v4, "f1":F
    const v5, 0x3f8ccccd    # 1.1f

    .line 812
    .local v5, "f2":F
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const v3, 0x3f8ccccd    # 1.1f

    const-wide/16 v6, 0xc8

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->setAttributs(FFFFJ)V

    .line 813
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->createAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 814
    .local v0, "mAnimation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/shenma/tvlauncher/fragment/AppFragment$11;

    invoke-direct {v1, p0, p1}, Lcom/shenma/tvlauncher/fragment/AppFragment$11;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 831
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 832
    return-void
.end method

.method private shutdownScheduledExecutorService()V
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 862
    :cond_0
    return-void
.end method

.method private startCheckLoaclApk(Ljava/lang/String;)Z
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;

    .line 664
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shenma/tvlauncher/application/MyApplication;->PUBLIC_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 666
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 667
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 668
    .local v2, "files":[Ljava/io/File;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 669
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 670
    .local v6, "fName":Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/shenma/tvlauncher/application/MyApplication;->PUBLIC_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/fragment/AppFragment;->installApk(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    const/4 v1, 0x1

    return v1

    .line 668
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "fName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 678
    .end local v2    # "files":[Ljava/io/File;
    :cond_1
    goto :goto_1

    .line 676
    :catch_0
    move-exception v2

    .line 677
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 679
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method

.method private startDownloadApk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 624
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->app_downlond:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 625
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shenma/tvlauncher/fragment/AppFragment$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/shenma/tvlauncher/fragment/AppFragment$10;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 654
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 655
    return-void
.end method

.method private startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "apkurl"    # Ljava/lang/String;
    .param p2, "packName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 600
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

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

    .line 601
    .local v1, "pack":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 604
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 605
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startActivity(Landroid/content/Intent;)V

    .line 606
    return-void

    .line 608
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pack":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_0

    .line 610
    :cond_1
    invoke-direct {p0, p3}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startCheckLoaclApk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 612
    invoke-direct {p0, p2, p1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startDownloadApk(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_2
    return-void
.end method

.method private startScheduledExecutorService()V
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->initscheduledExecutorService()V

    .line 868
    :cond_0
    return-void
.end method

.method private uploadInfo(Ljava/lang/String;)V
    .locals 14
    .param p1, "packName"    # Ljava/lang/String;

    .line 191
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 192
    .local v0, "VERSION_RELEASE":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 193
    .local v1, "MODEL":Ljava/lang/String;
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 194
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "DeviceId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "devicecode":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->params:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&devicecode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&packname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->params:Ljava/lang/String;

    .line 197
    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->params:Ljava/lang/String;

    const-string v6, " "

    const-string v7, "%20"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->params:Ljava/lang/String;

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "params------>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->params:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "zhouchuan"

    invoke-static {v6, v5}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v7, Lcom/shenma/tvlauncher/fragment/AppFragment$6;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->UPLOAD_URL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->params:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/shenma/tvlauncher/domain/Upload;

    iget-object v12, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mSucListener:Lcom/android/volley/Response$Listener;

    iget-object v13, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mErrListener:Lcom/android/volley/Response$ErrorListener;

    const/4 v9, 0x1

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/shenma/tvlauncher/fragment/AppFragment$6;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 222
    .local v7, "Upload":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/domain/Upload;>;"
    iget-object v5, v8, Lcom/shenma/tvlauncher/fragment/AppFragment;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v5, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 223
    return-void
.end method


# virtual methods
.method protected findViewById()V
    .locals 14

    .line 399
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_fl_0:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 400
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_fl_1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 401
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v3, Lcom/shenma/tvlauncher/R$id;->app_fl_2:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 402
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v4, Lcom/shenma/tvlauncher/R$id;->app_fl_3:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 403
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v5, Lcom/shenma/tvlauncher/R$id;->app_fl_4:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v5, 0x4

    aput-object v1, v0, v5

    .line 404
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v6, Lcom/shenma/tvlauncher/R$id;->app_fl_5:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v6, 0x5

    aput-object v1, v0, v6

    .line 405
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v7, Lcom/shenma/tvlauncher/R$id;->app_fl_6:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v7, 0x6

    aput-object v1, v0, v7

    .line 406
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v8, Lcom/shenma/tvlauncher/R$id;->app_fl_7:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v8, 0x7

    aput-object v1, v0, v8

    .line 407
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v9, Lcom/shenma/tvlauncher/R$id;->app_fl_8:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/16 v9, 0x8

    aput-object v1, v0, v9

    .line 408
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v10, Lcom/shenma/tvlauncher/R$id;->app_fl_9:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/16 v10, 0x9

    aput-object v1, v0, v10

    .line 409
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v11, Lcom/shenma/tvlauncher/R$id;->app_fl_10:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/16 v11, 0xa

    aput-object v1, v0, v11

    .line 410
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v12, Lcom/shenma/tvlauncher/R$id;->app_fl_11:I

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/16 v12, 0xb

    aput-object v1, v0, v12

    .line 412
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v1, Lcom/shenma/tvlauncher/R$id;->app_iv_0:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_iv_0:Landroid/widget/ImageSwitcher;

    .line 415
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->app_iv_1:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    .line 416
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->app_iv_2:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v3

    .line 417
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->app_iv_3:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v4

    .line 418
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->app_iv_4:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v5

    .line 419
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->app_iv_5:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v6

    .line 420
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->app_iv_6:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v7

    .line 421
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->app_iv_7:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v8

    .line 422
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->app_iv_8:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v9

    .line 423
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->app_iv_9:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v10

    .line 424
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->app_iv_10:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v11

    .line 425
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->app_iv_11:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v12

    .line 428
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v13, Lcom/shenma/tvlauncher/R$id;->app_bg_1:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    .line 429
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_bg_2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v3

    .line 430
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_bg_3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v4

    .line 431
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_bg_4:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v5

    .line 432
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_bg_5:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v6

    .line 433
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_bg_6:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v7

    .line 434
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_bg_7:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v8

    .line 435
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_bg_8:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v9

    .line 436
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_bg_9:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v10

    .line 437
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_bg_10:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v11

    .line 438
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_bg_11:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v12

    .line 439
    return-void
.end method

.method protected loadViewLayout()V
    .locals 2

    .line 392
    const/16 v0, 0xc

    new-array v1, v0, [Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    .line 393
    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    .line 394
    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    .line 395
    new-instance v0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    .line 396
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 459
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/shenma/tvlauncher/R$id;->app_iv_12:I

    if-eq v0, v1, :cond_0

    .line 460
    return-void

    .line 461
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/shenma/tvlauncher/R$id;->app_iv_12:I

    if-ne v0, v1, :cond_1

    .line 491
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->context:Landroid/content/Context;

    const-class v2, Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 492
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/shenma/tvlauncher/R$id;->app_iv_7:I

    const-string v2, "/"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 494
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 495
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 496
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 497
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 499
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    .line 498
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-direct {p0, v0, v1, v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 500
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/shenma/tvlauncher/R$id;->app_iv_8:I

    if-ne v0, v1, :cond_3

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 502
    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 503
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 504
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 505
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 507
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    .line 506
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-direct {p0, v0, v1, v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 508
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/shenma/tvlauncher/R$id;->app_iv_9:I

    if-ne v0, v1, :cond_4

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 510
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 511
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 512
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 513
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 515
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    .line 514
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 509
    invoke-direct {p0, v0, v1, v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 516
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/shenma/tvlauncher/R$id;->app_iv_10:I

    if-ne v0, v1, :cond_5

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 518
    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 519
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 520
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 521
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 523
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    .line 522
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 517
    invoke-direct {p0, v0, v1, v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 524
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/shenma/tvlauncher/R$id;->app_iv_11:I

    if-ne v0, v1, :cond_6

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 526
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 527
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 528
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 529
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 531
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    .line 530
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 525
    invoke-direct {p0, v0, v1, v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 532
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/shenma/tvlauncher/R$id;->app_iv_1:I

    if-ne v0, v1, :cond_7

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 534
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 535
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 536
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 537
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 539
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    .line 538
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 533
    invoke-direct {p0, v0, v1, v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 540
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/shenma/tvlauncher/R$id;->app_iv_2:I

    if-ne v0, v1, :cond_8

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 542
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 543
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 544
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 545
    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 547
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    .line 546
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 541
    invoke-direct {p0, v0, v1, v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 549
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/shenma/tvlauncher/R$id;->app_iv_3:I

    if-ne v0, v1, :cond_9

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 551
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 552
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 553
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 554
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 556
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    .line 555
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 550
    invoke-direct {p0, v0, v1, v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 558
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/shenma/tvlauncher/R$id;->app_iv_4:I

    if-ne v0, v1, :cond_a

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 560
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 561
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 562
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 563
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 565
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    .line 564
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-direct {p0, v0, v1, v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 566
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/shenma/tvlauncher/R$id;->app_iv_5:I

    if-ne v0, v1, :cond_b

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 568
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 569
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 570
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 571
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 573
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    .line 572
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 567
    invoke-direct {p0, v0, v1, v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 575
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/shenma/tvlauncher/R$id;->app_iv_6:I

    if-ne v0, v1, :cond_c

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 577
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 578
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 579
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 580
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 582
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    .line 581
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 576
    invoke-direct {p0, v0, v1, v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_c
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Lcom/shenma/tvlauncher/HomeActivity;->overridePendingTransition(II)V

    .line 588
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 162
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 163
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 168
    if-nez p2, :cond_0

    .line 169
    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    if-nez v0, :cond_1

    .line 172
    sget v0, Lcom/shenma/tvlauncher/R$layout;->layout_app:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    .line 173
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->init()V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 176
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    .line 177
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 179
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->data:Ljava/util/List;

    if-nez v0, :cond_3

    .line 180
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->initData()V

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 388
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onDestroy()V

    .line 389
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 346
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onDetach()V

    .line 348
    :try_start_0
    const-class v0, Landroidx/fragment/app/Fragment;

    const-string v1, "mChildFragmentManager"

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 350
    .local v0, "childFragmentManager":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 351
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .end local v0    # "childFragmentManager":Ljava/lang/reflect/Field;
    nop

    .line 358
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 353
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 704
    const/4 v0, 0x0

    .line 706
    .local v0, "paramInt":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_iv_0:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    goto/16 :goto_0

    .line 710
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_iv_1:I

    if-ne v1, v2, :cond_2

    .line 711
    const/4 v0, 0x0

    .line 713
    if-eqz p2, :cond_1

    .line 714
    iput v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    .line 715
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mScrollTask:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 716
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->shutdownScheduledExecutorService()V

    goto/16 :goto_0

    .line 718
    :cond_1
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startScheduledExecutorService()V

    goto/16 :goto_0

    .line 720
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_iv_2:I

    if-ne v1, v2, :cond_4

    .line 721
    const/4 v0, 0x1

    .line 723
    if-eqz p2, :cond_3

    .line 724
    const/4 v1, 0x1

    iput v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    .line 725
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mScrollTask:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 726
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->shutdownScheduledExecutorService()V

    goto/16 :goto_0

    .line 728
    :cond_3
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startScheduledExecutorService()V

    goto/16 :goto_0

    .line 730
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_iv_3:I

    if-ne v1, v2, :cond_6

    .line 731
    const/4 v0, 0x2

    .line 733
    if-eqz p2, :cond_5

    .line 734
    const/4 v1, 0x2

    iput v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    .line 735
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mScrollTask:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 736
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->shutdownScheduledExecutorService()V

    goto/16 :goto_0

    .line 738
    :cond_5
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startScheduledExecutorService()V

    goto/16 :goto_0

    .line 740
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_iv_4:I

    if-ne v1, v2, :cond_8

    .line 741
    const/4 v0, 0x3

    .line 743
    if-eqz p2, :cond_7

    .line 744
    const/4 v1, 0x3

    iput v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    .line 745
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mScrollTask:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 746
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->shutdownScheduledExecutorService()V

    goto/16 :goto_0

    .line 748
    :cond_7
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startScheduledExecutorService()V

    goto/16 :goto_0

    .line 750
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_iv_5:I

    if-ne v1, v2, :cond_a

    .line 751
    const/4 v0, 0x4

    .line 753
    if-eqz p2, :cond_9

    .line 754
    const/4 v1, 0x4

    iput v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    .line 755
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mScrollTask:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 756
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->shutdownScheduledExecutorService()V

    goto :goto_0

    .line 758
    :cond_9
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startScheduledExecutorService()V

    goto :goto_0

    .line 760
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_iv_6:I

    if-ne v1, v2, :cond_c

    .line 761
    const/4 v0, 0x5

    .line 763
    if-eqz p2, :cond_b

    .line 764
    const/4 v1, 0x5

    iput v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    .line 765
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mScrollTask:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 766
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->shutdownScheduledExecutorService()V

    goto :goto_0

    .line 768
    :cond_b
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startScheduledExecutorService()V

    goto :goto_0

    .line 770
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_iv_7:I

    if-ne v1, v2, :cond_d

    .line 771
    const/4 v0, 0x6

    goto :goto_0

    .line 774
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_iv_8:I

    if-ne v1, v2, :cond_e

    .line 775
    const/4 v0, 0x7

    goto :goto_0

    .line 778
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_iv_9:I

    if-ne v1, v2, :cond_f

    .line 779
    const/16 v0, 0x8

    goto :goto_0

    .line 782
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_iv_10:I

    if-ne v1, v2, :cond_10

    .line 783
    const/16 v0, 0x9

    goto :goto_0

    .line 786
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->app_iv_12:I

    if-ne v1, v2, :cond_11

    .line 787
    const/16 v0, 0xb

    .line 792
    :cond_11
    :goto_0
    if-eqz p2, :cond_12

    .line 793
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->showOnFocusAnimation(I)V

    .line 794
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    if-eqz v1, :cond_13

    .line 795
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 798
    :cond_12
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->showLoseFocusAinimation(I)V

    .line 801
    :cond_13
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 371
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onResume()V

    .line 372
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 376
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->initscheduledExecutorService()V

    .line 377
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onStart()V

    .line 378
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 382
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->shutdownScheduledExecutorService()V

    .line 383
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onStop()V

    .line 384
    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_iv_0:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 443
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_iv_0:Landroid/widget/ImageSwitcher;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 445
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_iv_0:Landroid/widget/ImageSwitcher;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 448
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
