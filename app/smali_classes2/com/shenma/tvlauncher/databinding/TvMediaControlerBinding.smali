.class public final Lcom/shenma/tvlauncher/databinding/TvMediaControlerBinding;
.super Ljava/lang/Object;
.source "TvMediaControlerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final seekbar:Landroid/widget/SeekBar;

.field public final tvCurrentTime:Landroid/widget/TextView;

.field public final tvDividingLine:Landroid/widget/TextView;

.field public final tvMenu:Landroid/widget/TextView;

.field public final tvTotalTime:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "seekbar"    # Landroid/widget/SeekBar;
    .param p3, "tvCurrentTime"    # Landroid/widget/TextView;
    .param p4, "tvDividingLine"    # Landroid/widget/TextView;
    .param p5, "tvMenu"    # Landroid/widget/TextView;
    .param p6, "tvTotalTime"    # Landroid/widget/TextView;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/TvMediaControlerBinding;->rootView:Landroid/widget/LinearLayout;

    .line 42
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/TvMediaControlerBinding;->seekbar:Landroid/widget/SeekBar;

    .line 43
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/TvMediaControlerBinding;->tvCurrentTime:Landroid/widget/TextView;

    .line 44
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/TvMediaControlerBinding;->tvDividingLine:Landroid/widget/TextView;

    .line 45
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/TvMediaControlerBinding;->tvMenu:Landroid/widget/TextView;

    .line 46
    iput-object p6, p0, Lcom/shenma/tvlauncher/databinding/TvMediaControlerBinding;->tvTotalTime:Landroid/widget/TextView;

    .line 47
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/TvMediaControlerBinding;
    .locals 9
    .param p0, "rootView"    # Landroid/view/View;

    .line 76
    sget v0, Lcom/shenma/tvlauncher/R$id;->seekbar:I

    .line 77
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/SeekBar;

    .line 78
    .local v4, "seekbar":Landroid/widget/SeekBar;
    if-eqz v4, :cond_4

    .line 82
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_currentTime:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    .line 84
    .local v5, "tvCurrentTime":Landroid/widget/TextView;
    if-eqz v5, :cond_3

    .line 88
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_dividing_line:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 90
    .local v6, "tvDividingLine":Landroid/widget/TextView;
    if-eqz v6, :cond_2

    .line 94
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_menu:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 96
    .local v7, "tvMenu":Landroid/widget/TextView;
    if-eqz v7, :cond_1

    .line 100
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_totalTime:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 102
    .local v8, "tvTotalTime":Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 106
    new-instance v2, Lcom/shenma/tvlauncher/databinding/TvMediaControlerBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v8}, Lcom/shenma/tvlauncher/databinding/TvMediaControlerBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 103
    :cond_0
    goto :goto_0

    .line 97
    .end local v8    # "tvTotalTime":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 91
    .end local v7    # "tvMenu":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 85
    .end local v6    # "tvDividingLine":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 79
    .end local v5    # "tvCurrentTime":Landroid/widget/TextView;
    :cond_4
    nop

    .line 109
    .end local v4    # "seekbar":Landroid/widget/SeekBar;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/TvMediaControlerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/TvMediaControlerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/TvMediaControlerBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/TvMediaControlerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 63
    sget v0, Lcom/shenma/tvlauncher/R$layout;->tv_media_controler:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/TvMediaControlerBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/TvMediaControlerBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/TvMediaControlerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/TvMediaControlerBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
