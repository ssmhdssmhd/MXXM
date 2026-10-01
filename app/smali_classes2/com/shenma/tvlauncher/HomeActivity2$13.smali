.class Lcom/shenma/tvlauncher/HomeActivity2$13;
.super Ljava/lang/Object;
.source "HomeActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity2;->onCreate(Landroid/os/Bundle;)V
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

    .line 429
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2$13;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 432
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$13;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    const-class v2, Lcom/shenma/tvlauncher/ThemeSelectorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$13;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivityForResult(Landroid/content/Intent;I)V

    .line 434
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$13;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/HomeActivity2;->overridePendingTransition(II)V

    .line 435
    return-void
.end method
