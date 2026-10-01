.class public Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$OnItemClickListener;,
        Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private ISAPP:Ljava/lang/Boolean;

.field private context:Landroid/content/Context;

.field private holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<",
            "TT;>.ViewHolder;"
        }
    .end annotation
.end field

.field private imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mInflater:Landroid/view/LayoutInflater;

.field private onItemClickListener:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$OnItemClickListener;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private selectId:I

.field private vodDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetonItemClickListener(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->onItemClickListener:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$OnItemClickListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/nostra13/universalimageloader/core/ImageLoader;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "imageLoader"    # Lcom/nostra13/universalimageloader/core/ImageLoader;
    .param p4, "ISAPP"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/nostra13/universalimageloader/core/ImageLoader;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->context:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    iput-object p3, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 51
    iput-object p4, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->ISAPP:Ljava/lang/Boolean;

    .line 52
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->default_film_img:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->default_film_img:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->default_film_img:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;

    const/16 v2, 0x12c

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 54
    return-void
.end method

.method private setVideos(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    .local p1, "paramArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz p1, :cond_0

    .line 71
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    .line 75
    :goto_0
    return-void
.end method


# virtual methods
.method public changData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    .local p1, "paramArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->setVideos(Ljava/util/ArrayList;)V

    .line 61
    return-void
.end method

.method public clearDatas()V
    .locals 1

    .line 78
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 142
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 146
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 150
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 90
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->ISAPP:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 91
    if-nez p2, :cond_0

    .line 92
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/shenma/tvlauncher/R$layout;->my_app_item:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 93
    new-instance v0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;-><init>(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    .line 94
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->app_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->-$$Nest$fputapp_icon(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/ImageView;)V

    .line 95
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->app_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->-$$Nest$fputapp_title(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 96
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->packflag:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->-$$Nest$fputpackflag(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 97
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->item_cardview:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->-$$Nest$fputitem_cardview(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;

    .line 103
    .local v0, "appinfo":Lcom/shenma/tvlauncher/dao/bean/AppInfo;
    iget-object v1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-static {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->-$$Nest$fgetapp_icon(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->getAppicon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-static {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->-$$Nest$fgetapp_title(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->getAppname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-static {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->-$$Nest$fgetpackflag(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->getApppack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .end local v0    # "appinfo":Lcom/shenma/tvlauncher/dao/bean/AppInfo;
    goto/16 :goto_2

    .line 107
    :cond_1
    if-nez p2, :cond_2

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/shenma/tvlauncher/R$layout;->user_type_details_item:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 109
    new-instance v0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;-><init>(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    .line 110
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->user_video_poster:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->-$$Nest$fputposter(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/ImageView;)V

    .line 111
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->user_video_checked:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->-$$Nest$fputchecked(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/ImageView;)V

    .line 112
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->user_video_state:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->-$$Nest$fputstate(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 113
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->user_video_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->-$$Nest$fputvideoName(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->item_cardview:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->-$$Nest$fputitem_cardview(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    .line 119
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/db/Album;

    .line 120
    .local v0, "vd":Lcom/shenma/tvlauncher/vod/db/Album;
    iget-object v1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumPic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-static {v3}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->-$$Nest$fgetposter(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 121
    iget-object v1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-static {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->-$$Nest$fgetvideoName(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-static {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->-$$Nest$fgetstate(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    new-instance v1, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$1;-><init>(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .end local v0    # "vd":Lcom/shenma/tvlauncher/vod/db/Album;
    :goto_2
    return-object p2
.end method

.method public remove(I)V
    .locals 1
    .param p1, "index"    # I

    .line 84
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 87
    :cond_0
    return-void
.end method

.method public setAppData(Ljava/util/List;)V
    .locals 0
    .param p1, "applist"    # Ljava/util/List;

    .line 64
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    if-eqz p1, :cond_0

    .line 65
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    .line 67
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$OnItemClickListener;

    .line 43
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->onItemClickListener:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$OnItemClickListener;

    .line 44
    return-void
.end method
