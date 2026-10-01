.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"

# interfaces
.implements Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->setListener()V
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

    .line 1062
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .line 1065
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    sget-object v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->fillRadioGroup(Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->CreateBottomLayout()V

    .line 1068
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fputsourceId(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvodtype(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvodtype(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MOVIE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1089
    :cond_0
    return-void
.end method
