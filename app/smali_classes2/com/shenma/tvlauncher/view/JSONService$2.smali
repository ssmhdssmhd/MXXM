.class Lcom/shenma/tvlauncher/view/JSONService$2;
.super Ljava/lang/Object;
.source "JSONService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/view/JSONService;->Mainurl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/view/JSONService;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/view/JSONService;)V
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

    .line 126
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/JSONService$2;->this$0:Lcom/shenma/tvlauncher/view/JSONService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 130
    return-void
.end method
