.class public final Lcom/shenma/tvlauncher/databinding/WifiDialogBinding;
.super Ljava/lang/Object;
.source "WifiDialogBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/FrameLayout;

.field public final wifiDialogBt1:Landroid/widget/Button;

.field public final wifiDialogBt2:Landroid/widget/Button;

.field public final wifiDialogBtnsLl:Landroid/widget/RelativeLayout;

.field public final wifiDialogContent:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "wifiDialogBt1"    # Landroid/widget/Button;
    .param p3, "wifiDialogBt2"    # Landroid/widget/Button;
    .param p4, "wifiDialogBtnsLl"    # Landroid/widget/RelativeLayout;
    .param p5, "wifiDialogContent"    # Landroid/widget/LinearLayout;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/WifiDialogBinding;->rootView:Landroid/widget/FrameLayout;

    .line 40
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/WifiDialogBinding;->wifiDialogBt1:Landroid/widget/Button;

    .line 41
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/WifiDialogBinding;->wifiDialogBt2:Landroid/widget/Button;

    .line 42
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/WifiDialogBinding;->wifiDialogBtnsLl:Landroid/widget/RelativeLayout;

    .line 43
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/WifiDialogBinding;->wifiDialogContent:Landroid/widget/LinearLayout;

    .line 44
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/WifiDialogBinding;
    .locals 8
    .param p0, "rootView"    # Landroid/view/View;

    .line 73
    sget v0, Lcom/shenma/tvlauncher/R$id;->wifi_dialog_bt1:I

    .line 74
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    .line 75
    .local v4, "wifiDialogBt1":Landroid/widget/Button;
    if-eqz v4, :cond_3

    .line 79
    sget v0, Lcom/shenma/tvlauncher/R$id;->wifi_dialog_bt2:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    .line 81
    .local v5, "wifiDialogBt2":Landroid/widget/Button;
    if-eqz v5, :cond_2

    .line 85
    sget v0, Lcom/shenma/tvlauncher/R$id;->wifi_dialog_btns_ll:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 87
    .local v6, "wifiDialogBtnsLl":Landroid/widget/RelativeLayout;
    if-eqz v6, :cond_1

    .line 91
    sget v0, Lcom/shenma/tvlauncher/R$id;->wifi_dialog_content:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    .line 93
    .local v7, "wifiDialogContent":Landroid/widget/LinearLayout;
    if-eqz v7, :cond_0

    .line 97
    new-instance v2, Lcom/shenma/tvlauncher/databinding/WifiDialogBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-direct/range {v2 .. v7}, Lcom/shenma/tvlauncher/databinding/WifiDialogBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V

    return-object v2

    .line 94
    :cond_0
    goto :goto_0

    .line 88
    .end local v7    # "wifiDialogContent":Landroid/widget/LinearLayout;
    :cond_1
    goto :goto_0

    .line 82
    .end local v6    # "wifiDialogBtnsLl":Landroid/widget/RelativeLayout;
    :cond_2
    goto :goto_0

    .line 76
    .end local v5    # "wifiDialogBt2":Landroid/widget/Button;
    :cond_3
    nop

    .line 100
    .end local v4    # "wifiDialogBt1":Landroid/widget/Button;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/WifiDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/WifiDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/WifiDialogBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/WifiDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 60
    sget v0, Lcom/shenma/tvlauncher/R$layout;->wifi_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/WifiDialogBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/WifiDialogBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/WifiDialogBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/WifiDialogBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
