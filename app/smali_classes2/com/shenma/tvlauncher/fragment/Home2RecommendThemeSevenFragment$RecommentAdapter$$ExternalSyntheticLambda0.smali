.class public final synthetic Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;

.field public final synthetic f$1:Lcom/shenma/tvlauncher/domain/RecommendInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;Lcom/shenma/tvlauncher/domain/RecommendInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;

    iput-object p2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/shenma/tvlauncher/domain/RecommendInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v0, v1, p1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;->lambda$onBindViewHolder$0$com-shenma-tvlauncher-fragment-Home2RecommendThemeSevenFragment$RecommentAdapter(Lcom/shenma/tvlauncher/domain/RecommendInfo;Landroid/view/View;)V

    return-void
.end method
