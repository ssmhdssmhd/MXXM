.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$50;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showInputDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

.field final synthetic val$btnSend:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2898
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$50;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$50;->val$btnSend:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2901
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 2902
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$50;->val$btnSend:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 2903
    const/4 v0, 0x1

    return v0

    .line 2905
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
