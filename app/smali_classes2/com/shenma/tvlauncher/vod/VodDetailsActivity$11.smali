.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->createVodDataSuccessListener()Lcom/android/volley/Response$Listener;
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

    .line 1218
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;)V
    .locals 14
    .param p1, "paramObject"    # Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;

    .line 1222
    if-eqz p1, :cond_18

    .line 1223
    move-object v0, p1

    .line 1224
    .local v0, "VideoDetailInfo":Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getVideo_list()Ljava/util/List;

    move-result-object v1

    .line 1225
    .local v1, "video_list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    sput-object v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    .line 1227
    const/4 v2, 0x0

    .line 1228
    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "i2":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1229
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 1230
    .local v4, "size":I
    if-ge v2, v4, :cond_0

    .line 1231
    move v2, v4

    .line 1228
    .end local v4    # "size":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1234
    .end local v3    # "i2":I
    :cond_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iput v2, v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->j0:I

    .line 1235
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fputvodname(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)V

    .line 1236
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fputvideoId(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)V

    .line 1237
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getTop_type()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fputtop_type(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)V

    .line 1239
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetdao(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvideoId(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAlbumById(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fputalbums(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/util/List;)V

    .line 1240
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetalbums(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetalbums(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1241
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetalbums(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-static {v3, v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fputalbum(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Lcom/shenma/tvlauncher/vod/db/Album;)V

    .line 1243
    :cond_2
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetb_details_play(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 1252
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgettv_details_name(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvodname(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1254
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgettv_details_type(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getType()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "["

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "]"

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v9, ","

    const-string v10, " / "

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v11, "null"

    const-string/jumbo v12, "\u6682\u65e0"

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgettv_details_actors(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getActor()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1256
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgettv_details_area(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getArea()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1257
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getIntro()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getIntro()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1259
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgettv_details_director(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getIntro()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1261
    :cond_3
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgettv_details_director(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    :goto_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgettv_details_director(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1265
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgettv_details(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    :cond_4
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getImg_url()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fputalbumPic(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)V

    .line 1269
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetalbumPic(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetiv_details_poster(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v8}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetoptions(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v8

    new-instance v9, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$1;

    invoke-direct {v9, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$1;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;)V

    invoke-virtual {v3, v5, v6, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 1304
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvodtype(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvodtype(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "MOVIE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1307
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgettv_details_year(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getPubtime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1308
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgettv_details_playTimes(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getPubtime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1309
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getCur_episode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1310
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getTrunk()Ljava/lang/String;

    move-result-object v3

    .line 1311
    .local v3, "state":Ljava/lang/String;
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvodstate(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvodstate(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1312
    :cond_5
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fputvodstate(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)V

    .line 1314
    :cond_6
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgettv_details_rate(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1315
    .end local v3    # "state":Ljava/lang/String;
    goto/16 :goto_3

    .line 1316
    :cond_7
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgettv_details_rate(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1323
    :cond_8
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetb_details_colection(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetdao(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvideoId(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryZJById(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->video_details_yizhuiju_selector:I

    goto :goto_2

    :cond_9
    sget v5, Lcom/shenma/tvlauncher/R$drawable;->video_details_zhuiju_selector:I

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1325
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgettv_details_year(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getPubtime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1326
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgettv_details_playTimes(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getPubtime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1327
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getCur_episode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 1328
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getTrunk()Ljava/lang/String;

    move-result-object v3

    .line 1329
    .restart local v3    # "state":Ljava/lang/String;
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvodstate(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvodstate(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1330
    :cond_a
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fputvodstate(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)V

    .line 1332
    :cond_b
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgettv_details_rate(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1333
    .end local v3    # "state":Ljava/lang/String;
    goto :goto_3

    .line 1334
    :cond_c
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgettv_details_rate(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    :goto_3
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getAbout()Lcom/shenma/tvlauncher/vod/domain/AboutInfo;

    move-result-object v3

    .line 1339
    .local v3, "about":Lcom/shenma/tvlauncher/vod/domain/AboutInfo;
    if-eqz v3, :cond_f

    .line 1340
    invoke-virtual {v3}, Lcom/shenma/tvlauncher/vod/domain/AboutInfo;->getSimilary()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1341
    .local v5, "similary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    invoke-virtual {v3}, Lcom/shenma/tvlauncher/vod/domain/AboutInfo;->getActor()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1342
    .local v6, "actor":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    const/4 v7, 0x0

    .line 1343
    .local v7, "adapter":Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_d

    .line 1344
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v8, v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fputaboutlist(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/util/ArrayList;)V

    .line 1348
    new-instance v8, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;

    iget-object v9, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v9}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetaboutlist(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;-><init>(Ljava/util/List;)V

    move-object v7, v8

    goto :goto_4

    .line 1349
    :cond_d
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_e

    .line 1350
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v8, v6}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fputaboutlist(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/util/ArrayList;)V

    .line 1353
    new-instance v8, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;

    iget-object v9, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v9}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetaboutlist(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;-><init>(Ljava/util/List;)V

    move-object v7, v8

    .line 1355
    :cond_e
    :goto_4
    if-eqz v7, :cond_f

    .line 1356
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v8}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetrecommandListView(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1357
    new-instance v8, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$2;

    invoke-direct {v8, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11$2;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;)V

    invoke-virtual {v7, v8}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;->setOnItemClickListener(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter$OnItemClickListener;)V

    .line 1383
    .end local v5    # "similary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    .end local v6    # "actor":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    .end local v7    # "adapter":Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;
    :cond_f
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetmenu_view(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/view/SingleChoiceMenuView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/view/SingleChoiceMenuView;->clearMenuItems()V

    .line 1384
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 1385
    .local v5, "linkedList":Ljava/util/LinkedList;
    sget-object v6, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    .line 1387
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    const/4 v7, 0x0

    .line 1388
    .local v7, "num":I
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v8}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetalbum(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/db/Album;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 1389
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v8}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetalbum(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/db/Album;

    move-result-object v8

    invoke-virtual {v8}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumSourceType()Ljava/lang/String;

    move-result-object v8

    .line 1390
    .local v8, "sourceType":Ljava/lang/String;
    if-eqz v8, :cond_10

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_10

    .line 1392
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v9

    .line 1396
    goto :goto_5

    .line 1393
    :catch_0
    move-exception v9

    .line 1400
    .end local v8    # "sourceType":Ljava/lang/String;
    :cond_10
    :goto_5
    add-int/lit8 v8, v7, -0x1

    if-gtz v8, :cond_11

    .line 1401
    const/4 v7, 0x0

    goto :goto_6

    .line 1403
    :cond_11
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v8}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetremember_source(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_12

    .line 1404
    sub-int/2addr v7, v9

    goto :goto_6

    .line 1406
    :cond_12
    const/4 v7, 0x0

    .line 1409
    :goto_6
    if-eqz v6, :cond_18

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_18

    .line 1410
    const/4 v8, 0x0

    .line 1411
    .local v8, "selection":I
    const/4 v9, 0x1

    .line 1413
    .local v9, "radioButtonId":I
    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    const-string v11, "UpdateNumber"

    invoke-static {v10, v11, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_15

    .line 1415
    const/4 v4, 0x0

    .local v4, "i5":I
    :goto_7
    sget-object v10, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_14

    .line 1416
    sget-object v10, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v10}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1433
    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v10}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetmenu_view(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/view/SingleChoiceMenuView;

    move-result-object v10

    sget-object v11, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/view/SingleChoiceMenuView;->addMenuItem(Ljava/lang/String;)V

    .line 1434
    if-ne v4, v7, :cond_13

    .line 1435
    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    sget-object v11, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->fillRadioGroup(Ljava/lang/String;)V

    .line 1438
    move v8, v4

    .line 1415
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .end local v4    # "i5":I
    :cond_14
    goto :goto_9

    .line 1466
    :cond_15
    const/4 v4, 0x0

    .restart local v4    # "i5":I
    :goto_8
    sget-object v10, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_17

    .line 1467
    sget-object v10, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v10}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1468
    .local v10, "name":Ljava/lang/String;
    sget-object v11, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "name---"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    sget-object v11, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    .line 1499
    .local v11, "listSize":I
    iget-object v12, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v12}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetmenu_view(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/view/SingleChoiceMenuView;

    move-result-object v12

    sget-object v13, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v13}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/view/SingleChoiceMenuView;->addMenuItem(Ljava/lang/String;)V

    .line 1500
    if-ne v4, v7, :cond_16

    .line 1501
    move v8, v4

    .line 1502
    iget-object v12, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    sget-object v13, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v13}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->fillRadioGroup(Ljava/lang/String;)V

    .line 1466
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "listSize":I
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1509
    .end local v4    # "i5":I
    :cond_17
    :goto_9
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetmenu_view(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/view/SingleChoiceMenuView;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/view/SingleChoiceMenuView;->setSelectedPosition(I)V

    .line 1529
    .end local v0    # "VideoDetailInfo":Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;
    .end local v1    # "video_list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    .end local v2    # "i":I
    .end local v3    # "about":Lcom/shenma/tvlauncher/vod/domain/AboutInfo;
    .end local v5    # "linkedList":Ljava/util/LinkedList;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    .end local v7    # "num":I
    .end local v8    # "selection":I
    .end local v9    # "radioButtonId":I
    :cond_18
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->closeProgressDialog()V

    .line 1537
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

    .line 1218
    check-cast p1, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->onResponse(Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;)V

    return-void
.end method
