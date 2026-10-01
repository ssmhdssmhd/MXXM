.class Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;
.super Ljava/lang/Object;
.source "TVBackActivity.java"

# interfaces
.implements Lcom/shenma/tvlauncher/network/PullXmlParserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadMediaFromXml(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field protected mdata:I

.field mediainfo:Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;

.field protected murl:I

.field final synthetic this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

.field final synthetic val$menuType:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 910
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    iput p2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->val$menuType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    const/4 p2, -0x1

    iput p2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->mdata:I

    .line 913
    iput p2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->murl:I

    .line 914
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->mediainfo:Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;

    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 2

    .line 979
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->val$menuType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 981
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fputmPostion(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)V

    .line 982
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmHandler(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 985
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public endFlag(Ljava/lang/String;)V
    .locals 2
    .param p1, "nodeName"    # Ljava/lang/String;

    .line 955
    const-string v0, "data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 956
    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->mdata:I

    goto :goto_0

    .line 957
    :cond_0
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 958
    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->murl:I

    .line 959
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->val$menuType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 961
    :pswitch_0
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmedialist()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->mediainfo:Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->mediainfo:Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;

    .line 963
    nop

    .line 971
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public haveError(Lcom/shenma/tvlauncher/network/PullXmlParserError;)V
    .locals 0
    .param p1, "error"    # Lcom/shenma/tvlauncher/network/PullXmlParserError;

    .line 990
    return-void
.end method

.method public startDocument()V
    .locals 1

    .line 918
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->val$menuType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 920
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfputmedialist(Ljava/util/ArrayList;)V

    .line 921
    nop

    .line 925
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public startFlag(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "nodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 930
    .local p2, "attribute":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 931
    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->mdata:I

    goto :goto_0

    .line 932
    :cond_0
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 933
    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->murl:I

    .line 934
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->val$menuType:I

    const-string v1, "link"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 941
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    new-instance v2, Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;

    invoke-direct {v2}, Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;-><init>()V

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fputupdateinfo(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;)V

    .line 942
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetupdateinfo(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;

    move-result-object v0

    const-string/jumbo v2, "version"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;->setVersion(Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetupdateinfo(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;

    move-result-object v0

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;->setApkurl(Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetupdateinfo(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;

    move-result-object v0

    .line 945
    const-string v1, "description"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 944
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 936
    :pswitch_2
    new-instance v0, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->mediainfo:Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;

    .line 937
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->mediainfo:Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;->setMediaurl(Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;->mediainfo:Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;

    const-string v1, "name"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;->setName(Ljava/lang/String;)V

    .line 939
    nop

    .line 951
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public text(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 975
    return-void
.end method
