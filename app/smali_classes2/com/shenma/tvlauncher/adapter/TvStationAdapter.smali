.class public Lcom/shenma/tvlauncher/adapter/TvStationAdapter;
.super Landroid/widget/BaseAdapter;
.source "TvStationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/adapter/TvStationAdapter$ViewHoder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private imageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private tvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/TVStationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private viewHoder:Lcom/shenma/tvlauncher/adapter/TvStationAdapter$ViewHoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/volley/toolbox/ImageLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "imageLoader"    # Lcom/android/volley/toolbox/ImageLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/TVStationInfo;",
            ">;",
            "Lcom/android/volley/toolbox/ImageLoader;",
            ")V"
        }
    .end annotation

    .line 25
    .local p2, "tvs":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/domain/TVStationInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/TvStationAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/shenma/tvlauncher/adapter/TvStationAdapter;->tvs:Ljava/util/List;

    .line 28
    iput-object p3, p0, Lcom/shenma/tvlauncher/adapter/TvStationAdapter;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/TvStationAdapter;->tvs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 42
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/TvStationAdapter;->tvs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 52
    if-nez p2, :cond_0

    .line 53
    new-instance v0, Lcom/shenma/tvlauncher/adapter/TvStationAdapter$ViewHoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shenma/tvlauncher/adapter/TvStationAdapter$ViewHoder;-><init>(Lcom/shenma/tvlauncher/adapter/TvStationAdapter;Lcom/shenma/tvlauncher/adapter/TvStationAdapter-IA;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/TvStationAdapter;->viewHoder:Lcom/shenma/tvlauncher/adapter/TvStationAdapter$ViewHoder;

    .line 54
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/TvStationAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/shenma/tvlauncher/R$layout;->tvstation_item:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/TvStationAdapter;->viewHoder:Lcom/shenma/tvlauncher/adapter/TvStationAdapter$ViewHoder;

    sget v1, Lcom/shenma/tvlauncher/R$id;->tvs_item_img_iv:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/shenma/tvlauncher/adapter/TvStationAdapter$ViewHoder;->tvs_item_img_iv:Landroid/widget/ImageView;

    .line 56
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/TvStationAdapter;->viewHoder:Lcom/shenma/tvlauncher/adapter/TvStationAdapter$ViewHoder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/adapter/TvStationAdapter$ViewHoder;

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/TvStationAdapter;->viewHoder:Lcom/shenma/tvlauncher/adapter/TvStationAdapter$ViewHoder;

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/TvStationAdapter;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/adapter/TvStationAdapter;->tvs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TVStationInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TVStationInfo;->getChannelpic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/adapter/TvStationAdapter;->viewHoder:Lcom/shenma/tvlauncher/adapter/TvStationAdapter$ViewHoder;

    iget-object v2, v2, Lcom/shenma/tvlauncher/adapter/TvStationAdapter$ViewHoder;->tvs_item_img_iv:Landroid/widget/ImageView;

    const v3, 0x106000d

    invoke-static {v2, v3, v3}, Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 61
    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/TVStationInfo;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "tvs":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/domain/TVStationInfo;>;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/TvStationAdapter;->tvs:Ljava/util/List;

    .line 33
    return-void
.end method
