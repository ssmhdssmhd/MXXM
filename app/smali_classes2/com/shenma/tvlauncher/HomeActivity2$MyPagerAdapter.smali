.class public Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "HomeActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/HomeActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity2;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/HomeActivity2;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity2;
    .param p2, "fragmentActivity"    # Landroidx/fragment/app/FragmentActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1771
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    .line 1772
    invoke-direct {p0, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 1773
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->fragments:Ljava/util/List;

    .line 1775
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .line 1780
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1781
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0

    .line 1783
    :cond_0
    new-instance v0, Landroidx/fragment/app/Fragment;

    invoke-direct {v0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-object v0
.end method

.method public createFragments()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetinterface_style(Lcom/shenma/tvlauncher/HomeActivity2;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aa=="

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const/4 v0, 0x0

    .local v0, "position":I
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetdataList(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1809
    const/4 v1, 0x0

    .line 1810
    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    if-nez v0, :cond_3

    .line 1811
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetinterface_style(Lcom/shenma/tvlauncher/HomeActivity2;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetinterface_style(Lcom/shenma/tvlauncher/HomeActivity2;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 1841
    :cond_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetinterface_style(Lcom/shenma/tvlauncher/HomeActivity2;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 1842
    new-instance v2, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    invoke-direct {v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;-><init>()V

    move-object v1, v2

    .line 1843
    move-object v2, v1

    check-cast v2, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter$2;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter$2;-><init>(Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;)V

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->setOnZbClickListener(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$OnZbClickListener;)V

    goto :goto_2

    .line 1849
    :cond_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetinterface_style(Lcom/shenma/tvlauncher/HomeActivity2;)I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    .line 1850
    new-instance v2, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-direct {v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;-><init>()V

    move-object v1, v2

    goto :goto_2

    .line 1812
    :cond_2
    :goto_1
    new-instance v2, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetinterface_style(Lcom/shenma/tvlauncher/HomeActivity2;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;-><init>(I)V

    move-object v1, v2

    .line 1813
    move-object v2, v1

    check-cast v2, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter$1;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter$1;-><init>(Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;)V

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->setOnItemPickerShow(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$OnItemPickerShow;)V

    goto :goto_2

    .line 1853
    :cond_3
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetdataList(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1854
    .local v2, "item":Ljava/util/Map;
    new-instance v3, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    const-string/jumbo v4, "type_en"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 1857
    .end local v2    # "item":Ljava/util/Map;
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1808
    .end local v1    # "fragment":Landroidx/fragment/app/Fragment;
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1859
    :cond_5
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->fragments:Ljava/util/List;

    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .line 1864
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public updateFragment(ILandroidx/fragment/app/Fragment;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "newFragment"    # Landroidx/fragment/app/Fragment;

    .line 1787
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 1792
    .local v0, "oldFragment":Landroidx/fragment/app/Fragment;
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/HomeActivity2;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 1793
    .local v1, "ft":Landroidx/fragment/app/FragmentTransaction;
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1794
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 1797
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1800
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->notifyItemChanged(I)V

    .line 1802
    .end local v0    # "oldFragment":Landroidx/fragment/app/Fragment;
    .end local v1    # "ft":Landroidx/fragment/app/FragmentTransaction;
    :cond_0
    return-void
.end method
