.class Lcom/shenma/tvlauncher/tvback/TVBackActivity$1;
.super Ljava/lang/Object;
.source "TVBackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/tvback/TVBackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$1;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$1;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$1;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetvv(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/view/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/VideoView;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    .line 158
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$1;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetISCNTV(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$1;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$1;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmPostion(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I

    move-result v1

    const v2, 0x493e0

    mul-int v1, v1, v2

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$1;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    iget v2, v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$1;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetseekBar(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$1;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    iget v1, v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 161
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$1;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmProgressHandler(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$1;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateThread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$1;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgettv_currentTime(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$1;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    iget v1, v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->toTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$1;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    iget v1, v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "joychang"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method
