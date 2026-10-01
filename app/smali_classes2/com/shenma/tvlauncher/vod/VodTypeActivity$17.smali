.class Lcom/shenma/tvlauncher/vod/VodTypeActivity$17;
.super Ljava/lang/Object;
.source "VodTypeActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodTypeActivity;->GetMotion(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 814
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$17;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 816
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$17;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 817
    return-void
.end method
