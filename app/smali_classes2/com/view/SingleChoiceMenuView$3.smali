.class Lcom/view/SingleChoiceMenuView$3;
.super Ljava/lang/Object;
.source "SingleChoiceMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/view/SingleChoiceMenuView;->onMenuItemFocusChanged(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/view/SingleChoiceMenuView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/view/SingleChoiceMenuView;I)V
    .locals 0

    iput-object p1, p0, Lcom/view/SingleChoiceMenuView$3;->this$0:Lcom/view/SingleChoiceMenuView;

    iput p2, p0, Lcom/view/SingleChoiceMenuView$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/view/SingleChoiceMenuView$3;->this$0:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v0}, Lcom/view/SingleChoiceMenuView;->getSelectedPosition()I

    move-result v1

    iget v2, p0, Lcom/view/SingleChoiceMenuView$3;->val$position:I

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v2}, Lcom/view/SingleChoiceMenuView;->setSelectedPosition(I)V

    return-void
.end method
