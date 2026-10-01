.class public final Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;
.super Ljava/lang/Object;
.source "LayoutSettingInvBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final inv:Landroid/widget/LinearLayout;

.field public final invImg:Landroid/widget/ImageView;

.field public final invInvcode:Landroid/widget/TextView;

.field public final invUser:Landroid/widget/TextView;

.field public final ivnText:Landroid/widget/TextView;

.field public final llTypeDetails:Landroid/widget/LinearLayout;

.field public final rlActive:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "inv"    # Landroid/widget/LinearLayout;
    .param p3, "invImg"    # Landroid/widget/ImageView;
    .param p4, "invInvcode"    # Landroid/widget/TextView;
    .param p5, "invUser"    # Landroid/widget/TextView;
    .param p6, "ivnText"    # Landroid/widget/TextView;
    .param p7, "llTypeDetails"    # Landroid/widget/LinearLayout;
    .param p8, "rlActive"    # Landroid/widget/LinearLayout;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;->rootView:Landroid/widget/LinearLayout;

    .line 49
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;->inv:Landroid/widget/LinearLayout;

    .line 50
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;->invImg:Landroid/widget/ImageView;

    .line 51
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;->invInvcode:Landroid/widget/TextView;

    .line 52
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;->invUser:Landroid/widget/TextView;

    .line 53
    iput-object p6, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;->ivnText:Landroid/widget/TextView;

    .line 54
    iput-object p7, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;->llTypeDetails:Landroid/widget/LinearLayout;

    .line 55
    iput-object p8, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;->rlActive:Landroid/widget/LinearLayout;

    .line 56
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;
    .locals 10
    .param p0, "rootView"    # Landroid/view/View;

    .line 85
    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    .line 87
    .local v2, "inv":Landroid/widget/LinearLayout;
    sget v0, Lcom/shenma/tvlauncher/R$id;->inv_img:I

    .line 88
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    .line 89
    .local v3, "invImg":Landroid/widget/ImageView;
    if-eqz v3, :cond_5

    .line 93
    sget v0, Lcom/shenma/tvlauncher/R$id;->inv_invcode:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    .line 95
    .local v4, "invInvcode":Landroid/widget/TextView;
    if-eqz v4, :cond_4

    .line 99
    sget v0, Lcom/shenma/tvlauncher/R$id;->inv_user:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    .line 101
    .local v5, "invUser":Landroid/widget/TextView;
    if-eqz v5, :cond_3

    .line 105
    sget v0, Lcom/shenma/tvlauncher/R$id;->ivn_text:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 107
    .local v6, "ivnText":Landroid/widget/TextView;
    if-eqz v6, :cond_2

    .line 111
    sget v0, Lcom/shenma/tvlauncher/R$id;->ll_type_details:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    .line 113
    .local v7, "llTypeDetails":Landroid/widget/LinearLayout;
    if-eqz v7, :cond_1

    .line 117
    sget v9, Lcom/shenma/tvlauncher/R$id;->rl_active:I

    .line 118
    .end local v0    # "id":I
    .local v9, "id":I
    invoke-static {p0, v9}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    .line 119
    .local v8, "rlActive":Landroid/widget/LinearLayout;
    if-eqz v8, :cond_0

    .line 123
    new-instance v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;

    move-object v1, p0

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct/range {v0 .. v8}, Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    return-object v0

    .line 120
    :cond_0
    move v0, v9

    goto :goto_0

    .line 114
    .end local v8    # "rlActive":Landroid/widget/LinearLayout;
    .end local v9    # "id":I
    .restart local v0    # "id":I
    :cond_1
    goto :goto_0

    .line 108
    .end local v7    # "llTypeDetails":Landroid/widget/LinearLayout;
    :cond_2
    goto :goto_0

    .line 102
    .end local v6    # "ivnText":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 96
    .end local v5    # "invUser":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 90
    .end local v4    # "invInvcode":Landroid/widget/TextView;
    :cond_5
    nop

    .line 126
    .end local v2    # "inv":Landroid/widget/LinearLayout;
    .end local v3    # "invImg":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 72
    sget v0, Lcom/shenma/tvlauncher/R$layout;->layout_setting_inv:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingInvBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
