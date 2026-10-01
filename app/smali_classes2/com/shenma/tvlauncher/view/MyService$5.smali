.class Lcom/shenma/tvlauncher/view/MyService$5;
.super Ljava/lang/Object;
.source "MyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/view/MyService;->sendUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/view/MyService;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/view/MyService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/view/MyService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/MyService$5;->this$0:Lcom/shenma/tvlauncher/view/MyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/MyService$5;->this$0:Lcom/shenma/tvlauncher/view/MyService;

    invoke-static {v1}, Lcom/shenma/tvlauncher/view/MyService;->-$$Nest$fgetmConcurrent(Lcom/shenma/tvlauncher/view/MyService;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/MyService$5;->this$0:Lcom/shenma/tvlauncher/view/MyService;

    iget-object v1, v1, Lcom/shenma/tvlauncher/view/MyService;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/shenma/tvlauncher/view/MyService$5$3;

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/MyService$5;->this$0:Lcom/shenma/tvlauncher/view/MyService;

    invoke-static {v3}, Lcom/shenma/tvlauncher/view/MyService;->-$$Nest$fgetPost(Lcom/shenma/tvlauncher/view/MyService;)I

    move-result v4

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/MyService$5;->this$0:Lcom/shenma/tvlauncher/view/MyService;

    invoke-static {v3}, Lcom/shenma/tvlauncher/view/MyService;->-$$Nest$fgetmUrl(Lcom/shenma/tvlauncher/view/MyService;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/shenma/tvlauncher/view/MyService$5$1;

    invoke-direct {v6, p0}, Lcom/shenma/tvlauncher/view/MyService$5$1;-><init>(Lcom/shenma/tvlauncher/view/MyService$5;)V

    new-instance v7, Lcom/shenma/tvlauncher/view/MyService$5$2;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/view/MyService$5$2;-><init>(Lcom/shenma/tvlauncher/view/MyService$5;)V

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/shenma/tvlauncher/view/MyService$5$3;-><init>(Lcom/shenma/tvlauncher/view/MyService$5;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
