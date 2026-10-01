.class Lcom/shenma/tvlauncher/utils/RemoteServer$2;
.super Ljava/lang/Thread;
.source "RemoteServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/utils/RemoteServer;->startInstallAPK(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/utils/RemoteServer;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/utils/RemoteServer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/utils/RemoteServer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/shenma/tvlauncher/utils/RemoteServer$2;->this$0:Lcom/shenma/tvlauncher/utils/RemoteServer;

    iput-object p2, p0, Lcom/shenma/tvlauncher/utils/RemoteServer$2;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 116
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 117
    new-instance v0, Lcom/shenma/tvlauncher/utils/AppManager;

    iget-object v1, p0, Lcom/shenma/tvlauncher/utils/RemoteServer$2;->this$0:Lcom/shenma/tvlauncher/utils/RemoteServer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/RemoteServer;->-$$Nest$fgetmContext(Lcom/shenma/tvlauncher/utils/RemoteServer;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/utils/AppManager;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, "appManager":Lcom/shenma/tvlauncher/utils/AppManager;
    iget-object v1, p0, Lcom/shenma/tvlauncher/utils/RemoteServer$2;->val$uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/utils/AppManager;->install(Ljava/lang/String;)V

    .line 136
    return-void
.end method
