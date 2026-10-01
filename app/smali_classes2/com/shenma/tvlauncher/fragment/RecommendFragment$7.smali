.class Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V
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

    .line 1394
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 1396
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1397
    return-void
.end method
