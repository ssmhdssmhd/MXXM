.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$21;
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

    .line 1749
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$21;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/shenma/tvlauncher/view/CycleTextSwitchView;ILjava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    .param p2, "index"    # I
    .param p3, "endLineContent"    # Ljava/lang/String;

    .line 1752
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$21;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$21;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetsp(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 1754
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1755
    .local v0, "jumpEndValues":[I
    sput p2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1756
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$21;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "play_jump_end"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1757
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$21;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "endlinePosition"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1758
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$21;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1759
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$21;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    aget v2, v0, v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$msetJump_end(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 1760
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
