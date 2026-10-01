.class public Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceAdapter.java"


# instance fields
.field contentText:Landroid/widget/TextView;

.field private currentPosition:I

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p2, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;->contentText:Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;->mSources:Ljava/util/ArrayList;

    .line 20
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;->mContext:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;->currentPosition:I

    .line 25
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;->mSources:Ljava/util/ArrayList;

    .line 27
    nop

    .line 28
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;->mSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;->currentPosition:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .line 44
    if-nez p2, :cond_0

    .line 45
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/shenma/tvlauncher/R$layout;->live_fourlink:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    sget v0, Lcom/shenma/tvlauncher/R$id;->fourlink:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;->contentText:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;->contentText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;->contentText:Landroid/widget/TextView;

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;->contentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;->mSources:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;->mSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "joychang"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-object p2
.end method

.method public setCurrentPosition(I)V
    .locals 0
    .param p1, "currentPosition"    # I

    .line 61
    iput p1, p0, Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;->currentPosition:I

    .line 62
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvlive/adapter/SourceAdapter;->notifyDataSetChanged()V

    .line 63
    return-void
.end method
