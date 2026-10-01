.class public final synthetic Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;

.field public final synthetic f$1:Lcom/shenma/tvlauncher/vod/db/Album;


# direct methods
.method public synthetic constructor <init>(Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;Lcom/shenma/tvlauncher/vod/db/Album;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;

    iput-object p2, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/shenma/tvlauncher/vod/db/Album;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v0, v1, p1}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;->lambda$onBindViewHolder$0$com-shenma-tvlauncher-HistoryAndCollectActivity$VodListAdapter(Lcom/shenma/tvlauncher/vod/db/Album;Landroid/view/View;)V

    return-void
.end method
