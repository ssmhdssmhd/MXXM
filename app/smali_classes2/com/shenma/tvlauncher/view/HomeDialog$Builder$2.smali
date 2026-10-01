.class Lcom/shenma/tvlauncher/view/HomeDialog$Builder$2;
.super Ljava/lang/Object;
.source "HomeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->create()Lcom/shenma/tvlauncher/view/HomeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

.field final synthetic val$dialog:Lcom/shenma/tvlauncher/view/HomeDialog;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/view/HomeDialog$Builder;Lcom/shenma/tvlauncher/view/HomeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
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

    .line 194
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder$2;->this$0:Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    iput-object p2, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder$2;->val$dialog:Lcom/shenma/tvlauncher/view/HomeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder$2;->this$0:Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->-$$Nest$fgetneutralButtonClickListener(Lcom/shenma/tvlauncher/view/HomeDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder$2;->val$dialog:Lcom/shenma/tvlauncher/view/HomeDialog;

    const/4 v2, -0x3

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 197
    return-void
.end method
