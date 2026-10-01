.class Lcom/shenma/tvlauncher/HomeActivity2$6;
.super Ljava/lang/Object;
.source "HomeActivity2.java"

# interfaces
.implements Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;


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

    .line 328
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2$6;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .line 331
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$6;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fputisMenuItemClick(Lcom/shenma/tvlauncher/HomeActivity2;Z)V

    .line 332
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$6;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetlastPosition(Lcom/shenma/tvlauncher/HomeActivity2;)I

    move-result v0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$6;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fputlastPosition(Lcom/shenma/tvlauncher/HomeActivity2;I)V

    .line 334
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$6;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fputisShowSiftMenu(Lcom/shenma/tvlauncher/HomeActivity2;Z)V

    .line 335
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$6;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetisProgrammaticSelection(Lcom/shenma/tvlauncher/HomeActivity2;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$6;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetviewPager2(Lcom/shenma/tvlauncher/HomeActivity2;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    goto :goto_0

    .line 340
    :cond_0
    if-eqz p1, :cond_2

    .line 341
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$6;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HomeActivity2;->adapter:Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->createFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    .line 343
    .local v0, "fragment":Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2$6;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetisShowSiftMenu(Lcom/shenma/tvlauncher/HomeActivity2;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 344
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$6;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fputisShowSiftMenu(Lcom/shenma/tvlauncher/HomeActivity2;Z)V

    .line 345
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$6;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fputisMenuItemClick(Lcom/shenma/tvlauncher/HomeActivity2;Z)V

    .line 346
    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->setHeaderViewVisible(I)V

    goto :goto_0

    .line 348
    :cond_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2$6;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v3, v1}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fputisShowSiftMenu(Lcom/shenma/tvlauncher/HomeActivity2;Z)V

    .line 349
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$6;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fputisMenuItemClick(Lcom/shenma/tvlauncher/HomeActivity2;Z)V

    .line 350
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->setHeaderViewVisible(I)V

    .line 356
    .end local v0    # "fragment":Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$6;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fputisProgrammaticSelection(Lcom/shenma/tvlauncher/HomeActivity2;Z)V

    .line 357
    return-void
.end method
