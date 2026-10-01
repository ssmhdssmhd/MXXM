.class Lcom/shenma/tvlauncher/AboutActivity$1;
.super Landroid/os/Handler;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/AboutActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/AboutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/AboutActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/shenma/tvlauncher/AboutActivity$1;->this$0:Lcom/shenma/tvlauncher/AboutActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 42
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/AboutActivity$1;->this$0:Lcom/shenma/tvlauncher/AboutActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AboutActivity;->-$$Nest$mloadImg(Lcom/shenma/tvlauncher/AboutActivity;)V

    .line 40
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
