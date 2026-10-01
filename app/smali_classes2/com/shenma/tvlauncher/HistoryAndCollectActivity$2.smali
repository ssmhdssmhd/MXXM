.class Lcom/shenma/tvlauncher/HistoryAndCollectActivity$2;
.super Ljava/lang/Object;
.source "HistoryAndCollectActivity.java"

# interfaces
.implements Lcom/shenma/tvlauncher/HistoryAndCollectActivity$OnAdapterItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->findViewById()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HistoryAndCollectActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$2;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/shenma/tvlauncher/vod/db/Album;)V
    .locals 4
    .param p1, "item"    # Lcom/shenma/tvlauncher/vod/db/Album;

    .line 327
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$2;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "username":Ljava/lang/String;
    iget-object v3, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$2;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    if-nez v0, :cond_0

    if-nez v0, :cond_0

    .line 331
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$2;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 332
    return-void

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$2;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    invoke-static {v1, p1}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->-$$Nest$mGetMotion(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;Lcom/shenma/tvlauncher/vod/db/Album;)V

    .line 335
    return-void
.end method
