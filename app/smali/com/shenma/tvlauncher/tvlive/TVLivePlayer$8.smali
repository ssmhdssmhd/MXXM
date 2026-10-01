.class Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$8;
.super Ljava/lang/Object;
.source "TVLivePlayer.java"

# interfaces
.implements Lcom/baidu/cyberplayer/core/BVideoView$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->setvvListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 649
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$8;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared()V
    .locals 2

    .line 655
    const-string v0, "TVLivePlayer"

    const-string v1, "setOnPreparedListener..."

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$8;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 657
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$8;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 658
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$8;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 659
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$8;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 660
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$8;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fputisSendNext(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Z)V

    .line 662
    return-void
.end method
