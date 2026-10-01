.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 992
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 997
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvideoId(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 998
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetdao(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvideoId(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryZJById(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v0

    .line 999
    .local v0, "b":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetdao(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v1

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvideoId(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvodtype(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->deleteByWhere(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1001
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    sget v2, Lcom/shenma/tvlauncher/R$string;->Cancel_collection_successful:I

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 1003
    :cond_0
    new-instance v1, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-direct {v1}, Lcom/shenma/tvlauncher/vod/db/Album;-><init>()V

    .line 1004
    .local v1, "al":Lcom/shenma/tvlauncher/vod/db/Album;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvideoId(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumId(Ljava/lang/String;)V

    .line 1005
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvodtype(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumType(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->setTypeId(I)V

    .line 1007
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvodstate(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumState(Ljava/lang/String;)V

    .line 1008
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetnextlink(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->setNextLink(Ljava/lang/String;)V

    .line 1009
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetalbumPic(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumPic(Ljava/lang/String;)V

    .line 1010
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvodname(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumTitle(Ljava/lang/String;)V

    .line 1011
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvodPlayUrl(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->setVod_play_url(Ljava/lang/String;)V

    .line 1012
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetdao(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->addAlbums(Lcom/shenma/tvlauncher/vod/db/Album;)V

    .line 1013
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    sget v3, Lcom/shenma/tvlauncher/R$string;->Collection_successful:I

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v2, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1016
    .end local v0    # "b":Ljava/lang/Boolean;
    .end local v1    # "al":Lcom/shenma/tvlauncher/vod/db/Album;
    :cond_1
    :goto_0
    return-void
.end method
