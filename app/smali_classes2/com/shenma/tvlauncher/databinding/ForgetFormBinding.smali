.class public final Lcom/shenma/tvlauncher/databinding/ForgetFormBinding;
.super Ljava/lang/Object;
.source "ForgetFormBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final accountNameEt:Landroid/widget/EditText;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final sendCodeBt:Landroid/widget/Button;

.field public final userCodeEt:Landroid/widget/EditText;

.field public final userNewPassEt:Landroid/widget/EditText;

.field public final userPhoneEt:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "accountNameEt"    # Landroid/widget/EditText;
    .param p3, "sendCodeBt"    # Landroid/widget/Button;
    .param p4, "userCodeEt"    # Landroid/widget/EditText;
    .param p5, "userNewPassEt"    # Landroid/widget/EditText;
    .param p6, "userPhoneEt"    # Landroid/widget/EditText;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/ForgetFormBinding;->rootView:Landroid/widget/LinearLayout;

    .line 42
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/ForgetFormBinding;->accountNameEt:Landroid/widget/EditText;

    .line 43
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/ForgetFormBinding;->sendCodeBt:Landroid/widget/Button;

    .line 44
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/ForgetFormBinding;->userCodeEt:Landroid/widget/EditText;

    .line 45
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/ForgetFormBinding;->userNewPassEt:Landroid/widget/EditText;

    .line 46
    iput-object p6, p0, Lcom/shenma/tvlauncher/databinding/ForgetFormBinding;->userPhoneEt:Landroid/widget/EditText;

    .line 47
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/ForgetFormBinding;
    .locals 9
    .param p0, "rootView"    # Landroid/view/View;

    .line 76
    sget v0, Lcom/shenma/tvlauncher/R$id;->account_name_et:I

    .line 77
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    .line 78
    .local v4, "accountNameEt":Landroid/widget/EditText;
    if-eqz v4, :cond_4

    .line 82
    sget v0, Lcom/shenma/tvlauncher/R$id;->send_code_bt:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    .line 84
    .local v5, "sendCodeBt":Landroid/widget/Button;
    if-eqz v5, :cond_3

    .line 88
    sget v0, Lcom/shenma/tvlauncher/R$id;->user_code_et:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    .line 90
    .local v6, "userCodeEt":Landroid/widget/EditText;
    if-eqz v6, :cond_2

    .line 94
    sget v0, Lcom/shenma/tvlauncher/R$id;->user_new_pass_et:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    .line 96
    .local v7, "userNewPassEt":Landroid/widget/EditText;
    if-eqz v7, :cond_1

    .line 100
    sget v0, Lcom/shenma/tvlauncher/R$id;->user_phone_et:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/EditText;

    .line 102
    .local v8, "userPhoneEt":Landroid/widget/EditText;
    if-eqz v8, :cond_0

    .line 106
    new-instance v2, Lcom/shenma/tvlauncher/databinding/ForgetFormBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v8}, Lcom/shenma/tvlauncher/databinding/ForgetFormBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    return-object v2

    .line 103
    :cond_0
    goto :goto_0

    .line 97
    .end local v8    # "userPhoneEt":Landroid/widget/EditText;
    :cond_1
    goto :goto_0

    .line 91
    .end local v7    # "userNewPassEt":Landroid/widget/EditText;
    :cond_2
    goto :goto_0

    .line 85
    .end local v6    # "userCodeEt":Landroid/widget/EditText;
    :cond_3
    goto :goto_0

    .line 79
    .end local v5    # "sendCodeBt":Landroid/widget/Button;
    :cond_4
    nop

    .line 109
    .end local v4    # "accountNameEt":Landroid/widget/EditText;
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/ForgetFormBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/ForgetFormBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/ForgetFormBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/ForgetFormBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 63
    sget v0, Lcom/shenma/tvlauncher/R$layout;->forget_form:I

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
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/ForgetFormBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/ForgetFormBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/ForgetFormBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/ForgetFormBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
