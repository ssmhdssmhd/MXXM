.class public Lcom/shenma/tvlauncher/view/MyService$displayTime;
.super Ljava/util/TimerTask;
.source "MyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/MyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "displayTime"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/view/MyService;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/view/MyService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/view/MyService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/MyService$displayTime;->this$0:Lcom/shenma/tvlauncher/view/MyService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 145
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyService$displayTime;->this$0:Lcom/shenma/tvlauncher/view/MyService;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyService;->-$$Nest$fgetmHandler(Lcom/shenma/tvlauncher/view/MyService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/view/MyService$displayTime$1;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/view/MyService$displayTime$1;-><init>(Lcom/shenma/tvlauncher/view/MyService$displayTime;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method
