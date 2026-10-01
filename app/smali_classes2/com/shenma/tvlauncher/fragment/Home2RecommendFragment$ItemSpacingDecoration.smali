.class public Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$ItemSpacingDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "Home2RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemSpacingDecoration"
.end annotation


# instance fields
.field private final spacing:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "spacing"    # I

    .line 590
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 591
    iput p1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$ItemSpacingDecoration;->spacing:I

    .line 592
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 597
    iget v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$ItemSpacingDecoration;->spacing:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 601
    return-void
.end method
