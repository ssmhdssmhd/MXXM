.class public Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContentAdapter.java"


# instance fields
.field contentText:Landroid/widget/TextView;

.field private currentPosition:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private netMediaCollection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 22
    .local p1, "netMediaCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;->contentText:Landroid/widget/TextView;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;->currentPosition:I

    .line 23
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;->netMediaCollection:Ljava/util/ArrayList;

    .line 24
    nop

    .line 25
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;->netMediaCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;->currentPosition:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .line 33
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;->netMediaCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .line 37
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .line 42
    if-nez p2, :cond_0

    .line 43
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/shenma/tvlauncher/R$layout;->live_fourlink:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 44
    sget v0, Lcom/shenma/tvlauncher/R$id;->fourlink:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;->contentText:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;->contentText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;->contentText:Landroid/widget/TextView;

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;->netMediaCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 50
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getTotlePosition()I

    move-result v0

    .line 51
    .local v0, "channlePosition":I
    const/4 v1, 0x0

    .line 52
    .local v1, "strPosition":Ljava/lang/String;
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 54
    :cond_1
    const/16 v2, 0x64

    if-ge v0, v2, :cond_2

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 57
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;->contentText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;->netMediaCollection:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-object p2
.end method

.method public setCurrentPosition(I)V
    .locals 0
    .param p1, "currentPosition"    # I

    .line 74
    iput p1, p0, Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;->currentPosition:I

    .line 75
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method
