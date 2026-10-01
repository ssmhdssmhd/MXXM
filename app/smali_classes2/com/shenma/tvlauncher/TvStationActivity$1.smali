.class Lcom/shenma/tvlauncher/TvStationActivity$1;
.super Ljava/lang/Object;
.source "TvStationActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/TvStationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/TvStationActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/TvStationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/TvStationActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/shenma/tvlauncher/TvStationActivity$1;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 55
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    .line 60
    :goto_0
    return-void
.end method
