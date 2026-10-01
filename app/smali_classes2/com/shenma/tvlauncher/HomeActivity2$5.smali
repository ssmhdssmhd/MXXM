.class Lcom/shenma/tvlauncher/HomeActivity2$5;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "HomeActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity2;->onCreate(Landroid/os/Bundle;)V
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

    .line 315
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2$5;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .line 318
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$5;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fputisProgrammaticSelection(Lcom/shenma/tvlauncher/HomeActivity2;Z)V

    .line 319
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$5;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetisMenuItemClick(Lcom/shenma/tvlauncher/HomeActivity2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$5;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HomeActivity2;->menuView:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v0, p1}, Lcom/view/SingleChoiceMenuView;->setSelectedPosition(I)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$5;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fputisMenuItemClick(Lcom/shenma/tvlauncher/HomeActivity2;Z)V

    .line 324
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 325
    return-void
.end method
