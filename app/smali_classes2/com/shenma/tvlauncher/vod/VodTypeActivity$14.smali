.class Lcom/shenma/tvlauncher/vod/VodTypeActivity$14;
.super Ljava/lang/Object;
.source "VodTypeActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodTypeActivity;->setListener()V
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

    .line 695
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 700
    sub-int v0, p4, p3

    .line 702
    .local v0, "i":I
    if-eqz v0, :cond_0

    if-lt p2, v0, :cond_0

    .line 703
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$mpageDown(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V

    .line 705
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 697
    return-void
.end method
