.class public Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "VodDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private holder:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;

.field private imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mInflater:Landroid/view/LayoutInflater;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private vodDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;",
            ">;"
        }
    .end annotation
.end field


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
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->vodDatas:Ljava/util/List;

    .line 41
    iput-object p3, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 42
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->mInflater:Landroid/view/LayoutInflater;

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

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 55
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 85
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 89
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 58
    if-nez p2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/shenma/tvlauncher/R$layout;->mv_video_details_recommend_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    new-instance v0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;-><init>(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;

    .line 61
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->details_recommend_poster:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->-$$Nest$fputiv_details_recommend_poster(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;Landroid/widget/ImageView;)V

    .line 62
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->details_recommend_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->-$$Nest$fputtv_details_recommend_name(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 63
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->details_recommend_score:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->-$$Nest$fputtv_details_recommend_score(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 64
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    .line 69
    .local v0, "vd":Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getPic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->-$$Nest$fgetiv_details_recommend_poster(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 70
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->-$$Nest$fgettv_details_recommend_name(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getScore()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getScore()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_1

    .line 72
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->-$$Nest$fgettv_details_recommend_score(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->-$$Nest$fgettv_details_recommend_score(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getScore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;->holder:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->-$$Nest$fgettv_details_recommend_score(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    :goto_1
    return-object p2
.end method
