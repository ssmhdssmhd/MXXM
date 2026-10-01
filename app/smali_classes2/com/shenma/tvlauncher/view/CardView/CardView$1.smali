.class Lcom/shenma/tvlauncher/view/CardView/CardView$1;
.super Ljava/lang/Object;
.source "CardView.java"

# interfaces
.implements Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/CardView/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCardBackground:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/shenma/tvlauncher/view/CardView/CardView;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/view/CardView/CardView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/view/CardView/CardView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 448
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView$1;->this$0:Lcom/shenma/tvlauncher/view/CardView/CardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCardView()Landroid/view/View;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView$1;->this$0:Lcom/shenma/tvlauncher/view/CardView/CardView;

    return-object v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView$1;->this$0:Lcom/shenma/tvlauncher/view/CardView/CardView;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/CardView/CardView;->getPreventCornerOverlap()Z

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView$1;->this$0:Lcom/shenma/tvlauncher/view/CardView/CardView;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/CardView/CardView;->getUseCompatPadding()Z

    move-result v0

    return v0
.end method

.method public setCardBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 453
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    .line 454
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView$1;->this$0:Lcom/shenma/tvlauncher/view/CardView/CardView;

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 455
    return-void
.end method

.method public setMinWidthHeightInternal(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 476
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView$1;->this$0:Lcom/shenma/tvlauncher/view/CardView/CardView;

    iget v0, v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mUserSetMinWidth:I

    if-le p1, v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView$1;->this$0:Lcom/shenma/tvlauncher/view/CardView/CardView;

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/view/CardView/CardView;->access$101(Lcom/shenma/tvlauncher/view/CardView/CardView;I)V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView$1;->this$0:Lcom/shenma/tvlauncher/view/CardView/CardView;

    iget v0, v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mUserSetMinHeight:I

    if-le p2, v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView$1;->this$0:Lcom/shenma/tvlauncher/view/CardView/CardView;

    invoke-static {v0, p2}, Lcom/shenma/tvlauncher/view/CardView/CardView;->access$201(Lcom/shenma/tvlauncher/view/CardView/CardView;I)V

    .line 482
    :cond_1
    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 469
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView$1;->this$0:Lcom/shenma/tvlauncher/view/CardView/CardView;

    iget-object v0, v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 470
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView$1;->this$0:Lcom/shenma/tvlauncher/view/CardView/CardView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView$1;->this$0:Lcom/shenma/tvlauncher/view/CardView/CardView;

    iget-object v1, v1, Lcom/shenma/tvlauncher/view/CardView/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/CardView/CardView$1;->this$0:Lcom/shenma/tvlauncher/view/CardView/CardView;

    iget-object v2, v2, Lcom/shenma/tvlauncher/view/CardView/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/CardView$1;->this$0:Lcom/shenma/tvlauncher/view/CardView/CardView;

    iget-object v3, v3, Lcom/shenma/tvlauncher/view/CardView/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/CardView/CardView$1;->this$0:Lcom/shenma/tvlauncher/view/CardView/CardView;

    iget-object v4, v4, Lcom/shenma/tvlauncher/view/CardView/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shenma/tvlauncher/view/CardView/CardView;->access$001(Lcom/shenma/tvlauncher/view/CardView/CardView;IIII)V

    .line 472
    return-void
.end method
