.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$5;
.super Landroid/os/Handler;
.source "LivePlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 610
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 612
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 613
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 626
    return-void

    .line 620
    :sswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetnetworkspeed(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 621
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgettv_netspeedinfo(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$sfgetrxBytes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgettv_netspeedinfo(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    :cond_0
    return-void

    .line 615
    :sswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgettv_mv_speed(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$sfgetrxByte()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    return-void

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x29 -> :sswitch_0
    .end sparse-switch
.end method
