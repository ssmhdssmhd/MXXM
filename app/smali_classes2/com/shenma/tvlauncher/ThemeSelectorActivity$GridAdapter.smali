.class public Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ThemeSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/ThemeSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$OnItemClickListener;,
        Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;",
            ">;"
        }
    .end annotation
.end field

.field onItemClickListener:Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;",
            ">;)V"
        }
    .end annotation

    .line 222
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;->dataList:Ljava/util/List;

    .line 224
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 208
    check-cast p1, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;->onBindViewHolder(Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 236
    iget-object v0, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;

    .line 237
    .local v0, "item":Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;
    iget-object v1, p1, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v1, p1, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;->getImageRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    invoke-static {p1}, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;->-$$Nest$fgetitemRootView(Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$1;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$1;-><init>(Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 256
    invoke-static {p1}, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;->-$$Nest$fgetitemRootView(Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$2;

    invoke-direct {v2, p0, p2}, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$2;-><init>(Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v1, p1, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p1, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 276
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-nez v2, :cond_0

    .line 277
    iget-object v2, p1, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 229
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$layout;->theme_selector_item:I

    .line 230
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 231
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;-><init>(Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$OnItemClickListener;

    .line 213
    iput-object p1, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;->onItemClickListener:Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$OnItemClickListener;

    .line 214
    return-void
.end method
