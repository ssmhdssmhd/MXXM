.class public abstract Lcom/shenma/tvlauncher/fragment/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# static fields
.field protected static ISTV:Ljava/lang/Boolean;


# instance fields
.field protected context:Landroid/content/Context;

.field protected home:Lcom/shenma/tvlauncher/HomeActivity;

.field protected mHeight:I

.field protected mWidth:I

.field protected params:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract findViewById()V
.end method

.method protected abstract loadViewLayout()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/BaseFragment;->context:Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/HomeActivity;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/BaseFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    .line 41
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/BaseFragment;->context:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 42
    .local v0, "manager":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 43
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 44
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/shenma/tvlauncher/fragment/BaseFragment;->mWidth:I

    .line 45
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/shenma/tvlauncher/fragment/BaseFragment;->mHeight:I

    .line 46
    sget-object v2, Lcom/shenma/tvlauncher/HomeActivity;->homeParams:Ljava/lang/String;

    iput-object v2, p0, Lcom/shenma/tvlauncher/fragment/BaseFragment;->params:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/shenma/tvlauncher/HomeActivity;->getIsTV()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/shenma/tvlauncher/fragment/BaseFragment;->ISTV:Ljava/lang/Boolean;

    .line 59
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 65
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .line 84
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 86
    :try_start_0
    const-class v0, Landroidx/fragment/app/Fragment;

    const-string v1, "mChildFragmentManager"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 88
    .local v0, "childFragmentManager":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "childFragmentManager":Ljava/lang/reflect/Field;
    nop

    .line 96
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 91
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onStart()V
    .locals 0

    .line 71
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 72
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 77
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 78
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 79
    return-void
.end method

.method protected abstract setListener()V
.end method
