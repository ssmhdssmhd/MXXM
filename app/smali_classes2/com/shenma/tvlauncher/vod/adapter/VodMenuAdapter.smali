.class public Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "VodMenuAdapter.java"


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
.field private final context:Landroid/content/Context;

.field private isMenuItemShow:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final medialist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final type:I


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

    .line 29
    .local p0, "this":Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;, "Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter<TT;>;"
    .local p2, "medialist":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;->isMenuItemShow:Z

    .line 30
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;->medialist:Ljava/util/List;

    .line 32
    iput p3, p0, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;->type:I

    .line 33
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;->isMenuItemShow:Z

    .line 34
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 38
    .local p0, "this":Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;, "Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter<TT;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;->medialist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 42
    .local p0, "this":Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;, "Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter<TT;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;->medialist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 46
    .local p0, "this":Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;, "Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 51
    .local p0, "this":Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;, "Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter<TT;>;"
    if-nez p2, :cond_0

    .line 52
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/shenma/tvlauncher/R$layout;->mv_controler_menu_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 53
    new-instance v0, Lcom/shenma/tvlauncher/vod/adapter/ViewHolder;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/adapter/ViewHolder;-><init>()V

    .line 54
    .local v0, "viewHolder":Lcom/shenma/tvlauncher/vod/adapter/ViewHolder;
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_menu_item:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/adapter/ViewHolder;->textView:Landroid/widget/TextView;

    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    .end local v0    # "viewHolder":Lcom/shenma/tvlauncher/vod/adapter/ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/adapter/ViewHolder;

    .line 59
    .restart local v0    # "viewHolder":Lcom/shenma/tvlauncher/vod/adapter/ViewHolder;
    :goto_0
    iget v1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;->type:I

    if-nez v1, :cond_1

    .line 60
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/adapter/ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;->medialist:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v2, v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 62
    :cond_1
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/adapter/ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;->medialist:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :goto_1
    const/4 v1, 0x0

    .line 65
    .local v1, "mPosition":I
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/adapter/ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$color;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-boolean v2, p0, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;->isMenuItemShow:Z

    if-eqz v2, :cond_3

    .line 67
    iget v2, p0, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;->type:I

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 90
    :pswitch_0
    sget v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_2

    .line 87
    :pswitch_1
    sget v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 88
    goto :goto_2

    .line 84
    :pswitch_2
    sget v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 85
    goto :goto_2

    .line 81
    :pswitch_3
    sget v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->phszposition:I

    .line 82
    goto :goto_2

    .line 78
    :pswitch_4
    sget v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    .line 79
    goto :goto_2

    .line 75
    :pswitch_5
    sget v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jmposition:I

    .line 76
    goto :goto_2

    .line 72
    :pswitch_6
    sget v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    .line 73
    goto :goto_2

    .line 69
    :pswitch_7
    sget v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 70
    nop

    .line 93
    :goto_2
    const v2, 0x106000d

    if-ne v1, p1, :cond_2

    .line 94
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/adapter/ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/shenma/tvlauncher/R$color;->text_focus:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 97
    :cond_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 100
    :cond_3
    :goto_3
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
