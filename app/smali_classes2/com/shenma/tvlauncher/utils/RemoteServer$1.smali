.class Lcom/shenma/tvlauncher/utils/RemoteServer$1;
.super Landroid/os/Handler;
.source "RemoteServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/utils/RemoteServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/utils/RemoteServer;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/utils/RemoteServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/utils/RemoteServer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/shenma/tvlauncher/utils/RemoteServer$1;->this$0:Lcom/shenma/tvlauncher/utils/RemoteServer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 25
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "apkName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 28
    .local v1, "packageName":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 38
    :pswitch_0
    const/4 v2, 0x0

    .line 39
    .local v2, "result":Z
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_0

    .line 40
    const/4 v2, 0x1

    .line 41
    :cond_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 43
    iget-object v4, p0, Lcom/shenma/tvlauncher/utils/RemoteServer$1;->this$0:Lcom/shenma/tvlauncher/utils/RemoteServer;

    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/RemoteServer;->-$$Nest$fgetmContext(Lcom/shenma/tvlauncher/utils/RemoteServer;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/shenma/tvlauncher/utils/Utils;->getApkName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v4, p0, Lcom/shenma/tvlauncher/utils/RemoteServer$1;->this$0:Lcom/shenma/tvlauncher/utils/RemoteServer;

    const/16 v5, 0x3ea

    invoke-static {v4, v5, v0, v2}, Lcom/shenma/tvlauncher/utils/RemoteServer;->-$$Nest$mshowPromptMessage(Lcom/shenma/tvlauncher/utils/RemoteServer;ILjava/lang/String;Z)V

    .line 46
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 47
    .local v4, "json":Lorg/json/JSONObject;
    const/4 v5, 0x0

    const-string v6, "installation"

    if-eqz v2, :cond_1

    .line 50
    :try_start_0
    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v3

    .line 52
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 53
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_0
    goto :goto_1

    .line 57
    :cond_1
    :try_start_1
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    goto :goto_1

    .line 58
    :catch_1
    move-exception v3

    .line 59
    .restart local v3    # "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 63
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/shenma/tvlauncher/utils/RemoteServer$1;->this$0:Lcom/shenma/tvlauncher/utils/RemoteServer;

    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/RemoteServer;->-$$Nest$fgetupLoadFileHandler(Lcom/shenma/tvlauncher/utils/RemoteServer;)Lcom/shenma/tvlauncher/utils/UploadFileHandler;

    move-result-object v3

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->writeToHTML(Ljava/lang/String;)V

    .line 64
    sput-boolean v5, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->isInstall:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 67
    goto :goto_2

    .line 65
    :catch_2
    move-exception v3

    goto :goto_2

    .line 30
    .end local v2    # "result":Z
    .end local v4    # "json":Lorg/json/JSONObject;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 31
    .local v2, "uri":Ljava/lang/String;
    iget-object v4, p0, Lcom/shenma/tvlauncher/utils/RemoteServer$1;->this$0:Lcom/shenma/tvlauncher/utils/RemoteServer;

    invoke-static {v4, v2}, Lcom/shenma/tvlauncher/utils/RemoteServer;->-$$Nest$mstartInstallAPK(Lcom/shenma/tvlauncher/utils/RemoteServer;Ljava/lang/String;)V

    .line 33
    iget-object v4, p0, Lcom/shenma/tvlauncher/utils/RemoteServer$1;->this$0:Lcom/shenma/tvlauncher/utils/RemoteServer;

    iget-object v5, p0, Lcom/shenma/tvlauncher/utils/RemoteServer$1;->this$0:Lcom/shenma/tvlauncher/utils/RemoteServer;

    invoke-static {v5}, Lcom/shenma/tvlauncher/utils/RemoteServer;->-$$Nest$fgetmContext(Lcom/shenma/tvlauncher/utils/RemoteServer;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/shenma/tvlauncher/utils/Utils;->getPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/shenma/tvlauncher/utils/RemoteServer;->mPackName:Ljava/lang/String;

    .line 34
    iget-object v4, p0, Lcom/shenma/tvlauncher/utils/RemoteServer$1;->this$0:Lcom/shenma/tvlauncher/utils/RemoteServer;

    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/RemoteServer;->-$$Nest$fgetmContext(Lcom/shenma/tvlauncher/utils/RemoteServer;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/shenma/tvlauncher/utils/Utils;->getAppNameByApkFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v4, p0, Lcom/shenma/tvlauncher/utils/RemoteServer$1;->this$0:Lcom/shenma/tvlauncher/utils/RemoteServer;

    const/16 v5, 0x3e9

    invoke-static {v4, v5, v0, v3}, Lcom/shenma/tvlauncher/utils/RemoteServer;->-$$Nest$mshowPromptMessage(Lcom/shenma/tvlauncher/utils/RemoteServer;ILjava/lang/String;Z)V

    .line 36
    nop

    .line 70
    .end local v2    # "uri":Ljava/lang/String;
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
