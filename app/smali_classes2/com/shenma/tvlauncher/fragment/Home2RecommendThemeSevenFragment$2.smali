.class Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$2;
.super Ljava/lang/Object;
.source "Home2RecommendThemeSevenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->-$$Nest$fgetonZbClickListener(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;)Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$OnZbClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->-$$Nest$fgetonZbClickListener(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;)Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$OnZbClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$OnZbClickListener;->onZbClick()V

    .line 152
    :cond_0
    return-void
.end method
