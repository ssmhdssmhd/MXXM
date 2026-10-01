.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$32;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->onCreateMenus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2539
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$32;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 2545
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$32;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, p3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputgsplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 2546
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$32;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetgsplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v0

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsposition:I

    .line 2547
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$32;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmenulists(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsposition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2548
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$32;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mshowMenus(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2549
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$32;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmenulistss(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$32;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetvideoInfos(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2550
    return-void
.end method
