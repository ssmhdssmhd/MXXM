.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3$1;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->onItemSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 615
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3$1;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3$1;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3$1;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetxuanjiSelection(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fputlastXuanji(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;I)V

    .line 619
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3$1;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetmenu_xuanji(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/view/SingleChoiceMenuView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3$1;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetxuanjiSelection(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/view/SingleChoiceMenuView;->setSelectedPosition(I)V

    .line 621
    return-void
.end method
