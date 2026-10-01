.class public Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;
.super Landroid/widget/BaseAdapter;
.source "VodtypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static vodDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;

.field private holder:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

.field private imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mInflater:Landroid/view/LayoutInflater;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/nostra13/universalimageloader/core/ImageLoader;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "imageLoader"    # Lcom/nostra13/universalimageloader/core/ImageLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;",
            ">;",
            "Lcom/nostra13/universalimageloader/core/ImageLoader;",
            ")V"
        }
    .end annotation

    .line 38
    .local p2, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->context:Landroid/content/Context;

    .line 40
    sput-object p2, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->vodDatas:Ljava/util/List;

    .line 41
    iput-object p3, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 42
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->default_film_img:I

    .line 44
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->default_film_img:I

    .line 45
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->default_film_img:I

    .line 46
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 47
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 50
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 51
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;

    const/16 v2, 0x12c

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;-><init>(I)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 55
    return-void
.end method

.method private setVideos(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p1, "paramArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    if-eqz p1, :cond_0

    .line 64
    sput-object p1, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->vodDatas:Ljava/util/List;

    .line 65
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "localArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    sput-object v0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->vodDatas:Ljava/util/List;

    .line 69
    return-void
.end method


# virtual methods
.method public changData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "paramArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->setVideos(Ljava/util/ArrayList;)V

    .line 59
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->notifyDataSetChanged()V

    .line 60
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 103
    sget-object v0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 108
    sget-object v0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 113
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 73
    if-nez p2, :cond_0

    .line 74
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/shenma/tvlauncher/R$layout;->mv_type_details_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    new-instance v0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;-><init>(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

    .line 76
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->video_poster:I

    .line 77
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->-$$Nest$fputposter(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;Landroid/widget/ImageView;)V

    .line 78
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->video_state:I

    .line 79
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->-$$Nest$fputstate(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 80
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->video_item_Score:I

    .line 81
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->-$$Nest$fputscore(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 82
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->video_name:I

    .line 83
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->-$$Nest$fputvideoName(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 84
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

    .line 88
    :goto_0
    sget-object v0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    .line 89
    .local v0, "vd":Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getPic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->-$$Nest$fgetposter(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 90
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->-$$Nest$fgetvideoName(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->-$$Nest$fgetstate(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getScore()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getScore()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_1

    .line 93
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->-$$Nest$fgetscore(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->-$$Nest$fgetscore(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getScore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->-$$Nest$fgetscore(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :goto_1
    return-object p2
.end method
