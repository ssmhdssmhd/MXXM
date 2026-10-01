.class Lcom/shenma/tvlauncher/EmpowerActivity$12;
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

    .line 599
    iput-object p1, p0, Lcom/shenma/tvlauncher/EmpowerActivity$12;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .line 601
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$12;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$mvip_root_card(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    .line 602
    return-void
.end method
