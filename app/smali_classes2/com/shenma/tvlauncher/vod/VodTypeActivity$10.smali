.class Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;
.super Ljava/lang/Object;
.source "VodTypeActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodTypeActivity;->createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 639
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 641
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    sget v2, Lcom/shenma/tvlauncher/R$string;->str_data_loading_error:I

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 644
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetvodDatas(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetvodDatas(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetvodpageindex(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fputpageindex(Lcom/shenma/tvlauncher/vod/VodTypeActivity;I)V

    goto :goto_1

    .line 645
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fputpageindex(Lcom/shenma/tvlauncher/vod/VodTypeActivity;I)V

    goto :goto_1

    .line 649
    :cond_2
    instance-of v0, p1, Lcom/android/volley/ParseError;

    if-eqz v0, :cond_3

    .line 650
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgettv_type_details_sum(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "\u51710\u90e8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fputpageindex(Lcom/shenma/tvlauncher/vod/VodTypeActivity;I)V

    .line 655
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->No_Content:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_1

    .line 657
    :cond_3
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    .line 660
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->closeProgressDialog()V

    .line 661
    return-void
.end method
