.class public final Lcom/shenma/tvlauncher/databinding/UserTypeDetailsItemBinding;
.super Ljava/lang/Object;
.source "UserTypeDetailsItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final itemCardview:Landroidx/cardview/widget/CardView;

.field private final rootView:Landroid/widget/AbsoluteLayout;

.field public final userVideoChecked:Landroid/widget/ImageView;

.field public final userVideoName:Landroid/widget/TextView;

.field public final userVideoPoster:Landroid/widget/ImageView;

.field public final userVideoState:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsoluteLayout;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/AbsoluteLayout;
    .param p2, "itemCardview"    # Landroidx/cardview/widget/CardView;
    .param p3, "userVideoChecked"    # Landroid/widget/ImageView;
    .param p4, "userVideoName"    # Landroid/widget/TextView;
    .param p5, "userVideoPoster"    # Landroid/widget/ImageView;
    .param p6, "userVideoState"    # Landroid/widget/TextView;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/UserTypeDetailsItemBinding;->rootView:Landroid/widget/AbsoluteLayout;

    .line 44
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/UserTypeDetailsItemBinding;->itemCardview:Landroidx/cardview/widget/CardView;

    .line 45
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/UserTypeDetailsItemBinding;->userVideoChecked:Landroid/widget/ImageView;

    .line 46
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/UserTypeDetailsItemBinding;->userVideoName:Landroid/widget/TextView;

    .line 47
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/UserTypeDetailsItemBinding;->userVideoPoster:Landroid/widget/ImageView;

    .line 48
    iput-object p6, p0, Lcom/shenma/tvlauncher/databinding/UserTypeDetailsItemBinding;->userVideoState:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/UserTypeDetailsItemBinding;
    .locals 9
    .param p0, "rootView"    # Landroid/view/View;

    .line 78
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_cardview:I

    .line 79
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/cardview/widget/CardView;

    .line 80
    .local v4, "itemCardview":Landroidx/cardview/widget/CardView;
    if-eqz v4, :cond_4

    .line 84
    sget v0, Lcom/shenma/tvlauncher/R$id;->user_video_checked:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    .line 86
    .local v5, "userVideoChecked":Landroid/widget/ImageView;
    if-eqz v5, :cond_3

    .line 90
    sget v0, Lcom/shenma/tvlauncher/R$id;->user_video_name:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 92
    .local v6, "userVideoName":Landroid/widget/TextView;
    if-eqz v6, :cond_2

    .line 96
    sget v0, Lcom/shenma/tvlauncher/R$id;->user_video_poster:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    .line 98
    .local v7, "userVideoPoster":Landroid/widget/ImageView;
    if-eqz v7, :cond_1

    .line 102
    sget v0, Lcom/shenma/tvlauncher/R$id;->user_video_state:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 104
    .local v8, "userVideoState":Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 108
    new-instance v2, Lcom/shenma/tvlauncher/databinding/UserTypeDetailsItemBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/AbsoluteLayout;

    invoke-direct/range {v2 .. v8}, Lcom/shenma/tvlauncher/databinding/UserTypeDetailsItemBinding;-><init>(Landroid/widget/AbsoluteLayout;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v2

    .line 105
    :cond_0
    goto :goto_0

    .line 99
    .end local v8    # "userVideoState":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 93
    .end local v7    # "userVideoPoster":Landroid/widget/ImageView;
    :cond_2
    goto :goto_0

    .line 87
    .end local v6    # "userVideoName":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 81
    .end local v5    # "userVideoChecked":Landroid/widget/ImageView;
    :cond_4
    nop

    .line 111
    .end local v4    # "itemCardview":Landroidx/cardview/widget/CardView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/UserTypeDetailsItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/UserTypeDetailsItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/UserTypeDetailsItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/UserTypeDetailsItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 65
    sget v0, Lcom/shenma/tvlauncher/R$layout;->user_type_details_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/UserTypeDetailsItemBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/UserTypeDetailsItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/UserTypeDetailsItemBinding;->getRoot()Landroid/widget/AbsoluteLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/AbsoluteLayout;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/UserTypeDetailsItemBinding;->rootView:Landroid/widget/AbsoluteLayout;

    return-object v0
.end method
