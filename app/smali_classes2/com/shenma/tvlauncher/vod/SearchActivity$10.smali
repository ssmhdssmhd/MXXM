.class Lcom/shenma/tvlauncher/vod/SearchActivity$10;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/SearchActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 388
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 391
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "port"

    const/16 v2, 0x26fa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Utils;->isPortAvailable(I)Z

    move-result v0

    .line 392
    .local v0, "portAvailable":Z
    if-eqz v0, :cond_0

    .line 393
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetVoice_text(Lcom/shenma/tvlauncher/vod/SearchActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$mshowvoice(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    .line 397
    :cond_0
    return-void
.end method
