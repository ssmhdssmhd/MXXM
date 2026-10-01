.class Lcom/shenma/tvlauncher/TopicActivity$7;
.super Ljava/lang/Object;
.source "TopicActivity.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/TopicActivity;->setTopicPoster(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/TopicActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/TopicActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/TopicActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 299
    iput-object p1, p0, Lcom/shenma/tvlauncher/TopicActivity$7;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .line 331
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$7;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgetiv_topic_poster(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 332
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 333
    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 334
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/16 v2, 0x3c

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/view/Reflect3DImage;->skewImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 335
    .local v2, "bit":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/shenma/tvlauncher/TopicActivity$7;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgetiv_topic_poster(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 339
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "bit":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/graphics/Bitmap;

    .line 319
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$7;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgetiv_topic_poster(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 320
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 321
    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 322
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/16 v2, 0x3c

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/view/Reflect3DImage;->skewImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 323
    .local v2, "bit":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/shenma/tvlauncher/TopicActivity$7;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgetiv_topic_poster(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 327
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "bit":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .line 307
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$7;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgetiv_topic_poster(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 308
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 309
    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 310
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/16 v2, 0x3c

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/view/Reflect3DImage;->skewImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 311
    .local v2, "bit":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/shenma/tvlauncher/TopicActivity$7;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgetiv_topic_poster(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 315
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "bit":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .line 303
    return-void
.end method
