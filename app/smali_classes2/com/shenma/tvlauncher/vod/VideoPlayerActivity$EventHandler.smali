.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;
.super Landroid/os/Handler;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2138
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 2139
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2140
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 2143
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2254
    return-void

    .line 2152
    :sswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler$1;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler$1;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2160
    return-void

    .line 2175
    :sswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetAdblock(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2177
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetheadposition(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2179
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetheadposition(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmLastPos(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v2

    if-le v0, v2, :cond_0

    .line 2180
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetheadposition(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    goto :goto_0

    .line 2182
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmLastPos(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 2187
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetseizings(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 2188
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    sget-wide v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 2192
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmLastPos(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_4

    .line 2193
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetvodtype(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "LIVE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2194
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputmLastPos2(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    goto :goto_1

    .line 2196
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmLastPos(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputmLastPos2(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 2197
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputmLastPos(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 2208
    :cond_4
    :goto_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2210
    .local v0, "format":Ljava/text/SimpleDateFormat;
    :try_start_0
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgettime(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_5

    .line 2212
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputvipstate(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    goto :goto_2

    .line 2215
    :cond_5
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputvipstate(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2219
    :goto_2
    goto :goto_3

    .line 2217
    :catch_0
    move-exception v1

    .line 2218
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 2221
    .end local v1    # "e":Ljava/text/ParseException;
    :goto_3
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgettime(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2223
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputvipstate(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 2225
    :cond_6
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v1

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 2228
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetib_playStatus(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler$2;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler$2;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 2236
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget-object v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_PREPARING:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputmPlayerStatus(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;)V

    .line 2237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2238
    .local v1, "secondTime":J
    new-instance v3, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-direct {v3}, Lcom/shenma/tvlauncher/vod/db/Album;-><init>()V

    .line 2239
    .local v3, "album":Lcom/shenma/tvlauncher/vod/db/Album;
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetvideoId(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumId(Ljava/lang/String;)V

    .line 2240
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetsourceId(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumSourceType(Ljava/lang/String;)V

    .line 2241
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetcollectionTime(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setCollectionTime(I)V

    .line 2242
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetplayIndex(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setPlayIndex(I)V

    .line 2243
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetalbumPic(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumPic(Ljava/lang/String;)V

    .line 2244
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetvodtype(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumType(Ljava/lang/String;)V

    .line 2245
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetvodname(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumTitle(Ljava/lang/String;)V

    .line 2246
    const-string/jumbo v4, "\u89c2\u770b\u65f6\u95f4:\u672a\u77e5"

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumState(Ljava/lang/String;)V

    .line 2247
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetnextlink(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setNextLink(Ljava/lang/String;)V

    .line 2248
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setTime(Ljava/lang/String;)V

    .line 2249
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setTypeId(I)V

    .line 2250
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetvodPlayUrl(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setVod_play_url(Ljava/lang/String;)V

    .line 2251
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetdao(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->addAlbums(Lcom/shenma/tvlauncher/vod/db/Album;)V

    .line 2252
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method
