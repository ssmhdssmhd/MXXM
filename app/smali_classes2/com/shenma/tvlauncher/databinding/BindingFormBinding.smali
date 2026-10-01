.class public final Lcom/shenma/tvlauncher/databinding/BindingFormBinding;
.super Ljava/lang/Object;
.source "BindingFormBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bindCodeEt:Landroid/widget/EditText;

.field public final bindNameEt:Landroid/widget/TextView;

.field public final bindPhoneEt:Landroid/widget/EditText;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final sendCodeBt:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/Button;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "bindCodeEt"    # Landroid/widget/EditText;
    .param p3, "bindNameEt"    # Landroid/widget/TextView;
    .param p4, "bindPhoneEt"    # Landroid/widget/EditText;
    .param p5, "sendCodeBt"    # Landroid/widget/Button;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/BindingFormBinding;->rootView:Landroid/widget/LinearLayout;

    .line 39
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/BindingFormBinding;->bindCodeEt:Landroid/widget/EditText;

    .line 40
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/BindingFormBinding;->bindNameEt:Landroid/widget/TextView;

    .line 41
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/BindingFormBinding;->bindPhoneEt:Landroid/widget/EditText;

    .line 42
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/BindingFormBinding;->sendCodeBt:Landroid/widget/Button;

    .line 43
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/BindingFormBinding;
    .locals 8
    .param p0, "rootView"    # Landroid/view/View;

    .line 72
    sget v0, Lcom/shenma/tvlauncher/R$id;->bind_code_et:I

    .line 73
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    .line 74
    .local v4, "bindCodeEt":Landroid/widget/EditText;
    if-eqz v4, :cond_3

    .line 78
    sget v0, Lcom/shenma/tvlauncher/R$id;->bind_name_et:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    .line 80
    .local v5, "bindNameEt":Landroid/widget/TextView;
    if-eqz v5, :cond_2

    .line 84
    sget v0, Lcom/shenma/tvlauncher/R$id;->bind_phone_et:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    .line 86
    .local v6, "bindPhoneEt":Landroid/widget/EditText;
    if-eqz v6, :cond_1

    .line 90
    sget v0, Lcom/shenma/tvlauncher/R$id;->send_code_bt:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    .line 92
    .local v7, "sendCodeBt":Landroid/widget/Button;
    if-eqz v7, :cond_0

    .line 96
    new-instance v2, Lcom/shenma/tvlauncher/databinding/BindingFormBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v7}, Lcom/shenma/tvlauncher/databinding/BindingFormBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/Button;)V

    return-object v2

    .line 93
    :cond_0
    goto :goto_0

    .line 87
    .end local v7    # "sendCodeBt":Landroid/widget/Button;
    :cond_1
    goto :goto_0

    .line 81
    .end local v6    # "bindPhoneEt":Landroid/widget/EditText;
    :cond_2
    goto :goto_0

    .line 75
    .end local v5    # "bindNameEt":Landroid/widget/TextView;
    :cond_3
    nop

    .line 99
    .end local v4    # "bindCodeEt":Landroid/widget/EditText;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/BindingFormBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/BindingFormBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/BindingFormBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/BindingFormBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 59
    sget v0, Lcom/shenma/tvlauncher/R$layout;->binding_form:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/BindingFormBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/BindingFormBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/BindingFormBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/BindingFormBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
