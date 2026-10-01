.class Lcom/shenma/tvlauncher/view/LoadingDialog$1;
.super Ljava/lang/Object;
.source "LoadingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/view/LoadingDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/view/LoadingDialog;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/view/LoadingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/view/LoadingDialog;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/LoadingDialog$1;->this$0:Lcom/shenma/tvlauncher/view/LoadingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 48
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/LoadingDialog$1;->this$0:Lcom/shenma/tvlauncher/view/LoadingDialog;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/LoadingDialog;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/view/LoadingDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 51
    const/4 v0, 0x1

    return v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
