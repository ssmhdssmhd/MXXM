.class public final Lcom/shenma/tvlauncher/databinding/MvMediaControlersBinding;
.super Ljava/lang/Object;
.source "MvMediaControlersBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ibPlayStatus:Landroid/widget/ImageButton;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final seekbar:Landroid/widget/SeekBar;

.field public final tvCurrentTime:Landroid/widget/TextView;

.field public final tvDividingLine:Landroid/widget/TextView;

.field public final tvMenu:Landroid/widget/TextView;

.field public final tvTotalTime:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "ibPlayStatus"    # Landroid/widget/ImageButton;
    .param p3, "seekbar"    # Landroid/widget/SeekBar;
    .param p4, "tvCurrentTime"    # Landroid/widget/TextView;
    .param p5, "tvDividingLine"    # Landroid/widget/TextView;
    .param p6, "tvMenu"    # Landroid/widget/TextView;
    .param p7, "tvTotalTime"    # Landroid/widget/TextView;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/MvMediaControlersBinding;->rootView:Landroid/widget/LinearLayout;

    .line 46
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/MvMediaControlersBinding;->ibPlayStatus:Landroid/widget/ImageButton;

    .line 47
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/MvMediaControlersBinding;->seekbar:Landroid/widget/SeekBar;

    .line 48
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/MvMediaControlersBinding;->tvCurrentTime:Landroid/widget/TextView;

    .line 49
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/MvMediaControlersBinding;->tvDividingLine:Landroid/widget/TextView;

    .line 50
    iput-object p6, p0, Lcom/shenma/tvlauncher/databinding/MvMediaControlersBinding;->tvMenu:Landroid/widget/TextView;

    .line 51
    iput-object p7, p0, Lcom/shenma/tvlauncher/databinding/MvMediaControlersBinding;->tvTotalTime:Landroid/widget/TextView;

    .line 52
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvMediaControlersBinding;
    .locals 10
    .param p0, "rootView"    # Landroid/view/View;

    .line 81
    sget v0, Lcom/shenma/tvlauncher/R$id;->ib_playStatus:I

    .line 82
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageButton;

    .line 83
    .local v4, "ibPlayStatus":Landroid/widget/ImageButton;
    if-eqz v4, :cond_5

    .line 87
    sget v0, Lcom/shenma/tvlauncher/R$id;->seekbar:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/SeekBar;

    .line 89
    .local v5, "seekbar":Landroid/widget/SeekBar;
    if-eqz v5, :cond_4

    .line 93
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_currentTime:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 95
    .local v6, "tvCurrentTime":Landroid/widget/TextView;
    if-eqz v6, :cond_3

    .line 99
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_dividing_line:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 101
    .local v7, "tvDividingLine":Landroid/widget/TextView;
    if-eqz v7, :cond_2

    .line 105
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_menu:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 107
    .local v8, "tvMenu":Landroid/widget/TextView;
    if-eqz v8, :cond_1

    .line 111
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_totalTime:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    .line 113
    .local v9, "tvTotalTime":Landroid/widget/TextView;
    if-eqz v9, :cond_0

    .line 117
    new-instance v2, Lcom/shenma/tvlauncher/databinding/MvMediaControlersBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v9}, Lcom/shenma/tvlauncher/databinding/MvMediaControlersBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 114
    :cond_0
    goto :goto_0

    .line 108
    .end local v9    # "tvTotalTime":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 102
    .end local v8    # "tvMenu":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 96
    .end local v7    # "tvDividingLine":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 90
    .end local v6    # "tvCurrentTime":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 84
    .end local v5    # "seekbar":Landroid/widget/SeekBar;
    :cond_5
    nop

    .line 120
    .end local v4    # "ibPlayStatus":Landroid/widget/ImageButton;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/MvMediaControlersBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/MvMediaControlersBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MvMediaControlersBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MvMediaControlersBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 68
    sget v0, Lcom/shenma/tvlauncher/R$layout;->mv_media_controlers:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/MvMediaControlersBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvMediaControlersBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/MvMediaControlersBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/MvMediaControlersBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
