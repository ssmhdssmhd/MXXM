.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler$1;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1261
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler$1;->this$1:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1265
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler$1;->this$1:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler$1;->this$1:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetClient(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    .line 1266
    return-void
.end method
