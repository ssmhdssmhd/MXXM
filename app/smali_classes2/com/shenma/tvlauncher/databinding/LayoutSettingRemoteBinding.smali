.class public final Lcom/shenma/tvlauncher/databinding/LayoutSettingRemoteBinding;
.super Ljava/lang/Object;
.source "LayoutSettingRemoteBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final remoteInstallationContentTransmissionIcon:Landroid/widget/ImageView;

.field public final remoteInstallationContentUrlTv:Landroid/widget/TextView;

.field public final remoteTipsTv:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final settingRemote:Landroid/widget/RelativeLayout;

.field public final title:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "remoteInstallationContentTransmissionIcon"    # Landroid/widget/ImageView;
    .param p3, "remoteInstallationContentUrlTv"    # Landroid/widget/TextView;
    .param p4, "remoteTipsTv"    # Landroid/widget/TextView;
    .param p5, "settingRemote"    # Landroid/widget/RelativeLayout;
    .param p6, "title"    # Landroid/widget/LinearLayout;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingRemoteBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 44
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingRemoteBinding;->remoteInstallationContentTransmissionIcon:Landroid/widget/ImageView;

    .line 45
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingRemoteBinding;->remoteInstallationContentUrlTv:Landroid/widget/TextView;

    .line 46
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingRemoteBinding;->remoteTipsTv:Landroid/widget/TextView;

    .line 47
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingRemoteBinding;->settingRemote:Landroid/widget/RelativeLayout;

    .line 48
    iput-object p6, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingRemoteBinding;->title:Landroid/widget/LinearLayout;

    .line 49
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LayoutSettingRemoteBinding;
    .locals 9
    .param p0, "rootView"    # Landroid/view/View;

    .line 78
    sget v0, Lcom/shenma/tvlauncher/R$id;->remote_installation_content_transmission_icon:I

    .line 79
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 80
    .local v4, "remoteInstallationContentTransmissionIcon":Landroid/widget/ImageView;
    if-eqz v4, :cond_3

    .line 84
    sget v0, Lcom/shenma/tvlauncher/R$id;->remote_installation_content_url_tv:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    .line 86
    .local v5, "remoteInstallationContentUrlTv":Landroid/widget/TextView;
    if-eqz v5, :cond_2

    .line 90
    sget v0, Lcom/shenma/tvlauncher/R$id;->remote_tips_tv:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 92
    .local v6, "remoteTipsTv":Landroid/widget/TextView;
    if-eqz v6, :cond_1

    .line 96
    move-object v7, p0

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 98
    .local v7, "settingRemote":Landroid/widget/RelativeLayout;
    sget v0, Lcom/shenma/tvlauncher/R$id;->title:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    .line 100
    .local v8, "title":Landroid/widget/LinearLayout;
    if-eqz v8, :cond_0

    .line 104
    new-instance v2, Lcom/shenma/tvlauncher/databinding/LayoutSettingRemoteBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct/range {v2 .. v8}, Lcom/shenma/tvlauncher/databinding/LayoutSettingRemoteBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V

    return-object v2

    .line 101
    :cond_0
    goto :goto_0

    .line 93
    .end local v7    # "settingRemote":Landroid/widget/RelativeLayout;
    .end local v8    # "title":Landroid/widget/LinearLayout;
    :cond_1
    goto :goto_0

    .line 87
    .end local v6    # "remoteTipsTv":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 81
    .end local v5    # "remoteInstallationContentUrlTv":Landroid/widget/TextView;
    :cond_3
    nop

    .line 108
    .end local v4    # "remoteInstallationContentTransmissionIcon":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/LayoutSettingRemoteBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/LayoutSettingRemoteBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LayoutSettingRemoteBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LayoutSettingRemoteBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 65
    sget v0, Lcom/shenma/tvlauncher/R$layout;->layout_setting_remote:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/LayoutSettingRemoteBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LayoutSettingRemoteBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/LayoutSettingRemoteBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingRemoteBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
