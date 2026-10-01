.class Lcom/shenma/tvlauncher/BaseActivity$5;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/BaseActivity;->showExitDialog(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/BaseActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/BaseActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 391
    iput-object p1, p0, Lcom/shenma/tvlauncher/BaseActivity$5;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 394
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity$5;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/BaseActivity;->-$$Nest$fgetserver(Lcom/shenma/tvlauncher/BaseActivity;)Lnet/sunniwell/android/httpserver/HttpServer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity$5;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/BaseActivity;->-$$Nest$fgetserver(Lcom/shenma/tvlauncher/BaseActivity;)Lnet/sunniwell/android/httpserver/HttpServer;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sunniwell/android/httpserver/HttpServer;->stop()V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity$5;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/BaseActivity;->finish()V

    .line 398
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 399
    return-void
.end method
