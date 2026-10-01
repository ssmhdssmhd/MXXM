.class public Lcom/shenma/tvlauncher/adapter/TopicAdapter;
.super Landroid/widget/BaseAdapter;
.source "TopicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/adapter/TopicAdapter$ViewHoder;
    }
.end annotation


# instance fields
.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private index:I

.field private mContext:Landroid/content/Context;

.field private mViewHoder:Lcom/shenma/tvlauncher/adapter/TopicAdapter$ViewHoder;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/TopicAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 29
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/TopicAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/shenma/tvlauncher/adapter/TopicAdapter;->datas:Ljava/util/List;

    .line 31
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->default_film_img:I

    .line 32
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->default_film_img:I

    .line 34
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->default_film_img:I

    .line 35
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 36
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 38
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;

    const/16 v2, 0x12c

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;-><init>(I)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/TopicAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 40
    return-void
.end method

.method private getResPX(I)I
    .locals 1
    .param p1, "resId"    # I

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/TopicAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/TopicAdapter;->datas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/TopicAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 49
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/TopicAdapter;->datas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/TopicAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 66
    if-nez p2, :cond_0

    .line 67
    new-instance v0, Lcom/shenma/tvlauncher/adapter/TopicAdapter$ViewHoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shenma/tvlauncher/adapter/TopicAdapter$ViewHoder;-><init>(Lcom/shenma/tvlauncher/adapter/TopicAdapter;Lcom/shenma/tvlauncher/adapter/TopicAdapter-IA;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/TopicAdapter;->mViewHoder:Lcom/shenma/tvlauncher/adapter/TopicAdapter$ViewHoder;

    .line 68
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/TopicAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/shenma/tvlauncher/R$layout;->topic_item:I

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/TopicAdapter;->mViewHoder:Lcom/shenma/tvlauncher/adapter/TopicAdapter$ViewHoder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->topic_item_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/shenma/tvlauncher/adapter/TopicAdapter$ViewHoder;->image:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/TopicAdapter;->mViewHoder:Lcom/shenma/tvlauncher/adapter/TopicAdapter$ViewHoder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/adapter/TopicAdapter$ViewHoder;

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/TopicAdapter;->mViewHoder:Lcom/shenma/tvlauncher/adapter/TopicAdapter$ViewHoder;

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/TopicAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/shenma/tvlauncher/adapter/TopicAdapter;->datas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getPic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/adapter/TopicAdapter;->mViewHoder:Lcom/shenma/tvlauncher/adapter/TopicAdapter$ViewHoder;

    iget-object v2, v2, Lcom/shenma/tvlauncher/adapter/TopicAdapter$ViewHoder;->image:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/shenma/tvlauncher/adapter/TopicAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 76
    nop

    .line 84
    return-object p2
.end method
