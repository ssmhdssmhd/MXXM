.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$1;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->onResponse(Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1269
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$1;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .line 1297
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$1;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetiv_details_poster(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1298
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1300
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$1;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;

    iget-object v2, v2, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetiv_details_poster(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1301
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/graphics/Bitmap;

    .line 1288
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$1;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetiv_details_poster(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1289
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1291
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$1;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;

    iget-object v2, v2, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetiv_details_poster(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1292
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .line 1279
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$1;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetiv_details_poster(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1280
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1282
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$1;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;

    iget-object v2, v2, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetiv_details_poster(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1283
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .line 1274
    return-void
.end method
