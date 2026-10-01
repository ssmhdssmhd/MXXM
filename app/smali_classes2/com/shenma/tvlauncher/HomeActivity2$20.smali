.class Lcom/shenma/tvlauncher/HomeActivity2$20;
.super Ljava/lang/Object;
.source "HomeActivity2.java"

# interfaces
.implements Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$OnItemPickerShow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity2;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity2;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity2;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 667
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2$20;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    iput p2, p0, Lcom/shenma/tvlauncher/HomeActivity2$20;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showItemPic(Ljava/lang/String;)V
    .locals 3
    .param p1, "picUrl"    # Ljava/lang/String;

    .line 670
    iget v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$20;->val$mode:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 671
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$20;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetbgImageView(Lcom/shenma/tvlauncher/HomeActivity2;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 672
    invoke-static {}, Lcom/shenma/tvlauncher/application/MyVolley;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v0

    .line 673
    .local v0, "imageLoader":Lcom/android/volley/toolbox/ImageLoader;
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$20;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetbgImageView(Lcom/shenma/tvlauncher/HomeActivity2;)Landroid/widget/ImageView;

    move-result-object v1

    .line 674
    invoke-static {v1, v2, v2}, Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v1

    .line 673
    invoke-virtual {v0, p1, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .end local v0    # "imageLoader":Lcom/android/volley/toolbox/ImageLoader;
    goto :goto_0

    .line 677
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$20;->val$mode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 678
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$20;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetoverlayer(Lcom/shenma/tvlauncher/HomeActivity2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$20;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HomeActivity2;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 680
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 681
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/HomeActivity2$20$1;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/HomeActivity2$20$1;-><init>(Lcom/shenma/tvlauncher/HomeActivity2$20;)V

    .line 682
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 677
    :cond_1
    :goto_0
    nop

    .line 689
    :goto_1
    return-void
.end method
