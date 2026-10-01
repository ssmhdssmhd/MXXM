.class Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar$1;
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

    .line 25
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->-$$Nest$fputmPostedHide(Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;Z)V

    .line 30
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->-$$Nest$fputmStartTime(Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;J)V

    .line 31
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar$1;->this$0:Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ContentLoadingSmoothProgressBar;->setVisibility(I)V

    .line 32
    return-void
.end method
