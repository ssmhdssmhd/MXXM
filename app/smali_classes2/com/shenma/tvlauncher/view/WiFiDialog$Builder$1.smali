.class Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$1;
.super Ljava/lang/Object;
.source "WiFiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->create()Lcom/shenma/tvlauncher/view/WiFiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

.field final synthetic val$dialog:Lcom/shenma/tvlauncher/view/WiFiDialog;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;Lcom/shenma/tvlauncher/view/WiFiDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
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

    .line 118
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$1;->this$0:Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    iput-object p2, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$1;->val$dialog:Lcom/shenma/tvlauncher/view/WiFiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$1;->this$0:Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->-$$Nest$fgetpositiveButtonClickListener(Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$1;->val$dialog:Lcom/shenma/tvlauncher/view/WiFiDialog;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 121
    return-void
.end method
