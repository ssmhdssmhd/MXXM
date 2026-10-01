.class Lcom/shenma/tvlauncher/vod/VodTypeActivity$13;
.super Ljava/lang/Object;
.source "VodTypeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodTypeActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 683
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 685
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 686
    .local v0, "username":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 687
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1, p3}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$mGetMotion(Lcom/shenma/tvlauncher/vod/VodTypeActivity;I)V

    goto :goto_0

    .line 688
    :cond_0
    if-nez v0, :cond_1

    .line 689
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$string;->Please_log_in_to_your_account_first:I

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 690
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    const-class v4, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->startActivity(Landroid/content/Intent;)V

    .line 691
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->overridePendingTransition(II)V

    .line 693
    :cond_1
    :goto_0
    return-void
.end method
