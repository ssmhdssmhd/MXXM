.class public Lcom/shenma/tvlauncher/view/HomeDialog;
.super Landroid/app/Dialog;
.source "HomeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 28
    return-void
.end method


# virtual methods
.method public show()V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/HomeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 37
    .local v0, "window":Landroid/view/Window;
    sget v1, Lcom/shenma/tvlauncher/R$style;->DialogAnim:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 39
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/view/HomeDialog;->setCanceledOnTouchOutside(Z)V

    .line 40
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 41
    return-void
.end method

.method public shows()V
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/HomeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 45
    .local v0, "window":Landroid/view/Window;
    sget v1, Lcom/shenma/tvlauncher/R$style;->DialogAnim:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 46
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/view/HomeDialog;->setCanceledOnTouchOutside(Z)V

    .line 47
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 48
    return-void
.end method
