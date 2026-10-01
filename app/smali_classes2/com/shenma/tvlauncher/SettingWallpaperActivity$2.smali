.class Lcom/shenma/tvlauncher/SettingWallpaperActivity$2;
.super Ljava/lang/Object;
.source "SettingWallpaperActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/SettingWallpaperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SettingWallpaperActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$2;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 93
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    .line 98
    :goto_0
    return-void
.end method
