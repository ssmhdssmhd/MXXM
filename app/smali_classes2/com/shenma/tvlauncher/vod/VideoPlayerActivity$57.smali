.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$57;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showUpdateDialog(Ljava/lang/String;Landroid/content/Context;)V
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

    .line 3537
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$57;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 3540
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3542
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$57;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const-class v2, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3543
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$57;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetsourceId(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sourceid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3544
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$57;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetplayIndex(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    div-int/lit8 v1, v1, 0x14

    const-string v2, "paixu"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3545
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$57;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetplayIndex(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x14

    const-string/jumbo v2, "xuanji"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3546
    const/high16 v1, 0x30000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3547
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$57;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 3548
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$57;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->overridePendingTransition(II)V

    .line 3550
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$57;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputisDialogShowing(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)V

    .line 3551
    return-void
.end method
