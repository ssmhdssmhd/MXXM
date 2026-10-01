.class Lcom/shenma/tvlauncher/fragment/AppFragment$5;
.super Ljava/lang/Object;
.source "AppFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/AppFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$5;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$5;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetmHandler(Lcom/shenma/tvlauncher/fragment/AppFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$5;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetimgurls(Lcom/shenma/tvlauncher/fragment/AppFragment;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$5;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetcurrentIndex(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v2

    aget-object v1, v1, v2

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 154
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$5;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetmHandler(Lcom/shenma/tvlauncher/fragment/AppFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    return-void
.end method
