.class public Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VodDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field rootView:Landroid/view/View;

.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;

.field tvSubtitle:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;
    .param p2, "itemView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1728
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$ViewHolder;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;

    .line 1729
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1730
    sget v0, Lcom/shenma/tvlauncher/R$id;->tvTitle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 1731
    sget v0, Lcom/shenma/tvlauncher/R$id;->tvSubtitle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$ViewHolder;->tvSubtitle:Landroid/widget/TextView;

    .line 1732
    sget v0, Lcom/shenma/tvlauncher/R$id;->root_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$ViewHolder;->rootView:Landroid/view/View;

    .line 1733
    return-void
.end method
