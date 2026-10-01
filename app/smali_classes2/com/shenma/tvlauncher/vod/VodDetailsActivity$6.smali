.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$6;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 853
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 856
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetroot_view(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgettv_details_director(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->showTextPopup(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    .line 857
    return-void
.end method
