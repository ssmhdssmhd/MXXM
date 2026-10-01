.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$11;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 985
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 988
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    sget v2, Lcom/shenma/tvlauncher/R$string;->str_data_loading_error:I

    .line 989
    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    .line 988
    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 991
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 993
    :cond_0
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    .line 996
    :goto_0
    return-void
.end method
