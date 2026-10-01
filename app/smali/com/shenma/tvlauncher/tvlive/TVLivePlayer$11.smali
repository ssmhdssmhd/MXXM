.class Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$11;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TVLivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->setListener()V
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

    .line 743
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$11;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 748
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$11;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$mshowMenu(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 749
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 778
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 784
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$11;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$mshowMenu(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 785
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 756
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$11;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetepg_layout(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x11

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$11;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmLeftLayout(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$11;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetepg_layout(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 767
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$11;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 768
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$11;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmLeftLayout(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 769
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$11;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 757
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$11;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetepg_layout(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$11;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 760
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$11;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 761
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$11;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmLeftLayout(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$11;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$mgetFocused(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 763
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$11;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 764
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$11;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 771
    :goto_1
    const/4 v0, 0x1

    return v0
.end method
