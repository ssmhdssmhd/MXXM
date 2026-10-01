.class Lcom/shenma/tvlauncher/BaseActivity$7;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/BaseActivity;->handleFatalError()V
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

    .line 454
    iput-object p1, p0, Lcom/shenma/tvlauncher/BaseActivity$7;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity$7;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    const-string v1, "\u53d1\u751f\u4e86\u4e00\u70b9\u610f\u5916\uff0c\u7a0b\u5e8f\u7ec8\u6b62!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 459
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity$7;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/BaseActivity;->finish()V

    .line 460
    return-void
.end method
