.class public Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "TVLiveMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isMenuItemShow:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private medialist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "type"    # I
    .param p4, "isMenuItemShow"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 28
    .local p0, "this":Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;, "Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter<TT;>;"
    .local p2, "medialist":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;->isMenuItemShow:Z

    .line 30
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;->medialist:Ljava/util/List;

    .line 32
    iput p3, p0, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;->type:I

    .line 33
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;->isMenuItemShow:Z

    .line 34
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 40
    .local p0, "this":Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;, "Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter<TT;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;->medialist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 46
    .local p0, "this":Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;, "Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter<TT;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;->medialist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 52
    .local p0, "this":Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;, "Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 59
    .local p0, "this":Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;, "Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter<TT;>;"
    if-nez p2, :cond_0

    .line 60
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/shenma/tvlauncher/R$layout;->mv_controler_menu_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/adapter/ViewHolder;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/tvlive/adapter/ViewHolder;-><init>()V

    .line 63
    .local v0, "viewHolder":Lcom/shenma/tvlauncher/tvlive/adapter/ViewHolder;
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_menu_item:I

    .line 64
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/shenma/tvlauncher/tvlive/adapter/ViewHolder;->textView:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    .end local v0    # "viewHolder":Lcom/shenma/tvlauncher/tvlive/adapter/ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/adapter/ViewHolder;

    .line 69
    .restart local v0    # "viewHolder":Lcom/shenma/tvlauncher/tvlive/adapter/ViewHolder;
    :goto_0
    iget-object v1, v0, Lcom/shenma/tvlauncher/tvlive/adapter/ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;->medialist:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, v0, Lcom/shenma/tvlauncher/tvlive/adapter/ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$color;->white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, "mPosition":I
    iget-boolean v2, p0, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;->isMenuItemShow:Z

    if-eqz v2, :cond_2

    .line 73
    iget v2, p0, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;->type:I

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 84
    :pswitch_0
    sget v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->qycsposition:I

    goto :goto_1

    .line 81
    :pswitch_1
    sget v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->phszposition:I

    .line 82
    goto :goto_1

    .line 78
    :pswitch_2
    sget v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->hmblposition:I

    .line 79
    goto :goto_1

    .line 75
    :pswitch_3
    sget v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->jmposition:I

    .line 76
    nop

    .line 87
    :goto_1
    if-ne v1, p1, :cond_1

    .line 88
    iget-object v2, v0, Lcom/shenma/tvlauncher/tvlive/adapter/ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$color;->text_focus:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 90
    :cond_1
    iget-object v2, v0, Lcom/shenma/tvlauncher/tvlive/adapter/ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$color;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    :cond_2
    :goto_2
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
