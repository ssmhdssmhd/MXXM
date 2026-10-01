.class public final Lcom/shenma/tvlauncher/databinding/WifiContentUnconnBinding;
.super Ljava/lang/Object;
.source "WifiContentUnconnBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final wifiUnconnPassEt:Landroid/widget/EditText;

.field public final wifiUnconnShowpassCb:Landroid/widget/CheckBox;

.field public final wifiUnconnSsidTv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "wifiUnconnPassEt"    # Landroid/widget/EditText;
    .param p3, "wifiUnconnShowpassCb"    # Landroid/widget/CheckBox;
    .param p4, "wifiUnconnSsidTv"    # Landroid/widget/TextView;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/WifiContentUnconnBinding;->rootView:Landroid/widget/LinearLayout;

    .line 37
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/WifiContentUnconnBinding;->wifiUnconnPassEt:Landroid/widget/EditText;

    .line 38
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/WifiContentUnconnBinding;->wifiUnconnShowpassCb:Landroid/widget/CheckBox;

    .line 39
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/WifiContentUnconnBinding;->wifiUnconnSsidTv:Landroid/widget/TextView;

    .line 40
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/WifiContentUnconnBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 69
    sget v0, Lcom/shenma/tvlauncher/R$id;->wifi_unconn_pass_et:I

    .line 70
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 71
    .local v1, "wifiUnconnPassEt":Landroid/widget/EditText;
    if-eqz v1, :cond_2

    .line 75
    sget v0, Lcom/shenma/tvlauncher/R$id;->wifi_unconn_showpass_cb:I

    .line 76
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 77
    .local v2, "wifiUnconnShowpassCb":Landroid/widget/CheckBox;
    if-eqz v2, :cond_1

    .line 81
    sget v0, Lcom/shenma/tvlauncher/R$id;->wifi_unconn_ssid_tv:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 83
    .local v3, "wifiUnconnSsidTv":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 87
    new-instance v4, Lcom/shenma/tvlauncher/databinding/WifiContentUnconnBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/shenma/tvlauncher/databinding/WifiContentUnconnBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    return-object v4

    .line 84
    :cond_0
    goto :goto_0

    .line 78
    .end local v3    # "wifiUnconnSsidTv":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 72
    .end local v2    # "wifiUnconnShowpassCb":Landroid/widget/CheckBox;
    :cond_2
    nop

    .line 90
    .end local v1    # "wifiUnconnPassEt":Landroid/widget/EditText;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/WifiContentUnconnBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/WifiContentUnconnBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/WifiContentUnconnBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/WifiContentUnconnBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 56
    sget v0, Lcom/shenma/tvlauncher/R$layout;->wifi_content_unconn:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/WifiContentUnconnBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/WifiContentUnconnBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/WifiContentUnconnBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/WifiContentUnconnBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
