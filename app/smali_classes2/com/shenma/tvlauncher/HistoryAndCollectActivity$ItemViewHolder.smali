.class Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HistoryAndCollectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/HistoryAndCollectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field private root_cardview:Landroid/view/View;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

.field private tvVdoNum:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetroot_cardview(Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;->root_cardview:Landroid/view/View;

    return-object p0
.end method

.method public constructor <init>(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HistoryAndCollectActivity;
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

    .line 449
    iput-object p1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    .line 450
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 451
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_movie_pic:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;->imageView:Landroid/widget/ImageView;

    .line 452
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_movie_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;->textView:Landroid/widget/TextView;

    .line 453
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_movie_num:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;->tvVdoNum:Landroid/widget/TextView;

    .line 454
    sget v0, Lcom/shenma/tvlauncher/R$id;->root_cardview:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;->root_cardview:Landroid/view/View;

    .line 455
    return-void
.end method


# virtual methods
.method public bind(Lcom/shenma/tvlauncher/vod/db/Album;)V
    .locals 2
    .param p1, "item"    # Lcom/shenma/tvlauncher/vod/db/Album;

    .line 458
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 459
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;->imageView:Landroid/widget/ImageView;

    .line 462
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 463
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;->tvVdoNum:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    return-void
.end method
