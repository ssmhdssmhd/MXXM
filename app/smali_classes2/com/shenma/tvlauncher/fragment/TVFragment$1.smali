.class Lcom/shenma/tvlauncher/fragment/TVFragment$1;
.super Ljava/lang/Object;
.source "TVFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/TVFragment;->initClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/TVFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/TVFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/TVFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/TVFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/R$id;->tv_iv_livetv:I

    if-ne v1, v2, :cond_0

    .line 110
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/TVFragment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/TVFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v2, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 111
    const-string v1, "TVTYPE"

    const-string v2, "TVLIVE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/TVFragment;

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/fragment/TVFragment;->startActivity(Landroid/content/Intent;)V

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/TVFragment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/TVFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/HomeActivity;->overridePendingTransition(II)V

    .line 117
    return-void
.end method
