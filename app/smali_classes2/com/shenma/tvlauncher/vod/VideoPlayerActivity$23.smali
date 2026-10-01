.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;
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

    .line 1794
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/shenma/tvlauncher/view/CycleTextSwitchView;ILjava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    .param p2, "index"    # I
    .param p3, "content"    # Ljava/lang/String;

    .line 1798
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetsp(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 1799
    sput p2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    .line 1800
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    if-nez v0, :cond_0

    .line 1801
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    const-string/jumbo v2, "\u81ea\u52a8"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1802
    :cond_0
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1803
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    const-string/jumbo v2, "\u7cfb\u7edf"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1804
    :cond_1
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1805
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    const-string v2, "IJK"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1806
    :cond_2
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1807
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    const-string v2, "EXO"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1808
    :cond_3
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 1809
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    const-string/jumbo v2, "\u963f\u91cc"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1811
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1812
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmPlayerStatus(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-eq v0, v1, :cond_5

    .line 1813
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetplayIndex(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mSelecteVod(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 1814
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1816
    :cond_5
    return-void
.end method
