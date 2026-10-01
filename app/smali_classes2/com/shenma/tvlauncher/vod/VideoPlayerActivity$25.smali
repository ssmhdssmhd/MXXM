.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$25;
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

    .line 1837
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$25;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/shenma/tvlauncher/view/CycleTextSwitchView;ILjava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    .param p2, "index"    # I
    .param p3, "content"    # Ljava/lang/String;

    .line 1841
    if-nez p2, :cond_0

    .line 1842
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$25;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmDanmakuView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/ui/widget/DanmakuView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$25;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmDanmakuView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/ui/widget/DanmakuView;

    move-result-object v0

    invoke-virtual {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1843
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$25;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmDanmakuView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/ui/widget/DanmakuView;

    move-result-object v0

    invoke-virtual {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->pause()V

    .line 1844
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$25;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmDanmakuView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/ui/widget/DanmakuView;

    move-result-object v0

    invoke-virtual {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->hide()V

    .line 1845
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$25;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmDanmakuView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/ui/widget/DanmakuView;

    move-result-object v0

    invoke-virtual {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->clear()V

    goto :goto_0

    .line 1847
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 1848
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$25;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmDanmakuView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/ui/widget/DanmakuView;

    move-result-object v1

    invoke-virtual {v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->show()V

    .line 1849
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$25;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmDanmakuView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/ui/widget/DanmakuView;

    move-result-object v1

    invoke-virtual {v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->start()V

    .line 1850
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$25;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmDanmakuView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/ui/widget/DanmakuView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$25;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmDanmakuView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/ui/widget/DanmakuView;

    move-result-object v1

    invoke-virtual {v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1851
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$25;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmDanmakuView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/ui/widget/DanmakuView;

    move-result-object v1

    invoke-virtual {v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->resume()V

    .line 1853
    :cond_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$25;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetvodPlayUrl(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1854
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/shenma/tvlauncher/Api;->MAIN_JUHETV_URL:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1855
    .local v1, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$25;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$25;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetvodPlayUrl(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mrequestDanmu(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1858
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method
