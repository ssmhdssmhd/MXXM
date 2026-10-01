.class public Lcom/shenma/tvlauncher/HistoryAndCollectActivity$GridSpacingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "HistoryAndCollectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/HistoryAndCollectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridSpacingItemDecoration"
.end annotation


# instance fields
.field private final adapter:Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;

.field private final spacing:I

.field final synthetic this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;ILcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;)V
    .locals 3
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HistoryAndCollectActivity;
    .param p2, "spacingInDp"    # I
    .param p3, "adapter"    # Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 346
    iput-object p1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$GridSpacingItemDecoration;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 347
    int-to-float v0, p2

    .line 350
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 347
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$GridSpacingItemDecoration;->spacing:I

    .line 352
    iput-object p3, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$GridSpacingItemDecoration;->adapter:Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;

    .line 353
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 357
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 358
    .local v0, "layoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    .line 359
    .local v1, "spanCount":I
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 362
    .local v2, "position":I
    rem-int v3, v2, v1

    .line 365
    .local v3, "column":I
    iget v4, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$GridSpacingItemDecoration;->spacing:I

    add-int/lit8 v5, v3, 0x1

    iget v6, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$GridSpacingItemDecoration;->spacing:I

    mul-int v5, v5, v6

    div-int/2addr v5, v1

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 366
    add-int/lit8 v4, v3, 0x1

    iget v5, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$GridSpacingItemDecoration;->spacing:I

    mul-int v4, v4, v5

    div-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 369
    if-lt v2, v1, :cond_0

    .line 370
    iget v4, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$GridSpacingItemDecoration;->spacing:I

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 372
    :cond_0
    return-void
.end method
