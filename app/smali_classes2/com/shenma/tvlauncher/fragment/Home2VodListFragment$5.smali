.class Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$5;
.super Ljava/lang/Object;
.source "Home2VodListFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->GetMotion(Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 364
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$5;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 366
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$5;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 367
    return-void
.end method
