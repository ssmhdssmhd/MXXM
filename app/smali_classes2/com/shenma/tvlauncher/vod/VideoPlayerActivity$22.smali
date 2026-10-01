.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->loadViewLayout()V
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

    .line 1762
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/shenma/tvlauncher/view/CycleTextSwitchView;ILjava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    .param p2, "videoDecodingPosition"    # I
    .param p3, "content"    # Ljava/lang/String;

    .line 1767
    sput p2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jmposition:I

    .line 1768
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetsp(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 1769
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mIsHwDecode"

    sget v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jmposition:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1770
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jmposition:I

    const/4 v1, 0x1

    .line 1778
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1770
    if-nez v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->mg:Ljava/lang/String;

    const-string/jumbo v4, "\u8f6f\u89e3\u7801"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1772
    :cond_0
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jmposition:I

    if-ne v0, v1, :cond_1

    .line 1773
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->mg:Ljava/lang/String;

    const-string/jumbo v4, "\u786c\u89e3\u7801"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1775
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1776
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$msetDecode(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 1777
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jmposition:I

    if-ne v0, v1, :cond_2

    .line 1778
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 1779
    :cond_2
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jmposition:I

    if-nez v0, :cond_3

    .line 1780
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    .line 1782
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputisPause(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/Boolean;)V

    .line 1783
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1784
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v1

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputmLastPos(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 1786
    :cond_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmPlayerStatus(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-eq v0, v1, :cond_5

    .line 1787
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1788
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->resume()V

    .line 1789
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmLastPos(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 1792
    :cond_5
    return-void
.end method
