.class Lcom/view/SingleChoiceMenuView$2;
.super Ljava/lang/Object;
.source "SingleChoiceMenuView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/view/SingleChoiceMenuView$2;->this$0:Lcom/view/SingleChoiceMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/view/SingleChoiceMenuView$2;->this$0:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/view/SingleChoiceMenuView;->onMenuItemFocusChanged(Landroid/view/View;Z)V

    return-void
.end method
