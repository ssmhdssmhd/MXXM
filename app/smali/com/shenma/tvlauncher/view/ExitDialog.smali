.class public Lcom/shenma/tvlauncher/view/ExitDialog;
.super Landroid/app/Dialog;
.source "ExitDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private isNet:Ljava/lang/Boolean;

.field private lv_exit_cancle:Landroid/widget/LinearLayout;

.field private lv_exit_ok:Landroid/widget/LinearLayout;

.field private tv_exit_cancle:Landroid/widget/TextView;

.field private tv_exit_confirm:Landroid/widget/TextView;

.field private tv_exit_msg:Landroid/widget/TextView;

.field private tv_exit_msg_titile:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    sget v0, Lcom/shenma/tvlauncher/R$style;->DialogStyle:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 35
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->context:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$layout;->tv_exit_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "v":Landroid/view/View;
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_exit_msg_titile:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->tv_exit_msg_titile:Landroid/widget/TextView;

    .line 38
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_exit_msg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->tv_exit_msg:Landroid/widget/TextView;

    .line 39
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_exit_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->tv_exit_confirm:Landroid/widget/TextView;

    .line 40
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_exit_cancle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->tv_exit_cancle:Landroid/widget/TextView;

    .line 41
    sget v1, Lcom/shenma/tvlauncher/R$id;->lv_exit_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->lv_exit_ok:Landroid/widget/LinearLayout;

    .line 42
    sget v1, Lcom/shenma/tvlauncher/R$id;->lv_exit_cancle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->lv_exit_cancle:Landroid/widget/LinearLayout;

    .line 43
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/ExitDialog;->setContentView(Landroid/view/View;)V

    .line 44
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->lv_exit_ok:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->lv_exit_cancle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/ExitDialog;->setScreenBrightness()V

    .line 47
    return-void
.end method

.method private getSystemService(Ljava/lang/String;)Landroid/app/ActivityManager;
    .locals 1
    .param p1, "activityService"    # Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method private setScreenBrightness()V
    .locals 3

    .line 90
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/ExitDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 91
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 92
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 94
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/shenma/tvlauncher/R$id;->lv_exit_cancle:I

    const v2, 0x10a0001

    const/high16 v3, 0x10a0000

    if-ne v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/ExitDialog;->dismiss()V

    .line 100
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->isNet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/shenma/tvlauncher/R$id;->lv_exit_ok:I

    if-ne v0, v1, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/ExitDialog;->dismiss()V

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->isNet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 114
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 123
    :cond_2
    :goto_0
    return-void
.end method

.method public setCancle(Ljava/lang/String;)V
    .locals 1
    .param p1, "cancle"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->tv_exit_cancle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public setConfirm(Ljava/lang/String;)V
    .locals 1
    .param p1, "confirm"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->tv_exit_confirm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public setIsNet(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isNet"    # Ljava/lang/Boolean;

    .line 82
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->isNet:Ljava/lang/Boolean;

    .line 83
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->tv_exit_msg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/ExitDialog;->tv_exit_msg_titile:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public show()V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/ExitDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 76
    .local v0, "window":Landroid/view/Window;
    sget v1, Lcom/shenma/tvlauncher/R$style;->DialogAnim:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 77
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/view/ExitDialog;->setCanceledOnTouchOutside(Z)V

    .line 78
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 79
    return-void
.end method
