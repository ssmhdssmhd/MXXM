.class Lcom/shenma/tvlauncher/view/CycleTextSwitchView$1;
.super Ljava/lang/Object;
.source "CycleTextSwitchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/view/CycleTextSwitchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView$1;->this$0:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView$1;->this$0:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->-$$Nest$mcycleContent(Lcom/shenma/tvlauncher/view/CycleTextSwitchView;)V

    .line 77
    return-void
.end method
