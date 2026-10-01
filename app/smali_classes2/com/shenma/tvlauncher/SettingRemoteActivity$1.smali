.class Lcom/shenma/tvlauncher/SettingRemoteActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingRemoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/SettingRemoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/SettingRemoteActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SettingRemoteActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SettingRemoteActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingRemoteActivity$1;->this$0:Lcom/shenma/tvlauncher/SettingRemoteActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingRemoteActivity$1;->this$0:Lcom/shenma/tvlauncher/SettingRemoteActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/SettingRemoteActivity;->-$$Nest$fgetserver(Lcom/shenma/tvlauncher/SettingRemoteActivity;)Lcom/shenma/tvlauncher/utils/RemoteServer;

    move-result-object v1

    iget-object v1, v1, Lcom/shenma/tvlauncher/utils/RemoteServer;->mPackName:Ljava/lang/String;

    .line 27
    .local v1, "mPackName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t mPackName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "zhouchuan"

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingRemoteActivity$1;->this$0:Lcom/shenma/tvlauncher/SettingRemoteActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingRemoteActivity;->-$$Nest$fgetserver(Lcom/shenma/tvlauncher/SettingRemoteActivity;)Lcom/shenma/tvlauncher/utils/RemoteServer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/shenma/tvlauncher/utils/RemoteServer;->setSuccessResult(ILjava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method
