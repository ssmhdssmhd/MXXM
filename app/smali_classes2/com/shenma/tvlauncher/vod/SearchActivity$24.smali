.class Lcom/shenma/tvlauncher/vod/SearchActivity$24;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/SearchActivity;->getVoice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 908
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 910
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->VodGongGaoError(Lcom/android/volley/VolleyError;)V

    .line 911
    return-void
.end method
