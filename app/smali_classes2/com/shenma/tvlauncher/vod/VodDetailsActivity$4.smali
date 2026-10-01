.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$4;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->CreateBottomLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 629
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetmenu_paixu(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/view/SingleChoiceMenuView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetpaixuSelection(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/view/SingleChoiceMenuView;->setSelectedPosition(I)V

    .line 633
    return-void
.end method
