.class public final synthetic Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;

.field public final synthetic f$1:Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;

    iput-object p2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    invoke-virtual {v0, v1, p1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->lambda$onBindViewHolder$0$com-shenma-tvlauncher-fragment-Home2VodListFragment$VodListAdapter(Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;Landroid/view/View;)V

    return-void
.end method
