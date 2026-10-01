.class Lcom/shenma/tvlauncher/HistoryAndCollectActivity$4;
.super Ljava/lang/Object;
.source "HistoryAndCollectActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->GetMotion(Lcom/shenma/tvlauncher/vod/db/Album;)V
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

    .line 678
    iput-object p1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$4;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 680
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$4;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 681
    return-void
.end method
