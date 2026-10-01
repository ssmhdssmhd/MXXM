.class Lcom/shenma/tvlauncher/TvStationActivity$3;
.super Ljava/lang/Object;
.source "TvStationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/TvStationActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/TvStationActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/TvStationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/TvStationActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/shenma/tvlauncher/TvStationActivity$3;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 114
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/TvStationActivity$3;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/TvStationActivity;->-$$Nest$fgetlastIndex(Lcom/shenma/tvlauncher/TvStationActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-le p3, v0, :cond_1

    .line 115
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p3, v0

    const/16 v2, 0xe

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/shenma/tvlauncher/TvStationActivity$3;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/TvStationActivity;->-$$Nest$fgetlastIndex(Lcom/shenma/tvlauncher/TvStationActivity;)I

    move-result v0

    sub-int v0, p3, v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    rem-int/2addr v2, v1

    sub-int/2addr v0, v2

    :goto_0
    if-ge p3, v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/shenma/tvlauncher/TvStationActivity$3;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/TvStationActivity;->-$$Nest$fgettvstation_gv(Lcom/shenma/tvlauncher/TvStationActivity;)Landroid/widget/GridView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/TvStationActivity$3$1;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/TvStationActivity$3$1;-><init>(Lcom/shenma/tvlauncher/TvStationActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p3, v0

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/shenma/tvlauncher/TvStationActivity$3;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/TvStationActivity;->-$$Nest$fgetlastIndex(Lcom/shenma/tvlauncher/TvStationActivity;)I

    move-result v0

    sub-int/2addr v0, p3

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/TvStationActivity$3;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/TvStationActivity;->-$$Nest$fgettvstation_gv(Lcom/shenma/tvlauncher/TvStationActivity;)Landroid/widget/GridView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/TvStationActivity$3$2;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/TvStationActivity$3$2;-><init>(Lcom/shenma/tvlauncher/TvStationActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 133
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/TvStationActivity$3;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-static {v0, p3}, Lcom/shenma/tvlauncher/TvStationActivity;->-$$Nest$fputlastIndex(Lcom/shenma/tvlauncher/TvStationActivity;I)V

    .line 134
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 138
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
