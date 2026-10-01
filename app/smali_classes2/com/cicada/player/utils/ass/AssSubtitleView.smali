.class public Lcom/cicada/player/utils/ass/AssSubtitleView;
.super Landroid/widget/RelativeLayout;
.source "AssSubtitleView.java"


# instance fields
.field private mAssResolver:Lcom/cicada/player/utils/ass/AssResolver;

.field private mAssSubtitleView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cicada/player/utils/ass/AssTextView;",
            ">;"
        }
    .end annotation
.end field

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssSubtitleView:Ljava/util/List;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoWidth:I

    .line 37
    iput v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoHeight:I

    .line 19
    invoke-direct {p0, p1}, Lcom/cicada/player/utils/ass/AssSubtitleView;->init(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssSubtitleView:Ljava/util/List;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoWidth:I

    .line 37
    iput v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoHeight:I

    .line 24
    invoke-direct {p0, p1}, Lcom/cicada/player/utils/ass/AssSubtitleView;->init(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssSubtitleView:Ljava/util/List;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoWidth:I

    .line 37
    iput v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoHeight:I

    .line 29
    invoke-direct {p0, p1}, Lcom/cicada/player/utils/ass/AssSubtitleView;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/cicada/player/utils/ass/AssResolver;

    invoke-direct {v0, p1}, Lcom/cicada/player/utils/ass/AssResolver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssResolver:Lcom/cicada/player/utils/ass/AssResolver;

    .line 34
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssResolver:Lcom/cicada/player/utils/ass/AssResolver;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssResolver:Lcom/cicada/player/utils/ass/AssResolver;

    invoke-virtual {v0}, Lcom/cicada/player/utils/ass/AssResolver;->destroy()V

    .line 110
    :cond_0
    return-void
.end method

.method public declared-synchronized dismiss(J)V
    .locals 7
    .param p1, "id"    # J

    monitor-enter p0

    .line 93
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "removedView":Ljava/util/List;, "Ljava/util/List<Lcom/cicada/player/utils/ass/AssTextView;>;"
    iget-object v1, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssSubtitleView:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cicada/player/utils/ass/AssTextView;

    .line 95
    .local v2, "view":Lcom/cicada/player/utils/ass/AssTextView;
    invoke-virtual {v2}, Lcom/cicada/player/utils/ass/AssTextView;->getSubtitleId()Ljava/lang/Long;

    move-result-object v3

    .line 96
    .local v3, "viewId":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-nez v6, :cond_0

    .line 97
    invoke-virtual {p0, v2}, Lcom/cicada/player/utils/ass/AssSubtitleView;->removeView(Landroid/view/View;)V

    .line 98
    iget-object v4, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssResolver:Lcom/cicada/player/utils/ass/AssResolver;

    invoke-virtual {v4, v2}, Lcom/cicada/player/utils/ass/AssResolver;->dismiss(Lcom/cicada/player/utils/ass/AssTextView;)V

    .line 99
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v2    # "view":Lcom/cicada/player/utils/ass/AssTextView;
    .end local v3    # "viewId":Ljava/lang/Long;
    .end local p0    # "this":Lcom/cicada/player/utils/ass/AssSubtitleView;
    :cond_0
    goto :goto_0

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssSubtitleView:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 92
    .end local v0    # "removedView":Ljava/util/List;, "Ljava/util/List<Lcom/cicada/player/utils/ass/AssTextView;>;"
    .end local p1    # "id":J
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setAssHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssResolver:Lcom/cicada/player/utils/ass/AssResolver;

    invoke-virtual {v0, p1}, Lcom/cicada/player/utils/ass/AssResolver;->setAssHeaders(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public setFontTypeFace(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p1, "typefaceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssResolver:Lcom/cicada/player/utils/ass/AssResolver;

    invoke-virtual {v0, p1}, Lcom/cicada/player/utils/ass/AssResolver;->setFontTypeMap(Ljava/util/Map;)V

    .line 72
    return-void
.end method

.method public declared-synchronized setVideoRenderSize(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    monitor-enter p0

    .line 46
    :try_start_0
    iget v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoHeight:I

    if-eq v0, p2, :cond_2

    .line 47
    .end local p0    # "this":Lcom/cicada/player/utils/ass/AssSubtitleView;
    :cond_0
    iput p1, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoWidth:I

    .line 48
    iput p2, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoHeight:I

    .line 50
    invoke-virtual {p0}, Lcom/cicada/player/utils/ass/AssSubtitleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 51
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_1

    .line 52
    iget v1, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 53
    iget v1, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 54
    invoke-virtual {p0, v0}, Lcom/cicada/player/utils/ass/AssSubtitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssResolver:Lcom/cicada/player/utils/ass/AssResolver;

    iget v2, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoWidth:I

    iget v3, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/cicada/player/utils/ass/AssResolver;->setVideoDisplaySize(II)V

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v1, "assTextViews":Ljava/util/List;, "Ljava/util/List<Lcom/cicada/player/utils/ass/AssTextView;>;"
    iget-object v2, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssSubtitleView:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cicada/player/utils/ass/AssTextView;

    .line 62
    .local v3, "view":Lcom/cicada/player/utils/ass/AssTextView;
    invoke-virtual {v3}, Lcom/cicada/player/utils/ass/AssTextView;->getSubtitleId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 63
    .local v4, "id":J
    invoke-virtual {v3}, Lcom/cicada/player/utils/ass/AssTextView;->getContent()Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "content":Ljava/lang/String;
    invoke-virtual {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssSubtitleView;->dismiss(J)V

    .line 65
    invoke-virtual {p0, v4, v5, v6}, Lcom/cicada/player/utils/ass/AssSubtitleView;->show(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v3    # "view":Lcom/cicada/player/utils/ass/AssTextView;
    .end local v4    # "id":J
    .end local v6    # "content":Ljava/lang/String;
    goto :goto_0

    .line 68
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "assTextViews":Ljava/util/List;, "Ljava/util/List<Lcom/cicada/player/utils/ass/AssTextView;>;"
    :cond_2
    monitor-exit p0

    return-void

    .line 45
    .end local p1    # "width":I
    .end local p2    # "height":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized show(JLjava/lang/String;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "content"    # Ljava/lang/String;

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssResolver:Lcom/cicada/player/utils/ass/AssResolver;

    invoke-virtual {v0, p3}, Lcom/cicada/player/utils/ass/AssResolver;->setAssDialog(Ljava/lang/String;)Lcom/cicada/player/utils/ass/AssTextView;

    move-result-object v0

    .line 83
    .local v0, "view":Lcom/cicada/player/utils/ass/AssTextView;
    if-eqz v0, :cond_0

    .line 84
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cicada/player/utils/ass/AssTextView;->setSubtitleId(Ljava/lang/Long;)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/cicada/player/utils/ass/AssSubtitleView;->addView(Landroid/view/View;)V

    .line 86
    iget-object v1, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssSubtitleView:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .end local p0    # "this":Lcom/cicada/player/utils/ass/AssSubtitleView;
    :cond_0
    invoke-virtual {p0}, Lcom/cicada/player/utils/ass/AssSubtitleView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 80
    .end local v0    # "view":Lcom/cicada/player/utils/ass/AssTextView;
    .end local p1    # "id":J
    .end local p3    # "content":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
