.class Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$2;
.super Ljava/lang/Object;
.source "Home2VodListFragment.java"

# interfaces
.implements Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$OnAdapterItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 211
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;)V
    .locals 4
    .param p1, "item"    # Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    .line 214
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v0, v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "username":Ljava/lang/String;
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    goto :goto_0

    goto :goto_0

    .line 218
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 219
    return-void

    .line 221
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v1, p1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$mGetMotion(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;)V

    .line 222
    return-void
.end method
