.class public Lcom/aliyun/subtitle/TextViewPool;
.super Ljava/lang/Object;
.source "TextViewPool.java"


# instance fields
.field private busyTextViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private idelTextViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/subtitle/TextViewPool;->idelTextViewList:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/subtitle/TextViewPool;->busyTextViewList:Ljava/util/List;

    .line 20
    iput-object p1, p0, Lcom/aliyun/subtitle/TextViewPool;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public obtain()Landroid/widget/TextView;
    .locals 3

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/aliyun/subtitle/TextViewPool;->idelTextViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aliyun/subtitle/TextViewPool;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .end local v0    # "textView":Landroid/widget/TextView;
    .local v1, "textView":Landroid/widget/TextView;
    goto :goto_0

    .line 28
    .end local v1    # "textView":Landroid/widget/TextView;
    .restart local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/aliyun/subtitle/TextViewPool;->idelTextViewList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 30
    .end local v0    # "textView":Landroid/widget/TextView;
    .restart local v1    # "textView":Landroid/widget/TextView;
    :goto_0
    iget-object v0, p0, Lcom/aliyun/subtitle/TextViewPool;->busyTextViewList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-object v1
.end method

.method public recycle(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 36
    if-nez p1, :cond_0

    .line 37
    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 41
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/aliyun/subtitle/TextViewPool;->busyTextViewList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 46
    iget-object v1, p0, Lcom/aliyun/subtitle/TextViewPool;->idelTextViewList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method
