.class public Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "TypeDetailsSubMenuAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selcted:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p2, "paramArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->selcted:I

    .line 23
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->context:Landroid/content/Context;

    .line 24
    if-eqz p2, :cond_0

    .line 25
    iput-object p2, p0, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->lists:Ljava/util/List;

    .line 26
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, "localArrayList":Ljava/util/ArrayList;
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->lists:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->lists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "paramInt"    # I

    .line 37
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->lists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "paramInt"    # I

    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "paramInt"    # I
    .param p2, "paramView"    # Landroid/view/View;
    .param p3, "paramViewGroup"    # Landroid/view/ViewGroup;

    .line 45
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$layout;->mv_type_details_filter_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "localView":Landroid/view/View;
    sget v1, Lcom/shenma/tvlauncher/R$id;->filter_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    .local v1, "localTextView":Landroid/widget/TextView;
    sget v2, Lcom/shenma/tvlauncher/R$id;->filter_gou:I

    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 50
    .local v2, "localImageView":Landroid/widget/ImageView;
    iget v3, p0, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->selcted:I

    if-ne v3, p1, :cond_0

    .line 51
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    sget v3, Lcom/shenma/tvlauncher/R$drawable;->filter_sleted:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 54
    :cond_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->lists:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 55
    .local v3, "localCharSequence":Ljava/lang/CharSequence;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-object v0
.end method

.method public setSelctItem(I)V
    .locals 0
    .param p1, "paramInt"    # I

    .line 60
    iput p1, p0, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->selcted:I

    .line 61
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->notifyDataSetChanged()V

    .line 62
    return-void
.end method
