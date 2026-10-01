.class Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar$2;
.super Ljava/lang/Object;
.source "ContentLoadingSmoothProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar$2;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar$2;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->-$$Nest$fputmPostedShow(Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;Z)V

    .line 40
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar$2;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->-$$Nest$fgetmDismissed(Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar$2;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->-$$Nest$fputmStartTime(Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;J)V

    .line 42
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar$2;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->setVisibility(I)V

    .line 44
    :cond_0
    return-void
.end method
