.class Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "Home2VodListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field private root_cardview:Landroid/view/View;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

.field private tvVdoNum:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetroot_cardview(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;->root_cardview:Landroid/view/View;

    return-object p0
.end method

.method public constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Landroid/view/View;)V
    .locals 5
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;
    .param p2, "itemView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 754
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    .line 755
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 756
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_movie_pic:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;->imageView:Landroid/widget/ImageView;

    .line 757
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_movie_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;->textView:Landroid/widget/TextView;

    .line 758
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_movie_num:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;->tvVdoNum:Landroid/widget/TextView;

    .line 759
    sget v0, Lcom/shenma/tvlauncher/R$id;->root_cardview:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;->root_cardview:Landroid/view/View;

    .line 760
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v4

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x41700000    # 15.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x6

    sub-int/2addr v1, v3

    if-lez v1, :cond_0

    mul-int/lit8 v2, v1, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    .line 763
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 764
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 765
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 766
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;->imageView:Landroid/widget/ImageView;

    .line 767
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 768
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;->tvVdoNum:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    return-void
.end method
