.class Lcom/shenma/tvlauncher/HomeActivity$29;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity;->findViewById()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1401
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$29;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .line 1403
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$29;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v2, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1404
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$29;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1405
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$29;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/HomeActivity;->overridePendingTransition(II)V

    .line 1406
    return-void
.end method
