.class public Lcom/shenma/tvlauncher/view/LiveLoadingDialog;
.super Landroid/app/Dialog;
.source "LiveLoadingDialog.java"


# instance fields
.field private tv_loading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "paramContext"    # Landroid/content/Context;

    .line 23
    sget v0, Lcom/shenma/tvlauncher/R$style;->Exitdialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$layout;->live_loading_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, "loadingView":Landroid/view/View;
    sget v1, Lcom/shenma/tvlauncher/R$id;->live_loading_tv:I

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->tv_loading:Landroid/widget/TextView;

    .line 28
    sget v1, Lcom/shenma/tvlauncher/R$id;->live_loading_img:I

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 30
    .local v1, "iv_loading":Landroid/widget/ImageView;
    sget v2, Lcom/shenma/tvlauncher/R$anim;->loading_rotate:I

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 32
    .local v2, "localAnimation":Landroid/view/animation/Animation;
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 33
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->setCancelable(Z)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->setContentView(Landroid/view/View;)V

    .line 35
    return-void
.end method


# virtual methods
.method public setLoadingMsg(I)V
    .locals 1
    .param p1, "paramInt"    # I

    .line 38
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->tv_loading:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 39
    return-void
.end method

.method public setLoadingMsg(Ljava/lang/String;)V
    .locals 1
    .param p1, "paramString"    # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->tv_loading:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method

.method public setMsgGone()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->tv_loading:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    return-void
.end method
