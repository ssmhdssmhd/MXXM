.class public final Lcom/shenma/tvlauncher/databinding/UserFormBinding;
.super Ljava/lang/Object;
.source "UserFormBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final userEmpower:Landroid/widget/Button;

.field public final userInv:Landroid/widget/LinearLayout;

.field public final userInvEt:Landroid/widget/EditText;

.field public final userNameEt:Landroid/widget/EditText;

.field public final userPassEt:Landroid/widget/EditText;

.field public final userPassword:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "userEmpower"    # Landroid/widget/Button;
    .param p3, "userInv"    # Landroid/widget/LinearLayout;
    .param p4, "userInvEt"    # Landroid/widget/EditText;
    .param p5, "userNameEt"    # Landroid/widget/EditText;
    .param p6, "userPassEt"    # Landroid/widget/EditText;
    .param p7, "userPassword"    # Landroid/widget/Button;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/UserFormBinding;->rootView:Landroid/widget/LinearLayout;

    .line 45
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/UserFormBinding;->userEmpower:Landroid/widget/Button;

    .line 46
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/UserFormBinding;->userInv:Landroid/widget/LinearLayout;

    .line 47
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/UserFormBinding;->userInvEt:Landroid/widget/EditText;

    .line 48
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/UserFormBinding;->userNameEt:Landroid/widget/EditText;

    .line 49
    iput-object p6, p0, Lcom/shenma/tvlauncher/databinding/UserFormBinding;->userPassEt:Landroid/widget/EditText;

    .line 50
    iput-object p7, p0, Lcom/shenma/tvlauncher/databinding/UserFormBinding;->userPassword:Landroid/widget/Button;

    .line 51
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/UserFormBinding;
    .locals 10
    .param p0, "rootView"    # Landroid/view/View;

    .line 80
    sget v0, Lcom/shenma/tvlauncher/R$id;->user_empower:I

    .line 81
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    .line 82
    .local v4, "userEmpower":Landroid/widget/Button;
    if-eqz v4, :cond_5

    .line 86
    sget v0, Lcom/shenma/tvlauncher/R$id;->user_inv:I

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    .line 88
    .local v5, "userInv":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_4

    .line 92
    sget v0, Lcom/shenma/tvlauncher/R$id;->user_inv_et:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    .line 94
    .local v6, "userInvEt":Landroid/widget/EditText;
    if-eqz v6, :cond_3

    .line 98
    sget v0, Lcom/shenma/tvlauncher/R$id;->user_name_et:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    .line 100
    .local v7, "userNameEt":Landroid/widget/EditText;
    if-eqz v7, :cond_2

    .line 104
    sget v0, Lcom/shenma/tvlauncher/R$id;->user_pass_et:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/EditText;

    .line 106
    .local v8, "userPassEt":Landroid/widget/EditText;
    if-eqz v8, :cond_1

    .line 110
    sget v0, Lcom/shenma/tvlauncher/R$id;->user_password:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Button;

    .line 112
    .local v9, "userPassword":Landroid/widget/Button;
    if-eqz v9, :cond_0

    .line 116
    new-instance v2, Lcom/shenma/tvlauncher/databinding/UserFormBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v9}, Lcom/shenma/tvlauncher/databinding/UserFormBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;)V

    return-object v2

    .line 113
    :cond_0
    goto :goto_0

    .line 107
    .end local v9    # "userPassword":Landroid/widget/Button;
    :cond_1
    goto :goto_0

    .line 101
    .end local v8    # "userPassEt":Landroid/widget/EditText;
    :cond_2
    goto :goto_0

    .line 95
    .end local v7    # "userNameEt":Landroid/widget/EditText;
    :cond_3
    goto :goto_0

    .line 89
    .end local v6    # "userInvEt":Landroid/widget/EditText;
    :cond_4
    goto :goto_0

    .line 83
    .end local v5    # "userInv":Landroid/widget/LinearLayout;
    :cond_5
    nop

    .line 119
    .end local v4    # "userEmpower":Landroid/widget/Button;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/UserFormBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/UserFormBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/UserFormBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/UserFormBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 67
    sget v0, Lcom/shenma/tvlauncher/R$layout;->user_form:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/UserFormBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/UserFormBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/UserFormBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/UserFormBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
