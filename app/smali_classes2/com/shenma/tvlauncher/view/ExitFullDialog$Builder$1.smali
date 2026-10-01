.class Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder$1;
.super Ljava/lang/Object;
.source "ExitFullDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->create()Lcom/shenma/tvlauncher/view/ExitFullDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;

.field final synthetic val$dialog:Lcom/shenma/tvlauncher/view/ExitFullDialog;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;Lcom/shenma/tvlauncher/view/ExitFullDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder$1;->this$0:Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;

    iput-object p2, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder$1;->val$dialog:Lcom/shenma/tvlauncher/view/ExitFullDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder$1;->this$0:Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->-$$Nest$fgetpositiveButtonClickListener(Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder$1;->val$dialog:Lcom/shenma/tvlauncher/view/ExitFullDialog;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 163
    return-void
.end method
