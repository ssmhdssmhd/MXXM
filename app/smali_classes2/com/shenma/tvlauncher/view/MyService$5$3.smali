.class Lcom/shenma/tvlauncher/view/MyService$5$3;
.super Lcom/android/volley/toolbox/StringRequest;
.source "MyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/view/MyService$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/view/MyService$5;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/view/MyService$5;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/view/MyService$5;
    .param p2, "arg0"    # I
    .param p3, "arg1"    # Ljava/lang/String;
    .param p5, "arg3"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 170
    .local p4, "arg2":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/MyService$5$3;->this$1:Lcom/shenma/tvlauncher/view/MyService$5;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 175
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/MyService$5$3;->this$1:Lcom/shenma/tvlauncher/view/MyService$5;

    iget-object v1, v1, Lcom/shenma/tvlauncher/view/MyService$5;->this$0:Lcom/shenma/tvlauncher/view/MyService;

    invoke-static {v1}, Lcom/shenma/tvlauncher/view/MyService;->-$$Nest$fgetUA(Lcom/shenma/tvlauncher/view/MyService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/MyService$5$3;->this$1:Lcom/shenma/tvlauncher/view/MyService$5;

    iget-object v1, v1, Lcom/shenma/tvlauncher/view/MyService$5;->this$0:Lcom/shenma/tvlauncher/view/MyService;

    invoke-static {v1}, Lcom/shenma/tvlauncher/view/MyService;->-$$Nest$fgetUA(Lcom/shenma/tvlauncher/view/MyService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/MyService$5$3;->this$1:Lcom/shenma/tvlauncher/view/MyService$5;

    iget-object v1, v1, Lcom/shenma/tvlauncher/view/MyService$5;->this$0:Lcom/shenma/tvlauncher/view/MyService;

    invoke-static {v1}, Lcom/shenma/tvlauncher/view/MyService;->-$$Nest$fgetUA(Lcom/shenma/tvlauncher/view/MyService;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "User-Agent"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/MyService$5$3;->this$1:Lcom/shenma/tvlauncher/view/MyService$5;

    iget-object v1, v1, Lcom/shenma/tvlauncher/view/MyService$5;->this$0:Lcom/shenma/tvlauncher/view/MyService;

    invoke-static {v1}, Lcom/shenma/tvlauncher/view/MyService;->-$$Nest$fgetAuthorization(Lcom/shenma/tvlauncher/view/MyService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/MyService$5$3;->this$1:Lcom/shenma/tvlauncher/view/MyService$5;

    iget-object v1, v1, Lcom/shenma/tvlauncher/view/MyService$5;->this$0:Lcom/shenma/tvlauncher/view/MyService;

    invoke-static {v1}, Lcom/shenma/tvlauncher/view/MyService;->-$$Nest$fgetAuthorization(Lcom/shenma/tvlauncher/view/MyService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/MyService$5$3;->this$1:Lcom/shenma/tvlauncher/view/MyService$5;

    iget-object v1, v1, Lcom/shenma/tvlauncher/view/MyService$5;->this$0:Lcom/shenma/tvlauncher/view/MyService;

    invoke-static {v1}, Lcom/shenma/tvlauncher/view/MyService;->-$$Nest$fgetAuthorization(Lcom/shenma/tvlauncher/view/MyService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_1
    return-object v0
.end method
