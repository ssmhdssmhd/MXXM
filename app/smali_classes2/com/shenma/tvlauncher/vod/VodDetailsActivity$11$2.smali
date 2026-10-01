.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$2;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"

# interfaces
.implements Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->onResponse(Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1357
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$2;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 5
    .param p1, "position"    # I

    .line 1360
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$2;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1361
    .local v0, "username":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1363
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$2;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fputisRecommandClick(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Z)V

    .line 1364
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$2;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetaboutlist(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    .line 1365
    .local v1, "info":Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$2;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;

    iget-object v2, v2, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getNextlink()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fputnextlink(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)V

    .line 1366
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$2;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;

    iget-object v2, v2, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->processLogic()V

    .end local v1    # "info":Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;
    goto :goto_0

    .line 1367
    :cond_0
    if-nez v0, :cond_1

    .line 1368
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$2;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$string;->Please_log_in_to_your_account_first:I

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1369
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$2;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$2;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    const-class v4, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1370
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$2;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->overridePendingTransition(II)V

    goto :goto_1

    .line 1367
    :cond_1
    :goto_0
    nop

    .line 1374
    :goto_1
    return-void
.end method
