.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->loadViewLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1818
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 1821
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mhideController(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 1823
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmenupopupWindow(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1825
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$sfputmenutype(I)V

    .line 1826
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetvideoInfo(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetisMenuItemShow(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1827
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1828
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmenupopupWindow(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$style;->AnimationMenu:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1829
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmenupopupWindow(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v2

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1830
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmenupopupWindow(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$dimen;->sm_350:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetscreenHeight(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1831
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputisMenuShow(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)V

    .line 1832
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputisMenuItemShow(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)V

    .line 1835
    :cond_0
    return-void
.end method
