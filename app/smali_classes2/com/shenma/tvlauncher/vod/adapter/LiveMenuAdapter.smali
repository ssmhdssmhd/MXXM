.class public Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "LiveMenuAdapter.java"


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

.field private isMenuItemShows:Z

.field private isMenuItemShowss:Z

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

    .line 31
    .local p0, "this":Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;, "Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter<TT;>;"
    .local p2, "medialist":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->isMenuItemShow:Z

    .line 28
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->isMenuItemShows:Z

    .line 29
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->isMenuItemShowss:Z

    .line 32
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->medialist:Ljava/util/List;

    .line 34
    iput p3, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->type:I

    .line 35
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->isMenuItemShow:Z

    .line 36
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->isMenuItemShows:Z

    .line 37
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->isMenuItemShowss:Z

    .line 38
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "type"    # I
    .param p4, "isMenuItemShow"    # Ljava/lang/Boolean;
    .param p5, "isMenuItemShows"    # Ljava/lang/Boolean;
    .param p6, "isMenuItemShowss"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;, "Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter<TT;>;"
    .local p2, "medialist":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->isMenuItemShow:Z

    .line 28
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->isMenuItemShows:Z

    .line 29
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->isMenuItemShowss:Z

    .line 42
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->medialist:Ljava/util/List;

    .line 44
    iput p3, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->type:I

    .line 45
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->isMenuItemShow:Z

    .line 46
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->isMenuItemShows:Z

    .line 47
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->isMenuItemShowss:Z

    .line 48
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 52
    .local p0, "this":Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;, "Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter<TT;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->medialist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 56
    .local p0, "this":Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;, "Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter<TT;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->medialist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 60
    .local p0, "this":Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;, "Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 65
    .local p0, "this":Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;, "Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter<TT;>;"
    if-nez p2, :cond_0

    .line 66
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/shenma/tvlauncher/R$layout;->mv_controler_menu_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v0, Lcom/shenma/tvlauncher/vod/adapter/ViewHolders;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/adapter/ViewHolders;-><init>()V

    .line 68
    .local v0, "ViewHolders":Lcom/shenma/tvlauncher/vod/adapter/ViewHolders;
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_menu_item:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/adapter/ViewHolders;->textView:Landroid/widget/TextView;

    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    .end local v0    # "ViewHolders":Lcom/shenma/tvlauncher/vod/adapter/ViewHolders;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/adapter/ViewHolders;

    .line 73
    .restart local v0    # "ViewHolders":Lcom/shenma/tvlauncher/vod/adapter/ViewHolders;
    :goto_0
    iget v1, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->type:I

    if-nez v1, :cond_1

    .line 74
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/adapter/ViewHolders;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->medialist:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v2, v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 76
    :cond_1
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/adapter/ViewHolders;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->medialist:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_1
    const/4 v1, 0x0

    .line 79
    .local v1, "mPosition":I
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/adapter/ViewHolders;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$color;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-boolean v2, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->isMenuItemShow:Z

    const v3, 0x106000d

    if-eqz v2, :cond_3

    .line 81
    iget v2, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->type:I

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 98
    :pswitch_0
    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->qlposition:I

    goto :goto_2

    .line 95
    :pswitch_1
    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    .line 96
    goto :goto_2

    .line 92
    :pswitch_2
    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->phszposition:I

    .line 93
    goto :goto_2

    .line 89
    :pswitch_3
    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    .line 90
    goto :goto_2

    .line 86
    :pswitch_4
    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->jmposition:I

    .line 87
    goto :goto_2

    .line 83
    :pswitch_5
    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 84
    nop

    .line 101
    :goto_2
    if-ne v1, p1, :cond_2

    .line 102
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/adapter/ViewHolders;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/shenma/tvlauncher/R$color;->text_focus:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 105
    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    :cond_3
    :goto_3
    iget-boolean v2, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->isMenuItemShows:Z

    if-eqz v2, :cond_5

    .line 109
    iget v2, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->type:I

    packed-switch v2, :pswitch_data_1

    goto :goto_4

    .line 111
    :pswitch_6
    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsposition:I

    .line 114
    :goto_4
    if-ne v1, p1, :cond_4

    .line 115
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/adapter/ViewHolders;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/shenma/tvlauncher/R$color;->text_focus:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 119
    :cond_4
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    :cond_5
    :goto_5
    iget-boolean v2, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->isMenuItemShowss:Z

    if-eqz v2, :cond_7

    .line 124
    iget v2, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->type:I

    packed-switch v2, :pswitch_data_2

    goto :goto_6

    .line 126
    :pswitch_7
    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 129
    :goto_6
    if-ne v1, p1, :cond_6

    .line 130
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/adapter/ViewHolders;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/shenma/tvlauncher/R$color;->text_focus:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .line 134
    :cond_6
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 137
    :cond_7
    :goto_7
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method
