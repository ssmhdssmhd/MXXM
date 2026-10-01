.class public final Lcom/shenma/tvlauncher/databinding/TopicDetailBinding;
.super Ljava/lang/Object;
.source "TopicDetailBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivTopicPoster:Landroid/widget/ImageView;

.field public final llTopic:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final topicBg:Landroid/widget/ImageView;

.field public final topicDetailGl:Landroid/widget/Gallery;

.field public final topicDetailMsgTv:Landroid/widget/TextView;

.field public final tvTopicName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/Gallery;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "ivTopicPoster"    # Landroid/widget/ImageView;
    .param p3, "llTopic"    # Landroid/widget/LinearLayout;
    .param p4, "topicBg"    # Landroid/widget/ImageView;
    .param p5, "topicDetailGl"    # Landroid/widget/Gallery;
    .param p6, "topicDetailMsgTv"    # Landroid/widget/TextView;
    .param p7, "tvTopicName"    # Landroid/widget/TextView;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/TopicDetailBinding;->rootView:Landroid/widget/FrameLayout;

    .line 47
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/TopicDetailBinding;->ivTopicPoster:Landroid/widget/ImageView;

    .line 48
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/TopicDetailBinding;->llTopic:Landroid/widget/LinearLayout;

    .line 49
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/TopicDetailBinding;->topicBg:Landroid/widget/ImageView;

    .line 50
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/TopicDetailBinding;->topicDetailGl:Landroid/widget/Gallery;

    .line 51
    iput-object p6, p0, Lcom/shenma/tvlauncher/databinding/TopicDetailBinding;->topicDetailMsgTv:Landroid/widget/TextView;

    .line 52
    iput-object p7, p0, Lcom/shenma/tvlauncher/databinding/TopicDetailBinding;->tvTopicName:Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/TopicDetailBinding;
    .locals 10
    .param p0, "rootView"    # Landroid/view/View;

    .line 82
    sget v0, Lcom/shenma/tvlauncher/R$id;->iv_topic_poster:I

    .line 83
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 84
    .local v4, "ivTopicPoster":Landroid/widget/ImageView;
    if-eqz v4, :cond_5

    .line 88
    sget v0, Lcom/shenma/tvlauncher/R$id;->ll_topic:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    .line 90
    .local v5, "llTopic":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_4

    .line 94
    sget v0, Lcom/shenma/tvlauncher/R$id;->topic_bg:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    .line 96
    .local v6, "topicBg":Landroid/widget/ImageView;
    if-eqz v6, :cond_3

    .line 100
    sget v0, Lcom/shenma/tvlauncher/R$id;->topic_detail_gl:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Gallery;

    .line 102
    .local v7, "topicDetailGl":Landroid/widget/Gallery;
    if-eqz v7, :cond_2

    .line 106
    sget v0, Lcom/shenma/tvlauncher/R$id;->topic_detail_msg_tv:I

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 108
    .local v8, "topicDetailMsgTv":Landroid/widget/TextView;
    if-eqz v8, :cond_1

    .line 112
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_topic_name:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    .line 114
    .local v9, "tvTopicName":Landroid/widget/TextView;
    if-eqz v9, :cond_0

    .line 118
    new-instance v2, Lcom/shenma/tvlauncher/databinding/TopicDetailBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-direct/range {v2 .. v9}, Lcom/shenma/tvlauncher/databinding/TopicDetailBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/Gallery;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 115
    :cond_0
    goto :goto_0

    .line 109
    .end local v9    # "tvTopicName":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 103
    .end local v8    # "topicDetailMsgTv":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 97
    .end local v7    # "topicDetailGl":Landroid/widget/Gallery;
    :cond_3
    goto :goto_0

    .line 91
    .end local v6    # "topicBg":Landroid/widget/ImageView;
    :cond_4
    goto :goto_0

    .line 85
    .end local v5    # "llTopic":Landroid/widget/LinearLayout;
    :cond_5
    nop

    .line 121
    .end local v4    # "ivTopicPoster":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/TopicDetailBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/TopicDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/TopicDetailBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/TopicDetailBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 69
    sget v0, Lcom/shenma/tvlauncher/R$layout;->topic_detail:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/TopicDetailBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/TopicDetailBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/TopicDetailBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/TopicDetailBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
