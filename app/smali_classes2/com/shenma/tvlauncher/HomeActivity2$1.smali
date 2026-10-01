.class Lcom/shenma/tvlauncher/HomeActivity2$1;
.super Landroid/os/Handler;
.source "HomeActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/HomeActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity2;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2$1;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 177
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 179
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$1;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$monMessage(Lcom/shenma/tvlauncher/HomeActivity2;Landroid/os/Message;)V

    .line 180
    return-void
.end method
