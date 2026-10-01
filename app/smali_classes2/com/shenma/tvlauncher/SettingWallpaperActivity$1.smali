.class Lcom/shenma/tvlauncher/SettingWallpaperActivity$1;
.super Ljava/lang/Object;
.source "SettingWallpaperActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/SettingWallpaperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/shenma/tvlauncher/domain/Wallpaper;",
        ">;"
    }
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

    .line 78
    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$1;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/domain/Wallpaper;)V
    .locals 4
    .param p1, "response"    # Lcom/shenma/tvlauncher/domain/Wallpaper;

    .line 82
    if-eqz p1, :cond_0

    const-string v0, "200"

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/Wallpaper;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$1;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/Wallpaper;->getData()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->-$$Nest$fputdata(Lcom/shenma/tvlauncher/SettingWallpaperActivity;Ljava/util/List;)V

    .line 84
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$1;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    new-instance v1, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$1;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$1;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, v0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->adapter:Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;

    .line 85
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$1;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->-$$Nest$fgetwallpaper_gv(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$1;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->adapter:Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 78
    check-cast p1, Lcom/shenma/tvlauncher/domain/Wallpaper;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/SettingWallpaperActivity$1;->onResponse(Lcom/shenma/tvlauncher/domain/Wallpaper;)V

    return-void
.end method
