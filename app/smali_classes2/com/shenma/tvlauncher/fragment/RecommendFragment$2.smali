.class Lcom/shenma/tvlauncher/fragment/RecommendFragment$2;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/RecommendFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/RecommendFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    iget-object v0, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "username":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 250
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->context:Landroid/content/Context;

    sget v2, Lcom/shenma/tvlauncher/R$string;->Please_log_in_to_your_account_first:I

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 251
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->context:Landroid/content/Context;

    const-class v4, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 252
    return-void

    .line 254
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "from"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-virtual {v2, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 257
    return-void
.end method
