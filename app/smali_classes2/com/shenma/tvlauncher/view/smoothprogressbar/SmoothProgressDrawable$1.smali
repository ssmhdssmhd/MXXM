.class Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;
.super Ljava/lang/Object;
.source "SmoothProgressDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 600
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 604
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->isFinishing()Z

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fgetmFinishingOffset(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v3}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fgetmProgressiveStopSpeed(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v3

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fputmFinishingOffset(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;F)V

    .line 606
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fgetmCurrentOffset(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v3}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fgetmProgressiveStopSpeed(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v3

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fputmCurrentOffset(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;F)V

    .line 607
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fgetmFinishingOffset(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 608
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->stop()V

    goto :goto_0

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fgetmCurrentOffset(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v3}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fgetmProgressiveStartSpeed(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v3

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fputmCurrentOffset(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;F)V

    goto :goto_0

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fgetmCurrentOffset(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v3}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fgetmSpeed(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v3

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fputmCurrentOffset(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;F)V

    .line 616
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fgetmCurrentOffset(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fgetmMaxOffset(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fputmNewTurn(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;Z)V

    .line 618
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fgetmCurrentOffset(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fgetmMaxOffset(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fputmCurrentOffset(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;F)V

    .line 621
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 622
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->-$$Nest$fgetmUpdater(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 624
    :cond_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 625
    return-void
.end method
