.class public Lcom/shenma/tvlauncher/TvStationActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "TvStationActivity.java"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/TVStationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private imageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private lastIndex:I

.field private mErrorListener:Lcom/android/volley/Response$ErrorListener;

.field private mQueue:Lcom/android/volley/RequestQueue;

.field private mSuccessLinListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/domain/TVStation;",
            ">;"
        }
    .end annotation
.end field

.field private tvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/dao/bean/TVSCollect;",
            ">;"
        }
    .end annotation
.end field

.field private tvstation_gv:Landroid/widget/GridView;


# direct methods
.method static bridge synthetic -$$Nest$fgetdata(Lcom/shenma/tvlauncher/TvStationActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/TvStationActivity;->data:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageLoader(Lcom/shenma/tvlauncher/TvStationActivity;)Lcom/android/volley/toolbox/ImageLoader;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/TvStationActivity;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastIndex(Lcom/shenma/tvlauncher/TvStationActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/TvStationActivity;->lastIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettvstation_gv(Lcom/shenma/tvlauncher/TvStationActivity;)Landroid/widget/GridView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/TvStationActivity;->tvstation_gv:Landroid/widget/GridView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdata(Lcom/shenma/tvlauncher/TvStationActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/TvStationActivity;->data:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastIndex(Lcom/shenma/tvlauncher/TvStationActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/TvStationActivity;->lastIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mfiltrationData(Lcom/shenma/tvlauncher/TvStationActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/TvStationActivity;->filtrationData(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 51
    new-instance v0, Lcom/shenma/tvlauncher/TvStationActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/TvStationActivity$1;-><init>(Lcom/shenma/tvlauncher/TvStationActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/TvStationActivity;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/shenma/tvlauncher/TvStationActivity;->lastIndex:I

    .line 67
    new-instance v0, Lcom/shenma/tvlauncher/TvStationActivity$2;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/TvStationActivity$2;-><init>(Lcom/shenma/tvlauncher/TvStationActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/TvStationActivity;->mSuccessLinListener:Lcom/android/volley/Response$Listener;

    return-void
.end method

.method private filtrationData(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/TVStationInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/TVStationInfo;",
            ">;"
        }
    .end annotation

    .line 203
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/domain/TVStationInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v0, "tvlist":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/domain/TVStationInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TVStationInfo;

    .line 205
    .local v2, "info":Lcom/shenma/tvlauncher/domain/TVStationInfo;
    const/4 v3, 0x0

    .line 206
    .local v3, "flag":Z
    iget-object v4, p0, Lcom/shenma/tvlauncher/TvStationActivity;->tvs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/dao/bean/TVSCollect;

    .line 207
    .local v5, "tv":Lcom/shenma/tvlauncher/dao/bean/TVSCollect;
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TVStationInfo;->getChannelname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/dao/bean/TVSCollect;->getChannelname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 208
    const/4 v3, 0x1

    .line 209
    goto :goto_2

    .line 211
    .end local v5    # "tv":Lcom/shenma/tvlauncher/dao/bean/TVSCollect;
    :cond_0
    goto :goto_1

    .line 212
    :cond_1
    :goto_2
    if-nez v3, :cond_2

    .line 213
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v2    # "info":Lcom/shenma/tvlauncher/domain/TVStationInfo;
    .end local v3    # "flag":Z
    :cond_2
    goto :goto_0

    .line 216
    :cond_3
    return-object v0
.end method

.method private initData()V
    .locals 8

    .line 165
    iget-object v0, p0, Lcom/shenma/tvlauncher/TvStationActivity;->context:Landroid/content/Context;

    new-instance v1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/TvStationActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 166
    invoke-static {}, Lcom/shenma/tvlauncher/application/MyVolley;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/TvStationActivity;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 167
    new-instance v1, Lcom/shenma/tvlauncher/TvStationActivity$5;

    const-class v5, Lcom/shenma/tvlauncher/domain/TVStation;

    iget-object v6, p0, Lcom/shenma/tvlauncher/TvStationActivity;->mSuccessLinListener:Lcom/android/volley/Response$Listener;

    iget-object v7, p0, Lcom/shenma/tvlauncher/TvStationActivity;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    const/4 v3, 0x1

    const-string v4, ""

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/shenma/tvlauncher/TvStationActivity$5;-><init>(Lcom/shenma/tvlauncher/TvStationActivity;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 189
    .local v1, "mTvs":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/domain/TVStation;>;"
    iget-object v0, v2, Lcom/shenma/tvlauncher/TvStationActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 190
    return-void
.end method

.method private queryDB()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/shenma/tvlauncher/TvStationActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/shenma/tvlauncher/dao/TVStationDao;->getInstance(Landroid/content/Context;)Lcom/shenma/tvlauncher/dao/TVStationDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/dao/TVStationDao;->queryAllTvsi()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/TvStationActivity;->tvs:Ljava/util/List;

    .line 194
    return-void
.end method


# virtual methods
.method protected findViewById()V
    .locals 3

    .line 100
    sget v0, Lcom/shenma/tvlauncher/R$id;->tvstation_gv:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/TvStationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/TvStationActivity;->tvstation_gv:Landroid/widget/GridView;

    .line 101
    iget-object v0, p0, Lcom/shenma/tvlauncher/TvStationActivity;->tvstation_gv:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 102
    return-void
.end method

.method protected initView()V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/TvStationActivity;->findViewById()V

    .line 88
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/TvStationActivity;->setListener()V

    .line 89
    invoke-direct {p0}, Lcom/shenma/tvlauncher/TvStationActivity;->queryDB()V

    .line 90
    invoke-direct {p0}, Lcom/shenma/tvlauncher/TvStationActivity;->initData()V

    .line 91
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 96
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 80
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sget v0, Lcom/shenma/tvlauncher/R$layout;->tv_station_grid:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/TvStationActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/TvStationActivity;->initView()V

    .line 83
    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 106
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    iget-object v1, p0, Lcom/shenma/tvlauncher/TvStationActivity;->context:Landroid/content/Context;

    sget v2, Lcom/shenma/tvlauncher/R$anim;->setbig2:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 107
    .local v0, "lac":Landroid/view/animation/LayoutAnimationController;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    .line 108
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 109
    iget-object v1, p0, Lcom/shenma/tvlauncher/TvStationActivity;->tvstation_gv:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 110
    iget-object v1, p0, Lcom/shenma/tvlauncher/TvStationActivity;->tvstation_gv:Landroid/widget/GridView;

    new-instance v2, Lcom/shenma/tvlauncher/TvStationActivity$3;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/TvStationActivity$3;-><init>(Lcom/shenma/tvlauncher/TvStationActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 140
    iget-object v1, p0, Lcom/shenma/tvlauncher/TvStationActivity;->tvstation_gv:Landroid/widget/GridView;

    new-instance v2, Lcom/shenma/tvlauncher/TvStationActivity$4;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/TvStationActivity$4;-><init>(Lcom/shenma/tvlauncher/TvStationActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 162
    return-void
.end method
