.class Lcom/shenma/tvlauncher/view/JSONService$JSONHandler$1;
.super Ljava/lang/Object;
.source "JSONService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/view/JSONService$JSONHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/view/JSONService$JSONHandler;

.field final synthetic val$jSONService:Lcom/shenma/tvlauncher/view/JSONService;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/view/JSONService$JSONHandler;Lcom/shenma/tvlauncher/view/JSONService;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/view/JSONService$JSONHandler;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/JSONService$JSONHandler$1;->this$1:Lcom/shenma/tvlauncher/view/JSONService$JSONHandler;

    iput-object p2, p0, Lcom/shenma/tvlauncher/view/JSONService$JSONHandler$1;->val$jSONService:Lcom/shenma/tvlauncher/view/JSONService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 44
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/view/JSONService$JSONHandler$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .line 48
    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "jSONObject":Lorg/json/JSONObject;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/shenma/tvlauncher/utils/Constant;->h:Ljava/lang/String;

    .line 50
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/shenma/tvlauncher/utils/Constant;->to:Ljava/lang/String;

    .line 51
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/JSONService$JSONHandler$1;->val$jSONService:Lcom/shenma/tvlauncher/view/JSONService;

    const-class v4, Lcom/shenma/tvlauncher/view/MyService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/JSONService$JSONHandler$1;->this$1:Lcom/shenma/tvlauncher/view/JSONService$JSONHandler;

    iget-object v3, v3, Lcom/shenma/tvlauncher/view/JSONService$JSONHandler;->this$0:Lcom/shenma/tvlauncher/view/JSONService;

    invoke-virtual {v3, v2}, Lcom/shenma/tvlauncher/view/JSONService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    nop

    .line 58
    .end local v1    # "jSONObject":Lorg/json/JSONObject;
    .end local v2    # "intent":Landroid/content/Intent;
    return-void

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 54
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
