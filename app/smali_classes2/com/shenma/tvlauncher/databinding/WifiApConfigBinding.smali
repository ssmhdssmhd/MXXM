.class public final Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;
.super Ljava/lang/Object;
.source "WifiApConfigBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final wifiApNameEt:Landroid/widget/EditText;

.field public final wifiApPassEt:Landroid/widget/EditText;

.field public final wifiApSecureDecodeText:Landroid/widget/TextView;

.field public final wifiApSecureLeftArrows:Landroid/widget/ImageButton;

.field public final wifiApSecureRightArrows:Landroid/widget/ImageButton;

.field public final wifiApSecureRl:Landroid/widget/RelativeLayout;

.field public final wifiApShowpassCb:Landroid/widget/CheckBox;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/RelativeLayout;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "wifiApNameEt"    # Landroid/widget/EditText;
    .param p3, "wifiApPassEt"    # Landroid/widget/EditText;
    .param p4, "wifiApSecureDecodeText"    # Landroid/widget/TextView;
    .param p5, "wifiApSecureLeftArrows"    # Landroid/widget/ImageButton;
    .param p6, "wifiApSecureRightArrows"    # Landroid/widget/ImageButton;
    .param p7, "wifiApSecureRl"    # Landroid/widget/RelativeLayout;
    .param p8, "wifiApShowpassCb"    # Landroid/widget/CheckBox;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;->rootView:Landroid/widget/LinearLayout;

    .line 52
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;->wifiApNameEt:Landroid/widget/EditText;

    .line 53
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;->wifiApPassEt:Landroid/widget/EditText;

    .line 54
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;->wifiApSecureDecodeText:Landroid/widget/TextView;

    .line 55
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;->wifiApSecureLeftArrows:Landroid/widget/ImageButton;

    .line 56
    iput-object p6, p0, Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;->wifiApSecureRightArrows:Landroid/widget/ImageButton;

    .line 57
    iput-object p7, p0, Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;->wifiApSecureRl:Landroid/widget/RelativeLayout;

    .line 58
    iput-object p8, p0, Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;->wifiApShowpassCb:Landroid/widget/CheckBox;

    .line 59
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;
    .locals 11
    .param p0, "rootView"    # Landroid/view/View;

    .line 88
    sget v0, Lcom/shenma/tvlauncher/R$id;->wifi_ap_name_et:I

    .line 89
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    .line 90
    .local v4, "wifiApNameEt":Landroid/widget/EditText;
    if-eqz v4, :cond_6

    .line 94
    sget v0, Lcom/shenma/tvlauncher/R$id;->wifi_ap_pass_et:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    .line 96
    .local v5, "wifiApPassEt":Landroid/widget/EditText;
    if-eqz v5, :cond_5

    .line 100
    sget v0, Lcom/shenma/tvlauncher/R$id;->wifi_ap_secure_decode_text:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 102
    .local v6, "wifiApSecureDecodeText":Landroid/widget/TextView;
    if-eqz v6, :cond_4

    .line 106
    sget v0, Lcom/shenma/tvlauncher/R$id;->wifi_ap_secure_left_arrows:I

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageButton;

    .line 108
    .local v7, "wifiApSecureLeftArrows":Landroid/widget/ImageButton;
    if-eqz v7, :cond_3

    .line 112
    sget v0, Lcom/shenma/tvlauncher/R$id;->wifi_ap_secure_right_arrows:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageButton;

    .line 114
    .local v8, "wifiApSecureRightArrows":Landroid/widget/ImageButton;
    if-eqz v8, :cond_2

    .line 118
    sget v0, Lcom/shenma/tvlauncher/R$id;->wifi_ap_secure_rl:I

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 120
    .local v9, "wifiApSecureRl":Landroid/widget/RelativeLayout;
    if-eqz v9, :cond_1

    .line 124
    sget v0, Lcom/shenma/tvlauncher/R$id;->wifi_ap_showpass_cb:I

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/CheckBox;

    .line 126
    .local v10, "wifiApShowpassCb":Landroid/widget/CheckBox;
    if-eqz v10, :cond_0

    .line 130
    new-instance v2, Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v10}, Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/RelativeLayout;Landroid/widget/CheckBox;)V

    return-object v2

    .line 127
    :cond_0
    goto :goto_0

    .line 121
    .end local v10    # "wifiApShowpassCb":Landroid/widget/CheckBox;
    :cond_1
    goto :goto_0

    .line 115
    .end local v9    # "wifiApSecureRl":Landroid/widget/RelativeLayout;
    :cond_2
    goto :goto_0

    .line 109
    .end local v8    # "wifiApSecureRightArrows":Landroid/widget/ImageButton;
    :cond_3
    goto :goto_0

    .line 103
    .end local v7    # "wifiApSecureLeftArrows":Landroid/widget/ImageButton;
    :cond_4
    goto :goto_0

    .line 97
    .end local v6    # "wifiApSecureDecodeText":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 91
    .end local v5    # "wifiApPassEt":Landroid/widget/EditText;
    :cond_6
    nop

    .line 134
    .end local v4    # "wifiApNameEt":Landroid/widget/EditText;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 75
    sget v0, Lcom/shenma/tvlauncher/R$layout;->wifi_ap_config:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/WifiApConfigBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
