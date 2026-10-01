.class public final Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;
.super Ljava/lang/Object;
.source "ActivityVodBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivLine760:Landroid/widget/ImageView;

.field public final llTypeDetails:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final typeDetails:Landroid/widget/RelativeLayout;

.field public final typeDetailsFliter:Landroid/widget/ImageView;

.field public final typeDetailsGrid:Landroid/widget/GridView;

.field public final typeDetailsMenulayout:Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;

.field public final typeDetailsSum:Landroid/widget/TextView;

.field public final typeDetailsText:Landroid/widget/TextView;

.field public final typeDetailsType:Landroid/widget/TextView;

.field public final vod:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/GridView;Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "ivLine760"    # Landroid/widget/ImageView;
    .param p3, "llTypeDetails"    # Landroid/widget/LinearLayout;
    .param p4, "typeDetails"    # Landroid/widget/RelativeLayout;
    .param p5, "typeDetailsFliter"    # Landroid/widget/ImageView;
    .param p6, "typeDetailsGrid"    # Landroid/widget/GridView;
    .param p7, "typeDetailsMenulayout"    # Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;
    .param p8, "typeDetailsSum"    # Landroid/widget/TextView;
    .param p9, "typeDetailsText"    # Landroid/widget/TextView;
    .param p10, "typeDetailsType"    # Landroid/widget/TextView;
    .param p11, "vod"    # Landroid/widget/FrameLayout;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;->rootView:Landroid/widget/FrameLayout;

    .line 63
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;->ivLine760:Landroid/widget/ImageView;

    .line 64
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;->llTypeDetails:Landroid/widget/LinearLayout;

    .line 65
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;->typeDetails:Landroid/widget/RelativeLayout;

    .line 66
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;->typeDetailsFliter:Landroid/widget/ImageView;

    .line 67
    iput-object p6, p0, Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;->typeDetailsGrid:Landroid/widget/GridView;

    .line 68
    iput-object p7, p0, Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;->typeDetailsMenulayout:Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;

    .line 69
    iput-object p8, p0, Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;->typeDetailsSum:Landroid/widget/TextView;

    .line 70
    iput-object p9, p0, Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;->typeDetailsText:Landroid/widget/TextView;

    .line 71
    iput-object p10, p0, Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;->typeDetailsType:Landroid/widget/TextView;

    .line 72
    iput-object p11, p0, Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;->vod:Landroid/widget/FrameLayout;

    .line 73
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;
    .locals 14
    .param p0, "rootView"    # Landroid/view/View;

    .line 102
    sget v0, Lcom/shenma/tvlauncher/R$id;->iv_line760:I

    .line 103
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 104
    .local v4, "ivLine760":Landroid/widget/ImageView;
    if-eqz v4, :cond_8

    .line 108
    sget v0, Lcom/shenma/tvlauncher/R$id;->ll_type_details:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    .line 110
    .local v5, "llTypeDetails":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_7

    .line 114
    sget v0, Lcom/shenma/tvlauncher/R$id;->type_details:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 116
    .local v6, "typeDetails":Landroid/widget/RelativeLayout;
    if-eqz v6, :cond_6

    .line 120
    sget v0, Lcom/shenma/tvlauncher/R$id;->type_details_fliter:I

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    .line 122
    .local v7, "typeDetailsFliter":Landroid/widget/ImageView;
    if-eqz v7, :cond_5

    .line 126
    sget v0, Lcom/shenma/tvlauncher/R$id;->type_details_grid:I

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/GridView;

    .line 128
    .local v8, "typeDetailsGrid":Landroid/widget/GridView;
    if-eqz v8, :cond_4

    .line 132
    sget v0, Lcom/shenma/tvlauncher/R$id;->type_details_menulayout:I

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 134
    .local v1, "typeDetailsMenulayout":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 137
    invoke-static {v1}, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;

    move-result-object v9

    .line 139
    .local v9, "binding_typeDetailsMenulayout":Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;
    sget v0, Lcom/shenma/tvlauncher/R$id;->type_details_sum:I

    .line 140
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    .line 141
    .local v10, "typeDetailsSum":Landroid/widget/TextView;
    if-eqz v10, :cond_2

    .line 145
    sget v0, Lcom/shenma/tvlauncher/R$id;->type_details_text:I

    .line 146
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    .line 147
    .local v11, "typeDetailsText":Landroid/widget/TextView;
    if-eqz v11, :cond_1

    .line 151
    sget v0, Lcom/shenma/tvlauncher/R$id;->type_details_type:I

    .line 152
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    .line 153
    .local v12, "typeDetailsType":Landroid/widget/TextView;
    if-eqz v12, :cond_0

    .line 157
    move-object v13, p0

    check-cast v13, Landroid/widget/FrameLayout;

    .line 159
    .local v13, "vod":Landroid/widget/FrameLayout;
    new-instance v2, Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-direct/range {v2 .. v13}, Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/GridView;Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)V

    return-object v2

    .line 154
    .end local v13    # "vod":Landroid/widget/FrameLayout;
    :cond_0
    goto :goto_0

    .line 148
    .end local v12    # "typeDetailsType":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 142
    .end local v11    # "typeDetailsText":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 135
    .end local v9    # "binding_typeDetailsMenulayout":Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;
    .end local v10    # "typeDetailsSum":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 129
    .end local v1    # "typeDetailsMenulayout":Landroid/view/View;
    :cond_4
    goto :goto_0

    .line 123
    .end local v8    # "typeDetailsGrid":Landroid/widget/GridView;
    :cond_5
    goto :goto_0

    .line 117
    .end local v7    # "typeDetailsFliter":Landroid/widget/ImageView;
    :cond_6
    goto :goto_0

    .line 111
    .end local v6    # "typeDetails":Landroid/widget/RelativeLayout;
    :cond_7
    goto :goto_0

    .line 105
    .end local v5    # "llTypeDetails":Landroid/widget/LinearLayout;
    :cond_8
    nop

    .line 163
    .end local v4    # "ivLine760":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 89
    sget v0, Lcom/shenma/tvlauncher/R$layout;->activity_vod:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/ActivityVodBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
