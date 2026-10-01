.class Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$6;
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

    .line 196
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$6;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 199
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$6;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$6;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->startActivity(Landroid/content/Intent;)V

    .line 201
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$6;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    .line 202
    return-void
.end method
