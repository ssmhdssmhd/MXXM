.class public Lcom/shenma/tvlauncher/view/JSONService$JSONHandler;
.super Landroid/os/Handler;
.source "JSONService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/JSONService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JSONHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/view/JSONService;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/view/JSONService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/view/JSONService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/JSONService$JSONHandler;->this$0:Lcom/shenma/tvlauncher/view/JSONService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .line 39
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 41
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/JSONService$JSONHandler;->this$0:Lcom/shenma/tvlauncher/view/JSONService;

    .line 44
    .local v0, "jSONService":Lcom/shenma/tvlauncher/view/JSONService;
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/JSONService$JSONHandler;->this$0:Lcom/shenma/tvlauncher/view/JSONService;

    iget-object v2, v2, Lcom/shenma/tvlauncher/view/JSONService;->Queue:Lcom/android/volley/RequestQueue;

    new-instance v3, Lcom/android/volley/toolbox/StringRequest;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->vg:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/shenma/tvlauncher/view/JSONService$JSONHandler$1;

    invoke-direct {v4, p0, v0}, Lcom/shenma/tvlauncher/view/JSONService$JSONHandler$1;-><init>(Lcom/shenma/tvlauncher/view/JSONService$JSONHandler;Lcom/shenma/tvlauncher/view/JSONService;)V

    new-instance v5, Lcom/shenma/tvlauncher/view/JSONService$JSONHandler$2;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/view/JSONService$JSONHandler$2;-><init>(Lcom/shenma/tvlauncher/view/JSONService$JSONHandler;)V

    invoke-direct {v3, v1, v4, v5}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 66
    return-void
.end method
