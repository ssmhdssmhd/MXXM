.class public Lcom/shenma/tvlauncher/ThemeSelectorActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "ThemeSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected findViewById()V
    .locals 0

    .line 194
    return-void
.end method

.method protected initView()V
    .locals 0

    .line 184
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 189
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 43
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->requestWindowFeature(I)Z

    .line 45
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 49
    sget v0, Lcom/shenma/tvlauncher/R$layout;->theme_selector2_activity:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->setContentView(I)V

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 56
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    .line 58
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    .line 57
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 70
    :goto_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 71
    new-instance v0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/ThemeSelectorActivity$1;-><init>(Lcom/shenma/tvlauncher/ThemeSelectorActivity;)V

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 89
    sget v0, Lcom/shenma/tvlauncher/R$id;->recycler_view:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 113
    .local v0, "layoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    iget-object v1, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;>;"
    new-instance v2, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;

    const-string/jumbo v3, "\u98ce\u683c1"

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->img_theme1:I

    invoke-direct {v2, v3, v4}, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v2, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;

    const-string/jumbo v3, "\u98ce\u683c2"

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->img_theme2:I

    invoke-direct {v2, v3, v4}, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v2, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;

    const-string/jumbo v3, "\u98ce\u683c3"

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->img_theme3:I

    invoke-direct {v2, v3, v4}, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v2, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;

    const-string/jumbo v3, "\u98ce\u683c4"

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->img_theme4:I

    invoke-direct {v2, v3, v4}, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v2, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;

    const-string/jumbo v3, "\u98ce\u683c5"

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->img_theme5:I

    invoke-direct {v2, v3, v4}, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v2, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;

    const-string/jumbo v3, "\u98ce\u683c6"

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->img_theme6:I

    invoke-direct {v2, v3, v4}, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v2, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;

    const-string/jumbo v3, "\u98ce\u683c7"

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->img_theme7:I

    invoke-direct {v2, v3, v4}, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v2, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;

    const-string/jumbo v3, "\u98ce\u683c8"

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->img_theme8:I

    invoke-direct {v2, v3, v4}, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v2, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;

    invoke-direct {v2, v1}, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->adapter:Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;

    .line 128
    iget-object v2, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->adapter:Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 129
    iget-object v2, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->adapter:Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;

    new-instance v3, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;-><init>(Lcom/shenma/tvlauncher/ThemeSelectorActivity;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;->setOnItemClickListener(Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$OnItemClickListener;)V

    .line 177
    const/16 v2, 0x352

    invoke-static {p0, v2}, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->apply(Landroid/app/Activity;I)V

    .line 178
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 203
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->revert(Landroid/app/Activity;)V

    .line 204
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 205
    return-void
.end method

.method protected setListener()V
    .locals 0

    .line 199
    return-void
.end method
