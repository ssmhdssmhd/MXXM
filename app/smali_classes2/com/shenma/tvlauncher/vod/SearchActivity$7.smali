.class Lcom/shenma/tvlauncher/vod/SearchActivity$7;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

.field final synthetic val$metrics:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/SearchActivity;Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;
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

    .line 326
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$7;->val$metrics:Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$7;->val$metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetkeyboard_view(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 330
    .local v0, "screenWidth":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$7;->val$metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42f00000    # 120.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 331
    .local v1, "columnWidth":I
    div-int v2, v0, v1

    .line 333
    .local v2, "numCColumns":I
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetgv_search_result(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 335
    return-void
.end method
