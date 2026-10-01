.class Lcom/baidu/cyberplayer/dlna/c$e$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/cyberplayer/dlna/c$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/dlna/c$e;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/dlna/c$e;)V
    .locals 0

    .line 950
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .line 967
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ""

    iget v0, v2, Landroid/os/Message;->what:I

    const-string v4, "objectID"

    const/4 v5, 0x0

    const/4 v6, -0x3

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    .line 1350
    :pswitch_1
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1351
    const-string/jumbo v3, "subSwitch"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1352
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetSubSwitchCallBack;

    .line 1353
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v4

    iget-object v5, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v5, v5, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v5}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aa;Z)Z

    move-result v0

    .line 1354
    if-eqz v3, :cond_38

    .line 1355
    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v8, v9, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetSubSwitchCallBack;->onSetSubSwitch(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1362
    :cond_0
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)I

    move-result v0

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->i(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v9, v0, v4}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetSubSwitchCallBack;->onSetSubSwitch(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1139
    :pswitch_2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/cyberplayer/dlna/c$d;

    .line 1140
    iget-object v3, v0, Lcom/baidu/cyberplayer/dlna/c$d;->a:Ljava/lang/Object;

    check-cast v3, Lcom/baidu/cyberplayer/dlna/AVMetaData;

    .line 1141
    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMediaMetaDataCallBack;

    .line 1144
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v4

    iget-object v5, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v5, v5, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v5}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aa;Lcom/baidu/cyberplayer/dlna/AVMetaData;)Z

    move-result v4

    .line 1146
    if-eqz v4, :cond_1

    .line 1147
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->e(Lcom/baidu/cyberplayer/dlna/c;)V

    .line 1148
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-virtual {v3}, Lcom/baidu/cyberplayer/dlna/AVMetaData;->getVideoURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/cyberplayer/dlna/c;->d(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;

    .line 1149
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-virtual {v3}, Lcom/baidu/cyberplayer/dlna/AVMetaData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;

    .line 1150
    if-eqz v0, :cond_38

    .line 1151
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v8, v9, v3}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMediaMetaDataCallBack;->onSetMediaMetaData(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1157
    :cond_1
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1158
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-virtual {v3}, Lcom/baidu/cyberplayer/dlna/AVMetaData;->getVideoURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/baidu/cyberplayer/dlna/c;->d(Ljava/lang/String;)V

    .line 1159
    :cond_2
    if-eqz v0, :cond_38

    .line 1160
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)I

    move-result v3

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->i(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v9, v3, v4}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMediaMetaDataCallBack;->onSetMediaMetaData(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1634
    :pswitch_3
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aY;->d()V

    .line 1635
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aY;->c()V

    .line 1636
    goto/16 :goto_9

    .line 1630
    :pswitch_4
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aY;->e()V

    .line 1631
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aY;->b()V

    .line 1632
    goto/16 :goto_9

    .line 1594
    :pswitch_5
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1595
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IBrowseFileItemsCallBack;

    .line 1596
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1597
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/bB;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 1607
    :cond_3
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    iget-object v6, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v6, v6, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v6}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/bB;

    move-result-object v6

    invoke-static {v4, v6, v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;Lcom/baidu/cyberplayer/utils/bB;Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bB;

    move-result-object v0

    .line 1609
    if-nez v0, :cond_4

    .line 1610
    if-eqz v3, :cond_38

    .line 1611
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v7}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v9, v5, v7, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IBrowseFileItemsCallBack;->onBrowseFileItems(ZLjava/util/List;ILjava/lang/String;)V

    goto/16 :goto_9

    .line 1619
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1620
    iget-object v5, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v5, v5, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v5, v0, v4}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;Lcom/baidu/cyberplayer/utils/bB;Ljava/util/List;)V

    .line 1621
    if-eqz v3, :cond_38

    .line 1622
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v8, v4, v9, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IBrowseFileItemsCallBack;->onBrowseFileItems(ZLjava/util/List;ILjava/lang/String;)V

    goto/16 :goto_9

    .line 1598
    :cond_5
    :goto_0
    if-eqz v3, :cond_38

    .line 1599
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v6}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v9, v5, v6, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IBrowseFileItemsCallBack;->onBrowseFileItems(ZLjava/util/List;ILjava/lang/String;)V

    goto/16 :goto_9

    .line 1499
    :pswitch_6
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1500
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1501
    const-string v3, "filter"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1502
    const-string/jumbo v3, "startIndex"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1503
    const-string v3, "requestCount"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 1504
    const-string/jumbo v3, "sortCriteria"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1505
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IBrowseCallBack;

    .line 1506
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v10

    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v11

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v10 .. v18}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZZ)Lcom/baidu/cyberplayer/utils/bB;

    move-result-object v3

    .line 1511
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/bB;->b()I

    move-result v4

    .line 1512
    if-gtz v4, :cond_6

    .line 1513
    if-eqz v0, :cond_38

    .line 1514
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3, v7}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v9, v5, v7, v3}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IBrowseCallBack;->onBrowse(ZLjava/util/List;ILjava/lang/String;)V

    goto/16 :goto_9

    .line 1522
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1524
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_d

    .line 1525
    invoke-virtual {v3, v7}, Lcom/baidu/cyberplayer/utils/bB;->a(I)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v10

    .line 1527
    nop

    .line 1528
    invoke-virtual {v10}, Lcom/baidu/cyberplayer/utils/bl;->b()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1529
    move-object v11, v10

    check-cast v11, Lcom/baidu/cyberplayer/utils/bB;

    .line 1530
    new-instance v12, Lcom/baidu/cyberplayer/dlna/ContainerItem;

    invoke-direct {v12}, Lcom/baidu/cyberplayer/dlna/ContainerItem;-><init>()V

    .line 1531
    nop

    .line 1532
    invoke-virtual {v11}, Lcom/baidu/cyberplayer/utils/bB;->c()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/baidu/cyberplayer/dlna/ContainerItem;->setChildCount(I)V

    .line 1534
    sget-object v13, Lcom/baidu/cyberplayer/dlna/ContentItem$a;->a:Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    invoke-virtual {v12, v13}, Lcom/baidu/cyberplayer/dlna/ContainerItem;->setContentType(Lcom/baidu/cyberplayer/dlna/ContentItem$a;)V

    .line 1536
    invoke-virtual {v11}, Lcom/baidu/cyberplayer/utils/bB;->d()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v11, 0x1

    goto :goto_2

    :cond_7
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v12, v11}, Lcom/baidu/cyberplayer/dlna/ContainerItem;->setSearchable(Z)V

    .line 1540
    goto/16 :goto_3

    :cond_8
    invoke-virtual {v10}, Lcom/baidu/cyberplayer/utils/bl;->c()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1541
    move-object v11, v10

    check-cast v11, Lcom/baidu/cyberplayer/utils/bK;

    .line 1542
    new-instance v12, Lcom/baidu/cyberplayer/dlna/FileItem;

    invoke-direct {v12}, Lcom/baidu/cyberplayer/dlna/FileItem;-><init>()V

    .line 1543
    nop

    .line 1544
    sget-object v13, Lcom/baidu/cyberplayer/dlna/ContentItem$a;->b:Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    invoke-virtual {v12, v13}, Lcom/baidu/cyberplayer/dlna/FileItem;->setContentType(Lcom/baidu/cyberplayer/dlna/ContentItem$a;)V

    .line 1545
    invoke-virtual {v11}, Lcom/baidu/cyberplayer/utils/bK;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/cyberplayer/dlna/FileItem;->setDate(Ljava/lang/String;)V

    .line 1546
    invoke-virtual {v11}, Lcom/baidu/cyberplayer/utils/bK;->g()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/cyberplayer/dlna/FileItem;->setProtocolInfo(Ljava/lang/String;)V

    .line 1548
    invoke-virtual {v11}, Lcom/baidu/cyberplayer/utils/bK;->f()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/cyberplayer/dlna/FileItem;->setResURL(Ljava/lang/String;)V

    .line 1549
    invoke-virtual {v11}, Lcom/baidu/cyberplayer/utils/bK;->b()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/baidu/cyberplayer/dlna/FileItem;->setSize(J)V

    .line 1550
    invoke-virtual {v11}, Lcom/baidu/cyberplayer/utils/bK;->h()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/cyberplayer/dlna/FileItem;->setMimeType(Ljava/lang/String;)V

    .line 1551
    invoke-virtual {v11}, Lcom/baidu/cyberplayer/utils/bK;->a()Lcom/baidu/cyberplayer/utils/bM;

    move-result-object v13

    invoke-virtual {v13}, Lcom/baidu/cyberplayer/utils/bM;->size()I

    move-result v13

    if-lez v13, :cond_9

    .line 1553
    invoke-virtual {v11, v9}, Lcom/baidu/cyberplayer/utils/bK;->a(I)Lcom/baidu/cyberplayer/utils/bL;

    move-result-object v13

    .line 1555
    invoke-virtual {v13}, Lcom/baidu/cyberplayer/utils/bL;->f()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/baidu/cyberplayer/dlna/FileItem;->setProtocolInfo(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {v13}, Lcom/baidu/cyberplayer/utils/bL;->h()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/baidu/cyberplayer/dlna/FileItem;->setMimeType(Ljava/lang/String;)V

    .line 1559
    invoke-virtual {v13}, Lcom/baidu/cyberplayer/utils/bL;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/cyberplayer/dlna/FileItem;->setResURL(Ljava/lang/String;)V

    .line 1561
    :cond_9
    invoke-virtual {v11}, Lcom/baidu/cyberplayer/utils/bK;->a()Lcom/baidu/cyberplayer/utils/bL;

    move-result-object v11

    .line 1563
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lcom/baidu/cyberplayer/utils/bL;->a()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1565
    new-instance v13, Lcom/baidu/cyberplayer/dlna/ResourceItem;

    invoke-direct {v13}, Lcom/baidu/cyberplayer/dlna/ResourceItem;-><init>()V

    .line 1566
    sget-object v14, Lcom/baidu/cyberplayer/dlna/ContentItem$a;->c:Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    invoke-virtual {v13, v14}, Lcom/baidu/cyberplayer/dlna/ResourceItem;->setContentType(Lcom/baidu/cyberplayer/dlna/ContentItem$a;)V

    .line 1567
    invoke-virtual {v11}, Lcom/baidu/cyberplayer/utils/bL;->g()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/baidu/cyberplayer/dlna/ResourceItem;->setProtocolInfo(Ljava/lang/String;)V

    .line 1569
    invoke-virtual {v11}, Lcom/baidu/cyberplayer/utils/bL;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/baidu/cyberplayer/dlna/ResourceItem;->setResURL(Ljava/lang/String;)V

    .line 1570
    invoke-virtual {v11}, Lcom/baidu/cyberplayer/utils/bL;->h()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/baidu/cyberplayer/dlna/ResourceItem;->setFormat(Ljava/lang/String;)V

    .line 1572
    invoke-virtual {v12, v13}, Lcom/baidu/cyberplayer/dlna/FileItem;->setResItem(Lcom/baidu/cyberplayer/dlna/ResourceItem;)V

    goto :goto_3

    .line 1540
    :cond_a
    move-object v12, v5

    .line 1575
    :cond_b
    :goto_3
    if-eqz v12, :cond_c

    .line 1576
    invoke-virtual {v10}, Lcom/baidu/cyberplayer/utils/bl;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/baidu/cyberplayer/dlna/ContentItem;->setObjectId(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {v10}, Lcom/baidu/cyberplayer/utils/bl;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/baidu/cyberplayer/dlna/ContentItem;->setParentId(Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v10}, Lcom/baidu/cyberplayer/utils/bl;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/baidu/cyberplayer/dlna/ContentItem;->setTitle(Ljava/lang/String;)V

    .line 1582
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 1585
    :cond_d
    if-eqz v0, :cond_38

    .line 1586
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v8, v6, v9, v3}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IBrowseCallBack;->onBrowse(ZLjava/util/List;ILjava/lang/String;)V

    goto/16 :goto_9

    .line 1408
    :pswitch_7
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1409
    const-string v3, "searchPath"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1410
    const-string v4, "deviceId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1411
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISelectServerDeviceCallBack;

    .line 1412
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/cyberplayer/utils/aY;->b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v6

    .line 1413
    if-nez v6, :cond_e

    .line 1414
    if-eqz v5, :cond_38

    .line 1415
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    const/4 v3, -0x5

    invoke-static {v0, v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v9, v3, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISelectServerDeviceCallBack;->onSelectServerDevice(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1422
    :cond_e
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)I

    .line 1423
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1425
    :try_start_0
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->c(Lcom/baidu/cyberplayer/dlna/c;)Ljava/util/Timer;

    move-result-object v10

    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->c(Lcom/baidu/cyberplayer/dlna/c;)Ljava/util/TimerTask;

    move-result-object v11

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x7d0

    invoke-virtual/range {v10 .. v15}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1431
    goto :goto_4

    .line 1428
    :catch_0
    move-exception v0

    .line 1433
    :cond_f
    :goto_4
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/cyberplayer/utils/aa;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1435
    :cond_10
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1436
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v0

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/cyberplayer/utils/aY;->d(Lcom/baidu/cyberplayer/utils/aa;)V

    .line 1438
    :cond_11
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v6}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;Lcom/baidu/cyberplayer/utils/aa;)Lcom/baidu/cyberplayer/utils/aa;

    .line 1439
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v4

    iget-object v6, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v6, v6, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v6}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/baidu/cyberplayer/utils/aY;->e(Lcom/baidu/cyberplayer/utils/aa;)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/baidu/cyberplayer/dlna/c;->c(Lcom/baidu/cyberplayer/dlna/c;Z)Z

    .line 1442
    :cond_12
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/bB;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->j(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    if-eqz v3, :cond_13

    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->j(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1445
    if-eqz v5, :cond_38

    .line 1446
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v8, v9, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISelectServerDeviceCallBack;->onSelectServerDevice(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1453
    :cond_13
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v3}, Lcom/baidu/cyberplayer/dlna/c;->g(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;

    .line 1454
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_5

    .line 1463
    :cond_14
    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1465
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v8}, Lcom/baidu/cyberplayer/dlna/c;->d(Lcom/baidu/cyberplayer/dlna/c;Z)Z

    .line 1466
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v0, v3, v4, v8}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Z)V

    .line 1467
    if-eqz v5, :cond_38

    .line 1468
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v8, v9, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISelectServerDeviceCallBack;->onSelectServerDevice(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1475
    :cond_15
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4, v3}, Lcom/baidu/cyberplayer/dlna/c;->i(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/cyberplayer/dlna/c;->h(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;

    .line 1476
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->k(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->k(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    .line 1478
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v8}, Lcom/baidu/cyberplayer/dlna/c;->d(Lcom/baidu/cyberplayer/dlna/c;Z)Z

    .line 1479
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v3

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->k(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Z)V

    .line 1481
    if-eqz v5, :cond_38

    .line 1482
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->k(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v8, v9, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISelectServerDeviceCallBack;->onSelectServerDevice(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1488
    :cond_16
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v9}, Lcom/baidu/cyberplayer/dlna/c;->d(Lcom/baidu/cyberplayer/dlna/c;Z)Z

    .line 1489
    if-eqz v5, :cond_38

    .line 1490
    const-string v0, "-1"

    invoke-interface {v5, v8, v9, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISelectServerDeviceCallBack;->onSelectServerDevice(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1456
    :cond_17
    :goto_5
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v9}, Lcom/baidu/cyberplayer/dlna/c;->d(Lcom/baidu/cyberplayer/dlna/c;Z)Z

    .line 1457
    if-eqz v5, :cond_38

    .line 1458
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v8, v9, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISelectServerDeviceCallBack;->onSelectServerDevice(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1368
    :pswitch_8
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetSupportedProtocolsCallBack;

    .line 1370
    :try_start_1
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v0

    iget-object v5, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v5, v5, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v5}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/cyberplayer/utils/aY;->c(Lcom/baidu/cyberplayer/utils/aa;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/baidu/cyberplayer/dlna/DLNAException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1398
    nop

    .line 1399
    if-eqz v4, :cond_38

    .line 1400
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v8, v0, v9, v3}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetSupportedProtocolsCallBack;->onGetSupportedProtocols(ZLjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_9

    .line 1388
    :catch_1
    move-exception v0

    .line 1390
    if-eqz v4, :cond_18

    .line 1391
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v7}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v9, v3, v7, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetSupportedProtocolsCallBack;->onGetSupportedProtocols(ZLjava/lang/String;ILjava/lang/String;)V

    .line 1397
    :cond_18
    goto/16 :goto_9

    .line 1382
    :catch_2
    move-exception v0

    .line 1383
    if-eqz v4, :cond_19

    .line 1384
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)I

    move-result v0

    iget-object v5, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v5, v5, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v5}, Lcom/baidu/cyberplayer/dlna/c;->i(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v9, v3, v0, v5}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetSupportedProtocolsCallBack;->onGetSupportedProtocols(ZLjava/lang/String;ILjava/lang/String;)V

    .line 1387
    :cond_19
    goto/16 :goto_9

    .line 1372
    :catch_3
    move-exception v0

    .line 1374
    if-eqz v4, :cond_1a

    .line 1375
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v6}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v9, v3, v6, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetSupportedProtocolsCallBack;->onGetSupportedProtocols(ZLjava/lang/String;ILjava/lang/String;)V

    .line 1381
    :cond_1a
    goto/16 :goto_9

    .line 1294
    :pswitch_9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetMuteCallBack;

    .line 1296
    :try_start_2
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v0

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/cyberplayer/utils/aY;->d(Lcom/baidu/cyberplayer/utils/aa;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/baidu/cyberplayer/dlna/DLNAException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1322
    nop

    .line 1323
    if-eqz v3, :cond_38

    .line 1324
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v8, v0, v9, v4}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetMuteCallBack;->onGetMute(ZZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1312
    :catch_4
    move-exception v0

    .line 1314
    if-eqz v3, :cond_1b

    .line 1315
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v7}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v9, v9, v7, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetMuteCallBack;->onGetMute(ZZILjava/lang/String;)V

    .line 1321
    :cond_1b
    goto/16 :goto_9

    .line 1307
    :catch_5
    move-exception v0

    .line 1308
    if-eqz v3, :cond_1c

    .line 1309
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)I

    move-result v0

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->i(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v9, v9, v0, v4}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetMuteCallBack;->onGetMute(ZZILjava/lang/String;)V

    .line 1311
    :cond_1c
    goto/16 :goto_9

    .line 1297
    :catch_6
    move-exception v0

    .line 1299
    if-eqz v3, :cond_1d

    .line 1300
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v6}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v9, v9, v6, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetMuteCallBack;->onGetMute(ZZILjava/lang/String;)V

    .line 1306
    :cond_1d
    goto/16 :goto_9

    .line 1239
    :pswitch_a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetVolumeCallBack;

    .line 1241
    :try_start_3
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v0

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aa;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lcom/baidu/cyberplayer/dlna/DLNAException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 1267
    nop

    .line 1268
    if-eqz v3, :cond_38

    .line 1269
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v8, v0, v9, v4}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetVolumeCallBack;->onGetVolume(ZIILjava/lang/String;)V

    goto/16 :goto_9

    .line 1257
    :catch_7
    move-exception v0

    .line 1259
    if-eqz v3, :cond_1e

    .line 1260
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v7}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v9, v7, v7, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetVolumeCallBack;->onGetVolume(ZIILjava/lang/String;)V

    .line 1266
    :cond_1e
    goto/16 :goto_9

    .line 1252
    :catch_8
    move-exception v0

    .line 1253
    if-eqz v3, :cond_1f

    .line 1254
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)I

    move-result v0

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->i(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v9, v7, v0, v4}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetVolumeCallBack;->onGetVolume(ZIILjava/lang/String;)V

    .line 1256
    :cond_1f
    goto/16 :goto_9

    .line 1242
    :catch_9
    move-exception v0

    .line 1244
    if-eqz v3, :cond_20

    .line 1245
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v6}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v9, v7, v6, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetVolumeCallBack;->onGetVolume(ZIILjava/lang/String;)V

    .line 1251
    :cond_20
    goto/16 :goto_9

    .line 1277
    :pswitch_b
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1278
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetVolumeCallBack;

    .line 1279
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v4

    iget-object v5, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v5, v5, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v5}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aa;I)Z

    move-result v0

    .line 1280
    if-eqz v3, :cond_38

    .line 1281
    if-eqz v0, :cond_21

    .line 1282
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v8, v9, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetVolumeCallBack;->onSetVolume(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1288
    :cond_21
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)I

    move-result v0

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->i(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v9, v0, v4}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetVolumeCallBack;->onSetVolume(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1212
    :pswitch_c
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1213
    const-string v3, "seek"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1214
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISeekCallBack;

    .line 1215
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->g(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 1216
    iget-object v5, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v5, v5, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    iget-object v6, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v6, v6, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v6}, Lcom/baidu/cyberplayer/dlna/c;->g(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/cyberplayer/dlna/c;->e(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;

    .line 1217
    iget-object v5, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v5, v5, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v5, v0}, Lcom/baidu/cyberplayer/dlna/c;->f(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;

    .line 1218
    const-string v5, "NONE"

    if-lez v4, :cond_22

    .line 1219
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    const-string v6, "RIGHT"

    invoke-static {v4, v6}, Lcom/baidu/cyberplayer/dlna/c;->c(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_6

    .line 1220
    :cond_22
    if-gez v4, :cond_23

    .line 1221
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    const-string v6, "LEFT"

    invoke-static {v4, v6}, Lcom/baidu/cyberplayer/dlna/c;->c(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_6

    .line 1223
    :cond_23
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4, v5}, Lcom/baidu/cyberplayer/dlna/c;->c(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;

    .line 1224
    :goto_6
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v4

    iget-object v6, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v6, v6, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v6}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Lcom/baidu/cyberplayer/utils/aY;->b(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;)Z

    move-result v0

    .line 1225
    if-eqz v0, :cond_24

    .line 1226
    if-eqz v3, :cond_38

    .line 1227
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v8, v9, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISeekCallBack;->onSeek(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1232
    :cond_24
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v5}, Lcom/baidu/cyberplayer/dlna/c;->c(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;

    .line 1233
    if-eqz v3, :cond_38

    .line 1234
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)I

    move-result v0

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->i(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v9, v0, v4}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISeekCallBack;->onSeek(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1332
    :pswitch_d
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1333
    const-string v3, "muteSwitch"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1334
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMuteCallBack;

    .line 1335
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v4

    iget-object v5, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v5, v5, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v5}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/baidu/cyberplayer/utils/aY;->b(Lcom/baidu/cyberplayer/utils/aa;Z)Z

    move-result v0

    .line 1336
    if-eqz v3, :cond_38

    .line 1337
    if-eqz v0, :cond_25

    .line 1338
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v8, v9, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMuteCallBack;->onSetMute(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1344
    :cond_25
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)I

    move-result v0

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->i(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v9, v0, v4}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMuteCallBack;->onSetMute(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1065
    :pswitch_e
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1066
    const-string v3, "rendererDevId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1067
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISelectRendererDeviceCallBack;

    .line 1068
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/utils/aY;->c(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v5

    .line 1069
    if-nez v5, :cond_26

    .line 1070
    if-eqz v4, :cond_38

    .line 1071
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    const/4 v3, -0x2

    invoke-static {v0, v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v9, v3, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISelectRendererDeviceCallBack;->onSelectRenderDevice(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1078
    :cond_26
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v9}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;I)I

    .line 1080
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    if-nez v0, :cond_27

    .line 1082
    :try_start_4
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Ljava/util/Timer;

    move-result-object v10

    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Ljava/util/TimerTask;

    move-result-object v11

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x3e8

    invoke-virtual/range {v10 .. v15}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1088
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Ljava/util/Timer;

    move-result-object v10

    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Ljava/util/TimerTask;

    move-result-object v11

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x3e8

    invoke-virtual/range {v10 .. v15}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_a

    .line 1093
    goto :goto_7

    .line 1090
    :catch_a
    move-exception v0

    .line 1095
    :cond_27
    :goto_7
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/utils/aa;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1097
    :cond_28
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1098
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v0

    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/utils/aY;->d(Lcom/baidu/cyberplayer/utils/aa;)V

    .line 1099
    :cond_29
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v5}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;Lcom/baidu/cyberplayer/utils/aa;)Lcom/baidu/cyberplayer/utils/aa;

    .line 1100
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v3

    iget-object v5, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v5, v5, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v5}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/baidu/cyberplayer/utils/aY;->e(Lcom/baidu/cyberplayer/utils/aa;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;Z)Z

    .line 1103
    :try_start_5
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v0

    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/utils/aY;->c(Lcom/baidu/cyberplayer/utils/aa;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    .line 1107
    goto :goto_8

    .line 1104
    :catch_b
    move-exception v0

    .line 1109
    :cond_2a
    :goto_8
    if-eqz v4, :cond_38

    .line 1110
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v8, v9, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISelectRendererDeviceCallBack;->onSelectRenderDevice(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1197
    :pswitch_f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IStopCallBack;

    .line 1198
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v3

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/cyberplayer/utils/aY;->c(Lcom/baidu/cyberplayer/utils/aa;)Z

    move-result v3

    .line 1199
    if-eqz v0, :cond_38

    .line 1200
    if-eqz v3, :cond_2b

    .line 1201
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v8, v9, v3}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IStopCallBack;->onStop(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1206
    :cond_2b
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)I

    move-result v3

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->i(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v9, v3, v4}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IStopCallBack;->onStop(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1181
    :pswitch_10
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IPauseCallBack;

    .line 1182
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v3

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/cyberplayer/utils/aY;->b(Lcom/baidu/cyberplayer/utils/aa;)Z

    move-result v3

    .line 1183
    if-eqz v0, :cond_38

    .line 1184
    if-eqz v3, :cond_2c

    .line 1185
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v8, v9, v3}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IPauseCallBack;->onPause(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1191
    :cond_2c
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)I

    move-result v3

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->i(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v9, v3, v4}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IPauseCallBack;->onPause(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1166
    :pswitch_11
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IPlayCallBack;

    .line 1167
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v3

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aa;)Z

    move-result v3

    .line 1168
    if-eqz v0, :cond_38

    .line 1169
    if-eqz v3, :cond_2d

    .line 1170
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v8, v9, v3}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IPlayCallBack;->onPlay(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1175
    :cond_2d
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)I

    move-result v3

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->i(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v9, v3, v4}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IPlayCallBack;->onPlay(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1117
    :pswitch_12
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1118
    const-string v3, "setMediaURI"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1119
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMediaURICallBack;

    .line 1120
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v4

    iget-object v5, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v5, v5, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v5}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;)Z

    move-result v4

    .line 1121
    if-eqz v4, :cond_2e

    .line 1122
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->e(Lcom/baidu/cyberplayer/dlna/c;)V

    .line 1123
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4, v0}, Lcom/baidu/cyberplayer/dlna/c;->d(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;

    .line 1124
    if-eqz v3, :cond_38

    .line 1125
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v8, v9, v0}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMediaURICallBack;->onSetMediaURI(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1131
    :cond_2e
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 1132
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-virtual {v4, v0}, Lcom/baidu/cyberplayer/dlna/c;->d(Ljava/lang/String;)V

    .line 1133
    :cond_2f
    if-eqz v3, :cond_38

    .line 1134
    iget-object v0, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)I

    move-result v0

    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/c;->i(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v9, v0, v4}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMediaURICallBack;->onSetMediaURI(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1009
    :pswitch_13
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IDisableDLNACallBack;

    .line 1010
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 1011
    if-eqz v0, :cond_38

    .line 1012
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v8, v9, v3}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IDisableDLNACallBack;->onDisableDLNA(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1019
    :cond_30
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PLAYING"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->d(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 1022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1023
    iget-object v6, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v6, v6, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v6}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)J

    move-result-wide v10

    sub-long/2addr v3, v10

    iget-object v6, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v6, v6, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v6}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)J

    move-result-wide v10

    add-long/2addr v3, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v3, v10

    .line 1024
    const-wide/16 v10, 0x0

    cmp-long v6, v3, v10

    if-lez v6, :cond_31

    .line 1025
    iget-object v6, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v6, v6, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-virtual {v6, v3, v4}, Lcom/baidu/cyberplayer/dlna/c;->a(J)V

    .line 1029
    :cond_31
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Ljava/util/Timer;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 1030
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 1031
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3, v5}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;Ljava/util/Timer;)Ljava/util/Timer;

    .line 1037
    :cond_32
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Ljava/util/Timer;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1038
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 1039
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3, v5}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;Ljava/util/Timer;)Ljava/util/Timer;

    .line 1041
    :cond_33
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->c(Lcom/baidu/cyberplayer/dlna/c;)Ljava/util/Timer;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 1042
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->c(Lcom/baidu/cyberplayer/dlna/c;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 1043
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3, v5}, Lcom/baidu/cyberplayer/dlna/c;->c(Lcom/baidu/cyberplayer/dlna/c;Ljava/util/Timer;)Ljava/util/Timer;

    .line 1046
    :cond_34
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/aY;->c()Z

    move-result v3

    .line 1047
    iget-object v4, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v4, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;Z)Z

    .line 1048
    if-eqz v0, :cond_38

    .line 1049
    if-eqz v3, :cond_35

    .line 1050
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v8, v9, v3}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IDisableDLNACallBack;->onDisableDLNA(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 1056
    :cond_35
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3, v7}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v9, v7, v3}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IDisableDLNACallBack;->onDisableDLNA(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 969
    :pswitch_14
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IEnableDLNACallBack;

    .line 970
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 971
    if-eqz v0, :cond_38

    .line 972
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v8, v9, v3}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IEnableDLNACallBack;->onEnableDLNA(ZILjava/lang/String;)V

    goto/16 :goto_9

    .line 979
    :cond_36
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->d(Lcom/baidu/cyberplayer/dlna/c;)V

    .line 980
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/aY;->b()Z

    move-result v3

    .line 981
    if-eqz v3, :cond_37

    .line 982
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    invoke-static {v3, v4}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;Ljava/util/Timer;)Ljava/util/Timer;

    .line 984
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    invoke-static {v3, v4}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;Ljava/util/Timer;)Ljava/util/Timer;

    .line 985
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    invoke-static {v3, v4}, Lcom/baidu/cyberplayer/dlna/c;->c(Lcom/baidu/cyberplayer/dlna/c;Ljava/util/Timer;)Ljava/util/Timer;

    .line 986
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    new-instance v4, Lcom/baidu/cyberplayer/dlna/c$b;

    iget-object v5, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v5, v5, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-direct {v4, v5}, Lcom/baidu/cyberplayer/dlna/c$b;-><init>(Lcom/baidu/cyberplayer/dlna/c;)V

    invoke-static {v3, v4}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    .line 988
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    new-instance v4, Lcom/baidu/cyberplayer/dlna/c$a;

    iget-object v5, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v5, v5, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-direct {v4, v5}, Lcom/baidu/cyberplayer/dlna/c$a;-><init>(Lcom/baidu/cyberplayer/dlna/c;)V

    invoke-static {v3, v4}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    .line 989
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    new-instance v4, Lcom/baidu/cyberplayer/dlna/c$c;

    iget-object v5, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v5, v5, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-direct {v4, v5}, Lcom/baidu/cyberplayer/dlna/c$c;-><init>(Lcom/baidu/cyberplayer/dlna/c;)V

    invoke-static {v3, v4}, Lcom/baidu/cyberplayer/dlna/c;->c(Lcom/baidu/cyberplayer/dlna/c;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    .line 990
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3, v8}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;Z)Z

    .line 991
    if-eqz v0, :cond_38

    .line 992
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v8, v9, v3}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IEnableDLNACallBack;->onEnableDLNA(ZILjava/lang/String;)V

    goto :goto_9

    .line 998
    :cond_37
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3, v9}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;Z)Z

    .line 999
    if-eqz v0, :cond_38

    .line 1000
    iget-object v3, v1, Lcom/baidu/cyberplayer/dlna/c$e$1;->a:Lcom/baidu/cyberplayer/dlna/c$e;

    iget-object v3, v3, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v3, v7}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v9, v7, v3}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IEnableDLNACallBack;->onEnableDLNA(ZILjava/lang/String;)V

    .line 1641
    :cond_38
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
