.class public final Lcom/shenma/tvlauncher/databinding/LayoutSettingWifiBinding;
.super Ljava/lang/Object;
.source "LayoutSettingWifiBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final mainRl:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final settingWifi:Landroid/widget/RelativeLayout;

.field public final wifiApTv:Landroid/widget/TextView;

.field public final wifiSettingList:Landroid/widget/ListView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ListView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "mainRl"    # Landroid/widget/LinearLayout;
    .param p3, "settingWifi"    # Landroid/widget/RelativeLayout;
    .param p4, "wifiApTv"    # Landroid/widget/TextView;
    .param p5, "wifiSettingList"    # Landroid/widget/ListView;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingWifiBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 40
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingWifiBinding;->mainRl:Landroid/widget/LinearLayout;

    .line 41
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingWifiBinding;->settingWifi:Landroid/widget/RelativeLayout;

    .line 42
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingWifiBinding;->wifiApTv:Landroid/widget/TextView;

    .line 43
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingWifiBinding;->wifiSettingList:Landroid/widget/ListView;

    .line 44
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LayoutSettingWifiBinding;
    .locals 8
    .param p0, "rootView"    # Landroid/view/View;

    .line 73
    sget v0, Lcom/shenma/tvlauncher/R$id;->main_rl:I

    .line 74
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    .line 75
    .local v4, "mainRl":Landroid/widget/LinearLayout;
    if-eqz v4, :cond_2

    .line 79
    move-object v5, p0

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 81
    .local v5, "settingWifi":Landroid/widget/RelativeLayout;
    sget v0, Lcom/shenma/tvlauncher/R$id;->wifi_ap_tv:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 83
    .local v6, "wifiApTv":Landroid/widget/TextView;
    if-eqz v6, :cond_1

    .line 87
    sget v0, Lcom/shenma/tvlauncher/R$id;->wifi_setting_list:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ListView;

    .line 89
    .local v7, "wifiSettingList":Landroid/widget/ListView;
    if-eqz v7, :cond_0

    .line 93
    new-instance v2, Lcom/shenma/tvlauncher/databinding/LayoutSettingWifiBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct/range {v2 .. v7}, Lcom/shenma/tvlauncher/databinding/LayoutSettingWifiBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ListView;)V

    return-object v2

    .line 90
    :cond_0
    goto :goto_0

    .line 84
    .end local v7    # "wifiSettingList":Landroid/widget/ListView;
    :cond_1
    goto :goto_0

    .line 76
    .end local v5    # "settingWifi":Landroid/widget/RelativeLayout;
    .end local v6    # "wifiApTv":Landroid/widget/TextView;
    :cond_2
    nop

    .line 96
    .end local v4    # "mainRl":Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/LayoutSettingWifiBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/LayoutSettingWifiBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LayoutSettingWifiBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LayoutSettingWifiBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 60
    sget v0, Lcom/shenma/tvlauncher/R$layout;->layout_setting_wifi:I

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
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/LayoutSettingWifiBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LayoutSettingWifiBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/LayoutSettingWifiBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingWifiBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
