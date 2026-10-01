.class Lcom/shenma/tvlauncher/view/MyService$1;
.super Landroid/os/Handler;
.source "MyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/MyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 42
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/MyService$1;->this$0:Lcom/shenma/tvlauncher/view/MyService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 44
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    .line 46
    .local v0, "i":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/MyService$1;->this$0:Lcom/shenma/tvlauncher/view/MyService;

    invoke-static {v1}, Lcom/shenma/tvlauncher/view/MyService;->-$$Nest$mgetTimeUrl(Lcom/shenma/tvlauncher/view/MyService;)V

    goto :goto_0

    .line 48
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/MyService$1;->this$0:Lcom/shenma/tvlauncher/view/MyService;

    invoke-static {v1}, Lcom/shenma/tvlauncher/view/MyService;->-$$Nest$msendUrl(Lcom/shenma/tvlauncher/view/MyService;)V

    .line 51
    :cond_1
    :goto_0
    return-void
.end method
