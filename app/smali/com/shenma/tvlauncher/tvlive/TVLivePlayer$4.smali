.class Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$4;
.super Ljava/lang/Object;
.source "TVLivePlayer.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 442
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$4;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 445
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$4;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    const-string v1, "\u4eb2\u7231\u7684\u7528\u6237,\u60a8\u540e\u53f0\u914d\u7f6e\u7684\u6570\u636e\u6709\u8bef!"

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 446
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    const-string v1, "TVLivePlayer"

    if-eqz v0, :cond_0

    .line 447
    const-string v0, "\u8bf7\u6c42\u8d85\u65f6"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_0
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_1

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthFailureError="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_1
    :goto_0
    return-void
.end method
