.class public Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$GridSpacingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "Home2VodListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridSpacingItemDecoration"
.end annotation


# instance fields
.field private final adapter:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;

.field private final spacing:I

.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;ILcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;)V
    .locals 3
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;
    .param p2, "spacingInDp"    # I
    .param p3, "adapter"    # Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;
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

    .line 930
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$GridSpacingItemDecoration;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 931
    int-to-float v0, p2

    .line 934
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 931
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$GridSpacingItemDecoration;->spacing:I

    .line 936
    iput-object p3, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$GridSpacingItemDecoration;->adapter:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;

    .line 937
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 941
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 942
    .local v0, "layoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    .line 943
    .local v1, "spanCount":I
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 946
    .local v2, "position":I
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$GridSpacingItemDecoration;->adapter:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;

    invoke-virtual {v3, v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->getItemViewType(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 947
    return-void

    .line 951
    :cond_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$GridSpacingItemDecoration;->adapter:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;

    invoke-static {v3}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->-$$Nest$fgetisHeaderVisible(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;)Z

    move-result v3

    sub-int v3, v2, v3

    .line 952
    .local v3, "dataPosition":I
    rem-int v4, v3, v1

    .line 955
    .local v4, "column":I
    iget v5, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$GridSpacingItemDecoration;->spacing:I

    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$GridSpacingItemDecoration;->spacing:I

    mul-int v6, v6, v7

    div-int/2addr v6, v1

    sub-int/2addr v5, v6

    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 956
    add-int/lit8 v5, v4, 0x1

    iget v6, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$GridSpacingItemDecoration;->spacing:I

    mul-int v5, v5, v6

    div-int/2addr v5, v1

    iput v5, p1, Landroid/graphics/Rect;->right:I

    .line 959
    if-lt v3, v1, :cond_1

    .line 960
    iget v5, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$GridSpacingItemDecoration;->spacing:I

    iput v5, p1, Landroid/graphics/Rect;->top:I

    .line 962
    :cond_1
    return-void
.end method
