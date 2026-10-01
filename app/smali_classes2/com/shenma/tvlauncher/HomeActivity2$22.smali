.class Lcom/shenma/tvlauncher/HomeActivity2$22;
.super Ljava/lang/Object;
.source "HomeActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity2;->notice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity2;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 747
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2$22;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 750
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$22;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    sget v1, Lcom/shenma/tvlauncher/R$id;->notice:I

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/HomeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 751
    .local v0, "viewById":Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 753
    return-void
.end method
