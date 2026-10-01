.class public Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VodDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HorizontalAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$OnItemClickListener;,
        Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$OnItemClickListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetonItemClickListener(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;)Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;->onItemClickListener:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$OnItemClickListener;

    return-object p0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;",
            ">;)V"
        }
    .end annotation

    .line 1736
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 1737
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;->items:Ljava/util/List;

    .line 1738
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1765
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1710
    check-cast p1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;->onBindViewHolder(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 1749
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    .line 1750
    .local v0, "item":Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;
    iget-object v1, p1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1751
    iget-object v1, p1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$ViewHolder;->tvSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1752
    iget-object v1, p1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$ViewHolder;->rootView:Landroid/view/View;

    new-instance v2, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$1;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1761
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1710
    invoke-virtual {p0, p1, p2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 1743
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$layout;->vod_details_recommand_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1744
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$ViewHolder;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$OnItemClickListener;

    .line 1716
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;->onItemClickListener:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$OnItemClickListener;

    .line 1717
    return-void
.end method
