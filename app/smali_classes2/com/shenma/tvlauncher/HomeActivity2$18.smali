.class Lcom/shenma/tvlauncher/HomeActivity2$18;
.super Ljava/lang/Object;
.source "HomeActivity2.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity2;->getGongGao()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity2;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 585
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2$18;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 587
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$18;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/HomeActivity2;->RequestError(Lcom/android/volley/VolleyError;)V

    .line 588
    return-void
.end method
