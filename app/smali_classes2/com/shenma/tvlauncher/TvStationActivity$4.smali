.class Lcom/shenma/tvlauncher/TvStationActivity$4;
.super Ljava/lang/Object;
.source "TvStationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 140
    iput-object p1, p0, Lcom/shenma/tvlauncher/TvStationActivity$4;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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

    .line 144
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Lcom/shenma/tvlauncher/dao/bean/TVSCollect;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/dao/bean/TVSCollect;-><init>()V

    .line 145
    .local v0, "tvsc":Lcom/shenma/tvlauncher/dao/bean/TVSCollect;
    iget-object v1, p0, Lcom/shenma/tvlauncher/TvStationActivity$4;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/TvStationActivity;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/TvStationActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TVStationInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TVStationInfo;->getChannelname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/dao/bean/TVSCollect;->setChannelname(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/shenma/tvlauncher/TvStationActivity$4;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/TvStationActivity;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/TvStationActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TVStationInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TVStationInfo;->getChannelpic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/dao/bean/TVSCollect;->setChannelpic(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/shenma/tvlauncher/TvStationActivity$4;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/TvStationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "index"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/dao/bean/TVSCollect;->setTvindex(I)V

    .line 148
    iget-object v1, p0, Lcom/shenma/tvlauncher/TvStationActivity$4;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/TvStationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isUpdate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 149
    .local v1, "isUpdate":Z
    if-eqz v1, :cond_0

    .line 151
    iget-object v2, p0, Lcom/shenma/tvlauncher/TvStationActivity$4;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/TvStationActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/shenma/tvlauncher/dao/TVStationDao;->getInstance(Landroid/content/Context;)Lcom/shenma/tvlauncher/dao/TVStationDao;

    move-result-object v2

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/dao/bean/TVSCollect;->getTvindex()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/shenma/tvlauncher/dao/TVStationDao;->updateTvsi(ILcom/shenma/tvlauncher/dao/bean/TVSCollect;)V

    .line 152
    iget-object v2, p0, Lcom/shenma/tvlauncher/TvStationActivity$4;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/TvStationActivity;->finish()V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/TvStationActivity$4;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/TvStationActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/shenma/tvlauncher/dao/TVStationDao;->getInstance(Landroid/content/Context;)Lcom/shenma/tvlauncher/dao/TVStationDao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/shenma/tvlauncher/dao/TVStationDao;->addTvsi(Lcom/shenma/tvlauncher/dao/bean/TVSCollect;)V

    .line 157
    iget-object v2, p0, Lcom/shenma/tvlauncher/TvStationActivity$4;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/TvStationActivity;->finish()V

    .line 159
    :goto_0
    return-void
.end method
