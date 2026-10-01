.class Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$5;
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

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$5;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    iput-object p2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$5;->val$username:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$5;->val$username:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$5;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->Please_log_in_to_your_account_first:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 188
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$5;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$5;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->startActivity(Landroid/content/Intent;)V

    .line 189
    return-void

    .line 191
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$5;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TYPE"

    const-string v2, "ALL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$5;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->startActivity(Landroid/content/Intent;)V

    .line 194
    return-void
.end method
