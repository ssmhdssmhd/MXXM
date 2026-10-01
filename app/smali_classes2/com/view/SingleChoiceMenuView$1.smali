.class Lcom/view/SingleChoiceMenuView$1;
.super Ljava/lang/Object;
.source "SingleChoiceMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/view/SingleChoiceMenuView;->addMenuItem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/view/SingleChoiceMenuView;


# direct methods
.method constructor <init>(Lcom/view/SingleChoiceMenuView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/view/SingleChoiceMenuView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/view/SingleChoiceMenuView$1;->this$0:Lcom/view/SingleChoiceMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/view/SingleChoiceMenuView$1;->this$0:Lcom/view/SingleChoiceMenuView;

    invoke-static {v0}, Lcom/view/SingleChoiceMenuView;->-$$Nest$fgetmenuItems(Lcom/view/SingleChoiceMenuView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 103
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/view/SingleChoiceMenuView$1;->this$0:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v1, v0}, Lcom/view/SingleChoiceMenuView;->setSelectedPosition(I)V

    .line 108
    :cond_0
    return-void
.end method
