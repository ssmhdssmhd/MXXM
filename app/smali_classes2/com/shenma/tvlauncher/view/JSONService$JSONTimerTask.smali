.class public Lcom/shenma/tvlauncher/view/JSONService$JSONTimerTask;
.super Ljava/util/TimerTask;
.source "JSONService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/JSONService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JSONTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/view/JSONService;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/view/JSONService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/view/JSONService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/JSONService$JSONTimerTask;->this$0:Lcom/shenma/tvlauncher/view/JSONService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/JSONService$JSONTimerTask;->this$0:Lcom/shenma/tvlauncher/view/JSONService;

    iget-object v0, v0, Lcom/shenma/tvlauncher/view/JSONService;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 74
    return-void
.end method
