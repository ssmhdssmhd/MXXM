.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$48;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2822
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$48;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 2825
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$48;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetdanmuSwitch(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->getCurrentIndex()I

    move-result v0

    .line 2827
    .local v0, "selectIndex":I
    if-nez v0, :cond_0

    .line 2828
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$48;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const-string/jumbo v2, "\u8bf7\u5148\u6253\u5f00\u5f39\u5e55\u5f00\u5173\uff01"

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 2829
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2831
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$48;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mshowInputDialog(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 2834
    :cond_1
    :goto_0
    return-void
.end method
