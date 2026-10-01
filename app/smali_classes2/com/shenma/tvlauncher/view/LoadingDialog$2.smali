.class Lcom/shenma/tvlauncher/view/LoadingDialog$2;
.super Ljava/lang/Object;
.source "LoadingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

    .line 56
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/LoadingDialog$2;->this$0:Lcom/shenma/tvlauncher/view/LoadingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 59
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/LoadingDialog$2;->this$0:Lcom/shenma/tvlauncher/view/LoadingDialog;

    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_tv_loading:I

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 60
    .local v0, "image":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/LoadingDialog$2;->this$0:Lcom/shenma/tvlauncher/view/LoadingDialog;

    sget v2, Lcom/shenma/tvlauncher/R$id;->tv_tv_loading:I

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/view/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 61
    .local v1, "msg":Landroid/widget/TextView;
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 62
    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 68
    .local v2, "drawable":Landroid/graphics/drawable/AnimationDrawable;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 69
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 71
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/LoadingDialog$2;->this$0:Lcom/shenma/tvlauncher/view/LoadingDialog;

    invoke-static {v3}, Lcom/shenma/tvlauncher/view/LoadingDialog;->-$$Nest$fgetmessage(Lcom/shenma/tvlauncher/view/LoadingDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method
