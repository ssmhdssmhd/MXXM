.class public final Lcom/shenma/tvlauncher/databinding/MvMediaVolumeControlerBinding;
.super Ljava/lang/Object;
.source "MvMediaVolumeControlerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final centerImage:Landroid/widget/ImageView;

.field public final centerProgress:Landroid/widget/ProgressBar;

.field public final playCenter:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "centerImage"    # Landroid/widget/ImageView;
    .param p3, "centerProgress"    # Landroid/widget/ProgressBar;
    .param p4, "playCenter"    # Landroid/widget/RelativeLayout;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/MvMediaVolumeControlerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 36
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/MvMediaVolumeControlerBinding;->centerImage:Landroid/widget/ImageView;

    .line 37
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/MvMediaVolumeControlerBinding;->centerProgress:Landroid/widget/ProgressBar;

    .line 38
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/MvMediaVolumeControlerBinding;->playCenter:Landroid/widget/RelativeLayout;

    .line 39
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvMediaVolumeControlerBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 68
    sget v0, Lcom/shenma/tvlauncher/R$id;->center_image:I

    .line 69
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 70
    .local v1, "centerImage":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 74
    sget v0, Lcom/shenma/tvlauncher/R$id;->center_progress:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 76
    .local v2, "centerProgress":Landroid/widget/ProgressBar;
    if-eqz v2, :cond_0

    .line 80
    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 82
    .local v3, "playCenter":Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/shenma/tvlauncher/databinding/MvMediaVolumeControlerBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/shenma/tvlauncher/databinding/MvMediaVolumeControlerBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;)V

    return-object v4

    .line 77
    .end local v3    # "playCenter":Landroid/widget/RelativeLayout;
    :cond_0
    goto :goto_0

    .line 71
    .end local v2    # "centerProgress":Landroid/widget/ProgressBar;
    :cond_1
    nop

    .line 85
    .end local v1    # "centerImage":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/MvMediaVolumeControlerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/MvMediaVolumeControlerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MvMediaVolumeControlerBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MvMediaVolumeControlerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 55
    sget v0, Lcom/shenma/tvlauncher/R$layout;->mv_media_volume_controler:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/MvMediaVolumeControlerBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvMediaVolumeControlerBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/MvMediaVolumeControlerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/MvMediaVolumeControlerBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
