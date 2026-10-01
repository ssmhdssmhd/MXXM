.class Lcom/shenma/tvlauncher/TopicActivity$8;
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

.field final synthetic val$describe:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/TopicActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/TopicActivity;
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

    .line 341
    iput-object p1, p0, Lcom/shenma/tvlauncher/TopicActivity$8;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/TopicActivity$8;->val$describe:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .line 373
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$8;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgettopic_bg(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 374
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 378
    iget-object v1, p0, Lcom/shenma/tvlauncher/TopicActivity$8;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgettopic_detail_msg_tv(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/TopicActivity$8;->val$describe:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v1, p0, Lcom/shenma/tvlauncher/TopicActivity$8;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgettopic_detail_msg_tv(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    :cond_0
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/graphics/Bitmap;

    .line 361
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$8;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgettopic_bg(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 362
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 366
    iget-object v1, p0, Lcom/shenma/tvlauncher/TopicActivity$8;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgettopic_detail_msg_tv(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/TopicActivity$8;->val$describe:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v1, p0, Lcom/shenma/tvlauncher/TopicActivity$8;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgettopic_detail_msg_tv(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    :cond_0
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .line 349
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$8;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgettopic_bg(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 350
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 354
    iget-object v1, p0, Lcom/shenma/tvlauncher/TopicActivity$8;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgettopic_detail_msg_tv(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/TopicActivity$8;->val$describe:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v1, p0, Lcom/shenma/tvlauncher/TopicActivity$8;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgettopic_detail_msg_tv(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    :cond_0
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .line 345
    return-void
.end method
