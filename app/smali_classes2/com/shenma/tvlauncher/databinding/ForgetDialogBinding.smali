.class public final Lcom/shenma/tvlauncher/databinding/ForgetDialogBinding;
.super Ljava/lang/Object;
.source "ForgetDialogBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final forgetDialogBt1:Landroid/widget/Button;

.field public final forgetDialogBt2:Landroid/widget/Button;

.field public final forgetDialogBtnsLl:Landroid/widget/LinearLayout;

.field public final forgetDialogContent:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "forgetDialogBt1"    # Landroid/widget/Button;
    .param p3, "forgetDialogBt2"    # Landroid/widget/Button;
    .param p4, "forgetDialogBtnsLl"    # Landroid/widget/LinearLayout;
    .param p5, "forgetDialogContent"    # Landroid/widget/LinearLayout;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/ForgetDialogBinding;->rootView:Landroid/widget/FrameLayout;

    .line 39
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/ForgetDialogBinding;->forgetDialogBt1:Landroid/widget/Button;

    .line 40
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/ForgetDialogBinding;->forgetDialogBt2:Landroid/widget/Button;

    .line 41
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/ForgetDialogBinding;->forgetDialogBtnsLl:Landroid/widget/LinearLayout;

    .line 42
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/ForgetDialogBinding;->forgetDialogContent:Landroid/widget/LinearLayout;

    .line 43
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/ForgetDialogBinding;
    .locals 8
    .param p0, "rootView"    # Landroid/view/View;

    .line 72
    sget v0, Lcom/shenma/tvlauncher/R$id;->forget_dialog_bt1:I

    .line 73
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    .line 74
    .local v4, "forgetDialogBt1":Landroid/widget/Button;
    if-eqz v4, :cond_3

    .line 78
    sget v0, Lcom/shenma/tvlauncher/R$id;->forget_dialog_bt2:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    .line 80
    .local v5, "forgetDialogBt2":Landroid/widget/Button;
    if-eqz v5, :cond_2

    .line 84
    sget v0, Lcom/shenma/tvlauncher/R$id;->forget_dialog_btns_ll:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    .line 86
    .local v6, "forgetDialogBtnsLl":Landroid/widget/LinearLayout;
    if-eqz v6, :cond_1

    .line 90
    sget v0, Lcom/shenma/tvlauncher/R$id;->forget_dialog_content:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    .line 92
    .local v7, "forgetDialogContent":Landroid/widget/LinearLayout;
    if-eqz v7, :cond_0

    .line 96
    new-instance v2, Lcom/shenma/tvlauncher/databinding/ForgetDialogBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-direct/range {v2 .. v7}, Lcom/shenma/tvlauncher/databinding/ForgetDialogBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    return-object v2

    .line 93
    :cond_0
    goto :goto_0

    .line 87
    .end local v7    # "forgetDialogContent":Landroid/widget/LinearLayout;
    :cond_1
    goto :goto_0

    .line 81
    .end local v6    # "forgetDialogBtnsLl":Landroid/widget/LinearLayout;
    :cond_2
    goto :goto_0

    .line 75
    .end local v5    # "forgetDialogBt2":Landroid/widget/Button;
    :cond_3
    nop

    .line 99
    .end local v4    # "forgetDialogBt1":Landroid/widget/Button;
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/ForgetDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/ForgetDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/ForgetDialogBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/ForgetDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 59
    sget v0, Lcom/shenma/tvlauncher/R$layout;->forget_dialog:I

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
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/ForgetDialogBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/ForgetDialogBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/ForgetDialogBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/ForgetDialogBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
