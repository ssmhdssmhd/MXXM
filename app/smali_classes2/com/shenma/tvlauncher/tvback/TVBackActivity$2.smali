.class Lcom/shenma/tvlauncher/tvback/TVBackActivity$2;
.super Landroid/os/Handler;
.source "TVBackActivity.java"


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

    .line 167
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$2;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 170
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 172
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$2;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$monMessage(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Landroid/os/Message;)V

    .line 173
    return-void
.end method
