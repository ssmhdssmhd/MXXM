.class public Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "Home2RecommendThemeSevenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HorizontalViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field private item_cardview:Landroid/view/View;

.field textView:Landroid/widget/TextView;

.field tvVdoNum:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetitem_cardview(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;->item_cardview:Landroid/view/View;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 478
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 479
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_movie_pic:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;->imageView:Landroid/widget/ImageView;

    .line 480
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_movie_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;->textView:Landroid/widget/TextView;

    .line 481
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_movie_num:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;->tvVdoNum:Landroid/widget/TextView;

    .line 482
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_cardview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;->item_cardview:Landroid/view/View;

    .line 483
    return-void
.end method


# virtual methods
.method public bind(Lcom/shenma/tvlauncher/domain/RecommendInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/shenma/tvlauncher/domain/RecommendInfo;

    .line 486
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 487
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getThumb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;->imageView:Landroid/widget/ImageView;

    .line 490
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 491
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;->tvVdoNum:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjinfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    return-void
.end method
