.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->createVodDataSuccessListener()Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 925
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;)V
    .locals 9
    .param p1, "paramObject"    # Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;

    .line 929
    if-eqz p1, :cond_5

    .line 931
    move-object v0, p1

    .line 932
    .local v0, "VideoDetailInfo":Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getVideo_list()Ljava/util/List;

    move-result-object v1

    .line 933
    .local v1, "video_list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputnow_source(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/util/List;)V

    .line 934
    const/4 v2, 0x0

    .line 935
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrlList;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetnow_source(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 936
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetnow_source(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getList()Ljava/util/List;

    move-result-object v2

    .line 935
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 938
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 939
    .local v3, "arrayList":Ljava/util/ArrayList;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 940
    new-instance v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    invoke-direct {v5}, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;-><init>()V

    .line 942
    .local v5, "vinfo":Lcom/shenma/tvlauncher/vod/domain/VideoInfo;
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v6}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getTitle()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    .line 943
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v6}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getUrl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    .line 944
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    .end local v5    # "vinfo":Lcom/shenma/tvlauncher/vod/domain/VideoInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 946
    .end local v4    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputvideoInfo(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/util/List;)V

    .line 947
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v4, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputvideoInfo(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/util/List;)V

    .line 949
    const/4 v4, 0x0

    .line 950
    .local v4, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrlList;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetnow_source(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 951
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetnow_source(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v6}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getLists()Ljava/util/List;

    move-result-object v4

    .line 950
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 957
    .end local v5    # "i":I
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 958
    .local v5, "arrayLists":Ljava/util/ArrayList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 959
    new-instance v7, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    invoke-direct {v7}, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;-><init>()V

    .line 960
    .local v7, "vinfo":Lcom/shenma/tvlauncher/vod/domain/VideoInfo;
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v8}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getTitle()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    .line 961
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v8}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getUrl()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    .line 962
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    .end local v7    # "vinfo":Lcom/shenma/tvlauncher/vod/domain/VideoInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 964
    .end local v6    # "i":I
    :cond_3
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputvideoInfos(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/util/List;)V

    .line 965
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v6, v5}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputvideoInfos(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/util/List;)V

    .line 969
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetgsplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v6

    sput v6, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsposition:I

    .line 971
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v6

    sput v6, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 972
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetvideoInfo(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v6, v7, :cond_4

    .line 973
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 975
    :cond_4
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgettv_mv_name(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetvideoInfo(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v8}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v7, v7, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mPrepareVodData(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 979
    .end local v0    # "VideoDetailInfo":Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;
    .end local v1    # "video_list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrlList;>;"
    .end local v3    # "arrayList":Ljava/util/ArrayList;
    .end local v4    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrlList;>;"
    .end local v5    # "arrayLists":Ljava/util/ArrayList;
    :cond_5
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 925
    check-cast p1, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;->onResponse(Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;)V

    return-void
.end method
