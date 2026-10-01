.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;
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

    .line 1736
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/shenma/tvlauncher/view/CycleTextSwitchView;ILjava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    .param p2, "headLinePosition"    # I
    .param p3, "headLineContent"    # Ljava/lang/String;

    .line 1739
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetsp(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 1741
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1742
    .local v0, "jumpValues":[I
    sput p2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 1743
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "play_jump"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1744
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "headLinePosition"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1745
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1746
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    aget v2, v0, p2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$msetJump(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 1747
    return-void

    :array_0
    .array-data 4
        0x0
        0xa
        0xf
        0x14
        0x1e
        0x3c
        0x5a
        0x78
        0x96
        0xb4
        0xf0
        0x12c
    .end array-data
.end method
