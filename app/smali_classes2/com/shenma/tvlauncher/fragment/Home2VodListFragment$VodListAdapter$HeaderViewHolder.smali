.class Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "Home2VodListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;
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

    .line 889
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$HeaderViewHolder;->this$1:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;

    .line 890
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 891
    return-void
.end method
