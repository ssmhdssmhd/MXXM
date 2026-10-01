.class public Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "Home2RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HorizontalViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field item_movie_cardview:Landroid/view/View;

.field textView:Landroid/widget/TextView;

.field tvVdoNum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 300
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 301
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_movie_pic:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;->imageView:Landroid/widget/ImageView;

    .line 302
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_movie_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;->textView:Landroid/widget/TextView;

    .line 303
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_movie_num:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;->tvVdoNum:Landroid/widget/TextView;

    .line 304
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_movie_cardview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;->item_movie_cardview:Landroid/view/View;

    .line 305
    return-void
.end method


# virtual methods
.method public bind(Lcom/shenma/tvlauncher/domain/RecommendInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/shenma/tvlauncher/domain/RecommendInfo;

    .line 313
    invoke-static {}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$sfgetmode()I

    move-result v0

    sget v1, Lcom/shenma/tvlauncher/HomeActivity2;->LANDSCAPE_MODE:I

    if-ne v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 316
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;->imageView:Landroid/widget/ImageView;

    .line 319
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 320
    :cond_0
    invoke-static {}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$sfgetmode()I

    move-result v0

    sget v1, Lcom/shenma/tvlauncher/HomeActivity2;->PORTRAIT_MODE:I

    if-ne v0, v1, :cond_1

    .line 322
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 323
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getThumb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;->imageView:Landroid/widget/ImageView;

    .line 326
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 328
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;->tvVdoNum:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjinfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    return-void
.end method

.method public bind(Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;)V
    .locals 0
    .param p1, "item"    # Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    .line 309
    return-void
.end method
