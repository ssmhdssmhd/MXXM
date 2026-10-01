.class Lcom/shenma/tvlauncher/TvStationActivity$3$1;
.super Ljava/lang/Object;
.source "TvStationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/TvStationActivity$3;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/TvStationActivity$3;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/TvStationActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/TvStationActivity$3;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/shenma/tvlauncher/TvStationActivity$3$1;->this$1:Lcom/shenma/tvlauncher/TvStationActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/shenma/tvlauncher/TvStationActivity$3$1;->this$1:Lcom/shenma/tvlauncher/TvStationActivity$3;

    iget-object v0, v0, Lcom/shenma/tvlauncher/TvStationActivity$3;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/TvStationActivity;->-$$Nest$fgettvstation_gv(Lcom/shenma/tvlauncher/TvStationActivity;)Landroid/widget/GridView;

    move-result-object v0

    const/16 v1, 0x98

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->smoothScrollBy(II)V

    .line 120
    return-void
.end method
