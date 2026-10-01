.class public final Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;
.super Ljava/lang/Object;
.source "TvExitDialogLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final itvExitMsg:Landroid/widget/LinearLayout;

.field public final lvExitCancle:Landroid/widget/LinearLayout;

.field public final lvExitOk:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvExitCancle:Landroid/widget/TextView;

.field public final tvExitConfirm:Landroid/widget/TextView;

.field public final tvExitMsg:Landroid/widget/TextView;

.field public final tvExitMsgTitile:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "itvExitMsg"    # Landroid/widget/LinearLayout;
    .param p3, "lvExitCancle"    # Landroid/widget/LinearLayout;
    .param p4, "lvExitOk"    # Landroid/widget/LinearLayout;
    .param p5, "tvExitCancle"    # Landroid/widget/TextView;
    .param p6, "tvExitConfirm"    # Landroid/widget/TextView;
    .param p7, "tvExitMsg"    # Landroid/widget/TextView;
    .param p8, "tvExitMsgTitile"    # Landroid/widget/TextView;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    .line 49
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;->itvExitMsg:Landroid/widget/LinearLayout;

    .line 50
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;->lvExitCancle:Landroid/widget/LinearLayout;

    .line 51
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;->lvExitOk:Landroid/widget/LinearLayout;

    .line 52
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;->tvExitCancle:Landroid/widget/TextView;

    .line 53
    iput-object p6, p0, Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;->tvExitConfirm:Landroid/widget/TextView;

    .line 54
    iput-object p7, p0, Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;->tvExitMsg:Landroid/widget/TextView;

    .line 55
    iput-object p8, p0, Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;->tvExitMsgTitile:Landroid/widget/TextView;

    .line 56
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;
    .locals 11
    .param p0, "rootView"    # Landroid/view/View;

    .line 85
    sget v0, Lcom/shenma/tvlauncher/R$id;->itv_exit_msg:I

    .line 86
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    .line 87
    .local v4, "itvExitMsg":Landroid/widget/LinearLayout;
    if-eqz v4, :cond_6

    .line 91
    sget v0, Lcom/shenma/tvlauncher/R$id;->lv_exit_cancle:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    .line 93
    .local v5, "lvExitCancle":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_5

    .line 97
    sget v0, Lcom/shenma/tvlauncher/R$id;->lv_exit_ok:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    .line 99
    .local v6, "lvExitOk":Landroid/widget/LinearLayout;
    if-eqz v6, :cond_4

    .line 103
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_exit_cancle:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 105
    .local v7, "tvExitCancle":Landroid/widget/TextView;
    if-eqz v7, :cond_3

    .line 109
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_exit_confirm:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 111
    .local v8, "tvExitConfirm":Landroid/widget/TextView;
    if-eqz v8, :cond_2

    .line 115
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_exit_msg:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    .line 117
    .local v9, "tvExitMsg":Landroid/widget/TextView;
    if-eqz v9, :cond_1

    .line 121
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_exit_msg_titile:I

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    .line 123
    .local v10, "tvExitMsgTitile":Landroid/widget/TextView;
    if-eqz v10, :cond_0

    .line 127
    new-instance v2, Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v10}, Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 124
    :cond_0
    goto :goto_0

    .line 118
    .end local v10    # "tvExitMsgTitile":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 112
    .end local v9    # "tvExitMsg":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 106
    .end local v8    # "tvExitConfirm":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 100
    .end local v7    # "tvExitCancle":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 94
    .end local v6    # "lvExitOk":Landroid/widget/LinearLayout;
    :cond_5
    goto :goto_0

    .line 88
    .end local v5    # "lvExitCancle":Landroid/widget/LinearLayout;
    :cond_6
    nop

    .line 130
    .end local v4    # "itvExitMsg":Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 72
    sget v0, Lcom/shenma/tvlauncher/R$layout;->tv_exit_dialog_layout:I

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
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/TvExitDialogLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
