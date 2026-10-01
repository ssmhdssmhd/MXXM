.class Lcom/shenma/tvlauncher/EmpowerActivity$14;
.super Ljava/lang/Object;
.source "EmpowerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/EmpowerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/EmpowerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 613
    iput-object p1, p0, Lcom/shenma/tvlauncher/EmpowerActivity$14;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .line 615
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$14;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$fgeteditCode(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "code":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity$14;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "userName"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "username":Ljava/lang/String;
    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity$14;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v2, v1, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$mgetCard(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    return-void
.end method
