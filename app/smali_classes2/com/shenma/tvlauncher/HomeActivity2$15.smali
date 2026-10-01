.class Lcom/shenma/tvlauncher/HomeActivity2$15;
.super Landroid/content/BroadcastReceiver;
.source "HomeActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/HomeActivity2;
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

    .line 465
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2$15;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 469
    const-string/jumbo v0, "wallpaperFileName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "fileName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 471
    return-void

    .line 472
    :cond_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$15;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 473
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$15;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$mchangeBackImage(Lcom/shenma/tvlauncher/HomeActivity2;Ljava/lang/String;)V

    .line 474
    sget v0, Lcom/shenma/tvlauncher/R$string;->Wallpaper_replacement_successful:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {p1, v0, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 475
    return-void
.end method
