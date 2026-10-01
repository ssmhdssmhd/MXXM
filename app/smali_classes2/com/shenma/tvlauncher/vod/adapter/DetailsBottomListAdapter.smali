.class public Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailsBottomListAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
            ">;I)V"
        }
    .end annotation

    .line 21
    .local p2, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrlList;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;->list:Ljava/util/List;

    .line 24
    iput p3, p0, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;->type:I

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 26
    return-void
.end method


# virtual methods
.method public changData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "paramArrayList":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrlList;>;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;->list:Ljava/util/List;

    .line 30
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;->notifyDataSetChanged()V

    .line 31
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 42
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 53
    iget v0, p0, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;->type:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/shenma/tvlauncher/R$layout;->mv_details_key_list_item:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/shenma/tvlauncher/R$layout;->mv_details_key_list_items:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    :goto_0
    sget v0, Lcom/shenma/tvlauncher/R$id;->lv_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    .local v0, "lv_text":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-object p2
.end method
