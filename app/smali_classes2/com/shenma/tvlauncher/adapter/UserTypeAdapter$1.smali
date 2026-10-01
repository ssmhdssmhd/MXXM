.class Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$1;
.super Ljava/lang/Object;
.source "UserTypeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;
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

    .line 123
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$1;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$1;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$1;->this$0:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    iput p2, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 126
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$1;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$1;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$1;->this$0:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    invoke-static {v0}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->-$$Nest$fgetonItemClickListener(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$1;->this$0:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    invoke-static {v0}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->-$$Nest$fgetonItemClickListener(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$OnItemClickListener;->onItemClick(I)V

    .line 129
    :cond_0
    return-void
.end method
