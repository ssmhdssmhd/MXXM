.class public final Lcom/shenma/tvlauncher/databinding/MvTypeDetailsItemBinding;
.super Ljava/lang/Object;
.source "MvTypeDetailsItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final videoItemScore:Landroid/widget/TextView;

.field public final videoName:Landroid/widget/TextView;

.field public final videoPoster:Landroid/widget/ImageView;

.field public final videoState:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "videoItemScore"    # Landroid/widget/TextView;
    .param p3, "videoName"    # Landroid/widget/TextView;
    .param p4, "videoPoster"    # Landroid/widget/ImageView;
    .param p5, "videoState"    # Landroid/widget/TextView;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsItemBinding;->rootView:Landroid/widget/LinearLayout;

    .line 38
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsItemBinding;->videoItemScore:Landroid/widget/TextView;

    .line 39
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsItemBinding;->videoName:Landroid/widget/TextView;

    .line 40
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsItemBinding;->videoPoster:Landroid/widget/ImageView;

    .line 41
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsItemBinding;->videoState:Landroid/widget/TextView;

    .line 42
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvTypeDetailsItemBinding;
    .locals 8
    .param p0, "rootView"    # Landroid/view/View;

    .line 71
    sget v0, Lcom/shenma/tvlauncher/R$id;->video_item_Score:I

    .line 72
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    .line 73
    .local v4, "videoItemScore":Landroid/widget/TextView;
    if-eqz v4, :cond_3

    .line 77
    sget v0, Lcom/shenma/tvlauncher/R$id;->video_name:I

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    .line 79
    .local v5, "videoName":Landroid/widget/TextView;
    if-eqz v5, :cond_2

    .line 83
    sget v0, Lcom/shenma/tvlauncher/R$id;->video_poster:I

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    .line 85
    .local v6, "videoPoster":Landroid/widget/ImageView;
    if-eqz v6, :cond_1

    .line 89
    sget v0, Lcom/shenma/tvlauncher/R$id;->video_state:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 91
    .local v7, "videoState":Landroid/widget/TextView;
    if-eqz v7, :cond_0

    .line 95
    new-instance v2, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsItemBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v7}, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsItemBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v2

    .line 92
    :cond_0
    goto :goto_0

    .line 86
    .end local v7    # "videoState":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 80
    .end local v6    # "videoPoster":Landroid/widget/ImageView;
    :cond_2
    goto :goto_0

    .line 74
    .end local v5    # "videoName":Landroid/widget/TextView;
    :cond_3
    nop

    .line 98
    .end local v4    # "videoItemScore":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/MvTypeDetailsItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MvTypeDetailsItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MvTypeDetailsItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 58
    sget v0, Lcom/shenma/tvlauncher/R$layout;->mv_type_details_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsItemBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvTypeDetailsItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsItemBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
